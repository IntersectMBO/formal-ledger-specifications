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

module MAlonzo.Code.Ledger.Foreign.HSLedger.Chain where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Builtin.String
import qualified MAlonzo.Code.Agda.Builtin.Unit
import qualified MAlonzo.Code.Algebra.Bundles
import qualified MAlonzo.Code.Axiom.Set
import qualified MAlonzo.Code.Axiom.Set.Map
import qualified MAlonzo.Code.Class.DecEq.Instances
import qualified MAlonzo.Code.Class.Functor.Core
import qualified MAlonzo.Code.Class.Functor.Instances
import qualified MAlonzo.Code.Data.Product.Base
import qualified MAlonzo.Code.Foreign.Convertible
import qualified MAlonzo.Code.Foreign.Haskell.Coerce
import qualified MAlonzo.Code.Interface.ComputationalRelation
import qualified MAlonzo.Code.Ledger.Address
import qualified MAlonzo.Code.Ledger.Certs
import qualified MAlonzo.Code.Ledger.Chain
import qualified MAlonzo.Code.Ledger.Chain.Properties
import qualified MAlonzo.Code.Ledger.Crypto
import qualified MAlonzo.Code.Ledger.Enact
import qualified MAlonzo.Code.Ledger.Epoch
import qualified MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes
import qualified MAlonzo.Code.Ledger.Foreign.HSLedger.Core
import qualified MAlonzo.Code.Ledger.Foreign.HSLedger.Enact
import qualified MAlonzo.Code.Ledger.Foreign.HSLedger.Gov
import qualified MAlonzo.Code.Ledger.Foreign.HSLedger.NewEpoch
import qualified MAlonzo.Code.Ledger.Foreign.LedgerTypes
import qualified MAlonzo.Code.Ledger.Ledger
import qualified MAlonzo.Code.Ledger.PParams
import qualified MAlonzo.Code.Ledger.Ratify
import qualified MAlonzo.Code.Ledger.Set.Theory
import qualified MAlonzo.Code.Ledger.TokenAlgebra
import qualified MAlonzo.Code.Ledger.Transaction
import qualified MAlonzo.Code.Ledger.Types.Epoch
import qualified MAlonzo.Code.Ledger.Types.GovStructure
import qualified MAlonzo.Code.Ledger.Utxo
import qualified MAlonzo.Code.Prelude

-- Ledger.Foreign.HSLedger.Chain._.Block
d_Block_12 = ()
-- Ledger.Foreign.HSLedger.Chain._.ChainState
d_ChainState_16 = ()
-- Ledger.Foreign.HSLedger.Chain._.Block.slot
d_slot_34 :: MAlonzo.Code.Ledger.Chain.T_Block_2150 -> Integer
d_slot_34 v0 = coe MAlonzo.Code.Ledger.Chain.d_slot_2158 (coe v0)
-- Ledger.Foreign.HSLedger.Chain._.Block.ts
d_ts_36 ::
  MAlonzo.Code.Ledger.Chain.T_Block_2150 ->
  [MAlonzo.Code.Ledger.Transaction.T_Tx_2838]
d_ts_36 v0 = coe MAlonzo.Code.Ledger.Chain.d_ts_2156 (coe v0)
-- Ledger.Foreign.HSLedger.Chain._.ChainState.newEpochState
d_newEpochState_40 ::
  MAlonzo.Code.Ledger.Chain.T_ChainState_2144 ->
  MAlonzo.Code.Ledger.Epoch.T_NewEpochState_2222
d_newEpochState_40 v0
  = coe MAlonzo.Code.Ledger.Chain.d_newEpochState_2148 (coe v0)
-- Ledger.Foreign.HSLedger.Chain._
d___46 :: MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d___46
  = coe MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Refl_30
