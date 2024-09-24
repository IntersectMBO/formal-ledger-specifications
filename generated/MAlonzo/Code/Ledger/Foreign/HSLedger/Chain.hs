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
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Builtin.String
import qualified MAlonzo.Code.Agda.Builtin.Unit
import qualified MAlonzo.Code.Axiom.Set
import qualified MAlonzo.Code.Class.DecEq.Instances
import qualified MAlonzo.Code.Class.Functor.Core
import qualified MAlonzo.Code.Class.Functor.Instances
import qualified MAlonzo.Code.Data.Product.Base
import qualified MAlonzo.Code.Foreign.Convertible
import qualified MAlonzo.Code.Foreign.Haskell.Coerce
import qualified MAlonzo.Code.Foreign.HaskellTypes
import qualified MAlonzo.Code.Interface.ComputationalRelation
import qualified MAlonzo.Code.Ledger.Address
import qualified MAlonzo.Code.Ledger.Certs
import qualified MAlonzo.Code.Ledger.Chain
import qualified MAlonzo.Code.Ledger.Chain.Properties
import qualified MAlonzo.Code.Ledger.Crypto
import qualified MAlonzo.Code.Ledger.Enact
import qualified MAlonzo.Code.Ledger.Epoch
import qualified MAlonzo.Code.Ledger.Foreign.HSLedger.Address
import qualified MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes
import qualified MAlonzo.Code.Ledger.Foreign.HSLedger.Certs
import qualified MAlonzo.Code.Ledger.Foreign.HSLedger.Core
import qualified MAlonzo.Code.Ledger.Foreign.HSLedger.Enact
import qualified MAlonzo.Code.Ledger.Foreign.HSLedger.Epoch
import qualified MAlonzo.Code.Ledger.Foreign.HSLedger.Gov
import qualified MAlonzo.Code.Ledger.Foreign.HSLedger.Ledger
import qualified MAlonzo.Code.Ledger.Foreign.HSLedger.NewEpoch
import qualified MAlonzo.Code.Ledger.Foreign.HSLedger.PParams
import qualified MAlonzo.Code.Ledger.Foreign.HSLedger.Ratify
import qualified MAlonzo.Code.Ledger.Foreign.HSLedger.Transaction
import qualified MAlonzo.Code.Ledger.Foreign.HSLedger.Utxo
import qualified MAlonzo.Code.Ledger.Foreign.HSTypes
import qualified MAlonzo.Code.Ledger.Ledger
import qualified MAlonzo.Code.Ledger.PParams
import qualified MAlonzo.Code.Ledger.Ratify
import qualified MAlonzo.Code.Ledger.Set.Theory
import qualified MAlonzo.Code.Ledger.Transaction
import qualified MAlonzo.Code.Ledger.Types.Epoch
import qualified MAlonzo.Code.Ledger.Utxo
import qualified MAlonzo.Code.Prelude

import GHC.Generics (Generic)
data ChainState = ChainState {newEpochState :: MAlonzo.Code.Ledger.Foreign.HSLedger.NewEpoch.NewEpochState}
  deriving (Show, Eq, Generic)
data Block = Block {ts :: [MAlonzo.Code.Ledger.Foreign.HSLedger.Transaction.Tx], slot :: Integer}
  deriving (Show, Eq, Generic)
-- Ledger.Foreign.HSLedger.Chain._.Block
d_Block_12 = ()
-- Ledger.Foreign.HSLedger.Chain._.ChainState
d_ChainState_16 = ()
-- Ledger.Foreign.HSLedger.Chain._.Block.slot
d_slot_34 :: MAlonzo.Code.Ledger.Chain.T_Block_2230 -> Integer
d_slot_34 v0 = coe MAlonzo.Code.Ledger.Chain.d_slot_2238 (coe v0)
-- Ledger.Foreign.HSLedger.Chain._.Block.ts
d_ts_36 ::
  MAlonzo.Code.Ledger.Chain.T_Block_2230 ->
  [MAlonzo.Code.Ledger.Transaction.T_Tx_2854]
d_ts_36 v0 = coe MAlonzo.Code.Ledger.Chain.d_ts_2236 (coe v0)
-- Ledger.Foreign.HSLedger.Chain._.ChainState.newEpochState
d_newEpochState_40 ::
  MAlonzo.Code.Ledger.Chain.T_ChainState_2224 ->
  MAlonzo.Code.Ledger.Epoch.T_NewEpochState_2302
d_newEpochState_40 v0
  = coe MAlonzo.Code.Ledger.Chain.d_newEpochState_2228 (coe v0)
-- Ledger.Foreign.HSLedger.Chain.HsTy-ChainState
d_HsTy'45'ChainState_46 ::
  MAlonzo.Code.Foreign.HaskellTypes.T_HasHsType_14