-- Ledger.Foreign.HSLedger.Chain.Convertible-ChainState
d_Convertible'45'ChainState_48 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Convertible'45'ChainState_48
  = coe
      MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Chain.C_ChainState'46'constructor_3779 v1
                -> coe
                     MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_ChainState'46'constructor_11873
                     (coe
                        MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_NewEpochState'46'constructor_11837
                        (coe MAlonzo.Code.Ledger.Epoch.d_lastEpoch_2230 (coe v1))
                        (coe
                           MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_EpochState'46'constructor_11647
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_to_18
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                 (coe
                                    (\ v2 ->
                                       case coe v2 of
                                         MAlonzo.Code.Ledger.PParams.C_'10214'_'44'_'10215''7491'_156 v3 v4
                                           -> coe
                                                MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_Acnt'46'constructor_11507
                                                (coe v3) (coe v4)
                                         _ -> MAlonzo.RTE.mazUnreachableError))
                                 (coe
                                    (\ v2 ->
                                       case coe v2 of
                                         MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_Acnt'46'constructor_11507 v3 v4
                                           -> coe
                                                MAlonzo.Code.Ledger.PParams.C_'10214'_'44'_'10215''7491'_156
                                                (coe v3) (coe v4)
                                         _ -> MAlonzo.RTE.mazUnreachableError)))
                              (MAlonzo.Code.Ledger.Epoch.d_acnt_2210
                                 (coe MAlonzo.Code.Ledger.Epoch.d_epochState_2232 (coe v1))))
                           (coe
                              MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_Snapshots'46'constructor_11569
                              (coe
                                 MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_Snapshot'46'constructor_11537
                                 (coe
                                    MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_MkHSMap_36
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.d_to_18
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_80
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_70
                                             (coe
                                                MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Credential_70)
                                             (coe
                                                MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98)))
                                       (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                          (coe
                                             MAlonzo.Code.Ledger.Epoch.d_stake_2172
                                             (coe
                                                MAlonzo.Code.Ledger.Epoch.d_mark_2188
                                                (coe
                                                   MAlonzo.Code.Ledger.Epoch.d_ss_2212
                                                   (coe
                                                      MAlonzo.Code.Ledger.Epoch.d_epochState_2232
                                                      (coe v1))))))))
                                 (coe
                                    MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_MkHSMap_36
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.d_to_18
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_80
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_70
                                             (coe
                                                MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Credential_70)
                                             (coe
                                                MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98)))
                                       (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                          (coe
                                             MAlonzo.Code.Ledger.Epoch.d_delegations_2174
                                             (coe
                                                MAlonzo.Code.Ledger.Epoch.d_mark_2188
                                                (coe
                                                   MAlonzo.Code.Ledger.Epoch.d_ss_2212
                                                   (coe
                                                      MAlonzo.Code.Ledger.Epoch.d_epochState_2232
                                                      (coe v1)))))))))
                              (coe
                                 MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_Snapshot'46'constructor_11537
                                 (coe
                                    MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_MkHSMap_36
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.d_to_18
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_80
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_70
                                             (coe
                                                MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Credential_70)
                                             (coe
                                                MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98)))
                                       (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                          (coe
                                             MAlonzo.Code.Ledger.Epoch.d_stake_2172
                                             (coe
                                                MAlonzo.Code.Ledger.Epoch.d_set_2190
                                                (coe
                                                   MAlonzo.Code.Ledger.Epoch.d_ss_2212
                                                   (coe
                                                      MAlonzo.Code.Ledger.Epoch.d_epochState_2232
                                                      (coe v1))))))))
                                 (coe
                                    MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_MkHSMap_36
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.d_to_18
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_80
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_70
                                             (coe
                                                MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Credential_70)
                                             (coe
                                                MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98)))
                                       (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                          (coe
                                             MAlonzo.Code.Ledger.Epoch.d_delegations_2174
                                             (coe
                                                MAlonzo.Code.Ledger.Epoch.d_set_2190
                                                (coe
                                                   MAlonzo.Code.Ledger.Epoch.d_ss_2212
                                                   (coe
                                                      MAlonzo.Code.Ledger.Epoch.d_epochState_2232
                                                      (coe v1)))))))))
                              (coe
                                 MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_Snapshot'46'constructor_11537
                                 (coe
                                    MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_MkHSMap_36
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.d_to_18
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_80
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_70
                                             (coe
                                                MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Credential_70)
                                             (coe
                                                MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98)))
                                       (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                          (coe
                                             MAlonzo.Code.Ledger.Epoch.d_stake_2172
                                             (coe
                                                MAlonzo.Code.Ledger.Epoch.d_go_2192
                                                (coe
                                                   MAlonzo.Code.Ledger.Epoch.d_ss_2212
                                                   (coe
                                                      MAlonzo.Code.Ledger.Epoch.d_epochState_2232
                                                      (coe v1))))))))
                                 (coe
                                    MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_MkHSMap_36
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.d_to_18
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_80
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_70
                                             (coe
                                                MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Credential_70)
                                             (coe
                                                MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98)))
                                       (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                          (coe
                                             MAlonzo.Code.Ledger.Epoch.d_delegations_2174
                                             (coe
                                                MAlonzo.Code.Ledger.Epoch.d_go_2192
                                                (coe
                                                   MAlonzo.Code.Ledger.Epoch.d_ss_2212
                                                   (coe
                                                      MAlonzo.Code.Ledger.Epoch.d_epochState_2232
                                                      (coe v1)))))))))
                              (coe
                                 MAlonzo.Code.Ledger.Epoch.d_feeSS_2194
                                 (coe
                                    MAlonzo.Code.Ledger.Epoch.d_ss_2212
                                    (coe MAlonzo.Code.Ledger.Epoch.d_epochState_2232 (coe v1)))))
                           (coe
                              MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_LState'46'constructor_11427
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.d_to_18
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                    (coe
                                       (\ v2 ->
                                          case coe v2 of
                                            MAlonzo.Code.Ledger.Utxo.C_'10214'_'44'_'44'_'44'_'10215''7512'_1882 v3 v4 v5 v6
                                              -> coe
                                                   MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_UTxOState'46'constructor_9733
                                                   (coe
                                                      MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_MkHSMap_36
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.d_to_18
                                                         (coe
                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_80
                                                            (coe
                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_70
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_70
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'TxId_88)
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98))
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_70
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Addr_54)
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_70
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98)
                                                                     (coe
                                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_70
                                                                        (coe
                                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_66
                                                                           (coe
                                                                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_76
                                                                              (coe
                                                                                 MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                                                 (coe
                                                                                    (\ v7 ->
                                                                                       coe
                                                                                         MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                                                 (coe
                                                                                    (\ v7 ->
                                                                                       coe
                                                                                         MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                                                              (coe
                                                                                 MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                                                 (coe
                                                                                    (\ v7 ->
                                                                                       coe
                                                                                         MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                                                 (coe
                                                                                    (\ v7 ->
                                                                                       coe
                                                                                         MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))))
                                                                        (coe
                                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_66
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Script_84)))))))
                                                         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                            (coe v3))))
                                                   (coe v4)
                                            _ -> MAlonzo.RTE.mazUnreachableError))
                                    (coe
                                       (\ v2 ->
                                          coe
                                            MAlonzo.Code.Ledger.Utxo.C_'10214'_'44'_'44'_'44'_'10215''7512'_1882
                                            (coe
                                               MAlonzo.Code.Foreign.Convertible.d_from_20
                                               (coe
                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_92
                                                  (coe
                                                     MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                     () erased () erased
                                                     MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
                                                     MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                  (coe
                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_70
                                                     (coe
                                                        MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'TxId_88)
                                                     (coe
                                                        MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98))
                                                  (coe
                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_70
                                                     (coe
                                                        MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Addr_54)
                                                     (coe
                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_70
                                                        (coe
                                                           MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98)
                                                        (coe
                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_70
                                                           (coe
                                                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_66
                                                              (coe
                                                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_76
                                                                 (coe
                                                                    MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                                    (coe
                                                                       (\ v3 ->
                                                                          coe
                                                                            MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                                    (coe
                                                                       (\ v3 ->
                                                                          coe
                                                                            MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                                                 (coe
                                                                    MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                                    (coe
                                                                       (\ v3 ->
                                                                          coe
                                                                            MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                                    (coe
                                                                       (\ v3 ->
                                                                          coe
                                                                            MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))))
                                                           (coe
                                                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_66
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Script_84))))))
                                               (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_assocList_34
                                                  (coe
                                                     MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_utxo_534
                                                     (coe v2))))
                                            (coe
                                               MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_fees_536
                                               (coe v2))
                                            (coe
                                               MAlonzo.Code.Axiom.Set.Map.du_'8709''7504'_564
                                               (coe
                                                  MAlonzo.Code.Axiom.Set.d_th_1458
                                                  (coe
                                                     MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                            (let v3
                                                   = MAlonzo.Code.Ledger.Foreign.HSLedger.Core.d_tokenAlgebra_250 in
                                             coe
                                               (coe
                                                  MAlonzo.Code.Algebra.Bundles.d_ε_984
                                                  (coe
                                                     MAlonzo.Code.Ledger.TokenAlgebra.du_Value'45'CommutativeMonoid_122
                                                     (coe v3)))))))
                                 (MAlonzo.Code.Ledger.Ledger.d_utxoSt_2056
                                    (coe
                                       MAlonzo.Code.Ledger.Epoch.d_ls_2214
                                       (coe MAlonzo.Code.Ledger.Epoch.d_epochState_2232 (coe v1)))))
                              (coe
                                 MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                 MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20 () erased
                                 () erased
                                 (MAlonzo.Code.Foreign.Convertible.d_to_18
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_70
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_70
                                          (coe
                                             MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'TxId_88)
                                          (coe
                                             MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98))
                                       (coe
                                          MAlonzo.Code.Ledger.Foreign.HSLedger.Gov.d_Convertible'45'GovActionState_180)))
                                 (MAlonzo.Code.Ledger.Ledger.d_govSt_2058
                                    (coe
                                       MAlonzo.Code.Ledger.Epoch.d_ls_2214
                                       (coe MAlonzo.Code.Ledger.Epoch.d_epochState_2232 (coe v1)))))
                              (coe
                                 MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_CertState'46'constructor_11021
                                 (coe
                                    MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_DState'46'constructor_10763
                                    (coe
                                       MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_MkHSMap_36
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.d_to_18
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_80
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_70
                                                (coe
                                                   MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Credential_70)
                                                (coe
                                                   MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'VDeleg_74)))
                                          (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                             (coe
                                                MAlonzo.Code.Ledger.Certs.d_voteDelegs_898
                                                (coe
                                                   MAlonzo.Code.Ledger.Certs.d_dState_938
                                                   (coe
                                                      MAlonzo.Code.Ledger.Ledger.d_certState_2060
                                                      (coe
                                                         MAlonzo.Code.Ledger.Epoch.d_ls_2214
                                                         (coe
                                                            MAlonzo.Code.Ledger.Epoch.d_epochState_2232
                                                            (coe v1)))))))))
                                    (coe
                                       MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_MkHSMap_36
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.d_to_18
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_80
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_70
                                                (coe
                                                   MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Credential_70)
                                                (coe
                                                   MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d___10)))
                                          (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                             (coe
                                                MAlonzo.Code.Ledger.Certs.d_stakeDelegs_900
                                                (coe
                                                   MAlonzo.Code.Ledger.Certs.d_dState_938
                                                   (coe
                                                      MAlonzo.Code.Ledger.Ledger.d_certState_2060
                                                      (coe
                                                         MAlonzo.Code.Ledger.Epoch.d_ls_2214
                                                         (coe
                                                            MAlonzo.Code.Ledger.Epoch.d_epochState_2232
                                                            (coe v1)))))))))
                                    (coe
                                       MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_MkHSMap_36
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.d_to_18
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_80
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_70
                                                (coe
                                                   MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Credential_70)
                                                (coe
                                                   MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d___10)))
                                          (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                             (coe
                                                MAlonzo.Code.Ledger.Certs.d_rewards_902
                                                (coe
                                                   MAlonzo.Code.Ledger.Certs.d_dState_938
                                                   (coe
                                                      MAlonzo.Code.Ledger.Ledger.d_certState_2060
                                                      (coe
                                                         MAlonzo.Code.Ledger.Epoch.d_ls_2214
                                                         (coe
                                                            MAlonzo.Code.Ledger.Epoch.d_epochState_2232
                                                            (coe v1))))))))))
                                 (coe
                                    MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_PState'46'constructor_10895
                                    (coe
                                       MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_MkHSMap_36
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.d_to_18
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_80
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_70
                                                (coe
                                                   MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98)
                                                (coe
                                                   MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'PoolParams_520)))
                                          (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                             (coe
                                                MAlonzo.Code.Ledger.Certs.d_pools_912
                                                (coe
                                                   MAlonzo.Code.Ledger.Certs.d_pState_940
                                                   (coe
                                                      MAlonzo.Code.Ledger.Ledger.d_certState_2060
                                                      (coe
                                                         MAlonzo.Code.Ledger.Epoch.d_ls_2214
                                                         (coe
                                                            MAlonzo.Code.Ledger.Epoch.d_epochState_2232
                                                            (coe v1)))))))))
                                    (coe
                                       MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_MkHSMap_36
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.d_to_18
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_80
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_70
                                                (coe
                                                   MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98)
                                                (coe
                                                   MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98)))
                                          (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                             (coe
                                                MAlonzo.Code.Ledger.Certs.d_retiring_914
                                                (coe
                                                   MAlonzo.Code.Ledger.Certs.d_pState_940
                                                   (coe
                                                      MAlonzo.Code.Ledger.Ledger.d_certState_2060
                                                      (coe
                                                         MAlonzo.Code.Ledger.Epoch.d_ls_2214
                                                         (coe
                                                            MAlonzo.Code.Ledger.Epoch.d_epochState_2232
                                                            (coe v1))))))))))
                                 (coe
                                    MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_GState'46'constructor_10933
                                    (coe
                                       MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_MkHSMap_36
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.d_to_18
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_80
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_70
                                                (coe
                                                   MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Credential_70)
                                                (coe
                                                   MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d___10)))
                                          (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                             (coe
                                                MAlonzo.Code.Ledger.Certs.d_dreps_924
                                                (coe
                                                   MAlonzo.Code.Ledger.Certs.d_gState_942
                                                   (coe
                                                      MAlonzo.Code.Ledger.Ledger.d_certState_2060
                                                      (coe
                                                         MAlonzo.Code.Ledger.Epoch.d_ls_2214
                                                         (coe
                                                            MAlonzo.Code.Ledger.Epoch.d_epochState_2232
                                                            (coe v1)))))))))
                                    (coe
                                       MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_MkHSMap_36
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.d_to_18
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_80
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_70
                                                (coe
                                                   MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Credential_70)
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_66
                                                   (coe
                                                      MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Credential_70))))
                                          (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                             (coe
                                                MAlonzo.Code.Ledger.Certs.d_ccHotKeys_926
                                                (coe
                                                   MAlonzo.Code.Ledger.Certs.d_gState_942
                                                   (coe
                                                      MAlonzo.Code.Ledger.Ledger.d_certState_2060
                                                      (coe
                                                         MAlonzo.Code.Ledger.Epoch.d_ls_2214
                                                         (coe
                                                            MAlonzo.Code.Ledger.Epoch.d_epochState_2232
                                                            (coe v1))))))))))))
                           (coe
                              MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_EnactState'46'constructor_9819
                              (coe
                                 MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased () erased
                                 (coe MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                                 (coe
                                    MAlonzo.Code.Data.Product.Base.du_map_128
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.d_to_18
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_66
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_70
                                             (coe
                                                MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.du_Convertible'45'HSMap_50
                                                (let v2
                                                       = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                           (coe
                                                              MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_536
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Foreign.HSLedger.Enact.d_HSGovStructure_8))) in
                                                 coe
                                                   (let v3
                                                          = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_536
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Foreign.HSLedger.Enact.d_HSGovStructure_8)) in
                                                    coe
                                                      (coe
                                                         MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                         (coe v2) (coe v3))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Credential_70)
                                                (coe
                                                   MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98))
                                             (coe
                                                MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Rational_28))))
                                    (coe
                                       (\ v2 ->
                                          MAlonzo.Code.Foreign.Convertible.d_to_18
                                            (coe
                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_70
                                               (coe
                                                  MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'TxId_88)
                                               (coe
                                                  MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98))))
                                    (coe
                                       MAlonzo.Code.Ledger.Enact.d_cc_842
                                       (coe
                                          MAlonzo.Code.Ledger.Epoch.d_es_2216
                                          (coe
                                             MAlonzo.Code.Ledger.Epoch.d_epochState_2232
                                             (coe v1))))))
                              (coe
                                 MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased () erased
                                 (coe MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                                 (coe
                                    MAlonzo.Code.Data.Product.Base.du_map_128
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.d_to_18
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_70
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                             (coe
                                                (\ v2 -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                             (coe
                                                (\ v2 ->
                                                   coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_66
                                             (coe
                                                MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98))))
                                    (coe
                                       (\ v2 ->
                                          MAlonzo.Code.Foreign.Convertible.d_to_18
                                            (coe
                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_70
                                               (coe
                                                  MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'TxId_88)
                                               (coe
                                                  MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98))))
                                    (coe
                                       MAlonzo.Code.Ledger.Enact.d_constitution_844
                                       (coe
                                          MAlonzo.Code.Ledger.Epoch.d_es_2216
                                          (coe
                                             MAlonzo.Code.Ledger.Epoch.d_epochState_2232
                                             (coe v1))))))
                              (coe
                                 MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased () erased
                                 (coe MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                                 (coe
                                    MAlonzo.Code.Data.Product.Base.du_map_128
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.d_to_18
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_70
                                          (coe
                                             MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98)
                                          (coe
                                             MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98)))
                                    (coe
                                       (\ v2 ->
                                          MAlonzo.Code.Foreign.Convertible.d_to_18
                                            (coe
                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_70
                                               (coe
                                                  MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'TxId_88)
                                               (coe
                                                  MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98))))
                                    (coe
                                       MAlonzo.Code.Ledger.Enact.d_pv_846
                                       (coe
                                          MAlonzo.Code.Ledger.Epoch.d_es_2216
                                          (coe
                                             MAlonzo.Code.Ledger.Epoch.d_epochState_2232
                                             (coe v1))))))
                              (coe
                                 MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased () erased
                                 (coe MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                                 (coe
                                    MAlonzo.Code.Data.Product.Base.du_map_128
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.d_to_18
                                       (coe
                                          MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'PParams_398))
                                    (coe
                                       (\ v2 ->
                                          MAlonzo.Code.Foreign.Convertible.d_to_18
                                            (coe
                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_70
                                               (coe
                                                  MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'TxId_88)
                                               (coe
                                                  MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98))))
                                    (coe
                                       MAlonzo.Code.Ledger.Enact.d_pparams_848
                                       (coe
                                          MAlonzo.Code.Ledger.Epoch.d_es_2216
                                          (coe
                                             MAlonzo.Code.Ledger.Epoch.d_epochState_2232
                                             (coe v1))))))
                              (coe
                                 MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_MkHSMap_36
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.d_to_18
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_80
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_70
                                          (coe
                                             MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'RwdAddr_216)
                                          (coe
                                             MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98)))
                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                       (coe
                                          MAlonzo.Code.Ledger.Enact.d_withdrawals_850
                                          (coe
                                             MAlonzo.Code.Ledger.Epoch.d_es_2216
                                             (coe
                                                MAlonzo.Code.Ledger.Epoch.d_epochState_2232
                                                (coe v1))))))))
                           (coe
                              MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_RatifyState'46'constructor_11271
                              (coe
                                 MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_EnactState'46'constructor_9819
                                 (coe
                                    MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased ()
                                    erased
                                    (coe MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                                    (coe
                                       MAlonzo.Code.Data.Product.Base.du_map_128
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.d_to_18
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_66
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_70
                                                (coe
                                                   MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.du_Convertible'45'HSMap_50
                                                   (let v2
                                                          = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_536
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Foreign.HSLedger.Enact.d_HSGovStructure_8))) in
                                                    coe
                                                      (let v3
                                                             = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_536
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Foreign.HSLedger.Enact.d_HSGovStructure_8)) in
                                                       coe
                                                         (coe
                                                            MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                            (coe v2) (coe v3))))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Credential_70)
                                                   (coe
                                                      MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98))
                                                (coe
                                                   MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Rational_28))))
                                       (coe
                                          (\ v2 ->
                                             MAlonzo.Code.Foreign.Convertible.d_to_18
                                               (coe
                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_70
                                                  (coe
                                                     MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'TxId_88)
                                                  (coe
                                                     MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98))))
                                       (coe
                                          MAlonzo.Code.Ledger.Enact.d_cc_842
                                          (coe
                                             MAlonzo.Code.Ledger.Ratify.d_es_1920
                                             (coe
                                                MAlonzo.Code.Ledger.Epoch.d_fut_2218
                                                (coe
                                                   MAlonzo.Code.Ledger.Epoch.d_epochState_2232
                                                   (coe v1)))))))
                                 (coe
                                    MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased ()
                                    erased
                                    (coe MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                                    (coe
                                       MAlonzo.Code.Data.Product.Base.du_map_128
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.d_to_18
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_70
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                (coe
                                                   (\ v2 ->
                                                      coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                (coe
                                                   (\ v2 ->
                                                      coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_66
                                                (coe
                                                   MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98))))
                                       (coe
                                          (\ v2 ->
                                             MAlonzo.Code.Foreign.Convertible.d_to_18
                                               (coe
                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_70
                                                  (coe
                                                     MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'TxId_88)
                                                  (coe
                                                     MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98))))
                                       (coe
                                          MAlonzo.Code.Ledger.Enact.d_constitution_844
                                          (coe
                                             MAlonzo.Code.Ledger.Ratify.d_es_1920
                                             (coe
                                                MAlonzo.Code.Ledger.Epoch.d_fut_2218
                                                (coe
                                                   MAlonzo.Code.Ledger.Epoch.d_epochState_2232
                                                   (coe v1)))))))
                                 (coe
                                    MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased ()
                                    erased
                                    (coe MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                                    (coe
                                       MAlonzo.Code.Data.Product.Base.du_map_128
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.d_to_18
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_70
                                             (coe
                                                MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98)
                                             (coe
                                                MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98)))
                                       (coe
                                          (\ v2 ->
                                             MAlonzo.Code.Foreign.Convertible.d_to_18
                                               (coe
                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_70
                                                  (coe
                                                     MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'TxId_88)
                                                  (coe
                                                     MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98))))
                                       (coe
                                          MAlonzo.Code.Ledger.Enact.d_pv_846
                                          (coe
                                             MAlonzo.Code.Ledger.Ratify.d_es_1920
                                             (coe
                                                MAlonzo.Code.Ledger.Epoch.d_fut_2218
                                                (coe
                                                   MAlonzo.Code.Ledger.Epoch.d_epochState_2232
                                                   (coe v1)))))))
                                 (coe
                                    MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased ()
                                    erased
                                    (coe MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                                    (coe
                                       MAlonzo.Code.Data.Product.Base.du_map_128
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.d_to_18
                                          (coe
                                             MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'PParams_398))
                                       (coe
                                          (\ v2 ->
                                             MAlonzo.Code.Foreign.Convertible.d_to_18
                                               (coe
                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_70
                                                  (coe
                                                     MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'TxId_88)
                                                  (coe
                                                     MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98))))
                                       (coe
                                          MAlonzo.Code.Ledger.Enact.d_pparams_848
                                          (coe
                                             MAlonzo.Code.Ledger.Ratify.d_es_1920
                                             (coe
                                                MAlonzo.Code.Ledger.Epoch.d_fut_2218
                                                (coe
                                                   MAlonzo.Code.Ledger.Epoch.d_epochState_2232
                                                   (coe v1)))))))
                                 (coe
                                    MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_MkHSMap_36
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.d_to_18
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_80
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_70
                                             (coe
                                                MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'RwdAddr_216)
                                             (coe
                                                MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98)))
                                       (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                          (coe
                                             MAlonzo.Code.Ledger.Enact.d_withdrawals_850
                                             (coe
                                                MAlonzo.Code.Ledger.Ratify.d_es_1920
                                                (coe
                                                   MAlonzo.Code.Ledger.Epoch.d_fut_2218
                                                   (coe
                                                      MAlonzo.Code.Ledger.Epoch.d_epochState_2232
                                                      (coe v1)))))))))
                              (coe
                                 MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_MkHSSet_48
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.d_to_18
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_96
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_70
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_70
                                             (coe
                                                MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'TxId_88)
                                             (coe
                                                MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98))
                                          (coe
                                             MAlonzo.Code.Ledger.Foreign.HSLedger.Gov.d_Convertible'45'GovActionState_180)))
                                    (MAlonzo.Code.Ledger.Ratify.d_removed_1922
                                       (coe
                                          MAlonzo.Code.Ledger.Epoch.d_fut_2218
                                          (coe
                                             MAlonzo.Code.Ledger.Epoch.d_epochState_2232
                                             (coe v1))))))
                              (coe
                                 MAlonzo.Code.Ledger.Ratify.d_delay_1924
                                 (coe
                                    MAlonzo.Code.Ledger.Epoch.d_fut_2218
                                    (coe MAlonzo.Code.Ledger.Epoch.d_epochState_2232 (coe v1))))))
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_to_18
                           (coe
                              MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_56
                              (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                              (coe
                                 MAlonzo.Code.Ledger.Foreign.HSLedger.NewEpoch.d_Convertible'45'RewardUpdate_148))
                           (MAlonzo.Code.Ledger.Epoch.d_ru_2234 (coe v1))))
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_ChainState'46'constructor_11873 v1
                -> coe
                     MAlonzo.Code.Ledger.Chain.C_ChainState'46'constructor_3779
                     (coe
                        MAlonzo.Code.Ledger.Epoch.C_'10214'_'44'_'44'_'10215''8319''7497'_2236
                        (coe
                           MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_lastEpoch_1010 (coe v1))
                        (coe
                           MAlonzo.Code.Ledger.Epoch.C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_2220
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_from_20
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                 (coe
                                    (\ v2 ->
                                       case coe v2 of
                                         MAlonzo.Code.Ledger.PParams.C_'10214'_'44'_'10215''7491'_156 v3 v4
                                           -> coe
                                                MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_Acnt'46'constructor_11507
                                                (coe v3) (coe v4)
                                         _ -> MAlonzo.RTE.mazUnreachableError))
                                 (coe
                                    (\ v2 ->
                                       case coe v2 of
                                         MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_Acnt'46'constructor_11507 v3 v4
                                           -> coe
                                                MAlonzo.Code.Ledger.PParams.C_'10214'_'44'_'10215''7491'_156
                                                (coe v3) (coe v4)
                                         _ -> MAlonzo.RTE.mazUnreachableError)))
                              (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_acnt_968
                                 (coe
                                    MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_epochState_1012
                                    (coe v1))))
                           (coe
                              MAlonzo.Code.Ledger.Epoch.C_'10214'_'44'_'44'_'44'_'10215''738''738'_2196
                              (coe
                                 MAlonzo.Code.Ledger.Epoch.C_'10214'_'44'_'10215''738'_2176
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.d_from_20
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_92
                                       (let v2
                                              = MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22 in
                                        coe
                                          (let v3
                                                 = MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22 in
                                           coe
                                             (coe
                                                MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                (coe v2) (coe v3))))
                                       (coe
                                          MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Credential_70)
                                       (coe
                                          MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98))
                                    (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_assocList_34
                                       (coe
                                          MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_stake_934
                                          (coe
                                             MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_mark_948
                                             (coe
                                                MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_ss_970
                                                (coe
                                                   MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_epochState_1012
                                                   (coe v1)))))))
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.d_from_20
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_92
                                       (let v2
                                              = MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22 in
                                        coe
                                          (let v3
                                                 = MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22 in
                                           coe
                                             (coe
                                                MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                (coe v2) (coe v3))))
                                       (coe
                                          MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Credential_70)
                                       (coe
                                          MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98))
                                    (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_assocList_34
                                       (coe
                                          MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_delegations_936
                                          (coe
                                             MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_mark_948
                                             (coe
                                                MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_ss_970
                                                (coe
                                                   MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_epochState_1012
                                                   (coe v1))))))))
                              (coe
                                 MAlonzo.Code.Ledger.Epoch.C_'10214'_'44'_'10215''738'_2176
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.d_from_20
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_92
                                       (let v2
                                              = MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22 in
                                        coe
                                          (let v3
                                                 = MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22 in
                                           coe
                                             (coe
                                                MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                (coe v2) (coe v3))))
                                       (coe
                                          MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Credential_70)
                                       (coe
                                          MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98))
                                    (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_assocList_34
                                       (coe
                                          MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_stake_934
                                          (coe
                                             MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_set_950
                                             (coe
                                                MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_ss_970
                                                (coe
                                                   MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_epochState_1012
                                                   (coe v1)))))))
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.d_from_20
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_92
                                       (let v2
                                              = MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22 in
                                        coe
                                          (let v3
                                                 = MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22 in
                                           coe
                                             (coe
                                                MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                (coe v2) (coe v3))))
                                       (coe
                                          MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Credential_70)
                                       (coe
                                          MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98))
                                    (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_assocList_34
                                       (coe
                                          MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_delegations_936
                                          (coe
                                             MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_set_950
                                             (coe
                                                MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_ss_970
                                                (coe
                                                   MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_epochState_1012
                                                   (coe v1))))))))
                              (coe
                                 MAlonzo.Code.Ledger.Epoch.C_'10214'_'44'_'10215''738'_2176
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.d_from_20
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_92
                                       (let v2
                                              = MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22 in
                                        coe
                                          (let v3
                                                 = MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22 in
                                           coe
                                             (coe
                                                MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                (coe v2) (coe v3))))
                                       (coe
                                          MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Credential_70)
                                       (coe
                                          MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98))
                                    (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_assocList_34
                                       (coe
                                          MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_stake_934
                                          (coe
                                             MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_go_952
                                             (coe
                                                MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_ss_970
                                                (coe
                                                   MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_epochState_1012
                                                   (coe v1)))))))
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.d_from_20
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_92
                                       (let v2
                                              = MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22 in
                                        coe
                                          (let v3
                                                 = MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22 in
                                           coe
                                             (coe
                                                MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                (coe v2) (coe v3))))
                                       (coe
                                          MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Credential_70)
                                       (coe
                                          MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98))
                                    (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_assocList_34
                                       (coe
                                          MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_delegations_936
                                          (coe
                                             MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_go_952
                                             (coe
                                                MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_ss_970
                                                (coe
                                                   MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_epochState_1012
                                                   (coe v1))))))))
                              (coe
                                 MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_feeSS_954
                                 (coe
                                    MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_ss_970
                                    (coe
                                       MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_epochState_1012
                                       (coe v1)))))
                           (coe
                              MAlonzo.Code.Ledger.Ledger.C_'10214'_'44'_'44'_'10215''737'_2062
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.d_from_20
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                    (coe
                                       (\ v2 ->
                                          case coe v2 of
                                            MAlonzo.Code.Ledger.Utxo.C_'10214'_'44'_'44'_'44'_'10215''7512'_1882 v3 v4 v5 v6
                                              -> coe
                                                   MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_UTxOState'46'constructor_9733
                                                   (coe
                                                      MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_MkHSMap_36
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.d_to_18
                                                         (coe
                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_80
                                                            (coe
                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_70
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_70
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'TxId_88)
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98))
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_70
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Addr_54)
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_70
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98)
                                                                     (coe
                                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_70
                                                                        (coe
                                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_66
                                                                           (coe
                                                                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_76
                                                                              (coe
                                                                                 MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                                                 (coe
                                                                                    (\ v7 ->
                                                                                       coe
                                                                                         MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                                                 (coe
                                                                                    (\ v7 ->
                                                                                       coe
                                                                                         MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                                                              (coe
                                                                                 MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                                                 (coe
                                                                                    (\ v7 ->
                                                                                       coe
                                                                                         MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                                                 (coe
                                                                                    (\ v7 ->
                                                                                       coe
                                                                                         MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))))
                                                                        (coe
                                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_66
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Script_84)))))))
                                                         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                            (coe v3))))
                                                   (coe v4)
                                            _ -> MAlonzo.RTE.mazUnreachableError))
                                    (coe
                                       (\ v2 ->
                                          coe
                                            MAlonzo.Code.Ledger.Utxo.C_'10214'_'44'_'44'_'44'_'10215''7512'_1882
                                            (coe
                                               MAlonzo.Code.Foreign.Convertible.d_from_20
                                               (coe
                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_92
                                                  (coe
                                                     MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                     () erased () erased
                                                     MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
                                                     MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                  (coe
                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_70
                                                     (coe
                                                        MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'TxId_88)
                                                     (coe
                                                        MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98))
                                                  (coe
                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_70
                                                     (coe
                                                        MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Addr_54)
                                                     (coe
                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_70
                                                        (coe
                                                           MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98)
                                                        (coe
                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_70
                                                           (coe
                                                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_66
                                                              (coe
                                                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_76
                                                                 (coe
                                                                    MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                                    (coe
                                                                       (\ v3 ->
                                                                          coe
                                                                            MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                                    (coe
                                                                       (\ v3 ->
                                                                          coe
                                                                            MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                                                 (coe
                                                                    MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                                    (coe
                                                                       (\ v3 ->
                                                                          coe
                                                                            MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                                    (coe
                                                                       (\ v3 ->
                                                                          coe
                                                                            MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))))
                                                           (coe
                                                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_66
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Script_84))))))
                                               (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_assocList_34
                                                  (coe
                                                     MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_utxo_534
                                                     (coe v2))))
                                            (coe
                                               MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_fees_536
                                               (coe v2))
                                            (coe
                                               MAlonzo.Code.Axiom.Set.Map.du_'8709''7504'_564
                                               (coe
                                                  MAlonzo.Code.Axiom.Set.d_th_1458
                                                  (coe
                                                     MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                            (let v3
                                                   = MAlonzo.Code.Ledger.Foreign.HSLedger.Core.d_tokenAlgebra_250 in
                                             coe
                                               (coe
                                                  MAlonzo.Code.Algebra.Bundles.d_ε_984
                                                  (coe
                                                     MAlonzo.Code.Ledger.TokenAlgebra.du_Value'45'CommutativeMonoid_122
                                                     (coe v3)))))))
                                 (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_utxoSt_898
                                    (coe
                                       MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_ls_972
                                       (coe
                                          MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_epochState_1012
                                          (coe v1)))))
                              (coe
                                 MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                 MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20 () erased
                                 () erased
                                 (MAlonzo.Code.Foreign.Convertible.d_from_20
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_70
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_70
                                          (coe
                                             MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'TxId_88)
                                          (coe
                                             MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98))
                                       (coe
                                          MAlonzo.Code.Ledger.Foreign.HSLedger.Gov.d_Convertible'45'GovActionState_180)))
                                 (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_govSt_900
                                    (coe
                                       MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_ls_972
                                       (coe
                                          MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_epochState_1012
                                          (coe v1)))))
                              (coe
                                 MAlonzo.Code.Ledger.Certs.C_'10214'_'44'_'44'_'10215''7580''738'_944
                                 (coe
                                    MAlonzo.Code.Ledger.Certs.C_'10214'_'44'_'44'_'10215''7496'_904
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.d_from_20
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_92
                                          (let v2
                                                 = MAlonzo.Code.Ledger.Foreign.HSLedger.Core.d_HSTransactionStructure_850 in
                                           coe
                                             (coe
                                                MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                (coe
                                                   MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                   (coe
                                                      MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                      (coe
                                                         MAlonzo.Code.Ledger.Transaction.d_crypto_1234
                                                         (coe v2))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                   (coe
                                                      MAlonzo.Code.Ledger.Transaction.d_crypto_1234
                                                      (coe v2)))))
                                          (coe
                                             MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Credential_70)
                                          (coe
                                             MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'VDeleg_74))
                                       (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_assocList_34
                                          (coe
                                             MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_voteDelegs_740
                                             (coe
                                                MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_dState_806
                                                (coe
                                                   MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_certState_902
                                                   (coe
                                                      MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_ls_972
                                                      (coe
                                                         MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_epochState_1012
                                                         (coe v1))))))))
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.d_from_20
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_92
                                          (let v2
                                                 = MAlonzo.Code.Ledger.Foreign.HSLedger.Core.d_HSTransactionStructure_850 in
                                           coe
                                             (coe
                                                MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                (coe
                                                   MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                   (coe
                                                      MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                      (coe
                                                         MAlonzo.Code.Ledger.Transaction.d_crypto_1234
                                                         (coe v2))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                   (coe
                                                      MAlonzo.Code.Ledger.Transaction.d_crypto_1234
                                                      (coe v2)))))
                                          (coe
                                             MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Credential_70)
                                          (coe
                                             MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d___10))
                                       (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_assocList_34
                                          (coe
                                             MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_stakeDelegs_742
                                             (coe
                                                MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_dState_806
                                                (coe
                                                   MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_certState_902
                                                   (coe
                                                      MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_ls_972
                                                      (coe
                                                         MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_epochState_1012
                                                         (coe v1))))))))
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.d_from_20
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_92
                                          (let v2
                                                 = MAlonzo.Code.Ledger.Foreign.HSLedger.Core.d_HSTransactionStructure_850 in
                                           coe
                                             (coe
                                                MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                (coe
                                                   MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                   (coe
                                                      MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                      (coe
                                                         MAlonzo.Code.Ledger.Transaction.d_crypto_1234
                                                         (coe v2))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                   (coe
                                                      MAlonzo.Code.Ledger.Transaction.d_crypto_1234
                                                      (coe v2)))))
                                          (coe
                                             MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Credential_70)
                                          (coe
                                             MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d___10))
                                       (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_assocList_34
                                          (coe
                                             MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_rewards_744
                                             (coe
                                                MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_dState_806
                                                (coe
                                                   MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_certState_902
                                                   (coe
                                                      MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_ls_972
                                                      (coe
                                                         MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_epochState_1012
                                                         (coe v1)))))))))
                                 (coe
                                    MAlonzo.Code.Ledger.Certs.C_'10214'_'44'_'10215''7510'_916
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.d_from_20
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_92
                                          (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                          (coe
                                             MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98)
                                          (coe
                                             MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'PoolParams_520))
                                       (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_assocList_34
                                          (coe
                                             MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_pools_770
                                             (coe
                                                MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_pState_808
                                                (coe
                                                   MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_certState_902
                                                   (coe
                                                      MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_ls_972
                                                      (coe
                                                         MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_epochState_1012
                                                         (coe v1))))))))
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.d_from_20
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_92
                                          (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                          (coe
                                             MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98)
                                          (coe
                                             MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98))
                                       (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_assocList_34
                                          (coe
                                             MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_retiring_772
                                             (coe
                                                MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_pState_808
                                                (coe
                                                   MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_certState_902
                                                   (coe
                                                      MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_ls_972
                                                      (coe
                                                         MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_epochState_1012
                                                         (coe v1)))))))))
                                 (coe
                                    MAlonzo.Code.Ledger.Certs.C_'10214'_'44'_'10215''7515'_928
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.d_from_20
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_92
                                          (let v2
                                                 = MAlonzo.Code.Ledger.Foreign.HSLedger.Core.d_HSTransactionStructure_850 in
                                           coe
                                             (coe
                                                MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                (coe
                                                   MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                   (coe
                                                      MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                      (coe
                                                         MAlonzo.Code.Ledger.Transaction.d_crypto_1234
                                                         (coe v2))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                   (coe
                                                      MAlonzo.Code.Ledger.Transaction.d_crypto_1234
                                                      (coe v2)))))
                                          (coe
                                             MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Credential_70)
                                          (coe
                                             MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d___10))
                                       (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_assocList_34
                                          (coe
                                             MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_dreps_780
                                             (coe
                                                MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_gState_810
                                                (coe
                                                   MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_certState_902
                                                   (coe
                                                      MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_ls_972
                                                      (coe
                                                         MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_epochState_1012
                                                         (coe v1))))))))
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.d_from_20
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_92
                                          (let v2
                                                 = MAlonzo.Code.Ledger.Foreign.HSLedger.Core.d_HSTransactionStructure_850 in
                                           coe
                                             (coe
                                                MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                (coe
                                                   MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                   (coe
                                                      MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                      (coe
                                                         MAlonzo.Code.Ledger.Transaction.d_crypto_1234
                                                         (coe v2))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                   (coe
                                                      MAlonzo.Code.Ledger.Transaction.d_crypto_1234
                                                      (coe v2)))))
                                          (coe
                                             MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Credential_70)
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_66
                                             (coe
                                                MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Credential_70)))
                                       (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_assocList_34
                                          (coe
                                             MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_ccHotKeys_782
                                             (coe
                                                MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_gState_810
                                                (coe
                                                   MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_certState_902
                                                   (coe
                                                      MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_ls_972
                                                      (coe
                                                         MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_epochState_1012
                                                         (coe v1)))))))))))
                           (coe
                              MAlonzo.Code.Ledger.Enact.C_EnactState'46'constructor_2097
                              (coe
                                 MAlonzo.Code.Data.Product.Base.du_map_128
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.d_from_20
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_66
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_70
                                          (coe
                                             MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.du_Convertible'45'HSMap_50
                                             (let v2
                                                    = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                        (coe
                                                           MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                           (coe
                                                              MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_536
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Foreign.HSLedger.Enact.d_HSGovStructure_8))) in
                                              coe
                                                (let v3
                                                       = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                           (coe
                                                              MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_536
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Foreign.HSLedger.Enact.d_HSGovStructure_8)) in
                                                 coe
                                                   (coe
                                                      MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                      (coe v2) (coe v3))))
                                             (coe
                                                MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Credential_70)
                                             (coe
                                                MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98))
                                          (coe
                                             MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Rational_28))))
                                 (coe
                                    (\ v2 ->
                                       MAlonzo.Code.Foreign.Convertible.d_from_20
                                         (coe
                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_70
                                            (coe
                                               MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'TxId_88)
                                            (coe
                                               MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98))))
                                 (coe
                                    MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased ()
                                    erased (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                    (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_esCC_550
                                       (coe
                                          MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_es_974
                                          (coe
                                             MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_epochState_1012
                                             (coe v1))))))
                              (coe
                                 MAlonzo.Code.Data.Product.Base.du_map_128
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.d_from_20
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_70
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                          (coe (\ v2 -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                          (coe (\ v2 -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_66
                                          (coe
                                             MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98))))
                                 (coe
                                    (\ v2 ->
                                       MAlonzo.Code.Foreign.Convertible.d_from_20
                                         (coe
                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_70
                                            (coe
                                               MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'TxId_88)
                                            (coe
                                               MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98))))
                                 (coe
                                    MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased ()
                                    erased (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                    (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_esConstitution_552
                                       (coe
                                          MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_es_974
                                          (coe
                                             MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_epochState_1012
                                             (coe v1))))))
                              (coe
                                 MAlonzo.Code.Data.Product.Base.du_map_128
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.d_from_20
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_70
                                       (coe
                                          MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98)
                                       (coe
                                          MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98)))
                                 (coe
                                    (\ v2 ->
                                       MAlonzo.Code.Foreign.Convertible.d_from_20
                                         (coe
                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_70
                                            (coe
                                               MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'TxId_88)
                                            (coe
                                               MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98))))
                                 (coe
                                    MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased ()
                                    erased (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                    (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_esPV_554
                                       (coe
                                          MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_es_974
                                          (coe
                                             MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_epochState_1012
                                             (coe v1))))))
                              (coe
                                 MAlonzo.Code.Data.Product.Base.du_map_128
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.d_from_20
                                    (coe
                                       MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'PParams_398))
                                 (coe
                                    (\ v2 ->
                                       MAlonzo.Code.Foreign.Convertible.d_from_20
                                         (coe
                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_70
                                            (coe
                                               MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'TxId_88)
                                            (coe
                                               MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98))))
                                 (coe
                                    MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased ()
                                    erased (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                    (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_esPParams_556
                                       (coe
                                          MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_es_974
                                          (coe
                                             MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_epochState_1012
                                             (coe v1))))))
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.d_from_20
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_92
                                    (let v2
                                           = MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_276
                                               (coe
                                                  MAlonzo.Code.Ledger.Types.GovStructure.d_globalConstants_1050
                                                  (coe
                                                     MAlonzo.Code.Ledger.Foreign.HSLedger.Enact.d_HSGovStructure_8)) in
                                     coe
                                       (let v3
                                              = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                  (coe
                                                     MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                     (coe
                                                        MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_536
                                                        (coe
                                                           MAlonzo.Code.Ledger.Foreign.HSLedger.Enact.d_HSGovStructure_8))) in
                                        coe
                                          (let v4
                                                 = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                     (coe
                                                        MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_536
                                                        (coe
                                                           MAlonzo.Code.Ledger.Foreign.HSLedger.Enact.d_HSGovStructure_8)) in
                                           coe
                                             (coe
                                                MAlonzo.Code.Ledger.Address.du_DecEq'45'RwdAddr_194
                                                (coe v2) (coe v3) (coe v4)))))
                                    (coe
                                       MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'RwdAddr_216)
                                    (coe
                                       MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98))
                                 (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_assocList_34
                                    (coe
                                       MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_esWithdrawals_558
                                       (coe
                                          MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_es_974
                                          (coe
                                             MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_epochState_1012
                                             (coe v1)))))))
                           (coe
                              MAlonzo.Code.Ledger.Ratify.C_'10214'_'44'_'44'_'10215''691'_1926
                              (coe
                                 MAlonzo.Code.Ledger.Enact.C_EnactState'46'constructor_2097
                                 (coe
                                    MAlonzo.Code.Data.Product.Base.du_map_128
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.d_from_20
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_66
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_70
                                             (coe
                                                MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.du_Convertible'45'HSMap_50
                                                (let v2
                                                       = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                           (coe
                                                              MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_536
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Foreign.HSLedger.Enact.d_HSGovStructure_8))) in
                                                 coe
                                                   (let v3
                                                          = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_536
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Foreign.HSLedger.Enact.d_HSGovStructure_8)) in
                                                    coe
                                                      (coe
                                                         MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                         (coe v2) (coe v3))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Credential_70)
                                                (coe
                                                   MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98))
                                             (coe
                                                MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Rational_28))))
                                    (coe
                                       (\ v2 ->
                                          MAlonzo.Code.Foreign.Convertible.d_from_20
                                            (coe
                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_70
                                               (coe
                                                  MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'TxId_88)
                                               (coe
                                                  MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98))))
                                    (coe
                                       MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased ()
                                       erased (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                       (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_esCC_550
                                          (coe
                                             MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_es_862
                                             (coe
                                                MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_fut_976
                                                (coe
                                                   MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_epochState_1012
                                                   (coe v1)))))))
                                 (coe
                                    MAlonzo.Code.Data.Product.Base.du_map_128
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.d_from_20
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_70
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                             (coe
                                                (\ v2 -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                             (coe
                                                (\ v2 ->
                                                   coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_66
                                             (coe
                                                MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98))))
                                    (coe
                                       (\ v2 ->
                                          MAlonzo.Code.Foreign.Convertible.d_from_20
                                            (coe
                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_70
                                               (coe
                                                  MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'TxId_88)
                                               (coe
                                                  MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98))))
                                    (coe
                                       MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased ()
                                       erased (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                       (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_esConstitution_552
                                          (coe
                                             MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_es_862
                                             (coe
                                                MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_fut_976
                                                (coe
                                                   MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_epochState_1012
                                                   (coe v1)))))))
                                 (coe
                                    MAlonzo.Code.Data.Product.Base.du_map_128
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.d_from_20
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_70
                                          (coe
                                             MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98)
                                          (coe
                                             MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98)))
                                    (coe
                                       (\ v2 ->
                                          MAlonzo.Code.Foreign.Convertible.d_from_20
                                            (coe
                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_70
                                               (coe
                                                  MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'TxId_88)
                                               (coe
                                                  MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98))))
                                    (coe
                                       MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased ()
                                       erased (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                       (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_esPV_554
                                          (coe
                                             MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_es_862
                                             (coe
                                                MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_fut_976
                                                (coe
                                                   MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_epochState_1012
                                                   (coe v1)))))))
                                 (coe
                                    MAlonzo.Code.Data.Product.Base.du_map_128
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.d_from_20
                                       (coe
                                          MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'PParams_398))
                                    (coe
                                       (\ v2 ->
                                          MAlonzo.Code.Foreign.Convertible.d_from_20
                                            (coe
                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_70
                                               (coe
                                                  MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'TxId_88)
                                               (coe
                                                  MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98))))
                                    (coe
                                       MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased ()
                                       erased (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                       (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_esPParams_556
                                          (coe
                                             MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_es_862
                                             (coe
                                                MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_fut_976
                                                (coe
                                                   MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_epochState_1012
                                                   (coe v1)))))))
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.d_from_20
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_92
                                       (let v2
                                              = MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_276
                                                  (coe
                                                     MAlonzo.Code.Ledger.Types.GovStructure.d_globalConstants_1050
                                                     (coe
                                                        MAlonzo.Code.Ledger.Foreign.HSLedger.Enact.d_HSGovStructure_8)) in
                                        coe
                                          (let v3
                                                 = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                     (coe
                                                        MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                        (coe
                                                           MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_536
                                                           (coe
                                                              MAlonzo.Code.Ledger.Foreign.HSLedger.Enact.d_HSGovStructure_8))) in
                                           coe
                                             (let v4
                                                    = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                        (coe
                                                           MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_536
                                                           (coe
                                                              MAlonzo.Code.Ledger.Foreign.HSLedger.Enact.d_HSGovStructure_8)) in
                                              coe
                                                (coe
                                                   MAlonzo.Code.Ledger.Address.du_DecEq'45'RwdAddr_194
                                                   (coe v2) (coe v3) (coe v4)))))
                                       (coe
                                          MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'RwdAddr_216)
                                       (coe
                                          MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98))
                                    (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_assocList_34
                                       (coe
                                          MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_esWithdrawals_558
                                          (coe
                                             MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_es_862
                                             (coe
                                                MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_fut_976
                                                (coe
                                                   MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_epochState_1012
                                                   (coe v1))))))))
                              (coe
                                 MAlonzo.Code.Axiom.Set.du_fromList_416
                                 (coe
                                    MAlonzo.Code.Axiom.Set.d_th_1458
                                    (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.d_from_20
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_96
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_70
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_70
                                             (coe
                                                MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'TxId_88)
                                             (coe
                                                MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98))
                                          (coe
                                             MAlonzo.Code.Ledger.Foreign.HSLedger.Gov.d_Convertible'45'GovActionState_180)))
                                    (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_elems_46
                                       (coe
                                          MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_removed_864
                                          (coe
                                             MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_fut_976
                                             (coe
                                                MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_epochState_1012
                                                (coe v1)))))))
                              (coe
                                 MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_delay_866
                                 (coe
                                    MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_fut_976
                                    (coe
                                       MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_epochState_1012
                                       (coe v1))))))
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_from_20
                           (coe
                              MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_56
                              (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                              (coe
                                 MAlonzo.Code.Ledger.Foreign.HSLedger.NewEpoch.d_Convertible'45'RewardUpdate_148))
                           (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_ru_1014 (coe v1))))
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Foreign.HSLedger.Chain.Convertible-Block
d_Convertible'45'Block_50 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Convertible'45'Block_50
  = coe
      MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Chain.C_Block'46'constructor_3837 v1 v2
                -> coe
                     MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_Block'46'constructor_11887
                     (coe
                        MAlonzo.Code.Class.Functor.Core.du_fmap_22
                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20 () erased
                        () erased
                        (MAlonzo.Code.Foreign.Convertible.d_to_18
                           (coe
                              MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Tx_602))
                        v1)
                     (coe v2)
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_Block'46'constructor_11887 v1 v2
                -> coe
                     MAlonzo.Code.Ledger.Chain.C_Block'46'constructor_3837
                     (coe
                        MAlonzo.Code.Class.Functor.Core.du_fmap_22
                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20 () erased
                        () erased
                        (MAlonzo.Code.Foreign.Convertible.d_from_20
                           (coe
                              MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Tx_602))
                        v1)
                     (coe v2)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Foreign.HSLedger.Chain.chain-step
chainStep ::
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Ledger.Foreign.LedgerTypes.T_ChainState_1016 ->
  MAlonzo.Code.Ledger.Foreign.LedgerTypes.T_Block_1022 ->
  MAlonzo.Code.Ledger.Foreign.LedgerTypes.T_ComputationResult_12
    MAlonzo.Code.Agda.Builtin.String.T_String_6
    MAlonzo.Code.Ledger.Foreign.LedgerTypes.T_ChainState_1016
chainStep = coe d_chain'45'step_52
d_chain'45'step_52 ::
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Ledger.Foreign.LedgerTypes.T_ChainState_1016 ->
  MAlonzo.Code.Ledger.Foreign.LedgerTypes.T_Block_1022 ->
  MAlonzo.Code.Ledger.Foreign.LedgerTypes.T_ComputationResult_12
    MAlonzo.Code.Agda.Builtin.String.T_String_6
    MAlonzo.Code.Ledger.Foreign.LedgerTypes.T_ChainState_1016
d_chain'45'step_52 ~v0 = du_chain'45'step_52
du_chain'45'step_52 ::
  MAlonzo.Code.Ledger.Foreign.LedgerTypes.T_ChainState_1016 ->
  MAlonzo.Code.Ledger.Foreign.LedgerTypes.T_Block_1022 ->
  MAlonzo.Code.Ledger.Foreign.LedgerTypes.T_ComputationResult_12
    MAlonzo.Code.Agda.Builtin.String.T_String_6
    MAlonzo.Code.Ledger.Foreign.LedgerTypes.T_ChainState_1016
du_chain'45'step_52
  = coe
      MAlonzo.Code.Foreign.Convertible.d_to_18
      (coe
         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Fun_108
         (coe d_Convertible'45'ChainState_48)
         (coe
            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Fun_108
            (coe d_Convertible'45'Block_50)
            (coe
               MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.du_Convertible'45'ComputationResult_214
               (coe d___46) (coe d_Convertible'45'ChainState_48))))
      (coe
         MAlonzo.Code.Interface.ComputationalRelation.du_compute_274
         (coe
            MAlonzo.Code.Ledger.Chain.Properties.d_Computational'45'CHAIN_1926
            (coe
               MAlonzo.Code.Ledger.Foreign.HSLedger.Core.d_HSTransactionStructure_850)
            (coe
               MAlonzo.Code.Ledger.Foreign.HSLedger.Core.d_HSAbstractFunctions_2504))
         (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