d_HsTy'45'ChainState_46 = erased
-- Ledger.Foreign.HSLedger.Chain.Conv-ChainState
d_Conv'45'ChainState_48 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Conv'45'ChainState_48
  = coe
      MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Chain.C_ChainState'46'constructor_3849 v1
                -> coe
                     C_ChainState_75
                     (coe
                        MAlonzo.Code.Ledger.Foreign.HSLedger.NewEpoch.C_MkNewEpochState_2127
                        (coe MAlonzo.Code.Ledger.Epoch.d_lastEpoch_2310 (coe v1))
                        (coe
                           MAlonzo.Code.Ledger.Foreign.HSLedger.Epoch.C_MkEpochState_3005
                           (coe
                              MAlonzo.Code.Ledger.Foreign.HSLedger.PParams.C_MkAcnt_9595
                              (coe
                                 MAlonzo.Code.Ledger.PParams.d_treasury_152
                                 (coe
                                    MAlonzo.Code.Ledger.Epoch.d_acnt_2290
                                    (coe MAlonzo.Code.Ledger.Epoch.d_epochState_2312 (coe v1))))
                              (coe
                                 MAlonzo.Code.Ledger.PParams.d_reserves_154
                                 (coe
                                    MAlonzo.Code.Ledger.Epoch.d_acnt_2290
                                    (coe MAlonzo.Code.Ledger.Epoch.d_epochState_2312 (coe v1)))))
                           (coe
                              MAlonzo.Code.Ledger.Foreign.HSLedger.Epoch.C_MkSnapshots_1411
                              (coe
                                 MAlonzo.Code.Ledger.Foreign.HSLedger.Epoch.C_MkSnapshot_135
                                 (coe
                                    MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.d_to_18
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                             (coe
                                                MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                             (coe
                                                MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)))
                                       (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                          (coe
                                             MAlonzo.Code.Ledger.Epoch.d_stake_2252
                                             (coe
                                                MAlonzo.Code.Ledger.Epoch.d_mark_2268
                                                (coe
                                                   MAlonzo.Code.Ledger.Epoch.d_ss_2292
                                                   (coe
                                                      MAlonzo.Code.Ledger.Epoch.d_epochState_2312
                                                      (coe v1))))))))
                                 (coe
                                    MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.d_to_18
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                             (coe
                                                MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                             (coe
                                                MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)))
                                       (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                          (coe
                                             MAlonzo.Code.Ledger.Epoch.d_delegations_2254
                                             (coe
                                                MAlonzo.Code.Ledger.Epoch.d_mark_2268
                                                (coe
                                                   MAlonzo.Code.Ledger.Epoch.d_ss_2292
                                                   (coe
                                                      MAlonzo.Code.Ledger.Epoch.d_epochState_2312
                                                      (coe v1)))))))))
                              (coe
                                 MAlonzo.Code.Ledger.Foreign.HSLedger.Epoch.C_MkSnapshot_135
                                 (coe
                                    MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.d_to_18
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                             (coe
                                                MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                             (coe
                                                MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)))
                                       (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                          (coe
                                             MAlonzo.Code.Ledger.Epoch.d_stake_2252
                                             (coe
                                                MAlonzo.Code.Ledger.Epoch.d_set_2270
                                                (coe
                                                   MAlonzo.Code.Ledger.Epoch.d_ss_2292
                                                   (coe
                                                      MAlonzo.Code.Ledger.Epoch.d_epochState_2312
                                                      (coe v1))))))))
                                 (coe
                                    MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.d_to_18
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                             (coe
                                                MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                             (coe
                                                MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)))
                                       (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                          (coe
                                             MAlonzo.Code.Ledger.Epoch.d_delegations_2254
                                             (coe
                                                MAlonzo.Code.Ledger.Epoch.d_set_2270
                                                (coe
                                                   MAlonzo.Code.Ledger.Epoch.d_ss_2292
                                                   (coe
                                                      MAlonzo.Code.Ledger.Epoch.d_epochState_2312
                                                      (coe v1)))))))))
                              (coe
                                 MAlonzo.Code.Ledger.Foreign.HSLedger.Epoch.C_MkSnapshot_135
                                 (coe
                                    MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.d_to_18
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                             (coe
                                                MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                             (coe
                                                MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)))
                                       (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                          (coe
                                             MAlonzo.Code.Ledger.Epoch.d_stake_2252
                                             (coe
                                                MAlonzo.Code.Ledger.Epoch.d_go_2272
                                                (coe
                                                   MAlonzo.Code.Ledger.Epoch.d_ss_2292
                                                   (coe
                                                      MAlonzo.Code.Ledger.Epoch.d_epochState_2312
                                                      (coe v1))))))))
                                 (coe
                                    MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.d_to_18
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                             (coe
                                                MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                             (coe
                                                MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)))
                                       (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                          (coe
                                             MAlonzo.Code.Ledger.Epoch.d_delegations_2254
                                             (coe
                                                MAlonzo.Code.Ledger.Epoch.d_go_2272
                                                (coe
                                                   MAlonzo.Code.Ledger.Epoch.d_ss_2292
                                                   (coe
                                                      MAlonzo.Code.Ledger.Epoch.d_epochState_2312
                                                      (coe v1)))))))))
                              (coe
                                 MAlonzo.Code.Ledger.Epoch.d_feeSS_2274
                                 (coe
                                    MAlonzo.Code.Ledger.Epoch.d_ss_2292
                                    (coe MAlonzo.Code.Ledger.Epoch.d_epochState_2312 (coe v1)))))
                           (coe
                              MAlonzo.Code.Ledger.Foreign.HSLedger.Ledger.C_MkLState_8279
                              (coe
                                 MAlonzo.Code.Ledger.Foreign.HSLedger.Utxo.C_MkUTxOState_1713
                                 (coe
                                    MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.d_to_18
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                (coe
                                                   MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                                (coe
                                                   MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_98
                                                   (coe
                                                      MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'BaseAddr_14)
                                                   (coe
                                                      MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'BootstrapAddr_18))
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                   (coe
                                                      MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                         (coe
                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_98
                                                            (coe
                                                               MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                               (coe
                                                                  (\ v2 ->
                                                                     coe
                                                                       MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                               (coe
                                                                  (\ v2 ->
                                                                     coe
                                                                       MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                                            (coe
                                                               MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                               (coe
                                                                  (\ v2 ->
                                                                     coe
                                                                       MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                               (coe
                                                                  (\ v2 ->
                                                                     coe
                                                                       MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))))
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                         (coe
                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_98
                                                            (coe
                                                               MAlonzo.Code.Ledger.Foreign.HSLedger.Transaction.d_Conv'45'Timelock_14)
                                                            (coe
                                                               MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                               (coe
                                                                  (\ v2 ->
                                                                     coe
                                                                       MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                               (coe
                                                                  (\ v2 ->
                                                                     coe
                                                                       MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))))))))))
                                       (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                          (coe
                                             MAlonzo.Code.Ledger.Utxo.d_utxo_1954
                                             (coe
                                                MAlonzo.Code.Ledger.Ledger.d_utxoSt_2136
                                                (coe
                                                   MAlonzo.Code.Ledger.Epoch.d_ls_2294
                                                   (coe
                                                      MAlonzo.Code.Ledger.Epoch.d_epochState_2312
                                                      (coe v1))))))))
                                 (coe
                                    MAlonzo.Code.Ledger.Utxo.d_fees_1956
                                    (coe
                                       MAlonzo.Code.Ledger.Ledger.d_utxoSt_2136
                                       (coe
                                          MAlonzo.Code.Ledger.Epoch.d_ls_2294
                                          (coe
                                             MAlonzo.Code.Ledger.Epoch.d_epochState_2312
                                             (coe v1)))))
                                 (coe
                                    MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.d_to_18
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                             (coe
                                                MAlonzo.Code.Ledger.Foreign.HSLedger.Certs.d_Conv'45'DepositPurpose_94)
                                             (coe
                                                MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)))
                                       (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                          (coe
                                             MAlonzo.Code.Ledger.Utxo.d_deposits_1958
                                             (coe
                                                MAlonzo.Code.Ledger.Ledger.d_utxoSt_2136
                                                (coe
                                                   MAlonzo.Code.Ledger.Epoch.d_ls_2294
                                                   (coe
                                                      MAlonzo.Code.Ledger.Epoch.d_epochState_2312
                                                      (coe v1))))))))
                                 (coe
                                    MAlonzo.Code.Ledger.Utxo.d_donations_1960
                                    (coe
                                       MAlonzo.Code.Ledger.Ledger.d_utxoSt_2136
                                       (coe
                                          MAlonzo.Code.Ledger.Epoch.d_ls_2294
                                          (coe
                                             MAlonzo.Code.Ledger.Epoch.d_epochState_2312
                                             (coe v1))))))
                              (coe
                                 MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                 MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20 () erased
                                 () erased
                                 (MAlonzo.Code.Foreign.Convertible.d_to_18
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                          (coe
                                             MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                          (coe
                                             MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))
                                       (coe
                                          MAlonzo.Code.Ledger.Foreign.HSLedger.Gov.d_Conv'45'GovActionState_326)))
                                 (MAlonzo.Code.Ledger.Ledger.d_govSt_2138
                                    (coe
                                       MAlonzo.Code.Ledger.Epoch.d_ls_2294
                                       (coe MAlonzo.Code.Ledger.Epoch.d_epochState_2312 (coe v1)))))
                              (coe
                                 MAlonzo.Code.Ledger.Foreign.HSLedger.Ledger.C_MkCertState_4795
                                 (coe
                                    MAlonzo.Code.Ledger.Foreign.HSLedger.Ledger.C_MkDState_2099
                                    (coe
                                       MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.d_to_18
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                (coe
                                                   MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                                (coe
                                                   MAlonzo.Code.Ledger.Foreign.HSLedger.Gov.d_Conv'45'VDeleg_146)))
                                          (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                             (coe
                                                MAlonzo.Code.Ledger.Certs.d_voteDelegs_898
                                                (coe
                                                   MAlonzo.Code.Ledger.Certs.d_dState_938
                                                   (coe
                                                      MAlonzo.Code.Ledger.Ledger.d_certState_2140
                                                      (coe
                                                         MAlonzo.Code.Ledger.Epoch.d_ls_2294
                                                         (coe
                                                            MAlonzo.Code.Ledger.Epoch.d_epochState_2312
                                                            (coe v1)))))))))
                                    (coe
                                       MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.d_to_18
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                (coe
                                                   MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                                (coe
                                                   MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)))
                                          (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                             (coe
                                                MAlonzo.Code.Ledger.Certs.d_stakeDelegs_900
                                                (coe
                                                   MAlonzo.Code.Ledger.Certs.d_dState_938
                                                   (coe
                                                      MAlonzo.Code.Ledger.Ledger.d_certState_2140
                                                      (coe
                                                         MAlonzo.Code.Ledger.Epoch.d_ls_2294
                                                         (coe
                                                            MAlonzo.Code.Ledger.Epoch.d_epochState_2312
                                                            (coe v1)))))))))
                                    (coe
                                       MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.d_to_18
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                (coe
                                                   MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                                (coe
                                                   MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)))
                                          (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                             (coe
                                                MAlonzo.Code.Ledger.Certs.d_rewards_902
                                                (coe
                                                   MAlonzo.Code.Ledger.Certs.d_dState_938
                                                   (coe
                                                      MAlonzo.Code.Ledger.Ledger.d_certState_2140
                                                      (coe
                                                         MAlonzo.Code.Ledger.Epoch.d_ls_2294
                                                         (coe
                                                            MAlonzo.Code.Ledger.Epoch.d_epochState_2312
                                                            (coe v1))))))))))
                                 (coe
                                    MAlonzo.Code.Ledger.Foreign.HSLedger.Certs.C_MkPState_2589
                                    (coe
                                       MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.d_to_18
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                (coe
                                                   MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                                (coe
                                                   MAlonzo.Code.Ledger.Foreign.HSLedger.Certs.d_Conv'45'PoolParams_90)))
                                          (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                             (coe
                                                MAlonzo.Code.Ledger.Certs.d_pools_912
                                                (coe
                                                   MAlonzo.Code.Ledger.Certs.d_pState_940
                                                   (coe
                                                      MAlonzo.Code.Ledger.Ledger.d_certState_2140
                                                      (coe
                                                         MAlonzo.Code.Ledger.Epoch.d_ls_2294
                                                         (coe
                                                            MAlonzo.Code.Ledger.Epoch.d_epochState_2312
                                                            (coe v1)))))))))
                                    (coe
                                       MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.d_to_18
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                (coe
                                                   MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                                (coe
                                                   MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)))
                                          (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                             (coe
                                                MAlonzo.Code.Ledger.Certs.d_retiring_914
                                                (coe
                                                   MAlonzo.Code.Ledger.Certs.d_pState_940
                                                   (coe
                                                      MAlonzo.Code.Ledger.Ledger.d_certState_2140
                                                      (coe
                                                         MAlonzo.Code.Ledger.Epoch.d_ls_2294
                                                         (coe
                                                            MAlonzo.Code.Ledger.Epoch.d_epochState_2312
                                                            (coe v1))))))))))
                                 (coe
                                    MAlonzo.Code.Ledger.Foreign.HSLedger.Ledger.C_MkGState_349
                                    (coe
                                       MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.d_to_18
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                (coe
                                                   MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                                (coe
                                                   MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)))
                                          (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                             (coe
                                                MAlonzo.Code.Ledger.Certs.d_dreps_924
                                                (coe
                                                   MAlonzo.Code.Ledger.Certs.d_gState_942
                                                   (coe
                                                      MAlonzo.Code.Ledger.Ledger.d_certState_2140
                                                      (coe
                                                         MAlonzo.Code.Ledger.Epoch.d_ls_2294
                                                         (coe
                                                            MAlonzo.Code.Ledger.Epoch.d_epochState_2312
                                                            (coe v1)))))))))
                                    (coe
                                       MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.d_to_18
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                (coe
                                                   MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                   (coe
                                                      MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10))))
                                          (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                             (coe
                                                MAlonzo.Code.Ledger.Certs.d_ccHotKeys_926
                                                (coe
                                                   MAlonzo.Code.Ledger.Certs.d_gState_942
                                                   (coe
                                                      MAlonzo.Code.Ledger.Ledger.d_certState_2140
                                                      (coe
                                                         MAlonzo.Code.Ledger.Epoch.d_ls_2294
                                                         (coe
                                                            MAlonzo.Code.Ledger.Epoch.d_epochState_2312
                                                            (coe v1))))))))))))
                           (coe
                              MAlonzo.Code.Ledger.Foreign.HSLedger.Enact.C_MkEnactState_57
                              (coe
                                 MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased () erased
                                 (coe MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                                 (coe
                                    MAlonzo.Code.Data.Product.Base.du_map_128
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.d_to_18
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                             (coe
                                                MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.du_Conv'45'HSMap_70
                                                (let v2
                                                       = MAlonzo.Code.Ledger.Foreign.HSLedger.Core.d_HSTransactionStructure_844 in
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
                                                   MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                                (coe
                                                   MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))
                                             (coe
                                                MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Conv'45'Rational_24))))
                                    (coe
                                       (\ v2 ->
                                          MAlonzo.Code.Foreign.Convertible.d_to_18
                                            (coe
                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                               (coe
                                                  MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                               (coe
                                                  MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))))
                                    (coe
                                       MAlonzo.Code.Ledger.Enact.d_cc_842
                                       (coe
                                          MAlonzo.Code.Ledger.Epoch.d_es_2296
                                          (coe
                                             MAlonzo.Code.Ledger.Epoch.d_epochState_2312
                                             (coe v1))))))
                              (coe
                                 MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased () erased
                                 (coe MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                                 (coe
                                    MAlonzo.Code.Data.Product.Base.du_map_128
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.d_to_18
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                             (coe
                                                (\ v2 -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                             (coe
                                                (\ v2 ->
                                                   coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                             (coe
                                                MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))))
                                    (coe
                                       (\ v2 ->
                                          MAlonzo.Code.Foreign.Convertible.d_to_18
                                            (coe
                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                               (coe
                                                  MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                               (coe
                                                  MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))))
                                    (coe
                                       MAlonzo.Code.Ledger.Enact.d_constitution_844
                                       (coe
                                          MAlonzo.Code.Ledger.Epoch.d_es_2296
                                          (coe
                                             MAlonzo.Code.Ledger.Epoch.d_epochState_2312
                                             (coe v1))))))
                              (coe
                                 MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased () erased
                                 (coe MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                                 (coe
                                    MAlonzo.Code.Data.Product.Base.du_map_128
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.d_to_18
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                          (coe
                                             MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                          (coe
                                             MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)))
                                    (coe
                                       (\ v2 ->
                                          MAlonzo.Code.Foreign.Convertible.d_to_18
                                            (coe
                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                               (coe
                                                  MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                               (coe
                                                  MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))))
                                    (coe
                                       MAlonzo.Code.Ledger.Enact.d_pv_846
                                       (coe
                                          MAlonzo.Code.Ledger.Epoch.d_es_2296
                                          (coe
                                             MAlonzo.Code.Ledger.Epoch.d_epochState_2312
                                             (coe v1))))))
                              (coe
                                 MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased () erased
                                 (coe MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                                 (coe
                                    MAlonzo.Code.Data.Product.Base.du_map_128
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.d_to_18
                                       (coe
                                          MAlonzo.Code.Ledger.Foreign.HSLedger.PParams.d_Conv'45'PParams_22))
                                    (coe
                                       (\ v2 ->
                                          MAlonzo.Code.Foreign.Convertible.d_to_18
                                            (coe
                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                               (coe
                                                  MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                               (coe
                                                  MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))))
                                    (coe
                                       MAlonzo.Code.Ledger.Enact.d_pparams_848
                                       (coe
                                          MAlonzo.Code.Ledger.Epoch.d_es_2296
                                          (coe
                                             MAlonzo.Code.Ledger.Epoch.d_epochState_2312
                                             (coe v1))))))
                              (coe
                                 MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.d_to_18
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                          (coe
                                             MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'RwdAddr_22)
                                          (coe
                                             MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)))
                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                       (coe
                                          MAlonzo.Code.Ledger.Enact.d_withdrawals_850
                                          (coe
                                             MAlonzo.Code.Ledger.Epoch.d_es_2296
                                             (coe
                                                MAlonzo.Code.Ledger.Epoch.d_epochState_2312
                                                (coe v1))))))))
                           (coe
                              MAlonzo.Code.Ledger.Foreign.HSLedger.Ratify.C_MkRatifyState_4845
                              (coe
                                 MAlonzo.Code.Ledger.Foreign.HSLedger.Enact.C_MkEnactState_57
                                 (coe
                                    MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased ()
                                    erased
                                    (coe MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                                    (coe
                                       MAlonzo.Code.Data.Product.Base.du_map_128
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.d_to_18
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                (coe
                                                   MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.du_Conv'45'HSMap_70
                                                   (let v2
                                                          = MAlonzo.Code.Ledger.Foreign.HSLedger.Core.d_HSTransactionStructure_844 in
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
                                                      MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                                   (coe
                                                      MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))
                                                (coe
                                                   MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Conv'45'Rational_24))))
                                       (coe
                                          (\ v2 ->
                                             MAlonzo.Code.Foreign.Convertible.d_to_18
                                               (coe
                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                  (coe
                                                     MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                                  (coe
                                                     MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))))
                                       (coe
                                          MAlonzo.Code.Ledger.Enact.d_cc_842
                                          (coe
                                             MAlonzo.Code.Ledger.Ratify.d_es_2000
                                             (coe
                                                MAlonzo.Code.Ledger.Epoch.d_fut_2298
                                                (coe
                                                   MAlonzo.Code.Ledger.Epoch.d_epochState_2312
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
                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                (coe
                                                   (\ v2 ->
                                                      coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                (coe
                                                   (\ v2 ->
                                                      coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                (coe
                                                   MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))))
                                       (coe
                                          (\ v2 ->
                                             MAlonzo.Code.Foreign.Convertible.d_to_18
                                               (coe
                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                  (coe
                                                     MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                                  (coe
                                                     MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))))
                                       (coe
                                          MAlonzo.Code.Ledger.Enact.d_constitution_844
                                          (coe
                                             MAlonzo.Code.Ledger.Ratify.d_es_2000
                                             (coe
                                                MAlonzo.Code.Ledger.Epoch.d_fut_2298
                                                (coe
                                                   MAlonzo.Code.Ledger.Epoch.d_epochState_2312
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
                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                             (coe
                                                MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                             (coe
                                                MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)))
                                       (coe
                                          (\ v2 ->
                                             MAlonzo.Code.Foreign.Convertible.d_to_18
                                               (coe
                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                  (coe
                                                     MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                                  (coe
                                                     MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))))
                                       (coe
                                          MAlonzo.Code.Ledger.Enact.d_pv_846
                                          (coe
                                             MAlonzo.Code.Ledger.Ratify.d_es_2000
                                             (coe
                                                MAlonzo.Code.Ledger.Epoch.d_fut_2298
                                                (coe
                                                   MAlonzo.Code.Ledger.Epoch.d_epochState_2312
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
                                             MAlonzo.Code.Ledger.Foreign.HSLedger.PParams.d_Conv'45'PParams_22))
                                       (coe
                                          (\ v2 ->
                                             MAlonzo.Code.Foreign.Convertible.d_to_18
                                               (coe
                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                  (coe
                                                     MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                                  (coe
                                                     MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))))
                                       (coe
                                          MAlonzo.Code.Ledger.Enact.d_pparams_848
                                          (coe
                                             MAlonzo.Code.Ledger.Ratify.d_es_2000
                                             (coe
                                                MAlonzo.Code.Ledger.Epoch.d_fut_2298
                                                (coe
                                                   MAlonzo.Code.Ledger.Epoch.d_epochState_2312
                                                   (coe v1)))))))
                                 (coe
                                    MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.d_to_18
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                             (coe
                                                MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'RwdAddr_22)
                                             (coe
                                                MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)))
                                       (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                          (coe
                                             MAlonzo.Code.Ledger.Enact.d_withdrawals_850
                                             (coe
                                                MAlonzo.Code.Ledger.Ratify.d_es_2000
                                                (coe
                                                   MAlonzo.Code.Ledger.Epoch.d_fut_2298
                                                   (coe
                                                      MAlonzo.Code.Ledger.Epoch.d_epochState_2312
                                                      (coe v1)))))))))
                              (coe
                                 MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSSet_38
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.d_to_18
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_118
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                             (coe
                                                MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                             (coe
                                                MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))
                                          (coe
                                             MAlonzo.Code.Ledger.Foreign.HSLedger.Gov.d_Conv'45'GovActionState_326)))
                                    (MAlonzo.Code.Ledger.Ratify.d_removed_2002
                                       (coe
                                          MAlonzo.Code.Ledger.Epoch.d_fut_2298
                                          (coe
                                             MAlonzo.Code.Ledger.Epoch.d_epochState_2312
                                             (coe v1))))))
                              (coe
                                 MAlonzo.Code.Ledger.Ratify.d_delay_2004
                                 (coe
                                    MAlonzo.Code.Ledger.Epoch.d_fut_2298
                                    (coe MAlonzo.Code.Ledger.Epoch.d_epochState_2312 (coe v1))))))
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_to_18
                           (coe
                              MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_62
                              (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                              (coe
                                 MAlonzo.Code.Ledger.Foreign.HSLedger.NewEpoch.d_Conv'45'RewardUpdate_168))
                           (MAlonzo.Code.Ledger.Epoch.d_ru_2314 (coe v1))))
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 ->
            case coe v0 of
              C_ChainState_75 v1
                -> coe
                     MAlonzo.Code.Ledger.Chain.C_ChainState'46'constructor_3849
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                           (coe
                              (\ v2 ->
                                 case coe v2 of
                                   MAlonzo.Code.Ledger.Epoch.C_'10214'_'44'_'44'_'10215''8319''7497'_2316 v3 v4 v5
                                     -> coe
                                          MAlonzo.Code.Ledger.Foreign.HSLedger.NewEpoch.C_MkNewEpochState_2127
                                          (coe v3)
                                          (coe
                                             MAlonzo.Code.Ledger.Foreign.HSLedger.Epoch.C_MkEpochState_3005
                                             (coe
                                                MAlonzo.Code.Ledger.Foreign.HSLedger.PParams.C_MkAcnt_9595
                                                (coe
                                                   MAlonzo.Code.Ledger.PParams.d_treasury_152
                                                   (coe
                                                      MAlonzo.Code.Ledger.Epoch.d_acnt_2290
                                                      (coe v4)))
                                                (coe
                                                   MAlonzo.Code.Ledger.PParams.d_reserves_154
                                                   (coe
                                                      MAlonzo.Code.Ledger.Epoch.d_acnt_2290
                                                      (coe v4))))
                                             (coe
                                                MAlonzo.Code.Ledger.Foreign.HSLedger.Epoch.C_MkSnapshots_1411
                                                (coe
                                                   MAlonzo.Code.Ledger.Foreign.HSLedger.Epoch.C_MkSnapshot_135
                                                   (coe
                                                      MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.d_to_18
                                                         (coe
                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                            (coe
                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)))
                                                         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                            (coe
                                                               MAlonzo.Code.Ledger.Epoch.d_stake_2252
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Epoch.d_mark_2268
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Epoch.d_ss_2292
                                                                     (coe v4)))))))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.d_to_18
                                                         (coe
                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                            (coe
                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)))
                                                         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                            (coe
                                                               MAlonzo.Code.Ledger.Epoch.d_delegations_2254
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Epoch.d_mark_2268
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Epoch.d_ss_2292
                                                                     (coe v4))))))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Foreign.HSLedger.Epoch.C_MkSnapshot_135
                                                   (coe
                                                      MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.d_to_18
                                                         (coe
                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                            (coe
                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)))
                                                         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                            (coe
                                                               MAlonzo.Code.Ledger.Epoch.d_stake_2252
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Epoch.d_set_2270
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Epoch.d_ss_2292
                                                                     (coe v4)))))))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.d_to_18
                                                         (coe
                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                            (coe
                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)))
                                                         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                            (coe
                                                               MAlonzo.Code.Ledger.Epoch.d_delegations_2254
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Epoch.d_set_2270
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Epoch.d_ss_2292
                                                                     (coe v4))))))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Foreign.HSLedger.Epoch.C_MkSnapshot_135
                                                   (coe
                                                      MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.d_to_18
                                                         (coe
                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                            (coe
                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)))
                                                         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                            (coe
                                                               MAlonzo.Code.Ledger.Epoch.d_stake_2252
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Epoch.d_go_2272
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Epoch.d_ss_2292
                                                                     (coe v4)))))))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.d_to_18
                                                         (coe
                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                            (coe
                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)))
                                                         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                            (coe
                                                               MAlonzo.Code.Ledger.Epoch.d_delegations_2254
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Epoch.d_go_2272
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Epoch.d_ss_2292
                                                                     (coe v4))))))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Epoch.d_feeSS_2274
                                                   (coe
                                                      MAlonzo.Code.Ledger.Epoch.d_ss_2292
                                                      (coe v4))))
                                             (coe
                                                MAlonzo.Code.Ledger.Foreign.HSLedger.Ledger.C_MkLState_8279
                                                (coe
                                                   MAlonzo.Code.Ledger.Foreign.HSLedger.Utxo.C_MkUTxOState_1713
                                                   (coe
                                                      MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.d_to_18
                                                         (coe
                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                            (coe
                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_98
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'BaseAddr_14)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'BootstrapAddr_18))
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                                                     (coe
                                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                        (coe
                                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                                           (coe
                                                                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_98
                                                                              (coe
                                                                                 MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                                                 (coe
                                                                                    (\ v6 ->
                                                                                       coe
                                                                                         MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                                                 (coe
                                                                                    (\ v6 ->
                                                                                       coe
                                                                                         MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                                                              (coe
                                                                                 MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                                                 (coe
                                                                                    (\ v6 ->
                                                                                       coe
                                                                                         MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                                                 (coe
                                                                                    (\ v6 ->
                                                                                       coe
                                                                                         MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))))
                                                                        (coe
                                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                                           (coe
                                                                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_98
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Foreign.HSLedger.Transaction.d_Conv'45'Timelock_14)
                                                                              (coe
                                                                                 MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                                                 (coe
                                                                                    (\ v6 ->
                                                                                       coe
                                                                                         MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                                                 (coe
                                                                                    (\ v6 ->
                                                                                       coe
                                                                                         MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))))))))))
                                                         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                            (coe
                                                               MAlonzo.Code.Ledger.Utxo.d_utxo_1954
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Ledger.d_utxoSt_2136
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Epoch.d_ls_2294
                                                                     (coe v4)))))))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Utxo.d_fees_1956
                                                      (coe
                                                         MAlonzo.Code.Ledger.Ledger.d_utxoSt_2136
                                                         (coe
                                                            MAlonzo.Code.Ledger.Epoch.d_ls_2294
                                                            (coe v4))))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.d_to_18
                                                         (coe
                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                            (coe
                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Foreign.HSLedger.Certs.d_Conv'45'DepositPurpose_94)
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)))
                                                         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                            (coe
                                                               MAlonzo.Code.Ledger.Utxo.d_deposits_1958
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Ledger.d_utxoSt_2136
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Epoch.d_ls_2294
                                                                     (coe v4)))))))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Utxo.d_donations_1960
                                                      (coe
                                                         MAlonzo.Code.Ledger.Ledger.d_utxoSt_2136
                                                         (coe
                                                            MAlonzo.Code.Ledger.Epoch.d_ls_2294
                                                            (coe v4)))))
                                                (coe
                                                   MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                   MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20
                                                   () erased () erased
                                                   (MAlonzo.Code.Foreign.Convertible.d_to_18
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                         (coe
                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                            (coe
                                                               MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                                            (coe
                                                               MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Foreign.HSLedger.Gov.d_Conv'45'GovActionState_326)))
                                                   (MAlonzo.Code.Ledger.Ledger.d_govSt_2138
                                                      (coe
                                                         MAlonzo.Code.Ledger.Epoch.d_ls_2294
                                                         (coe v4))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Foreign.HSLedger.Ledger.C_MkCertState_4795
                                                   (coe
                                                      MAlonzo.Code.Ledger.Foreign.HSLedger.Ledger.C_MkDState_2099
                                                      (coe
                                                         MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                                                         (coe
                                                            MAlonzo.Code.Foreign.Convertible.d_to_18
                                                            (coe
                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Foreign.HSLedger.Gov.d_Conv'45'VDeleg_146)))
                                                            (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Certs.d_voteDelegs_898
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Certs.d_dState_938
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Ledger.d_certState_2140
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Epoch.d_ls_2294
                                                                           (coe v4))))))))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                                                         (coe
                                                            MAlonzo.Code.Foreign.Convertible.d_to_18
                                                            (coe
                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)))
                                                            (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Certs.d_stakeDelegs_900
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Certs.d_dState_938
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Ledger.d_certState_2140
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Epoch.d_ls_2294
                                                                           (coe v4))))))))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                                                         (coe
                                                            MAlonzo.Code.Foreign.Convertible.d_to_18
                                                            (coe
                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)))
                                                            (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Certs.d_rewards_902
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Certs.d_dState_938
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Ledger.d_certState_2140
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Epoch.d_ls_2294
                                                                           (coe v4)))))))))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Foreign.HSLedger.Certs.C_MkPState_2589
                                                      (coe
                                                         MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                                                         (coe
                                                            MAlonzo.Code.Foreign.Convertible.d_to_18
                                                            (coe
                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Foreign.HSLedger.Certs.d_Conv'45'PoolParams_90)))
                                                            (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Certs.d_pools_912
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Certs.d_pState_940
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Ledger.d_certState_2140
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Epoch.d_ls_2294
                                                                           (coe v4))))))))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                                                         (coe
                                                            MAlonzo.Code.Foreign.Convertible.d_to_18
                                                            (coe
                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)))
                                                            (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Certs.d_retiring_914
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Certs.d_pState_940
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Ledger.d_certState_2140
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Epoch.d_ls_2294
                                                                           (coe v4)))))))))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Foreign.HSLedger.Ledger.C_MkGState_349
                                                      (coe
                                                         MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                                                         (coe
                                                            MAlonzo.Code.Foreign.Convertible.d_to_18
                                                            (coe
                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)))
                                                            (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Certs.d_dreps_924
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Certs.d_gState_942
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Ledger.d_certState_2140
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Epoch.d_ls_2294
                                                                           (coe v4))))))))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                                                         (coe
                                                            MAlonzo.Code.Foreign.Convertible.d_to_18
                                                            (coe
                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10))))
                                                            (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Certs.d_ccHotKeys_926
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Certs.d_gState_942
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Ledger.d_certState_2140
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Epoch.d_ls_2294
                                                                           (coe v4)))))))))))
                                             (coe
                                                MAlonzo.Code.Ledger.Foreign.HSLedger.Enact.C_MkEnactState_57
                                                (coe
                                                   MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                   () erased () erased
                                                   (coe
                                                      MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                                                   (coe
                                                      MAlonzo.Code.Data.Product.Base.du_map_128
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.d_to_18
                                                         (coe
                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                            (coe
                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.du_Conv'45'HSMap_70
                                                                  (let v6
                                                                         = MAlonzo.Code.Ledger.Foreign.HSLedger.Core.d_HSTransactionStructure_844 in
                                                                   coe
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Transaction.d_crypto_1234
                                                                                 (coe v6))))
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Transaction.d_crypto_1234
                                                                              (coe v6)))))
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Conv'45'Rational_24))))
                                                      (coe
                                                         (\ v6 ->
                                                            MAlonzo.Code.Foreign.Convertible.d_to_18
                                                              (coe
                                                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Enact.d_cc_842
                                                         (coe
                                                            MAlonzo.Code.Ledger.Epoch.d_es_2296
                                                            (coe v4)))))
                                                (coe
                                                   MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                   () erased () erased
                                                   (coe
                                                      MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                                                   (coe
                                                      MAlonzo.Code.Data.Product.Base.du_map_128
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.d_to_18
                                                         (coe
                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                            (coe
                                                               MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                               (coe
                                                                  (\ v6 ->
                                                                     coe
                                                                       MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                               (coe
                                                                  (\ v6 ->
                                                                     coe
                                                                       MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                                            (coe
                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))))
                                                      (coe
                                                         (\ v6 ->
                                                            MAlonzo.Code.Foreign.Convertible.d_to_18
                                                              (coe
                                                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Enact.d_constitution_844
                                                         (coe
                                                            MAlonzo.Code.Ledger.Epoch.d_es_2296
                                                            (coe v4)))))
                                                (coe
                                                   MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                   () erased () erased
                                                   (coe
                                                      MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                                                   (coe
                                                      MAlonzo.Code.Data.Product.Base.du_map_128
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.d_to_18
                                                         (coe
                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                            (coe
                                                               MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                                            (coe
                                                               MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)))
                                                      (coe
                                                         (\ v6 ->
                                                            MAlonzo.Code.Foreign.Convertible.d_to_18
                                                              (coe
                                                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Enact.d_pv_846
                                                         (coe
                                                            MAlonzo.Code.Ledger.Epoch.d_es_2296
                                                            (coe v4)))))
                                                (coe
                                                   MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                   () erased () erased
                                                   (coe
                                                      MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                                                   (coe
                                                      MAlonzo.Code.Data.Product.Base.du_map_128
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.d_to_18
                                                         (coe
                                                            MAlonzo.Code.Ledger.Foreign.HSLedger.PParams.d_Conv'45'PParams_22))
                                                      (coe
                                                         (\ v6 ->
                                                            MAlonzo.Code.Foreign.Convertible.d_to_18
                                                              (coe
                                                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Enact.d_pparams_848
                                                         (coe
                                                            MAlonzo.Code.Ledger.Epoch.d_es_2296
                                                            (coe v4)))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.d_to_18
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                         (coe
                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                            (coe
                                                               MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'RwdAddr_22)
                                                            (coe
                                                               MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)))
                                                      (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                         (coe
                                                            MAlonzo.Code.Ledger.Enact.d_withdrawals_850
                                                            (coe
                                                               MAlonzo.Code.Ledger.Epoch.d_es_2296
                                                               (coe v4)))))))
                                             (coe
                                                MAlonzo.Code.Ledger.Foreign.HSLedger.Ratify.C_MkRatifyState_4845
                                                (coe
                                                   MAlonzo.Code.Ledger.Foreign.HSLedger.Enact.C_MkEnactState_57
                                                   (coe
                                                      MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                      () erased () erased
                                                      (coe
                                                         MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                                                      (coe
                                                         MAlonzo.Code.Data.Product.Base.du_map_128
                                                         (coe
                                                            MAlonzo.Code.Foreign.Convertible.d_to_18
                                                            (coe
                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.du_Conv'45'HSMap_70
                                                                     (let v6
                                                                            = MAlonzo.Code.Ledger.Foreign.HSLedger.Core.d_HSTransactionStructure_844 in
                                                                      coe
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Transaction.d_crypto_1234
                                                                                    (coe v6))))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Transaction.d_crypto_1234
                                                                                 (coe v6)))))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Conv'45'Rational_24))))
                                                         (coe
                                                            (\ v6 ->
                                                               MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                 (coe
                                                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Enact.d_cc_842
                                                            (coe
                                                               MAlonzo.Code.Ledger.Ratify.d_es_2000
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Epoch.d_fut_2298
                                                                  (coe v4))))))
                                                   (coe
                                                      MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                      () erased () erased
                                                      (coe
                                                         MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                                                      (coe
                                                         MAlonzo.Code.Data.Product.Base.du_map_128
                                                         (coe
                                                            MAlonzo.Code.Foreign.Convertible.d_to_18
                                                            (coe
                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                                  (coe
                                                                     (\ v6 ->
                                                                        coe
                                                                          MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                                  (coe
                                                                     (\ v6 ->
                                                                        coe
                                                                          MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))))
                                                         (coe
                                                            (\ v6 ->
                                                               MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                 (coe
                                                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Enact.d_constitution_844
                                                            (coe
                                                               MAlonzo.Code.Ledger.Ratify.d_es_2000
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Epoch.d_fut_2298
                                                                  (coe v4))))))
                                                   (coe
                                                      MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                      () erased () erased
                                                      (coe
                                                         MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                                                      (coe
                                                         MAlonzo.Code.Data.Product.Base.du_map_128
                                                         (coe
                                                            MAlonzo.Code.Foreign.Convertible.d_to_18
                                                            (coe
                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)))
                                                         (coe
                                                            (\ v6 ->
                                                               MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                 (coe
                                                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Enact.d_pv_846
                                                            (coe
                                                               MAlonzo.Code.Ledger.Ratify.d_es_2000
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Epoch.d_fut_2298
                                                                  (coe v4))))))
                                                   (coe
                                                      MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                      () erased () erased
                                                      (coe
                                                         MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                                                      (coe
                                                         MAlonzo.Code.Data.Product.Base.du_map_128
                                                         (coe
                                                            MAlonzo.Code.Foreign.Convertible.d_to_18
                                                            (coe
                                                               MAlonzo.Code.Ledger.Foreign.HSLedger.PParams.d_Conv'45'PParams_22))
                                                         (coe
                                                            (\ v6 ->
                                                               MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                 (coe
                                                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Enact.d_pparams_848
                                                            (coe
                                                               MAlonzo.Code.Ledger.Ratify.d_es_2000
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Epoch.d_fut_2298
                                                                  (coe v4))))))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.d_to_18
                                                         (coe
                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                            (coe
                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'RwdAddr_22)
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)))
                                                         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                            (coe
                                                               MAlonzo.Code.Ledger.Enact.d_withdrawals_850
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Ratify.d_es_2000
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Epoch.d_fut_2298
                                                                     (coe v4))))))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSSet_38
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.d_to_18
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_118
                                                         (coe
                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                            (coe
                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))
                                                            (coe
                                                               MAlonzo.Code.Ledger.Foreign.HSLedger.Gov.d_Conv'45'GovActionState_326)))
                                                      (MAlonzo.Code.Ledger.Ratify.d_removed_2002
                                                         (coe
                                                            MAlonzo.Code.Ledger.Epoch.d_fut_2298
                                                            (coe v4)))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Ratify.d_delay_2004
                                                   (coe
                                                      MAlonzo.Code.Ledger.Epoch.d_fut_2298
                                                      (coe v4)))))
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_to_18
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_62
                                                (coe
                                                   MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                (coe
                                                   MAlonzo.Code.Ledger.Foreign.HSLedger.NewEpoch.d_Conv'45'RewardUpdate_168))
                                             v5)
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v2 ->
                                 case coe v2 of
                                   MAlonzo.Code.Ledger.Foreign.HSLedger.NewEpoch.C_MkNewEpochState_2127 v3 v4 v5
                                     -> coe
                                          MAlonzo.Code.Ledger.Epoch.C_'10214'_'44'_'44'_'10215''8319''7497'_2316
                                          (coe v3)
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                (coe
                                                   (\ v6 ->
                                                      case coe v6 of
                                                        MAlonzo.Code.Ledger.Epoch.C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_2300 v7 v8 v9 v10 v11
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Foreign.HSLedger.Epoch.C_MkEpochState_3005
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Foreign.HSLedger.PParams.C_MkAcnt_9595
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.PParams.d_treasury_152
                                                                     (coe v7))
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.PParams.d_reserves_154
                                                                     (coe v7)))
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Foreign.HSLedger.Epoch.C_MkSnapshots_1411
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Foreign.HSLedger.Epoch.C_MkSnapshot_135
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                                                                        (coe
                                                                           MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                           (coe
                                                                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                              (coe
                                                                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)))
                                                                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Epoch.d_stake_2252
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Epoch.d_mark_2268
                                                                                    (coe v8))))))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                                                                        (coe
                                                                           MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                           (coe
                                                                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                              (coe
                                                                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)))
                                                                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Epoch.d_delegations_2254
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Epoch.d_mark_2268
                                                                                    (coe v8)))))))
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Foreign.HSLedger.Epoch.C_MkSnapshot_135
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                                                                        (coe
                                                                           MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                           (coe
                                                                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                              (coe
                                                                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)))
                                                                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Epoch.d_stake_2252
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Epoch.d_set_2270
                                                                                    (coe v8))))))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                                                                        (coe
                                                                           MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                           (coe
                                                                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                              (coe
                                                                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)))
                                                                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Epoch.d_delegations_2254
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Epoch.d_set_2270
                                                                                    (coe v8)))))))
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Foreign.HSLedger.Epoch.C_MkSnapshot_135
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                                                                        (coe
                                                                           MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                           (coe
                                                                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                              (coe
                                                                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)))
                                                                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Epoch.d_stake_2252
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Epoch.d_go_2272
                                                                                    (coe v8))))))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                                                                        (coe
                                                                           MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                           (coe
                                                                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                              (coe
                                                                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)))
                                                                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Epoch.d_delegations_2254
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Epoch.d_go_2272
                                                                                    (coe v8)))))))
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Epoch.d_feeSS_2274
                                                                     (coe v8)))
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Foreign.HSLedger.Ledger.C_MkLState_8279
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Foreign.HSLedger.Utxo.C_MkUTxOState_1713
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                                                                        (coe
                                                                           MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                           (coe
                                                                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                              (coe
                                                                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                 (coe
                                                                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))
                                                                                 (coe
                                                                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                    (coe
                                                                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_98
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'BaseAddr_14)
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'BootstrapAddr_18))
                                                                                    (coe
                                                                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                          (coe
                                                                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                                                             (coe
                                                                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_98
                                                                                                (coe
                                                                                                   MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                                                                   (coe
                                                                                                      (\ v12 ->
                                                                                                         coe
                                                                                                           MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                                                                   (coe
                                                                                                      (\ v12 ->
                                                                                                         coe
                                                                                                           MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                                                                   (coe
                                                                                                      (\ v12 ->
                                                                                                         coe
                                                                                                           MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                                                                   (coe
                                                                                                      (\ v12 ->
                                                                                                         coe
                                                                                                           MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))))
                                                                                          (coe
                                                                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                                                             (coe
                                                                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_98
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Foreign.HSLedger.Transaction.d_Conv'45'Timelock_14)
                                                                                                (coe
                                                                                                   MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                                                                   (coe
                                                                                                      (\ v12 ->
                                                                                                         coe
                                                                                                           MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                                                                   (coe
                                                                                                      (\ v12 ->
                                                                                                         coe
                                                                                                           MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))))))))))
                                                                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Utxo.d_utxo_1954
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Ledger.d_utxoSt_2136
                                                                                    (coe v9))))))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Utxo.d_fees_1956
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Ledger.d_utxoSt_2136
                                                                           (coe v9)))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                                                                        (coe
                                                                           MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                           (coe
                                                                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                              (coe
                                                                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Foreign.HSLedger.Certs.d_Conv'45'DepositPurpose_94)
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)))
                                                                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Utxo.d_deposits_1958
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Ledger.d_utxoSt_2136
                                                                                    (coe v9))))))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Utxo.d_donations_1960
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Ledger.d_utxoSt_2136
                                                                           (coe v9))))
                                                                  (coe
                                                                     MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                                     MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20
                                                                     () erased () erased
                                                                     (MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                        (coe
                                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                           (coe
                                                                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Foreign.HSLedger.Gov.d_Conv'45'GovActionState_326)))
                                                                     (MAlonzo.Code.Ledger.Ledger.d_govSt_2138
                                                                        (coe v9)))
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Foreign.HSLedger.Ledger.C_MkCertState_4795
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Foreign.HSLedger.Ledger.C_MkDState_2099
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                                                                           (coe
                                                                              MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                              (coe
                                                                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                 (coe
                                                                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Foreign.HSLedger.Gov.d_Conv'45'VDeleg_146)))
                                                                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Certs.d_voteDelegs_898
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Certs.d_dState_938
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Ledger.d_certState_2140
                                                                                          (coe
                                                                                             v9)))))))
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                                                                           (coe
                                                                              MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                              (coe
                                                                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                 (coe
                                                                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)))
                                                                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Certs.d_stakeDelegs_900
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Certs.d_dState_938
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Ledger.d_certState_2140
                                                                                          (coe
                                                                                             v9)))))))
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                                                                           (coe
                                                                              MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                              (coe
                                                                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                 (coe
                                                                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)))
                                                                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Certs.d_rewards_902
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Certs.d_dState_938
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Ledger.d_certState_2140
                                                                                          (coe
                                                                                             v9))))))))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Foreign.HSLedger.Certs.C_MkPState_2589
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                                                                           (coe
                                                                              MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                              (coe
                                                                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                 (coe
                                                                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Foreign.HSLedger.Certs.d_Conv'45'PoolParams_90)))
                                                                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Certs.d_pools_912
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Certs.d_pState_940
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Ledger.d_certState_2140
                                                                                          (coe
                                                                                             v9)))))))
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                                                                           (coe
                                                                              MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                              (coe
                                                                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                 (coe
                                                                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)))
                                                                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Certs.d_retiring_914
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Certs.d_pState_940
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Ledger.d_certState_2140
                                                                                          (coe
                                                                                             v9))))))))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Foreign.HSLedger.Ledger.C_MkGState_349
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                                                                           (coe
                                                                              MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                              (coe
                                                                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                 (coe
                                                                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)))
                                                                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Certs.d_dreps_924
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Certs.d_gState_942
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Ledger.d_certState_2140
                                                                                          (coe
                                                                                             v9)))))))
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                                                                           (coe
                                                                              MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                              (coe
                                                                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                 (coe
                                                                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                                                                    (coe
                                                                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10))))
                                                                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Certs.d_ccHotKeys_926
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Certs.d_gState_942
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Ledger.d_certState_2140
                                                                                          (coe
                                                                                             v9))))))))))
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Foreign.HSLedger.Enact.C_MkEnactState_57
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                     () erased () erased
                                                                     (coe
                                                                        MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                                                                     (coe
                                                                        MAlonzo.Code.Data.Product.Base.du_map_128
                                                                        (coe
                                                                           MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                           (coe
                                                                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                                              (coe
                                                                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.du_Conv'45'HSMap_70
                                                                                    (let v12
                                                                                           = MAlonzo.Code.Ledger.Foreign.HSLedger.Core.d_HSTransactionStructure_844 in
                                                                                     coe
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Transaction.d_crypto_1234
                                                                                                   (coe
                                                                                                      v12))))
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Transaction.d_crypto_1234
                                                                                                (coe
                                                                                                   v12)))))
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Conv'45'Rational_24))))
                                                                        (coe
                                                                           (\ v12 ->
                                                                              MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                (coe
                                                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))))
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Enact.d_cc_842
                                                                           (coe v10))))
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                     () erased () erased
                                                                     (coe
                                                                        MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                                                                     (coe
                                                                        MAlonzo.Code.Data.Product.Base.du_map_128
                                                                        (coe
                                                                           MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                           (coe
                                                                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                              (coe
                                                                                 MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                                                 (coe
                                                                                    (\ v12 ->
                                                                                       coe
                                                                                         MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                                                 (coe
                                                                                    (\ v12 ->
                                                                                       coe
                                                                                         MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                                                              (coe
                                                                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))))
                                                                        (coe
                                                                           (\ v12 ->
                                                                              MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                (coe
                                                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))))
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Enact.d_constitution_844
                                                                           (coe v10))))
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                     () erased () erased
                                                                     (coe
                                                                        MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                                                                     (coe
                                                                        MAlonzo.Code.Data.Product.Base.du_map_128
                                                                        (coe
                                                                           MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                           (coe
                                                                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)))
                                                                        (coe
                                                                           (\ v12 ->
                                                                              MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                (coe
                                                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))))
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Enact.d_pv_846
                                                                           (coe v10))))
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                     () erased () erased
                                                                     (coe
                                                                        MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                                                                     (coe
                                                                        MAlonzo.Code.Data.Product.Base.du_map_128
                                                                        (coe
                                                                           MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Foreign.HSLedger.PParams.d_Conv'45'PParams_22))
                                                                        (coe
                                                                           (\ v12 ->
                                                                              MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                (coe
                                                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))))
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Enact.d_pparams_848
                                                                           (coe v10))))
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                                                                     (coe
                                                                        MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                        (coe
                                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                           (coe
                                                                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'RwdAddr_22)
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)))
                                                                        (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Enact.d_withdrawals_850
                                                                              (coe v10))))))
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Foreign.HSLedger.Ratify.C_MkRatifyState_4845
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Foreign.HSLedger.Enact.C_MkEnactState_57
                                                                     (coe
                                                                        MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                        () erased () erased
                                                                        (coe
                                                                           MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                                                                        (coe
                                                                           MAlonzo.Code.Data.Product.Base.du_map_128
                                                                           (coe
                                                                              MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                              (coe
                                                                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                                                 (coe
                                                                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.du_Conv'45'HSMap_70
                                                                                       (let v12
                                                                                              = MAlonzo.Code.Ledger.Foreign.HSLedger.Core.d_HSTransactionStructure_844 in
                                                                                        coe
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Transaction.d_crypto_1234
                                                                                                      (coe
                                                                                                         v12))))
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Transaction.d_crypto_1234
                                                                                                   (coe
                                                                                                      v12)))))
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Conv'45'Rational_24))))
                                                                           (coe
                                                                              (\ v12 ->
                                                                                 MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                   (coe
                                                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Enact.d_cc_842
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Ratify.d_es_2000
                                                                                 (coe v11)))))
                                                                     (coe
                                                                        MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                        () erased () erased
                                                                        (coe
                                                                           MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                                                                        (coe
                                                                           MAlonzo.Code.Data.Product.Base.du_map_128
                                                                           (coe
                                                                              MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                              (coe
                                                                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                 (coe
                                                                                    MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                                                    (coe
                                                                                       (\ v12 ->
                                                                                          coe
                                                                                            MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                                                    (coe
                                                                                       (\ v12 ->
                                                                                          coe
                                                                                            MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                                                                 (coe
                                                                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))))
                                                                           (coe
                                                                              (\ v12 ->
                                                                                 MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                   (coe
                                                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Enact.d_constitution_844
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Ratify.d_es_2000
                                                                                 (coe v11)))))
                                                                     (coe
                                                                        MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                        () erased () erased
                                                                        (coe
                                                                           MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                                                                        (coe
                                                                           MAlonzo.Code.Data.Product.Base.du_map_128
                                                                           (coe
                                                                              MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                              (coe
                                                                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)))
                                                                           (coe
                                                                              (\ v12 ->
                                                                                 MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                   (coe
                                                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Enact.d_pv_846
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Ratify.d_es_2000
                                                                                 (coe v11)))))
                                                                     (coe
                                                                        MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                        () erased () erased
                                                                        (coe
                                                                           MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                                                                        (coe
                                                                           MAlonzo.Code.Data.Product.Base.du_map_128
                                                                           (coe
                                                                              MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Foreign.HSLedger.PParams.d_Conv'45'PParams_22))
                                                                           (coe
                                                                              (\ v12 ->
                                                                                 MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                   (coe
                                                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Enact.d_pparams_848
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Ratify.d_es_2000
                                                                                 (coe v11)))))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                                                                        (coe
                                                                           MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                           (coe
                                                                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                              (coe
                                                                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'RwdAddr_22)
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)))
                                                                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Enact.d_withdrawals_850
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Ratify.d_es_2000
                                                                                    (coe v11)))))))
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSSet_38
                                                                     (coe
                                                                        MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                        (coe
                                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_118
                                                                           (coe
                                                                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                              (coe
                                                                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Foreign.HSLedger.Gov.d_Conv'45'GovActionState_326)))
                                                                        (MAlonzo.Code.Ledger.Ratify.d_removed_2002
                                                                           (coe v11))))
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Ratify.d_delay_2004
                                                                     (coe v11)))
                                                        _ -> MAlonzo.RTE.mazUnreachableError))
                                                (coe
                                                   (\ v6 ->
                                                      case coe v6 of
                                                        MAlonzo.Code.Ledger.Foreign.HSLedger.Epoch.C_MkEpochState_3005 v7 v8 v9 v10 v11
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Epoch.C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_2300
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                                     (coe
                                                                        (\ v12 ->
                                                                           case coe v12 of
                                                                             MAlonzo.Code.Ledger.PParams.C_'10214'_'44'_'10215''7491'_156 v13 v14
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Foreign.HSLedger.PParams.C_MkAcnt_9595
                                                                                    (coe v13)
                                                                                    (coe v14)
                                                                             _ -> MAlonzo.RTE.mazUnreachableError))
                                                                     (coe
                                                                        (\ v12 ->
                                                                           case coe v12 of
                                                                             MAlonzo.Code.Ledger.Foreign.HSLedger.PParams.C_MkAcnt_9595 v13 v14
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.PParams.C_'10214'_'44'_'10215''7491'_156
                                                                                    (coe v13)
                                                                                    (coe v14)
                                                                             _ -> MAlonzo.RTE.mazUnreachableError)))
                                                                  v7)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                                     (coe
                                                                        (\ v12 ->
                                                                           case coe v12 of
                                                                             MAlonzo.Code.Ledger.Epoch.C_'10214'_'44'_'44'_'44'_'10215''738''738'_2276 v13 v14 v15 v16
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Foreign.HSLedger.Epoch.C_MkSnapshots_1411
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Foreign.HSLedger.Epoch.C_MkSnapshot_135
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                                                                                          (coe
                                                                                             MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                             (coe
                                                                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                                (coe
                                                                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)))
                                                                                             (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Epoch.d_stake_2252
                                                                                                   (coe
                                                                                                      v13)))))
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                                                                                          (coe
                                                                                             MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                             (coe
                                                                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                                (coe
                                                                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)))
                                                                                             (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Epoch.d_delegations_2254
                                                                                                   (coe
                                                                                                      v13))))))
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Foreign.HSLedger.Epoch.C_MkSnapshot_135
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                                                                                          (coe
                                                                                             MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                             (coe
                                                                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                                (coe
                                                                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)))
                                                                                             (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Epoch.d_stake_2252
                                                                                                   (coe
                                                                                                      v14)))))
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                                                                                          (coe
                                                                                             MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                             (coe
                                                                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                                (coe
                                                                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)))
                                                                                             (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Epoch.d_delegations_2254
                                                                                                   (coe
                                                                                                      v14))))))
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Foreign.HSLedger.Epoch.C_MkSnapshot_135
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                                                                                          (coe
                                                                                             MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                             (coe
                                                                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                                (coe
                                                                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)))
                                                                                             (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Epoch.d_stake_2252
                                                                                                   (coe
                                                                                                      v15)))))
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                                                                                          (coe
                                                                                             MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                             (coe
                                                                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                                (coe
                                                                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)))
                                                                                             (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Epoch.d_delegations_2254
                                                                                                   (coe
                                                                                                      v15))))))
                                                                                    (coe v16)
                                                                             _ -> MAlonzo.RTE.mazUnreachableError))
                                                                     (coe
                                                                        (\ v12 ->
                                                                           case coe v12 of
                                                                             MAlonzo.Code.Ledger.Foreign.HSLedger.Epoch.C_MkSnapshots_1411 v13 v14 v15 v16
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Epoch.C_'10214'_'44'_'44'_'44'_'10215''738''738'_2276
                                                                                    (coe
                                                                                       MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                                                          (coe
                                                                                             (\ v17 ->
                                                                                                case coe
                                                                                                       v17 of
                                                                                                  MAlonzo.Code.Ledger.Epoch.C_'10214'_'44'_'10215''738'_2256 v18 v19
                                                                                                    -> coe
                                                                                                         MAlonzo.Code.Ledger.Foreign.HSLedger.Epoch.C_MkSnapshot_135
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)))
                                                                                                               (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                  (coe
                                                                                                                     v18))))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)))
                                                                                                               (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                  (coe
                                                                                                                     v19))))
                                                                                                  _ -> MAlonzo.RTE.mazUnreachableError))
                                                                                          (coe
                                                                                             (\ v17 ->
                                                                                                case coe
                                                                                                       v17 of
                                                                                                  MAlonzo.Code.Ledger.Foreign.HSLedger.Epoch.C_MkSnapshot_135 v18 v19
                                                                                                    -> coe
                                                                                                         MAlonzo.Code.Ledger.Epoch.C_'10214'_'44'_'10215''738'_2256
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                                                                               (let v20
                                                                                                                      = MAlonzo.Code.Ledger.Foreign.HSLedger.Core.d_HSTransactionStructure_844 in
                                                                                                                coe
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Ledger.Transaction.d_crypto_1234
                                                                                                                              (coe
                                                                                                                                 v20))))
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Transaction.d_crypto_1234
                                                                                                                           (coe
                                                                                                                              v20)))))
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))
                                                                                                            (MAlonzo.Code.Ledger.Foreign.HSTypes.d_assocList_24
                                                                                                               (coe
                                                                                                                  v18)))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                                                                               (let v20
                                                                                                                      = MAlonzo.Code.Ledger.Foreign.HSLedger.Core.d_HSTransactionStructure_844 in
                                                                                                                coe
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Ledger.Transaction.d_crypto_1234
                                                                                                                              (coe
                                                                                                                                 v20))))
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Transaction.d_crypto_1234
                                                                                                                           (coe
                                                                                                                              v20)))))
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))
                                                                                                            (MAlonzo.Code.Ledger.Foreign.HSTypes.d_assocList_24
                                                                                                               (coe
                                                                                                                  v19)))
                                                                                                  _ -> MAlonzo.RTE.mazUnreachableError)))
                                                                                       v13)
                                                                                    (coe
                                                                                       MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                                                          (coe
                                                                                             (\ v17 ->
                                                                                                case coe
                                                                                                       v17 of
                                                                                                  MAlonzo.Code.Ledger.Epoch.C_'10214'_'44'_'10215''738'_2256 v18 v19
                                                                                                    -> coe
                                                                                                         MAlonzo.Code.Ledger.Foreign.HSLedger.Epoch.C_MkSnapshot_135
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)))
                                                                                                               (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                  (coe
                                                                                                                     v18))))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)))
                                                                                                               (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                  (coe
                                                                                                                     v19))))
                                                                                                  _ -> MAlonzo.RTE.mazUnreachableError))
                                                                                          (coe
                                                                                             (\ v17 ->
                                                                                                case coe
                                                                                                       v17 of
                                                                                                  MAlonzo.Code.Ledger.Foreign.HSLedger.Epoch.C_MkSnapshot_135 v18 v19
                                                                                                    -> coe
                                                                                                         MAlonzo.Code.Ledger.Epoch.C_'10214'_'44'_'10215''738'_2256
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                                                                               (let v20
                                                                                                                      = MAlonzo.Code.Ledger.Foreign.HSLedger.Core.d_HSTransactionStructure_844 in
                                                                                                                coe
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Ledger.Transaction.d_crypto_1234
                                                                                                                              (coe
                                                                                                                                 v20))))
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Transaction.d_crypto_1234
                                                                                                                           (coe
                                                                                                                              v20)))))
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))
                                                                                                            (MAlonzo.Code.Ledger.Foreign.HSTypes.d_assocList_24
                                                                                                               (coe
                                                                                                                  v18)))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                                                                               (let v20
                                                                                                                      = MAlonzo.Code.Ledger.Foreign.HSLedger.Core.d_HSTransactionStructure_844 in
                                                                                                                coe
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Ledger.Transaction.d_crypto_1234
                                                                                                                              (coe
                                                                                                                                 v20))))
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Transaction.d_crypto_1234
                                                                                                                           (coe
                                                                                                                              v20)))))
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))
                                                                                                            (MAlonzo.Code.Ledger.Foreign.HSTypes.d_assocList_24
                                                                                                               (coe
                                                                                                                  v19)))
                                                                                                  _ -> MAlonzo.RTE.mazUnreachableError)))
                                                                                       v14)
                                                                                    (coe
                                                                                       MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                                                          (coe
                                                                                             (\ v17 ->
                                                                                                case coe
                                                                                                       v17 of
                                                                                                  MAlonzo.Code.Ledger.Epoch.C_'10214'_'44'_'10215''738'_2256 v18 v19
                                                                                                    -> coe
                                                                                                         MAlonzo.Code.Ledger.Foreign.HSLedger.Epoch.C_MkSnapshot_135
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)))
                                                                                                               (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                  (coe
                                                                                                                     v18))))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)))
                                                                                                               (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                  (coe
                                                                                                                     v19))))
                                                                                                  _ -> MAlonzo.RTE.mazUnreachableError))
                                                                                          (coe
                                                                                             (\ v17 ->
                                                                                                case coe
                                                                                                       v17 of
                                                                                                  MAlonzo.Code.Ledger.Foreign.HSLedger.Epoch.C_MkSnapshot_135 v18 v19
                                                                                                    -> coe
                                                                                                         MAlonzo.Code.Ledger.Epoch.C_'10214'_'44'_'10215''738'_2256
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                                                                               (let v20
                                                                                                                      = MAlonzo.Code.Ledger.Foreign.HSLedger.Core.d_HSTransactionStructure_844 in
                                                                                                                coe
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Ledger.Transaction.d_crypto_1234
                                                                                                                              (coe
                                                                                                                                 v20))))
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Transaction.d_crypto_1234
                                                                                                                           (coe
                                                                                                                              v20)))))
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))
                                                                                                            (MAlonzo.Code.Ledger.Foreign.HSTypes.d_assocList_24
                                                                                                               (coe
                                                                                                                  v18)))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                                                                               (let v20
                                                                                                                      = MAlonzo.Code.Ledger.Foreign.HSLedger.Core.d_HSTransactionStructure_844 in
                                                                                                                coe
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Ledger.Transaction.d_crypto_1234
                                                                                                                              (coe
                                                                                                                                 v20))))
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Transaction.d_crypto_1234
                                                                                                                           (coe
                                                                                                                              v20)))))
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))
                                                                                                            (MAlonzo.Code.Ledger.Foreign.HSTypes.d_assocList_24
                                                                                                               (coe
                                                                                                                  v19)))
                                                                                                  _ -> MAlonzo.RTE.mazUnreachableError)))
                                                                                       v15)
                                                                                    (coe v16)
                                                                             _ -> MAlonzo.RTE.mazUnreachableError)))
                                                                  v8)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                                     (coe
                                                                        (\ v12 ->
                                                                           case coe v12 of
                                                                             MAlonzo.Code.Ledger.Ledger.C_'10214'_'44'_'44'_'10215''737'_2142 v13 v14 v15
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Foreign.HSLedger.Ledger.C_MkLState_8279
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Foreign.HSLedger.Utxo.C_MkUTxOState_1713
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                                                                                          (coe
                                                                                             MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                             (coe
                                                                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                                (coe
                                                                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_98
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'BaseAddr_14)
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'BootstrapAddr_18))
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_98
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                                                                                     (coe
                                                                                                                        (\ v16 ->
                                                                                                                           coe
                                                                                                                             MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                                                                                     (coe
                                                                                                                        (\ v16 ->
                                                                                                                           coe
                                                                                                                             MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                                                                                     (coe
                                                                                                                        (\ v16 ->
                                                                                                                           coe
                                                                                                                             MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                                                                                     (coe
                                                                                                                        (\ v16 ->
                                                                                                                           coe
                                                                                                                             MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))))
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_98
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Foreign.HSLedger.Transaction.d_Conv'45'Timelock_14)
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                                                                                     (coe
                                                                                                                        (\ v16 ->
                                                                                                                           coe
                                                                                                                             MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                                                                                     (coe
                                                                                                                        (\ v16 ->
                                                                                                                           coe
                                                                                                                             MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))))))))))
                                                                                             (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Utxo.d_utxo_1954
                                                                                                   (coe
                                                                                                      v13)))))
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Utxo.d_fees_1956
                                                                                          (coe v13))
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                                                                                          (coe
                                                                                             MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                             (coe
                                                                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                                (coe
                                                                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Foreign.HSLedger.Certs.d_Conv'45'DepositPurpose_94)
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)))
                                                                                             (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Utxo.d_deposits_1958
                                                                                                   (coe
                                                                                                      v13)))))
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Utxo.d_donations_1960
                                                                                          (coe
                                                                                             v13)))
                                                                                    (coe
                                                                                       MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                                                       MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20
                                                                                       () erased ()
                                                                                       erased
                                                                                       (MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                          (coe
                                                                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                             (coe
                                                                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Foreign.HSLedger.Gov.d_Conv'45'GovActionState_326)))
                                                                                       v14)
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Foreign.HSLedger.Ledger.C_MkCertState_4795
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Foreign.HSLedger.Ledger.C_MkDState_2099
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                                                                                             (coe
                                                                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                (coe
                                                                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Foreign.HSLedger.Gov.d_Conv'45'VDeleg_146)))
                                                                                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Certs.d_voteDelegs_898
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Certs.d_dState_938
                                                                                                         (coe
                                                                                                            v15))))))
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                                                                                             (coe
                                                                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                (coe
                                                                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)))
                                                                                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Certs.d_stakeDelegs_900
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Certs.d_dState_938
                                                                                                         (coe
                                                                                                            v15))))))
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                                                                                             (coe
                                                                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                (coe
                                                                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)))
                                                                                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Certs.d_rewards_902
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Certs.d_dState_938
                                                                                                         (coe
                                                                                                            v15)))))))
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Foreign.HSLedger.Certs.C_MkPState_2589
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                                                                                             (coe
                                                                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                (coe
                                                                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Foreign.HSLedger.Certs.d_Conv'45'PoolParams_90)))
                                                                                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Certs.d_pools_912
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Certs.d_pState_940
                                                                                                         (coe
                                                                                                            v15))))))
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                                                                                             (coe
                                                                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                (coe
                                                                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)))
                                                                                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Certs.d_retiring_914
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Certs.d_pState_940
                                                                                                         (coe
                                                                                                            v15)))))))
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Foreign.HSLedger.Ledger.C_MkGState_349
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                                                                                             (coe
                                                                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                (coe
                                                                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)))
                                                                                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Certs.d_dreps_924
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Certs.d_gState_942
                                                                                                         (coe
                                                                                                            v15))))))
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                                                                                             (coe
                                                                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                (coe
                                                                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10))))
                                                                                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Certs.d_ccHotKeys_926
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Certs.d_gState_942
                                                                                                         (coe
                                                                                                            v15))))))))
                                                                             _ -> MAlonzo.RTE.mazUnreachableError))
                                                                     (coe
                                                                        (\ v12 ->
                                                                           case coe v12 of
                                                                             MAlonzo.Code.Ledger.Foreign.HSLedger.Ledger.C_MkLState_8279 v13 v14 v15
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Ledger.C_'10214'_'44'_'44'_'10215''737'_2142
                                                                                    (coe
                                                                                       MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                                                          (coe
                                                                                             (\ v16 ->
                                                                                                case coe
                                                                                                       v16 of
                                                                                                  MAlonzo.Code.Ledger.Utxo.C_'10214'_'44'_'44'_'44'_'10215''7512'_1962 v17 v18 v19 v20
                                                                                                    -> coe
                                                                                                         MAlonzo.Code.Ledger.Foreign.HSLedger.Utxo.C_MkUTxOState_1713
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_98
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'BaseAddr_14)
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'BootstrapAddr_18))
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_98
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                                                                                                       (coe
                                                                                                                                          (\ v21 ->
                                                                                                                                             coe
                                                                                                                                               MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                                                                                                       (coe
                                                                                                                                          (\ v21 ->
                                                                                                                                             coe
                                                                                                                                               MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                                                                                                       (coe
                                                                                                                                          (\ v21 ->
                                                                                                                                             coe
                                                                                                                                               MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                                                                                                       (coe
                                                                                                                                          (\ v21 ->
                                                                                                                                             coe
                                                                                                                                               MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))))
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_98
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Ledger.Foreign.HSLedger.Transaction.d_Conv'45'Timelock_14)
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                                                                                                       (coe
                                                                                                                                          (\ v21 ->
                                                                                                                                             coe
                                                                                                                                               MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                                                                                                       (coe
                                                                                                                                          (\ v21 ->
                                                                                                                                             coe
                                                                                                                                               MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))))))))))
                                                                                                               (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                  (coe
                                                                                                                     v17))))
                                                                                                         (coe
                                                                                                            v18)
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Foreign.HSLedger.Certs.d_Conv'45'DepositPurpose_94)
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)))
                                                                                                               (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                  (coe
                                                                                                                     v19))))
                                                                                                         (coe
                                                                                                            v20)
                                                                                                  _ -> MAlonzo.RTE.mazUnreachableError))
                                                                                          (coe
                                                                                             (\ v16 ->
                                                                                                case coe
                                                                                                       v16 of
                                                                                                  MAlonzo.Code.Ledger.Foreign.HSLedger.Utxo.C_MkUTxOState_1713 v17 v18 v19 v20
                                                                                                    -> coe
                                                                                                         MAlonzo.Code.Ledger.Utxo.C_'10214'_'44'_'44'_'44'_'10215''7512'_1962
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                                                                                  ()
                                                                                                                  erased
                                                                                                                  ()
                                                                                                                  erased
                                                                                                                  MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
                                                                                                                  MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_98
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'BaseAddr_14)
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'BootstrapAddr_18))
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_98
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                                                                                                 (coe
                                                                                                                                    (\ v21 ->
                                                                                                                                       coe
                                                                                                                                         MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                                                                                                 (coe
                                                                                                                                    (\ v21 ->
                                                                                                                                       coe
                                                                                                                                         MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                                                                                                 (coe
                                                                                                                                    (\ v21 ->
                                                                                                                                       coe
                                                                                                                                         MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                                                                                                 (coe
                                                                                                                                    (\ v21 ->
                                                                                                                                       coe
                                                                                                                                         MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))))
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_98
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Ledger.Foreign.HSLedger.Transaction.d_Conv'45'Timelock_14)
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                                                                                                 (coe
                                                                                                                                    (\ v21 ->
                                                                                                                                       coe
                                                                                                                                         MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                                                                                                 (coe
                                                                                                                                    (\ v21 ->
                                                                                                                                       coe
                                                                                                                                         MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))))))))
                                                                                                            (MAlonzo.Code.Ledger.Foreign.HSTypes.d_assocList_24
                                                                                                               (coe
                                                                                                                  v17)))
                                                                                                         (coe
                                                                                                            v18)
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                                                                               (let v21
                                                                                                                      = MAlonzo.Code.Ledger.Foreign.HSLedger.Core.d_HSTransactionStructure_844 in
                                                                                                                coe
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_826
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Transaction.d_govStructure_2350
                                                                                                                        (coe
                                                                                                                           v21))))
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Foreign.HSLedger.Certs.d_Conv'45'DepositPurpose_94)
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))
                                                                                                            (MAlonzo.Code.Ledger.Foreign.HSTypes.d_assocList_24
                                                                                                               (coe
                                                                                                                  v19)))
                                                                                                         (coe
                                                                                                            v20)
                                                                                                  _ -> MAlonzo.RTE.mazUnreachableError)))
                                                                                       v13)
                                                                                    (coe
                                                                                       MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                                                       MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20
                                                                                       () erased ()
                                                                                       erased
                                                                                       (MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                          (coe
                                                                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                             (coe
                                                                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Foreign.HSLedger.Gov.d_Conv'45'GovActionState_326)))
                                                                                       v14)
                                                                                    (coe
                                                                                       MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                                                          (coe
                                                                                             (\ v16 ->
                                                                                                case coe
                                                                                                       v16 of
                                                                                                  MAlonzo.Code.Ledger.Certs.C_'10214'_'44'_'44'_'10215''7580''738'_944 v17 v18 v19
                                                                                                    -> coe
                                                                                                         MAlonzo.Code.Ledger.Foreign.HSLedger.Ledger.C_MkCertState_4795
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Foreign.HSLedger.Ledger.C_MkDState_2099
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Foreign.HSLedger.Gov.d_Conv'45'VDeleg_146)))
                                                                                                                  (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Certs.d_voteDelegs_898
                                                                                                                        (coe
                                                                                                                           v17)))))
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)))
                                                                                                                  (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Certs.d_stakeDelegs_900
                                                                                                                        (coe
                                                                                                                           v17)))))
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)))
                                                                                                                  (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Certs.d_rewards_902
                                                                                                                        (coe
                                                                                                                           v17))))))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Foreign.HSLedger.Certs.C_MkPState_2589
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Foreign.HSLedger.Certs.d_Conv'45'PoolParams_90)))
                                                                                                                  (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Certs.d_pools_912
                                                                                                                        (coe
                                                                                                                           v18)))))
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)))
                                                                                                                  (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Certs.d_retiring_914
                                                                                                                        (coe
                                                                                                                           v18))))))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Foreign.HSLedger.Ledger.C_MkGState_349
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)))
                                                                                                                  (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Certs.d_dreps_924
                                                                                                                        (coe
                                                                                                                           v19)))))
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10))))
                                                                                                                  (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Certs.d_ccHotKeys_926
                                                                                                                        (coe
                                                                                                                           v19))))))
                                                                                                  _ -> MAlonzo.RTE.mazUnreachableError))
                                                                                          (coe
                                                                                             (\ v16 ->
                                                                                                case coe
                                                                                                       v16 of
                                                                                                  MAlonzo.Code.Ledger.Foreign.HSLedger.Ledger.C_MkCertState_4795 v17 v18 v19
                                                                                                    -> coe
                                                                                                         MAlonzo.Code.Ledger.Certs.C_'10214'_'44'_'44'_'10215''7580''738'_944
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                                                                               (coe
                                                                                                                  (\ v20 ->
                                                                                                                     case coe
                                                                                                                            v20 of
                                                                                                                       MAlonzo.Code.Ledger.Certs.C_'10214'_'44'_'44'_'10215''7496'_904 v21 v22 v23
                                                                                                                         -> coe
                                                                                                                              MAlonzo.Code.Ledger.Foreign.HSLedger.Ledger.C_MkDState_2099
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                                                                       (coe
                                                                                                                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Ledger.Foreign.HSLedger.Gov.d_Conv'45'VDeleg_146)))
                                                                                                                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                       (coe
                                                                                                                                          v21))))
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                                                                       (coe
                                                                                                                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)))
                                                                                                                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                       (coe
                                                                                                                                          v22))))
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                                                                       (coe
                                                                                                                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)))
                                                                                                                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                       (coe
                                                                                                                                          v23))))
                                                                                                                       _ -> MAlonzo.RTE.mazUnreachableError))
                                                                                                               (coe
                                                                                                                  (\ v20 ->
                                                                                                                     case coe
                                                                                                                            v20 of
                                                                                                                       MAlonzo.Code.Ledger.Foreign.HSLedger.Ledger.C_MkDState_2099 v21 v22 v23
                                                                                                                         -> coe
                                                                                                                              MAlonzo.Code.Ledger.Certs.C_'10214'_'44'_'44'_'10215''7496'_904
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                                                                                                    (let v24
                                                                                                                                           = MAlonzo.Code.Ledger.Foreign.HSLedger.Core.d_HSTransactionStructure_844 in
                                                                                                                                     coe
                                                                                                                                       (coe
                                                                                                                                          MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                                                                                             (coe
                                                                                                                                                MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                                                                                (coe
                                                                                                                                                   MAlonzo.Code.Ledger.Transaction.d_crypto_1234
                                                                                                                                                   (coe
                                                                                                                                                      v24))))
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                                                                             (coe
                                                                                                                                                MAlonzo.Code.Ledger.Transaction.d_crypto_1234
                                                                                                                                                (coe
                                                                                                                                                   v24)))))
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Ledger.Foreign.HSLedger.Gov.d_Conv'45'VDeleg_146))
                                                                                                                                 (MAlonzo.Code.Ledger.Foreign.HSTypes.d_assocList_24
                                                                                                                                    (coe
                                                                                                                                       v21)))
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                                                                                                    (let v24
                                                                                                                                           = MAlonzo.Code.Ledger.Foreign.HSLedger.Core.d_HSTransactionStructure_844 in
                                                                                                                                     coe
                                                                                                                                       (coe
                                                                                                                                          MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                                                                                             (coe
                                                                                                                                                MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                                                                                (coe
                                                                                                                                                   MAlonzo.Code.Ledger.Transaction.d_crypto_1234
                                                                                                                                                   (coe
                                                                                                                                                      v24))))
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                                                                             (coe
                                                                                                                                                MAlonzo.Code.Ledger.Transaction.d_crypto_1234
                                                                                                                                                (coe
                                                                                                                                                   v24)))))
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))
                                                                                                                                 (MAlonzo.Code.Ledger.Foreign.HSTypes.d_assocList_24
                                                                                                                                    (coe
                                                                                                                                       v22)))
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                                                                                                    (let v24
                                                                                                                                           = MAlonzo.Code.Ledger.Foreign.HSLedger.Core.d_HSTransactionStructure_844 in
                                                                                                                                     coe
                                                                                                                                       (coe
                                                                                                                                          MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                                                                                             (coe
                                                                                                                                                MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                                                                                (coe
                                                                                                                                                   MAlonzo.Code.Ledger.Transaction.d_crypto_1234
                                                                                                                                                   (coe
                                                                                                                                                      v24))))
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                                                                             (coe
                                                                                                                                                MAlonzo.Code.Ledger.Transaction.d_crypto_1234
                                                                                                                                                (coe
                                                                                                                                                   v24)))))
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))
                                                                                                                                 (MAlonzo.Code.Ledger.Foreign.HSTypes.d_assocList_24
                                                                                                                                    (coe
                                                                                                                                       v23)))
                                                                                                                       _ -> MAlonzo.RTE.mazUnreachableError)))
                                                                                                            v17)
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                                                                               (coe
                                                                                                                  (\ v20 ->
                                                                                                                     case coe
                                                                                                                            v20 of
                                                                                                                       MAlonzo.Code.Ledger.Certs.C_'10214'_'44'_'10215''7510'_916 v21 v22
                                                                                                                         -> coe
                                                                                                                              MAlonzo.Code.Ledger.Foreign.HSLedger.Certs.C_MkPState_2589
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                                                                       (coe
                                                                                                                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Ledger.Foreign.HSLedger.Certs.d_Conv'45'PoolParams_90)))
                                                                                                                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                       (coe
                                                                                                                                          v21))))
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                                                                       (coe
                                                                                                                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)))
                                                                                                                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                       (coe
                                                                                                                                          v22))))
                                                                                                                       _ -> MAlonzo.RTE.mazUnreachableError))
                                                                                                               (coe
                                                                                                                  (\ v20 ->
                                                                                                                     case coe
                                                                                                                            v20 of
                                                                                                                       MAlonzo.Code.Ledger.Foreign.HSLedger.Certs.C_MkPState_2589 v21 v22
                                                                                                                         -> coe
                                                                                                                              MAlonzo.Code.Ledger.Certs.C_'10214'_'44'_'10215''7510'_916
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Ledger.Foreign.HSLedger.Certs.d_Conv'45'PoolParams_90))
                                                                                                                                 (MAlonzo.Code.Ledger.Foreign.HSTypes.d_assocList_24
                                                                                                                                    (coe
                                                                                                                                       v21)))
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))
                                                                                                                                 (MAlonzo.Code.Ledger.Foreign.HSTypes.d_assocList_24
                                                                                                                                    (coe
                                                                                                                                       v22)))
                                                                                                                       _ -> MAlonzo.RTE.mazUnreachableError)))
                                                                                                            v18)
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                                                                               (coe
                                                                                                                  (\ v20 ->
                                                                                                                     case coe
                                                                                                                            v20 of
                                                                                                                       MAlonzo.Code.Ledger.Certs.C_'10214'_'44'_'10215''7515'_928 v21 v22
                                                                                                                         -> coe
                                                                                                                              MAlonzo.Code.Ledger.Foreign.HSLedger.Ledger.C_MkGState_349
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                                                                       (coe
                                                                                                                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)))
                                                                                                                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                       (coe
                                                                                                                                          v21))))
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                                                                       (coe
                                                                                                                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                                                                                                             (coe
                                                                                                                                                MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10))))
                                                                                                                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                       (coe
                                                                                                                                          v22))))
                                                                                                                       _ -> MAlonzo.RTE.mazUnreachableError))
                                                                                                               (coe
                                                                                                                  (\ v20 ->
                                                                                                                     case coe
                                                                                                                            v20 of
                                                                                                                       MAlonzo.Code.Ledger.Foreign.HSLedger.Ledger.C_MkGState_349 v21 v22
                                                                                                                         -> coe
                                                                                                                              MAlonzo.Code.Ledger.Certs.C_'10214'_'44'_'10215''7515'_928
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                                                                                                    (let v23
                                                                                                                                           = MAlonzo.Code.Ledger.Foreign.HSLedger.Core.d_HSTransactionStructure_844 in
                                                                                                                                     coe
                                                                                                                                       (coe
                                                                                                                                          MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                                                                                             (coe
                                                                                                                                                MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                                                                                (coe
                                                                                                                                                   MAlonzo.Code.Ledger.Transaction.d_crypto_1234
                                                                                                                                                   (coe
                                                                                                                                                      v23))))
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                                                                             (coe
                                                                                                                                                MAlonzo.Code.Ledger.Transaction.d_crypto_1234
                                                                                                                                                (coe
                                                                                                                                                   v23)))))
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))
                                                                                                                                 (MAlonzo.Code.Ledger.Foreign.HSTypes.d_assocList_24
                                                                                                                                    (coe
                                                                                                                                       v21)))
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                                                                                                    (let v23
                                                                                                                                           = MAlonzo.Code.Ledger.Foreign.HSLedger.Core.d_HSTransactionStructure_844 in
                                                                                                                                     coe
                                                                                                                                       (coe
                                                                                                                                          MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                                                                                             (coe
                                                                                                                                                MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                                                                                (coe
                                                                                                                                                   MAlonzo.Code.Ledger.Transaction.d_crypto_1234
                                                                                                                                                   (coe
                                                                                                                                                      v23))))
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                                                                             (coe
                                                                                                                                                MAlonzo.Code.Ledger.Transaction.d_crypto_1234
                                                                                                                                                (coe
                                                                                                                                                   v23)))))
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                                                                                                       (coe
                                                                                                                                          MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)))
                                                                                                                                 (MAlonzo.Code.Ledger.Foreign.HSTypes.d_assocList_24
                                                                                                                                    (coe
                                                                                                                                       v22)))
                                                                                                                       _ -> MAlonzo.RTE.mazUnreachableError)))
                                                                                                            v19)
                                                                                                  _ -> MAlonzo.RTE.mazUnreachableError)))
                                                                                       v15)
                                                                             _ -> MAlonzo.RTE.mazUnreachableError)))
                                                                  v9)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                                     (coe
                                                                        (\ v12 ->
                                                                           case coe v12 of
                                                                             MAlonzo.Code.Ledger.Enact.C_EnactState'46'constructor_2097 v13 v14 v15 v16 v17
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Foreign.HSLedger.Enact.C_MkEnactState_57
                                                                                    (coe
                                                                                       MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                                       () erased ()
                                                                                       erased
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                                                                                       (coe
                                                                                          MAlonzo.Code.Data.Product.Base.du_map_128
                                                                                          (coe
                                                                                             MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                             (coe
                                                                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                                                                (coe
                                                                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.du_Conv'45'HSMap_70
                                                                                                      (let v18
                                                                                                             = MAlonzo.Code.Ledger.Foreign.HSLedger.Core.d_HSTransactionStructure_844 in
                                                                                                       coe
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Transaction.d_crypto_1234
                                                                                                                     (coe
                                                                                                                        v18))))
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Transaction.d_crypto_1234
                                                                                                                  (coe
                                                                                                                     v18)))))
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Conv'45'Rational_24))))
                                                                                          (coe
                                                                                             (\ v18 ->
                                                                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))))
                                                                                          (coe
                                                                                             v13)))
                                                                                    (coe
                                                                                       MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                                       () erased ()
                                                                                       erased
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                                                                                       (coe
                                                                                          MAlonzo.Code.Data.Product.Base.du_map_128
                                                                                          (coe
                                                                                             MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                             (coe
                                                                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                (coe
                                                                                                   MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                                                                   (coe
                                                                                                      (\ v18 ->
                                                                                                         coe
                                                                                                           MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                                                                   (coe
                                                                                                      (\ v18 ->
                                                                                                         coe
                                                                                                           MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))))
                                                                                          (coe
                                                                                             (\ v18 ->
                                                                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))))
                                                                                          (coe
                                                                                             v14)))
                                                                                    (coe
                                                                                       MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                                       () erased ()
                                                                                       erased
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                                                                                       (coe
                                                                                          MAlonzo.Code.Data.Product.Base.du_map_128
                                                                                          (coe
                                                                                             MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                             (coe
                                                                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)))
                                                                                          (coe
                                                                                             (\ v18 ->
                                                                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))))
                                                                                          (coe
                                                                                             v15)))
                                                                                    (coe
                                                                                       MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                                       () erased ()
                                                                                       erased
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                                                                                       (coe
                                                                                          MAlonzo.Code.Data.Product.Base.du_map_128
                                                                                          (coe
                                                                                             MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Foreign.HSLedger.PParams.d_Conv'45'PParams_22))
                                                                                          (coe
                                                                                             (\ v18 ->
                                                                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))))
                                                                                          (coe
                                                                                             v16)))
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                          (coe
                                                                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                             (coe
                                                                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'RwdAddr_22)
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)))
                                                                                          (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                             (coe
                                                                                                v17))))
                                                                             _ -> MAlonzo.RTE.mazUnreachableError))
                                                                     (coe
                                                                        (\ v12 ->
                                                                           case coe v12 of
                                                                             MAlonzo.Code.Ledger.Foreign.HSLedger.Enact.C_MkEnactState_57 v13 v14 v15 v16 v17
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Enact.C_EnactState'46'constructor_2097
                                                                                    (coe
                                                                                       MAlonzo.Code.Data.Product.Base.du_map_128
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                          (coe
                                                                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                                                             (coe
                                                                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.du_Conv'45'HSMap_70
                                                                                                   (let v18
                                                                                                          = MAlonzo.Code.Ledger.Foreign.HSLedger.Core.d_HSTransactionStructure_844 in
                                                                                                    coe
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Transaction.d_crypto_1234
                                                                                                                  (coe
                                                                                                                     v18))))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Transaction.d_crypto_1234
                                                                                                               (coe
                                                                                                                  v18)))))
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Conv'45'Rational_24))))
                                                                                       (coe
                                                                                          (\ v18 ->
                                                                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                               (coe
                                                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))))
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                                          () erased
                                                                                          () erased
                                                                                          (coe
                                                                                             MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                                                          v13))
                                                                                    (coe
                                                                                       MAlonzo.Code.Data.Product.Base.du_map_128
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                          (coe
                                                                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                             (coe
                                                                                                MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                                                                (coe
                                                                                                   (\ v18 ->
                                                                                                      coe
                                                                                                        MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                                                                (coe
                                                                                                   (\ v18 ->
                                                                                                      coe
                                                                                                        MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                                                                             (coe
                                                                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))))
                                                                                       (coe
                                                                                          (\ v18 ->
                                                                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                               (coe
                                                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))))
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                                          () erased
                                                                                          () erased
                                                                                          (coe
                                                                                             MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                                                          v14))
                                                                                    (coe
                                                                                       MAlonzo.Code.Data.Product.Base.du_map_128
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                          (coe
                                                                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)))
                                                                                       (coe
                                                                                          (\ v18 ->
                                                                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                               (coe
                                                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))))
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                                          () erased
                                                                                          () erased
                                                                                          (coe
                                                                                             MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                                                          v15))
                                                                                    (coe
                                                                                       MAlonzo.Code.Data.Product.Base.du_map_128
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Foreign.HSLedger.PParams.d_Conv'45'PParams_22))
                                                                                       (coe
                                                                                          (\ v18 ->
                                                                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                               (coe
                                                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))))
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                                          () erased
                                                                                          () erased
                                                                                          (coe
                                                                                             MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                                                          v16))
                                                                                    (coe
                                                                                       MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                                                          (let v18
                                                                                                 = MAlonzo.Code.Ledger.Foreign.HSLedger.Core.d_HSTransactionStructure_844 in
                                                                                           coe
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Address.du_DecEq'45'RwdAddr_194
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_276
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Transaction.d_globalConstants_1210
                                                                                                      (coe
                                                                                                         v18)))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Transaction.d_crypto_1234
                                                                                                         (coe
                                                                                                            v18))))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Transaction.d_crypto_1234
                                                                                                      (coe
                                                                                                         v18)))))
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'RwdAddr_22)
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))
                                                                                       (MAlonzo.Code.Ledger.Foreign.HSTypes.d_assocList_24
                                                                                          (coe
                                                                                             v17)))
                                                                             _ -> MAlonzo.RTE.mazUnreachableError)))
                                                                  v10)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                                     (coe
                                                                        (\ v12 ->
                                                                           case coe v12 of
                                                                             MAlonzo.Code.Ledger.Ratify.C_'10214'_'44'_'44'_'10215''691'_2006 v13 v14 v15
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Foreign.HSLedger.Ratify.C_MkRatifyState_4845
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Foreign.HSLedger.Enact.C_MkEnactState_57
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                                          () erased
                                                                                          () erased
                                                                                          (coe
                                                                                             MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                                                                                          (coe
                                                                                             MAlonzo.Code.Data.Product.Base.du_map_128
                                                                                             (coe
                                                                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                (coe
                                                                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.du_Conv'45'HSMap_70
                                                                                                         (let v16
                                                                                                                = MAlonzo.Code.Ledger.Foreign.HSLedger.Core.d_HSTransactionStructure_844 in
                                                                                                          coe
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Transaction.d_crypto_1234
                                                                                                                        (coe
                                                                                                                           v16))))
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Transaction.d_crypto_1234
                                                                                                                     (coe
                                                                                                                        v16)))))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Conv'45'Rational_24))))
                                                                                             (coe
                                                                                                (\ v16 ->
                                                                                                   MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))))
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Enact.d_cc_842
                                                                                                (coe
                                                                                                   v13))))
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                                          () erased
                                                                                          () erased
                                                                                          (coe
                                                                                             MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                                                                                          (coe
                                                                                             MAlonzo.Code.Data.Product.Base.du_map_128
                                                                                             (coe
                                                                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                (coe
                                                                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                                                                      (coe
                                                                                                         (\ v16 ->
                                                                                                            coe
                                                                                                              MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                                                                      (coe
                                                                                                         (\ v16 ->
                                                                                                            coe
                                                                                                              MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))))
                                                                                             (coe
                                                                                                (\ v16 ->
                                                                                                   MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))))
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Enact.d_constitution_844
                                                                                                (coe
                                                                                                   v13))))
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                                          () erased
                                                                                          () erased
                                                                                          (coe
                                                                                             MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                                                                                          (coe
                                                                                             MAlonzo.Code.Data.Product.Base.du_map_128
                                                                                             (coe
                                                                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                (coe
                                                                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)))
                                                                                             (coe
                                                                                                (\ v16 ->
                                                                                                   MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))))
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Enact.d_pv_846
                                                                                                (coe
                                                                                                   v13))))
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                                          () erased
                                                                                          () erased
                                                                                          (coe
                                                                                             MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                                                                                          (coe
                                                                                             MAlonzo.Code.Data.Product.Base.du_map_128
                                                                                             (coe
                                                                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Foreign.HSLedger.PParams.d_Conv'45'PParams_22))
                                                                                             (coe
                                                                                                (\ v16 ->
                                                                                                   MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))))
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Enact.d_pparams_848
                                                                                                (coe
                                                                                                   v13))))
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                                                                                          (coe
                                                                                             MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                             (coe
                                                                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                                (coe
                                                                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'RwdAddr_22)
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)))
                                                                                             (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Enact.d_withdrawals_850
                                                                                                   (coe
                                                                                                      v13))))))
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSSet_38
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                          (coe
                                                                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_118
                                                                                             (coe
                                                                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                (coe
                                                                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Foreign.HSLedger.Gov.d_Conv'45'GovActionState_326)))
                                                                                          v14))
                                                                                    (coe v15)
                                                                             _ -> MAlonzo.RTE.mazUnreachableError))
                                                                     (coe
                                                                        (\ v12 ->
                                                                           case coe v12 of
                                                                             MAlonzo.Code.Ledger.Foreign.HSLedger.Ratify.C_MkRatifyState_4845 v13 v14 v15
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Ratify.C_'10214'_'44'_'44'_'10215''691'_2006
                                                                                    (coe
                                                                                       MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                                                          (coe
                                                                                             (\ v16 ->
                                                                                                case coe
                                                                                                       v16 of
                                                                                                  MAlonzo.Code.Ledger.Enact.C_EnactState'46'constructor_2097 v17 v18 v19 v20 v21
                                                                                                    -> coe
                                                                                                         MAlonzo.Code.Ledger.Foreign.HSLedger.Enact.C_MkEnactState_57
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                                                            ()
                                                                                                            erased
                                                                                                            ()
                                                                                                            erased
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Data.Product.Base.du_map_128
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.du_Conv'45'HSMap_70
                                                                                                                           (let v22
                                                                                                                                  = MAlonzo.Code.Ledger.Foreign.HSLedger.Core.d_HSTransactionStructure_844 in
                                                                                                                            coe
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                                                                       (coe
                                                                                                                                          MAlonzo.Code.Ledger.Transaction.d_crypto_1234
                                                                                                                                          (coe
                                                                                                                                             v22))))
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Ledger.Transaction.d_crypto_1234
                                                                                                                                       (coe
                                                                                                                                          v22)))))
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Conv'45'Rational_24))))
                                                                                                               (coe
                                                                                                                  (\ v22 ->
                                                                                                                     MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                                          (coe
                                                                                                                             MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                                                                                                          (coe
                                                                                                                             MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))))
                                                                                                               (coe
                                                                                                                  v17)))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                                                            ()
                                                                                                            erased
                                                                                                            ()
                                                                                                            erased
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Data.Product.Base.du_map_128
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                                                                                        (coe
                                                                                                                           (\ v22 ->
                                                                                                                              coe
                                                                                                                                MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                                                                                        (coe
                                                                                                                           (\ v22 ->
                                                                                                                              coe
                                                                                                                                MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))))
                                                                                                               (coe
                                                                                                                  (\ v22 ->
                                                                                                                     MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                                          (coe
                                                                                                                             MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                                                                                                          (coe
                                                                                                                             MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))))
                                                                                                               (coe
                                                                                                                  v18)))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                                                            ()
                                                                                                            erased
                                                                                                            ()
                                                                                                            erased
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Data.Product.Base.du_map_128
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)))
                                                                                                               (coe
                                                                                                                  (\ v22 ->
                                                                                                                     MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                                          (coe
                                                                                                                             MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                                                                                                          (coe
                                                                                                                             MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))))
                                                                                                               (coe
                                                                                                                  v19)))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                                                            ()
                                                                                                            erased
                                                                                                            ()
                                                                                                            erased
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Data.Product.Base.du_map_128
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Foreign.HSLedger.PParams.d_Conv'45'PParams_22))
                                                                                                               (coe
                                                                                                                  (\ v22 ->
                                                                                                                     MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                                          (coe
                                                                                                                             MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                                                                                                          (coe
                                                                                                                             MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))))
                                                                                                               (coe
                                                                                                                  v20)))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'RwdAddr_22)
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)))
                                                                                                               (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                  (coe
                                                                                                                     v21))))
                                                                                                  _ -> MAlonzo.RTE.mazUnreachableError))
                                                                                          (coe
                                                                                             (\ v16 ->
                                                                                                case coe
                                                                                                       v16 of
                                                                                                  MAlonzo.Code.Ledger.Foreign.HSLedger.Enact.C_MkEnactState_57 v17 v18 v19 v20 v21
                                                                                                    -> coe
                                                                                                         MAlonzo.Code.Ledger.Enact.C_EnactState'46'constructor_2097
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Data.Product.Base.du_map_128
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.du_Conv'45'HSMap_70
                                                                                                                        (let v22
                                                                                                                               = MAlonzo.Code.Ledger.Foreign.HSLedger.Core.d_HSTransactionStructure_844 in
                                                                                                                         coe
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Ledger.Transaction.d_crypto_1234
                                                                                                                                       (coe
                                                                                                                                          v22))))
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Ledger.Transaction.d_crypto_1234
                                                                                                                                    (coe
                                                                                                                                       v22)))))
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Conv'45'Rational_24))))
                                                                                                            (coe
                                                                                                               (\ v22 ->
                                                                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))))
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                                                               ()
                                                                                                               erased
                                                                                                               ()
                                                                                                               erased
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                                                                               v17))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Data.Product.Base.du_map_128
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                                                                                     (coe
                                                                                                                        (\ v22 ->
                                                                                                                           coe
                                                                                                                             MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                                                                                     (coe
                                                                                                                        (\ v22 ->
                                                                                                                           coe
                                                                                                                             MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))))
                                                                                                            (coe
                                                                                                               (\ v22 ->
                                                                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))))
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                                                               ()
                                                                                                               erased
                                                                                                               ()
                                                                                                               erased
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                                                                               v18))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Data.Product.Base.du_map_128
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)))
                                                                                                            (coe
                                                                                                               (\ v22 ->
                                                                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))))
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                                                               ()
                                                                                                               erased
                                                                                                               ()
                                                                                                               erased
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                                                                               v19))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Data.Product.Base.du_map_128
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Foreign.HSLedger.PParams.d_Conv'45'PParams_22))
                                                                                                            (coe
                                                                                                               (\ v22 ->
                                                                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))))
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                                                               ()
                                                                                                               erased
                                                                                                               ()
                                                                                                               erased
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                                                                               v20))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                                                                               (let v22
                                                                                                                      = MAlonzo.Code.Ledger.Foreign.HSLedger.Core.d_HSTransactionStructure_844 in
                                                                                                                coe
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Address.du_DecEq'45'RwdAddr_194
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_276
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Transaction.d_globalConstants_1210
                                                                                                                           (coe
                                                                                                                              v22)))
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Ledger.Transaction.d_crypto_1234
                                                                                                                              (coe
                                                                                                                                 v22))))
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Transaction.d_crypto_1234
                                                                                                                           (coe
                                                                                                                              v22)))))
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'RwdAddr_22)
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))
                                                                                                            (MAlonzo.Code.Ledger.Foreign.HSTypes.d_assocList_24
                                                                                                               (coe
                                                                                                                  v21)))
                                                                                                  _ -> MAlonzo.RTE.mazUnreachableError)))
                                                                                       v13)
                                                                                    (coe
                                                                                       MAlonzo.Code.Axiom.Set.du_fromList_416
                                                                                       (coe
                                                                                          MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                          (coe
                                                                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_118
                                                                                             (coe
                                                                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                (coe
                                                                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Foreign.HSLedger.Gov.d_Conv'45'GovActionState_326)))
                                                                                          (MAlonzo.Code.Ledger.Foreign.HSTypes.d_elems_36
                                                                                             (coe
                                                                                                v14))))
                                                                                    (coe v15)
                                                                             _ -> MAlonzo.RTE.mazUnreachableError)))
                                                                  v11)
                                                        _ -> MAlonzo.RTE.mazUnreachableError)))
                                             v4)
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_62
                                                (coe
                                                   MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                (coe
                                                   MAlonzo.Code.Ledger.Foreign.HSLedger.NewEpoch.d_Conv'45'RewardUpdate_168))
                                             v5)
                                   _ -> MAlonzo.RTE.mazUnreachableError)))
                        v1)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Foreign.HSLedger.Chain.HsTy-Block
d_HsTy'45'Block_50 ::
  MAlonzo.Code.Foreign.HaskellTypes.T_HasHsType_14
d_HsTy'45'Block_50 = erased
-- Ledger.Foreign.HSLedger.Chain.Conv-Block
d_Conv'45'Block_52 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Conv'45'Block_52
  = coe
      MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Chain.C_Block'46'constructor_3907 v1 v2
                -> coe
                     C_Block_381
                     (coe
                        MAlonzo.Code.Class.Functor.Core.du_fmap_22
                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20 () erased
                        () erased
                        (MAlonzo.Code.Foreign.Convertible.d_to_18
                           (coe
                              MAlonzo.Code.Ledger.Foreign.HSLedger.Transaction.d_Conv'45'Tx_26))
                        v1)
                     (coe v2)
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 ->
            case coe v0 of
              C_Block_381 v1 v2
                -> coe
                     MAlonzo.Code.Ledger.Chain.C_Block'46'constructor_3907
                     (coe
                        MAlonzo.Code.Class.Functor.Core.du_fmap_22
                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20 () erased
                        () erased
                        (MAlonzo.Code.Foreign.Convertible.d_from_20
                           (coe
                              MAlonzo.Code.Ledger.Foreign.HSLedger.Transaction.d_Conv'45'Tx_26))
                        v1)
                     (coe v2)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Foreign.HSLedger.Chain.chain-step
chainStep ::
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  T_ChainState_73 ->
  T_Block_379 ->
  MAlonzo.Code.Ledger.Foreign.HSTypes.T_ComputationResult_44
    MAlonzo.Code.Agda.Builtin.String.T_String_6 T_ChainState_73
chainStep = coe d_chain'45'step_54
d_chain'45'step_54 ::
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  T_ChainState_73 ->
  T_Block_379 ->
  MAlonzo.Code.Ledger.Foreign.HSTypes.T_ComputationResult_44
    MAlonzo.Code.Agda.Builtin.String.T_String_6 T_ChainState_73
d_chain'45'step_54 ~v0 = du_chain'45'step_54
du_chain'45'step_54 ::
  T_ChainState_73 ->
  T_Block_379 ->
  MAlonzo.Code.Ledger.Foreign.HSTypes.T_ComputationResult_44
    MAlonzo.Code.Agda.Builtin.String.T_String_6 T_ChainState_73
du_chain'45'step_54
  = coe
      MAlonzo.Code.Foreign.Convertible.d_to_18
      (coe
         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Fun_130
         (coe d_Conv'45'ChainState_48)
         (coe
            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Fun_130
            (coe d_Conv'45'Block_52)
            (coe
               MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.du_Conv'45'ComputationResult_86
               (coe
                  MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvString_12)
               (coe d_Conv'45'ChainState_48))))
      (coe
         MAlonzo.Code.Interface.ComputationalRelation.du_compute_274
         (coe
            MAlonzo.Code.Ledger.Chain.Properties.d_Computational'45'CHAIN_2008
            (coe
               MAlonzo.Code.Ledger.Foreign.HSLedger.Core.d_HSTransactionStructure_844)
            (coe
               MAlonzo.Code.Ledger.Foreign.HSLedger.Core.d_HSAbstractFunctions_2576))
         (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
-- Ledger.Foreign.HSLedger.Chain.ChainState
d_ChainState_73 = ()
type T_ChainState_73 = ChainState
pattern C_ChainState_75 a0 = ChainState a0
check_ChainState_75 ::
  MAlonzo.Code.Ledger.Foreign.HSLedger.NewEpoch.T_NewEpochState_2125 ->
  T_ChainState_73
check_ChainState_75 = ChainState
cover_ChainState_73 :: ChainState -> ()
cover_ChainState_73 x
  = case x of
      ChainState _ -> ()
-- Ledger.Foreign.HSLedger.Chain.Block
d_Block_379 = ()
type T_Block_379 = Block
pattern C_Block_381 a0 a1 = Block a0 a1
check_Block_381 ::
  MAlonzo.Code.Agda.Builtin.List.T_List_10
    () MAlonzo.Code.Ledger.Foreign.HSLedger.Transaction.T_Tx_109459 ->
  Integer -> T_Block_379
check_Block_381 = Block
cover_Block_379 :: Block -> ()
cover_Block_379 x
  = case x of
      Block _ _ -> ()
