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

module MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Chain where

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
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Address
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Certs
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Chain
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Chain.Properties
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Crypto
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Enact
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Epoch
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Cert
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Certs
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Core
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Enact
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Epoch
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Gov
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Ledger
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.NewEpoch
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.PParams
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Ratify
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Transaction
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Utxo
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Ledger
import qualified MAlonzo.Code.Ledger.Conway.Conformance.PParams
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Ratify
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Transaction
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Utxo
import qualified MAlonzo.Code.Ledger.Set.Theory
import qualified MAlonzo.Code.Prelude

import GHC.Generics (Generic)
data ChainState = ChainState {newEpochState :: MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.NewEpoch.NewEpochState}
  deriving (Show, Eq, Generic)
data Block = Block {ts :: [MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Transaction.Tx], slot :: Integer}
  deriving (Show, Eq, Generic)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Chain._.Block
d_Block_16 = ()
-- Ledger.Conway.Conformance.Foreign.HSLedger.Chain._.ChainState
d_ChainState_20 = ()
-- Ledger.Conway.Conformance.Foreign.HSLedger.Chain._.Block.slot
d_slot_38 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Chain.T_Block_2252 ->
  Integer
d_slot_38 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Chain.d_slot_2260 (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Chain._.Block.ts
d_ts_40 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Chain.T_Block_2252 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2908]
d_ts_40 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Chain.d_ts_2258 (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Chain._.ChainState.newEpochState
d_newEpochState_44 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Chain.T_ChainState_2246 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2324
d_newEpochState_44 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Chain.d_newEpochState_2250
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Chain.HsTy-ChainState
d_HsTy'45'ChainState_50 ::
  MAlonzo.Code.Foreign.HaskellTypes.T_HasHsType_14
d_HsTy'45'ChainState_50 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Chain.Conv-ChainState
d_Conv'45'ChainState_52 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Conv'45'ChainState_52
  = coe
      MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Conway.Conformance.Chain.C_ChainState'46'constructor_3843 v1
                -> coe
                     C_ChainState_75
                     (coe
                        MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.NewEpoch.C_MkNewEpochState_2127
                        (coe
                           MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_lastEpoch_2332
                           (coe v1))
                        (coe
                           MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Epoch.C_MkEpochState_3005
                           (coe
                              MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.PParams.C_MkAcnt_9607
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_treasury_156
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_acnt_2312
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2334
                                       (coe v1))))
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_reserves_158
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_acnt_2312
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2334
                                       (coe v1)))))
                           (coe
                              MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Epoch.C_MkSnapshots_1411
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Epoch.C_MkSnapshot_135
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.d_to_18
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)))
                                       (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_stake_2274
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_mark_2290
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ss_2314
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2334
                                                      (coe v1))))))))
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.d_to_18
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)))
                                       (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_delegations_2276
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_mark_2290
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ss_2314
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2334
                                                      (coe v1)))))))))
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Epoch.C_MkSnapshot_135
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.d_to_18
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)))
                                       (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_stake_2274
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_set_2292
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ss_2314
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2334
                                                      (coe v1))))))))
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.d_to_18
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)))
                                       (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_delegations_2276
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_set_2292
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ss_2314
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2334
                                                      (coe v1)))))))))
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Epoch.C_MkSnapshot_135
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.d_to_18
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)))
                                       (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_stake_2274
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_go_2294
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ss_2314
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2334
                                                      (coe v1))))))))
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.d_to_18
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)))
                                       (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_delegations_2276
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_go_2294
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ss_2314
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2334
                                                      (coe v1)))))))))
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_feeSS_2296
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ss_2314
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2334
                                       (coe v1)))))
                           (coe
                              MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Ledger.C_MkLState_2805
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Utxo.C_MkUTxOState_1277
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.d_to_18
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_98
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'BaseAddr_18)
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'BootstrapAddr_22))
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
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
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Transaction.d_Conv'45'HashedTimelock_22)
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
                                             MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_utxo_1984
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2158
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2316
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2334
                                                      (coe v1))))))))
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_fees_1986
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2158
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2316
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2334
                                             (coe v1)))))
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.d_to_18
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Certs.d_Conv'45'DepositPurpose_72)
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)))
                                       (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_deposits_1988
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2158
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2316
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2334
                                                      (coe v1))))))))
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_donations_1990
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2158
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2316
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2334
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
                                             MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Gov.d_Conv'45'GovActionState_330)))
                                 (MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_govSt_2160
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2316
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2334
                                          (coe v1)))))
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Cert.C_MkCertState_65
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Certs.C_MkDState_6297
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.d_to_18
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Gov.d_Conv'45'VDeleg_150)))
                                          (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_934
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_968
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2162
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2316
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2334
                                                            (coe v1)))))))))
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.d_to_18
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)))
                                          (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_stakeDelegs_936
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_968
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2162
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2316
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2334
                                                            (coe v1)))))))))
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.d_to_18
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)))
                                          (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_938
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_968
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2162
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2316
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2334
                                                            (coe v1)))))))))
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.d_to_18
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Certs.d_Conv'45'DepositPurpose_72)
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)))
                                          (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_940
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_968
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2162
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2316
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2334
                                                            (coe v1))))))))))
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Certs.C_MkPState_2485
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.d_to_18
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Certs.d_Conv'45'PoolParams_68)))
                                          (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pools_866
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_970
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2162
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2316
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2334
                                                            (coe v1)))))))))
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.d_to_18
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)))
                                          (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_retiring_868
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_970
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2162
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2316
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2334
                                                            (coe v1))))))))))
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Certs.C_MkGState_16367
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.d_to_18
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)))
                                          (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dreps_952
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_972
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2162
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2316
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2334
                                                            (coe v1)))))))))
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.d_to_18
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14))))
                                          (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_ccHotKeys_954
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_972
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2162
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2316
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2334
                                                            (coe v1)))))))))
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.d_to_18
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Certs.d_Conv'45'DepositPurpose_72)
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)))
                                          (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_956
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_972
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2162
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2316
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2334
                                                            (coe v1))))))))))))
                           (coe
                              MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Enact.C_MkEnactState_57
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
                                                MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.du_Conv'45'HSMap_74
                                                (let v2
                                                       = MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Core.d_HSTransactionStructure_888 in
                                                 coe
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Conformance.Address.du_DecEq'45'Credential_146
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                                                               (coe v2))))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                                                            (coe v2)))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_Conv'45'Rational_28))))
                                    (coe
                                       (\ v2 ->
                                          MAlonzo.Code.Foreign.Convertible.d_to_18
                                            (coe
                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))))
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Conformance.Enact.d_cc_868
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_es_2318
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2334
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
                                                MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))))
                                    (coe
                                       (\ v2 ->
                                          MAlonzo.Code.Foreign.Convertible.d_to_18
                                            (coe
                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))))
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Conformance.Enact.d_constitution_870
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_es_2318
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2334
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
                                             MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)))
                                    (coe
                                       (\ v2 ->
                                          MAlonzo.Code.Foreign.Convertible.d_to_18
                                            (coe
                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))))
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Conformance.Enact.d_pv_872
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_es_2318
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2334
                                             (coe v1))))))
                              (coe
                                 MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased () erased
                                 (coe MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                                 (coe
                                    MAlonzo.Code.Data.Product.Base.du_map_128
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.d_to_18
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.PParams.d_Conv'45'PParams_26))
                                    (coe
                                       (\ v2 ->
                                          MAlonzo.Code.Foreign.Convertible.d_to_18
                                            (coe
                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))))
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Conformance.Enact.d_pparams_874
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_es_2318
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2334
                                             (coe v1))))))
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.d_to_18
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'RwdAddr_26)
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)))
                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Enact.d_withdrawals_876
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_es_2318
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2334
                                                (coe v1))))))))
                           (coe
                              MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Ratify.C_MkRatifyState_4845
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Enact.C_MkEnactState_57
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
                                                   MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.du_Conv'45'HSMap_74
                                                   (let v2
                                                          = MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Core.d_HSTransactionStructure_888 in
                                                    coe
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Conformance.Address.du_DecEq'45'Credential_146
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                                                                  (coe v2))))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                                                               (coe v2)))))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_Conv'45'Rational_28))))
                                       (coe
                                          (\ v2 ->
                                             MAlonzo.Code.Foreign.Convertible.d_to_18
                                               (coe
                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))))
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Enact.d_cc_868
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_es_2030
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_fut_2320
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2334
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
                                                   MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))))
                                       (coe
                                          (\ v2 ->
                                             MAlonzo.Code.Foreign.Convertible.d_to_18
                                               (coe
                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))))
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Enact.d_constitution_870
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_es_2030
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_fut_2320
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2334
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
                                                MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)))
                                       (coe
                                          (\ v2 ->
                                             MAlonzo.Code.Foreign.Convertible.d_to_18
                                               (coe
                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))))
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Enact.d_pv_872
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_es_2030
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_fut_2320
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2334
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
                                             MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.PParams.d_Conv'45'PParams_26))
                                       (coe
                                          (\ v2 ->
                                             MAlonzo.Code.Foreign.Convertible.d_to_18
                                               (coe
                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))))
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Enact.d_pparams_874
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_es_2030
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_fut_2320
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2334
                                                   (coe v1)))))))
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.d_to_18
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'RwdAddr_26)
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)))
                                       (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Enact.d_withdrawals_876
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_es_2030
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_fut_2320
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2334
                                                      (coe v1)))))))))
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSSet_42
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.d_to_18
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_118
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Gov.d_Conv'45'GovActionState_330)))
                                    (MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_removed_2032
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_fut_2320
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2334
                                             (coe v1))))))
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_delay_2034
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_fut_2320
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2334
                                       (coe v1))))))
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_to_18
                           (coe
                              MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_62
                              (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.NewEpoch.d_Conv'45'RewardUpdate_172))
                           (MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ru_2336 (coe v1))))
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 ->
            case coe v0 of
              C_ChainState_75 v1
                -> coe
                     MAlonzo.Code.Ledger.Conway.Conformance.Chain.C_ChainState'46'constructor_3843
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                           (coe
                              (\ v2 ->
                                 case coe v2 of
                                   MAlonzo.Code.Ledger.Conway.Conformance.Epoch.C_'10214'_'44'_'44'_'10215''8319''7497'_2338 v3 v4 v5
                                     -> coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.NewEpoch.C_MkNewEpochState_2127
                                          (coe v3)
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Epoch.C_MkEpochState_3005
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.PParams.C_MkAcnt_9607
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_treasury_156
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_acnt_2312
                                                      (coe v4)))
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_reserves_158
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_acnt_2312
                                                      (coe v4))))
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Epoch.C_MkSnapshots_1411
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Epoch.C_MkSnapshot_135
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.d_to_18
                                                         (coe
                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                            (coe
                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)))
                                                         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_stake_2274
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_mark_2290
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ss_2314
                                                                     (coe v4)))))))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.d_to_18
                                                         (coe
                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                            (coe
                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)))
                                                         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_delegations_2276
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_mark_2290
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ss_2314
                                                                     (coe v4))))))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Epoch.C_MkSnapshot_135
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.d_to_18
                                                         (coe
                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                            (coe
                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)))
                                                         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_stake_2274
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_set_2292
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ss_2314
                                                                     (coe v4)))))))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.d_to_18
                                                         (coe
                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                            (coe
                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)))
                                                         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_delegations_2276
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_set_2292
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ss_2314
                                                                     (coe v4))))))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Epoch.C_MkSnapshot_135
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.d_to_18
                                                         (coe
                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                            (coe
                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)))
                                                         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_stake_2274
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_go_2294
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ss_2314
                                                                     (coe v4)))))))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.d_to_18
                                                         (coe
                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                            (coe
                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)))
                                                         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_delegations_2276
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_go_2294
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ss_2314
                                                                     (coe v4))))))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_feeSS_2296
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ss_2314
                                                      (coe v4))))
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Ledger.C_MkLState_2805
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Utxo.C_MkUTxOState_1277
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.d_to_18
                                                         (coe
                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                            (coe
                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_98
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'BaseAddr_18)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'BootstrapAddr_22))
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
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
                                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Transaction.d_Conv'45'HashedTimelock_22)
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
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_utxo_1984
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2158
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2316
                                                                     (coe v4)))))))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_fees_1986
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2158
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2316
                                                            (coe v4))))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.d_to_18
                                                         (coe
                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                            (coe
                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Certs.d_Conv'45'DepositPurpose_72)
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)))
                                                         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_deposits_1988
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2158
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2316
                                                                     (coe v4)))))))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_donations_1990
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2158
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2316
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
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Gov.d_Conv'45'GovActionState_330)))
                                                   (MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_govSt_2160
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2316
                                                         (coe v4))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Cert.C_MkCertState_65
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Certs.C_MkDState_6297
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                                         (coe
                                                            MAlonzo.Code.Foreign.Convertible.d_to_18
                                                            (coe
                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Gov.d_Conv'45'VDeleg_150)))
                                                            (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_934
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_968
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2162
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2316
                                                                           (coe v4))))))))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                                         (coe
                                                            MAlonzo.Code.Foreign.Convertible.d_to_18
                                                            (coe
                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)))
                                                            (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_stakeDelegs_936
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_968
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2162
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2316
                                                                           (coe v4))))))))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                                         (coe
                                                            MAlonzo.Code.Foreign.Convertible.d_to_18
                                                            (coe
                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)))
                                                            (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_938
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_968
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2162
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2316
                                                                           (coe v4))))))))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                                         (coe
                                                            MAlonzo.Code.Foreign.Convertible.d_to_18
                                                            (coe
                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Certs.d_Conv'45'DepositPurpose_72)
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)))
                                                            (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_940
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_968
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2162
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2316
                                                                           (coe v4)))))))))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Certs.C_MkPState_2485
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                                         (coe
                                                            MAlonzo.Code.Foreign.Convertible.d_to_18
                                                            (coe
                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Certs.d_Conv'45'PoolParams_68)))
                                                            (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pools_866
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_970
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2162
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2316
                                                                           (coe v4))))))))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                                         (coe
                                                            MAlonzo.Code.Foreign.Convertible.d_to_18
                                                            (coe
                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)))
                                                            (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_retiring_868
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_970
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2162
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2316
                                                                           (coe v4)))))))))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Certs.C_MkGState_16367
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                                         (coe
                                                            MAlonzo.Code.Foreign.Convertible.d_to_18
                                                            (coe
                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)))
                                                            (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dreps_952
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_972
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2162
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2316
                                                                           (coe v4))))))))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                                         (coe
                                                            MAlonzo.Code.Foreign.Convertible.d_to_18
                                                            (coe
                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14))))
                                                            (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_ccHotKeys_954
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_972
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2162
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2316
                                                                           (coe v4))))))))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                                         (coe
                                                            MAlonzo.Code.Foreign.Convertible.d_to_18
                                                            (coe
                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Certs.d_Conv'45'DepositPurpose_72)
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)))
                                                            (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_956
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_972
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2162
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2316
                                                                           (coe v4)))))))))))
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Enact.C_MkEnactState_57
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
                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.du_Conv'45'HSMap_74
                                                                  (let v6
                                                                         = MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Core.d_HSTransactionStructure_888 in
                                                                   coe
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Address.du_DecEq'45'Credential_146
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                                                                                 (coe v6))))
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                                                                              (coe v6)))))
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_Conv'45'Rational_28))))
                                                      (coe
                                                         (\ v6 ->
                                                            MAlonzo.Code.Foreign.Convertible.d_to_18
                                                              (coe
                                                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Conformance.Enact.d_cc_868
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_es_2318
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
                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))))
                                                      (coe
                                                         (\ v6 ->
                                                            MAlonzo.Code.Foreign.Convertible.d_to_18
                                                              (coe
                                                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Conformance.Enact.d_constitution_870
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_es_2318
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
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)))
                                                      (coe
                                                         (\ v6 ->
                                                            MAlonzo.Code.Foreign.Convertible.d_to_18
                                                              (coe
                                                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Conformance.Enact.d_pv_872
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_es_2318
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
                                                            MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.PParams.d_Conv'45'PParams_26))
                                                      (coe
                                                         (\ v6 ->
                                                            MAlonzo.Code.Foreign.Convertible.d_to_18
                                                              (coe
                                                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Conformance.Enact.d_pparams_874
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_es_2318
                                                            (coe v4)))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.d_to_18
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                         (coe
                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'RwdAddr_26)
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)))
                                                      (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Conformance.Enact.d_withdrawals_876
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_es_2318
                                                               (coe v4)))))))
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Ratify.C_MkRatifyState_4845
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Enact.C_MkEnactState_57
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
                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.du_Conv'45'HSMap_74
                                                                     (let v6
                                                                            = MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Core.d_HSTransactionStructure_888 in
                                                                      coe
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Address.du_DecEq'45'Credential_146
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                                                                                    (coe v6))))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                                                                                 (coe v6)))))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_Conv'45'Rational_28))))
                                                         (coe
                                                            (\ v6 ->
                                                               MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                 (coe
                                                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Conformance.Enact.d_cc_868
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_es_2030
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_fut_2320
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
                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))))
                                                         (coe
                                                            (\ v6 ->
                                                               MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                 (coe
                                                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Conformance.Enact.d_constitution_870
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_es_2030
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_fut_2320
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
                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)))
                                                         (coe
                                                            (\ v6 ->
                                                               MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                 (coe
                                                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Conformance.Enact.d_pv_872
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_es_2030
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_fut_2320
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
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.PParams.d_Conv'45'PParams_26))
                                                         (coe
                                                            (\ v6 ->
                                                               MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                 (coe
                                                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Conformance.Enact.d_pparams_874
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_es_2030
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_fut_2320
                                                                  (coe v4))))))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.d_to_18
                                                         (coe
                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                            (coe
                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'RwdAddr_26)
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)))
                                                         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Enact.d_withdrawals_876
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_es_2030
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_fut_2320
                                                                     (coe v4))))))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSSet_42
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.d_to_18
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_118
                                                         (coe
                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                            (coe
                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Gov.d_Conv'45'GovActionState_330)))
                                                      (MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_removed_2032
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_fut_2320
                                                            (coe v4)))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_delay_2034
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_fut_2320
                                                      (coe v4)))))
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_to_18
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_62
                                                (coe
                                                   MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.NewEpoch.d_Conv'45'RewardUpdate_172))
                                             v5)
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v2 ->
                                 case coe v2 of
                                   MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.NewEpoch.C_MkNewEpochState_2127 v3 v4 v5
                                     -> coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Epoch.C_'10214'_'44'_'44'_'10215''8319''7497'_2338
                                          (coe v3)
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                (coe
                                                   (\ v6 ->
                                                      case coe v6 of
                                                        MAlonzo.Code.Ledger.Conway.Conformance.Epoch.C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_2322 v7 v8 v9 v10 v11
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Epoch.C_MkEpochState_3005
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.PParams.C_MkAcnt_9607
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_treasury_156
                                                                     (coe v7))
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_reserves_158
                                                                     (coe v7)))
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Epoch.C_MkSnapshots_1411
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Epoch.C_MkSnapshot_135
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                                                        (coe
                                                                           MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                           (coe
                                                                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                              (coe
                                                                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)))
                                                                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_stake_2274
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_mark_2290
                                                                                    (coe v8))))))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                                                        (coe
                                                                           MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                           (coe
                                                                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                              (coe
                                                                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)))
                                                                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_delegations_2276
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_mark_2290
                                                                                    (coe v8)))))))
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Epoch.C_MkSnapshot_135
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                                                        (coe
                                                                           MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                           (coe
                                                                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                              (coe
                                                                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)))
                                                                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_stake_2274
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_set_2292
                                                                                    (coe v8))))))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                                                        (coe
                                                                           MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                           (coe
                                                                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                              (coe
                                                                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)))
                                                                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_delegations_2276
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_set_2292
                                                                                    (coe v8)))))))
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Epoch.C_MkSnapshot_135
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                                                        (coe
                                                                           MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                           (coe
                                                                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                              (coe
                                                                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)))
                                                                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_stake_2274
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_go_2294
                                                                                    (coe v8))))))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                                                        (coe
                                                                           MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                           (coe
                                                                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                              (coe
                                                                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)))
                                                                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_delegations_2276
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_go_2294
                                                                                    (coe v8)))))))
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_feeSS_2296
                                                                     (coe v8)))
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Ledger.C_MkLState_2805
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Utxo.C_MkUTxOState_1277
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                                                        (coe
                                                                           MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                           (coe
                                                                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                              (coe
                                                                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                 (coe
                                                                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))
                                                                                 (coe
                                                                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                    (coe
                                                                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_98
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'BaseAddr_18)
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'BootstrapAddr_22))
                                                                                    (coe
                                                                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
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
                                                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Transaction.d_Conv'45'HashedTimelock_22)
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
                                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_utxo_1984
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2158
                                                                                    (coe v9))))))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_fees_1986
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2158
                                                                           (coe v9)))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                                                        (coe
                                                                           MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                           (coe
                                                                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                              (coe
                                                                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Certs.d_Conv'45'DepositPurpose_72)
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)))
                                                                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_deposits_1988
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2158
                                                                                    (coe v9))))))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_donations_1990
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2158
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
                                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Gov.d_Conv'45'GovActionState_330)))
                                                                     (MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_govSt_2160
                                                                        (coe v9)))
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Cert.C_MkCertState_65
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Certs.C_MkDState_6297
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                                                           (coe
                                                                              MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                              (coe
                                                                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                 (coe
                                                                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Gov.d_Conv'45'VDeleg_150)))
                                                                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_934
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_968
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2162
                                                                                          (coe
                                                                                             v9)))))))
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                                                           (coe
                                                                              MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                              (coe
                                                                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                 (coe
                                                                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)))
                                                                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_stakeDelegs_936
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_968
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2162
                                                                                          (coe
                                                                                             v9)))))))
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                                                           (coe
                                                                              MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                              (coe
                                                                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                 (coe
                                                                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)))
                                                                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_938
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_968
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2162
                                                                                          (coe
                                                                                             v9)))))))
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                                                           (coe
                                                                              MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                              (coe
                                                                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                 (coe
                                                                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Certs.d_Conv'45'DepositPurpose_72)
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)))
                                                                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_940
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_968
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2162
                                                                                          (coe
                                                                                             v9))))))))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Certs.C_MkPState_2485
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                                                           (coe
                                                                              MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                              (coe
                                                                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                 (coe
                                                                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Certs.d_Conv'45'PoolParams_68)))
                                                                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pools_866
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_970
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2162
                                                                                          (coe
                                                                                             v9)))))))
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                                                           (coe
                                                                              MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                              (coe
                                                                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                 (coe
                                                                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)))
                                                                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_retiring_868
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_970
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2162
                                                                                          (coe
                                                                                             v9))))))))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Certs.C_MkGState_16367
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                                                           (coe
                                                                              MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                              (coe
                                                                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                 (coe
                                                                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)))
                                                                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dreps_952
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_972
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2162
                                                                                          (coe
                                                                                             v9)))))))
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                                                           (coe
                                                                              MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                              (coe
                                                                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                 (coe
                                                                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)
                                                                                    (coe
                                                                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14))))
                                                                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_ccHotKeys_954
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_972
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2162
                                                                                          (coe
                                                                                             v9)))))))
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                                                           (coe
                                                                              MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                              (coe
                                                                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                 (coe
                                                                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Certs.d_Conv'45'DepositPurpose_72)
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)))
                                                                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_956
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_972
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2162
                                                                                          (coe
                                                                                             v9))))))))))
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Enact.C_MkEnactState_57
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
                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.du_Conv'45'HSMap_74
                                                                                    (let v12
                                                                                           = MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Core.d_HSTransactionStructure_888 in
                                                                                     coe
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Conway.Conformance.Address.du_DecEq'45'Credential_146
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                                                                                                   (coe
                                                                                                      v12))))
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                                                                                                (coe
                                                                                                   v12)))))
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_Conv'45'Rational_28))))
                                                                        (coe
                                                                           (\ v12 ->
                                                                              MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                (coe
                                                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))))
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Enact.d_cc_868
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
                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))))
                                                                        (coe
                                                                           (\ v12 ->
                                                                              MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                (coe
                                                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))))
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Enact.d_constitution_870
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
                                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)))
                                                                        (coe
                                                                           (\ v12 ->
                                                                              MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                (coe
                                                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))))
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Enact.d_pv_872
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
                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.PParams.d_Conv'45'PParams_26))
                                                                        (coe
                                                                           (\ v12 ->
                                                                              MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                (coe
                                                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))))
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Enact.d_pparams_874
                                                                           (coe v10))))
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                                                     (coe
                                                                        MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                        (coe
                                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                           (coe
                                                                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'RwdAddr_26)
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)))
                                                                        (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Enact.d_withdrawals_876
                                                                              (coe v10))))))
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Ratify.C_MkRatifyState_4845
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Enact.C_MkEnactState_57
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
                                                                                       MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.du_Conv'45'HSMap_74
                                                                                       (let v12
                                                                                              = MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Core.d_HSTransactionStructure_888 in
                                                                                        coe
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Address.du_DecEq'45'Credential_146
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                                                                                                      (coe
                                                                                                         v12))))
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                                                                                                   (coe
                                                                                                      v12)))))
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_Conv'45'Rational_28))))
                                                                           (coe
                                                                              (\ v12 ->
                                                                                 MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                   (coe
                                                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Enact.d_cc_868
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_es_2030
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
                                                                                       MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))))
                                                                           (coe
                                                                              (\ v12 ->
                                                                                 MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                   (coe
                                                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Enact.d_constitution_870
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_es_2030
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
                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)))
                                                                           (coe
                                                                              (\ v12 ->
                                                                                 MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                   (coe
                                                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Enact.d_pv_872
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_es_2030
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
                                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.PParams.d_Conv'45'PParams_26))
                                                                           (coe
                                                                              (\ v12 ->
                                                                                 MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                   (coe
                                                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Enact.d_pparams_874
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_es_2030
                                                                                 (coe v11)))))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                                                        (coe
                                                                           MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                           (coe
                                                                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                              (coe
                                                                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'RwdAddr_26)
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)))
                                                                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Enact.d_withdrawals_876
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_es_2030
                                                                                    (coe v11)))))))
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSSet_42
                                                                     (coe
                                                                        MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                        (coe
                                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_118
                                                                           (coe
                                                                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                              (coe
                                                                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Gov.d_Conv'45'GovActionState_330)))
                                                                        (MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_removed_2032
                                                                           (coe v11))))
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_delay_2034
                                                                     (coe v11)))
                                                        _ -> MAlonzo.RTE.mazUnreachableError))
                                                (coe
                                                   (\ v6 ->
                                                      case coe v6 of
                                                        MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Epoch.C_MkEpochState_3005 v7 v8 v9 v10 v11
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Epoch.C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_2322
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                                     (coe
                                                                        (\ v12 ->
                                                                           case coe v12 of
                                                                             MAlonzo.Code.Ledger.Conway.Conformance.PParams.C_'10214'_'44'_'10215''7491'_160 v13 v14
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.PParams.C_MkAcnt_9607
                                                                                    (coe v13)
                                                                                    (coe v14)
                                                                             _ -> MAlonzo.RTE.mazUnreachableError))
                                                                     (coe
                                                                        (\ v12 ->
                                                                           case coe v12 of
                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.PParams.C_MkAcnt_9607 v13 v14
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.PParams.C_'10214'_'44'_'10215''7491'_160
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
                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Epoch.C_'10214'_'44'_'44'_'44'_'10215''738''738'_2298 v13 v14 v15 v16
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Epoch.C_MkSnapshots_1411
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Epoch.C_MkSnapshot_135
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                                                                          (coe
                                                                                             MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                             (coe
                                                                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                                (coe
                                                                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)))
                                                                                             (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_stake_2274
                                                                                                   (coe
                                                                                                      v13)))))
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                                                                          (coe
                                                                                             MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                             (coe
                                                                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                                (coe
                                                                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)))
                                                                                             (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_delegations_2276
                                                                                                   (coe
                                                                                                      v13))))))
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Epoch.C_MkSnapshot_135
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                                                                          (coe
                                                                                             MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                             (coe
                                                                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                                (coe
                                                                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)))
                                                                                             (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_stake_2274
                                                                                                   (coe
                                                                                                      v14)))))
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                                                                          (coe
                                                                                             MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                             (coe
                                                                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                                (coe
                                                                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)))
                                                                                             (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_delegations_2276
                                                                                                   (coe
                                                                                                      v14))))))
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Epoch.C_MkSnapshot_135
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                                                                          (coe
                                                                                             MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                             (coe
                                                                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                                (coe
                                                                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)))
                                                                                             (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_stake_2274
                                                                                                   (coe
                                                                                                      v15)))))
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                                                                          (coe
                                                                                             MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                             (coe
                                                                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                                (coe
                                                                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)))
                                                                                             (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_delegations_2276
                                                                                                   (coe
                                                                                                      v15))))))
                                                                                    (coe v16)
                                                                             _ -> MAlonzo.RTE.mazUnreachableError))
                                                                     (coe
                                                                        (\ v12 ->
                                                                           case coe v12 of
                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Epoch.C_MkSnapshots_1411 v13 v14 v15 v16
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Epoch.C_'10214'_'44'_'44'_'44'_'10215''738''738'_2298
                                                                                    (coe
                                                                                       MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                                                          (coe
                                                                                             (\ v17 ->
                                                                                                case coe
                                                                                                       v17 of
                                                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.C_'10214'_'44'_'10215''738'_2278 v18 v19
                                                                                                    -> coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Epoch.C_MkSnapshot_135
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)))
                                                                                                               (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                  (coe
                                                                                                                     v18))))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)))
                                                                                                               (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                  (coe
                                                                                                                     v19))))
                                                                                                  _ -> MAlonzo.RTE.mazUnreachableError))
                                                                                          (coe
                                                                                             (\ v17 ->
                                                                                                case coe
                                                                                                       v17 of
                                                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Epoch.C_MkSnapshot_135 v18 v19
                                                                                                    -> coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Conformance.Epoch.C_'10214'_'44'_'10215''738'_2278
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                                                                               (let v20
                                                                                                                      = MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Core.d_HSTransactionStructure_888 in
                                                                                                                coe
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Address.du_DecEq'45'Credential_146
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                                                                                                                              (coe
                                                                                                                                 v20))))
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                                                                                                                           (coe
                                                                                                                              v20)))))
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))
                                                                                                            (MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.d_assocList_28
                                                                                                               (coe
                                                                                                                  v18)))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                                                                               (let v20
                                                                                                                      = MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Core.d_HSTransactionStructure_888 in
                                                                                                                coe
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Address.du_DecEq'45'Credential_146
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                                                                                                                              (coe
                                                                                                                                 v20))))
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                                                                                                                           (coe
                                                                                                                              v20)))))
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))
                                                                                                            (MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.d_assocList_28
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
                                                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.C_'10214'_'44'_'10215''738'_2278 v18 v19
                                                                                                    -> coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Epoch.C_MkSnapshot_135
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)))
                                                                                                               (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                  (coe
                                                                                                                     v18))))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)))
                                                                                                               (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                  (coe
                                                                                                                     v19))))
                                                                                                  _ -> MAlonzo.RTE.mazUnreachableError))
                                                                                          (coe
                                                                                             (\ v17 ->
                                                                                                case coe
                                                                                                       v17 of
                                                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Epoch.C_MkSnapshot_135 v18 v19
                                                                                                    -> coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Conformance.Epoch.C_'10214'_'44'_'10215''738'_2278
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                                                                               (let v20
                                                                                                                      = MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Core.d_HSTransactionStructure_888 in
                                                                                                                coe
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Address.du_DecEq'45'Credential_146
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                                                                                                                              (coe
                                                                                                                                 v20))))
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                                                                                                                           (coe
                                                                                                                              v20)))))
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))
                                                                                                            (MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.d_assocList_28
                                                                                                               (coe
                                                                                                                  v18)))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                                                                               (let v20
                                                                                                                      = MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Core.d_HSTransactionStructure_888 in
                                                                                                                coe
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Address.du_DecEq'45'Credential_146
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                                                                                                                              (coe
                                                                                                                                 v20))))
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                                                                                                                           (coe
                                                                                                                              v20)))))
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))
                                                                                                            (MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.d_assocList_28
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
                                                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.C_'10214'_'44'_'10215''738'_2278 v18 v19
                                                                                                    -> coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Epoch.C_MkSnapshot_135
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)))
                                                                                                               (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                  (coe
                                                                                                                     v18))))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)))
                                                                                                               (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                  (coe
                                                                                                                     v19))))
                                                                                                  _ -> MAlonzo.RTE.mazUnreachableError))
                                                                                          (coe
                                                                                             (\ v17 ->
                                                                                                case coe
                                                                                                       v17 of
                                                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Epoch.C_MkSnapshot_135 v18 v19
                                                                                                    -> coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Conformance.Epoch.C_'10214'_'44'_'10215''738'_2278
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                                                                               (let v20
                                                                                                                      = MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Core.d_HSTransactionStructure_888 in
                                                                                                                coe
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Address.du_DecEq'45'Credential_146
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                                                                                                                              (coe
                                                                                                                                 v20))))
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                                                                                                                           (coe
                                                                                                                              v20)))))
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))
                                                                                                            (MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.d_assocList_28
                                                                                                               (coe
                                                                                                                  v18)))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                                                                               (let v20
                                                                                                                      = MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Core.d_HSTransactionStructure_888 in
                                                                                                                coe
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Address.du_DecEq'45'Credential_146
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                                                                                                                              (coe
                                                                                                                                 v20))))
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                                                                                                                           (coe
                                                                                                                              v20)))))
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))
                                                                                                            (MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.d_assocList_28
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
                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Ledger.C_'10214'_'44'_'44'_'10215''737'_2164 v13 v14 v15
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Ledger.C_MkLState_2805
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Utxo.C_MkUTxOState_1277
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                                                                          (coe
                                                                                             MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                             (coe
                                                                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                                (coe
                                                                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_98
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'BaseAddr_18)
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'BootstrapAddr_22))
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
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
                                                                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Transaction.d_Conv'45'HashedTimelock_22)
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
                                                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_utxo_1984
                                                                                                   (coe
                                                                                                      v13)))))
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_fees_1986
                                                                                          (coe v13))
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                                                                          (coe
                                                                                             MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                             (coe
                                                                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                                (coe
                                                                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Certs.d_Conv'45'DepositPurpose_72)
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)))
                                                                                             (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_deposits_1988
                                                                                                   (coe
                                                                                                      v13)))))
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_donations_1990
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
                                                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Gov.d_Conv'45'GovActionState_330)))
                                                                                       v14)
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Cert.C_MkCertState_65
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Certs.C_MkDState_6297
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                                                                             (coe
                                                                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                (coe
                                                                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Gov.d_Conv'45'VDeleg_150)))
                                                                                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_934
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_968
                                                                                                         (coe
                                                                                                            v15))))))
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                                                                             (coe
                                                                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                (coe
                                                                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)))
                                                                                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_stakeDelegs_936
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_968
                                                                                                         (coe
                                                                                                            v15))))))
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                                                                             (coe
                                                                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                (coe
                                                                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)))
                                                                                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_938
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_968
                                                                                                         (coe
                                                                                                            v15))))))
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                                                                             (coe
                                                                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                (coe
                                                                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Certs.d_Conv'45'DepositPurpose_72)
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)))
                                                                                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_940
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_968
                                                                                                         (coe
                                                                                                            v15)))))))
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Certs.C_MkPState_2485
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                                                                             (coe
                                                                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                (coe
                                                                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Certs.d_Conv'45'PoolParams_68)))
                                                                                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pools_866
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_970
                                                                                                         (coe
                                                                                                            v15))))))
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                                                                             (coe
                                                                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                (coe
                                                                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)))
                                                                                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_retiring_868
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_970
                                                                                                         (coe
                                                                                                            v15)))))))
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Certs.C_MkGState_16367
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                                                                             (coe
                                                                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                (coe
                                                                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)))
                                                                                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dreps_952
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_972
                                                                                                         (coe
                                                                                                            v15))))))
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                                                                             (coe
                                                                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                (coe
                                                                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14))))
                                                                                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_ccHotKeys_954
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_972
                                                                                                         (coe
                                                                                                            v15))))))
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                                                                             (coe
                                                                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                (coe
                                                                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Certs.d_Conv'45'DepositPurpose_72)
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)))
                                                                                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_956
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_972
                                                                                                         (coe
                                                                                                            v15))))))))
                                                                             _ -> MAlonzo.RTE.mazUnreachableError))
                                                                     (coe
                                                                        (\ v12 ->
                                                                           case coe v12 of
                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Ledger.C_MkLState_2805 v13 v14 v15
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Ledger.C_'10214'_'44'_'44'_'10215''737'_2164
                                                                                    (coe
                                                                                       MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                                                          (coe
                                                                                             (\ v16 ->
                                                                                                case coe
                                                                                                       v16 of
                                                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Utxo.C_'10214'_'44'_'44'_'44'_'10215''7512'_1992 v17 v18 v19 v20
                                                                                                    -> coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Utxo.C_MkUTxOState_1277
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_98
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'BaseAddr_18)
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'BootstrapAddr_22))
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
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
                                                                                                                                       MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Transaction.d_Conv'45'HashedTimelock_22)
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
                                                                                                            MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Certs.d_Conv'45'DepositPurpose_72)
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)))
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
                                                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Utxo.C_MkUTxOState_1277 v17 v18 v19 v20
                                                                                                    -> coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Conformance.Utxo.C_'10214'_'44'_'44'_'44'_'10215''7512'_1992
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
                                                                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_98
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'BaseAddr_18)
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'BootstrapAddr_22))
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
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
                                                                                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Transaction.d_Conv'45'HashedTimelock_22)
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
                                                                                                            (MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.d_assocList_28
                                                                                                               (coe
                                                                                                                  v17)))
                                                                                                         (coe
                                                                                                            v18)
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                                                                               (let v21
                                                                                                                      = MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Core.d_HSTransactionStructure_888 in
                                                                                                                coe
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_DecEq'45'DepositPurpose_850
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_govStructure_2422
                                                                                                                        (coe
                                                                                                                           v21))))
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Certs.d_Conv'45'DepositPurpose_72)
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))
                                                                                                            (MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.d_assocList_28
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
                                                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Gov.d_Conv'45'GovActionState_330)))
                                                                                       v14)
                                                                                    (coe
                                                                                       MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                                                          (coe
                                                                                             (\ v16 ->
                                                                                                case coe
                                                                                                       v16 of
                                                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'10215''7580''738'_974 v17 v18 v19
                                                                                                    -> coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Cert.C_MkCertState_65
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Certs.C_MkDState_6297
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Gov.d_Conv'45'VDeleg_150)))
                                                                                                                  (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_934
                                                                                                                        (coe
                                                                                                                           v17)))))
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)))
                                                                                                                  (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_stakeDelegs_936
                                                                                                                        (coe
                                                                                                                           v17)))))
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)))
                                                                                                                  (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_938
                                                                                                                        (coe
                                                                                                                           v17)))))
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Certs.d_Conv'45'DepositPurpose_72)
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)))
                                                                                                                  (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_940
                                                                                                                        (coe
                                                                                                                           v17))))))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Certs.C_MkPState_2485
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Certs.d_Conv'45'PoolParams_68)))
                                                                                                                  (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pools_866
                                                                                                                        (coe
                                                                                                                           v18)))))
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)))
                                                                                                                  (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_retiring_868
                                                                                                                        (coe
                                                                                                                           v18))))))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Certs.C_MkGState_16367
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)))
                                                                                                                  (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dreps_952
                                                                                                                        (coe
                                                                                                                           v19)))))
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14))))
                                                                                                                  (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_ccHotKeys_954
                                                                                                                        (coe
                                                                                                                           v19)))))
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Certs.d_Conv'45'DepositPurpose_72)
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)))
                                                                                                                  (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_956
                                                                                                                        (coe
                                                                                                                           v19))))))
                                                                                                  _ -> MAlonzo.RTE.mazUnreachableError))
                                                                                          (coe
                                                                                             (\ v16 ->
                                                                                                case coe
                                                                                                       v16 of
                                                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Cert.C_MkCertState_65 v17 v18 v19
                                                                                                    -> coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'10215''7580''738'_974
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                                                                               (coe
                                                                                                                  (\ v20 ->
                                                                                                                     case coe
                                                                                                                            v20 of
                                                                                                                       MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'44'_'10215''7496'_942 v21 v22 v23 v24
                                                                                                                         -> coe
                                                                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Certs.C_MkDState_6297
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                                                                       (coe
                                                                                                                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Gov.d_Conv'45'VDeleg_150)))
                                                                                                                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                       (coe
                                                                                                                                          v21))))
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                                                                       (coe
                                                                                                                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)))
                                                                                                                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                       (coe
                                                                                                                                          v22))))
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                                                                       (coe
                                                                                                                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)))
                                                                                                                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                       (coe
                                                                                                                                          v23))))
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                                                                       (coe
                                                                                                                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Certs.d_Conv'45'DepositPurpose_72)
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)))
                                                                                                                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                       (coe
                                                                                                                                          v24))))
                                                                                                                       _ -> MAlonzo.RTE.mazUnreachableError))
                                                                                                               (coe
                                                                                                                  (\ v20 ->
                                                                                                                     case coe
                                                                                                                            v20 of
                                                                                                                       MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Certs.C_MkDState_6297 v21 v22 v23 v24
                                                                                                                         -> coe
                                                                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'44'_'10215''7496'_942
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                                                                                                    (let v25
                                                                                                                                           = MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Core.d_HSTransactionStructure_888 in
                                                                                                                                     coe
                                                                                                                                       (coe
                                                                                                                                          MAlonzo.Code.Ledger.Conway.Conformance.Address.du_DecEq'45'Credential_146
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
                                                                                                                                             (coe
                                                                                                                                                MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
                                                                                                                                                (coe
                                                                                                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                                                                                                                                                   (coe
                                                                                                                                                      v25))))
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
                                                                                                                                             (coe
                                                                                                                                                MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                                                                                                                                                (coe
                                                                                                                                                   v25)))))
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Gov.d_Conv'45'VDeleg_150))
                                                                                                                                 (MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.d_assocList_28
                                                                                                                                    (coe
                                                                                                                                       v21)))
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                                                                                                    (let v25
                                                                                                                                           = MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Core.d_HSTransactionStructure_888 in
                                                                                                                                     coe
                                                                                                                                       (coe
                                                                                                                                          MAlonzo.Code.Ledger.Conway.Conformance.Address.du_DecEq'45'Credential_146
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
                                                                                                                                             (coe
                                                                                                                                                MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
                                                                                                                                                (coe
                                                                                                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                                                                                                                                                   (coe
                                                                                                                                                      v25))))
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
                                                                                                                                             (coe
                                                                                                                                                MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                                                                                                                                                (coe
                                                                                                                                                   v25)))))
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))
                                                                                                                                 (MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.d_assocList_28
                                                                                                                                    (coe
                                                                                                                                       v22)))
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                                                                                                    (let v25
                                                                                                                                           = MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Core.d_HSTransactionStructure_888 in
                                                                                                                                     coe
                                                                                                                                       (coe
                                                                                                                                          MAlonzo.Code.Ledger.Conway.Conformance.Address.du_DecEq'45'Credential_146
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
                                                                                                                                             (coe
                                                                                                                                                MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
                                                                                                                                                (coe
                                                                                                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                                                                                                                                                   (coe
                                                                                                                                                      v25))))
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
                                                                                                                                             (coe
                                                                                                                                                MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                                                                                                                                                (coe
                                                                                                                                                   v25)))))
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))
                                                                                                                                 (MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.d_assocList_28
                                                                                                                                    (coe
                                                                                                                                       v23)))
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                                                                                                    (let v25
                                                                                                                                           = MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Core.d_HSTransactionStructure_888 in
                                                                                                                                     coe
                                                                                                                                       (coe
                                                                                                                                          MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_DecEq'45'DepositPurpose_850
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_govStructure_2422
                                                                                                                                             (coe
                                                                                                                                                v25))))
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Certs.d_Conv'45'DepositPurpose_72)
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))
                                                                                                                                 (MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.d_assocList_28
                                                                                                                                    (coe
                                                                                                                                       v24)))
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
                                                                                                                       MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'10215''7510'_870 v21 v22
                                                                                                                         -> coe
                                                                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Certs.C_MkPState_2485
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                                                                       (coe
                                                                                                                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Certs.d_Conv'45'PoolParams_68)))
                                                                                                                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                       (coe
                                                                                                                                          v21))))
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                                                                       (coe
                                                                                                                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)))
                                                                                                                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                       (coe
                                                                                                                                          v22))))
                                                                                                                       _ -> MAlonzo.RTE.mazUnreachableError))
                                                                                                               (coe
                                                                                                                  (\ v20 ->
                                                                                                                     case coe
                                                                                                                            v20 of
                                                                                                                       MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Certs.C_MkPState_2485 v21 v22
                                                                                                                         -> coe
                                                                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'10215''7510'_870
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Certs.d_Conv'45'PoolParams_68))
                                                                                                                                 (MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.d_assocList_28
                                                                                                                                    (coe
                                                                                                                                       v21)))
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))
                                                                                                                                 (MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.d_assocList_28
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
                                                                                                                       MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'10215''7515'_958 v21 v22 v23
                                                                                                                         -> coe
                                                                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Certs.C_MkGState_16367
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                                                                       (coe
                                                                                                                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)))
                                                                                                                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                       (coe
                                                                                                                                          v21))))
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                                                                       (coe
                                                                                                                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                                                                                                             (coe
                                                                                                                                                MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14))))
                                                                                                                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                       (coe
                                                                                                                                          v22))))
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                                                                       (coe
                                                                                                                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Certs.d_Conv'45'DepositPurpose_72)
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)))
                                                                                                                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                       (coe
                                                                                                                                          v23))))
                                                                                                                       _ -> MAlonzo.RTE.mazUnreachableError))
                                                                                                               (coe
                                                                                                                  (\ v20 ->
                                                                                                                     case coe
                                                                                                                            v20 of
                                                                                                                       MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Certs.C_MkGState_16367 v21 v22 v23
                                                                                                                         -> coe
                                                                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'10215''7515'_958
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                                                                                                    (let v24
                                                                                                                                           = MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Core.d_HSTransactionStructure_888 in
                                                                                                                                     coe
                                                                                                                                       (coe
                                                                                                                                          MAlonzo.Code.Ledger.Conway.Conformance.Address.du_DecEq'45'Credential_146
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
                                                                                                                                             (coe
                                                                                                                                                MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
                                                                                                                                                (coe
                                                                                                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                                                                                                                                                   (coe
                                                                                                                                                      v24))))
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
                                                                                                                                             (coe
                                                                                                                                                MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                                                                                                                                                (coe
                                                                                                                                                   v24)))))
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))
                                                                                                                                 (MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.d_assocList_28
                                                                                                                                    (coe
                                                                                                                                       v21)))
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                                                                                                    (let v24
                                                                                                                                           = MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Core.d_HSTransactionStructure_888 in
                                                                                                                                     coe
                                                                                                                                       (coe
                                                                                                                                          MAlonzo.Code.Ledger.Conway.Conformance.Address.du_DecEq'45'Credential_146
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
                                                                                                                                             (coe
                                                                                                                                                MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
                                                                                                                                                (coe
                                                                                                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                                                                                                                                                   (coe
                                                                                                                                                      v24))))
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
                                                                                                                                             (coe
                                                                                                                                                MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                                                                                                                                                (coe
                                                                                                                                                   v24)))))
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                                                                                                       (coe
                                                                                                                                          MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)))
                                                                                                                                 (MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.d_assocList_28
                                                                                                                                    (coe
                                                                                                                                       v22)))
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                                                                                                    (let v24
                                                                                                                                           = MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Core.d_HSTransactionStructure_888 in
                                                                                                                                     coe
                                                                                                                                       (coe
                                                                                                                                          MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_DecEq'45'DepositPurpose_850
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_govStructure_2422
                                                                                                                                             (coe
                                                                                                                                                v24))))
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Certs.d_Conv'45'DepositPurpose_72)
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))
                                                                                                                                 (MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.d_assocList_28
                                                                                                                                    (coe
                                                                                                                                       v23)))
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
                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Enact.C_EnactState'46'constructor_2125 v13 v14 v15 v16 v17
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Enact.C_MkEnactState_57
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
                                                                                                      MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.du_Conv'45'HSMap_74
                                                                                                      (let v18
                                                                                                             = MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Core.d_HSTransactionStructure_888 in
                                                                                                       coe
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Conway.Conformance.Address.du_DecEq'45'Credential_146
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                                                                                                                     (coe
                                                                                                                        v18))))
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                                                                                                                  (coe
                                                                                                                     v18)))))
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_Conv'45'Rational_28))))
                                                                                          (coe
                                                                                             (\ v18 ->
                                                                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))))
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
                                                                                                      MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))))
                                                                                          (coe
                                                                                             (\ v18 ->
                                                                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))))
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
                                                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)))
                                                                                          (coe
                                                                                             (\ v18 ->
                                                                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))))
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
                                                                                                MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.PParams.d_Conv'45'PParams_26))
                                                                                          (coe
                                                                                             (\ v18 ->
                                                                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))))
                                                                                          (coe
                                                                                             v16)))
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                          (coe
                                                                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                             (coe
                                                                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'RwdAddr_26)
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)))
                                                                                          (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                             (coe
                                                                                                v17))))
                                                                             _ -> MAlonzo.RTE.mazUnreachableError))
                                                                     (coe
                                                                        (\ v12 ->
                                                                           case coe v12 of
                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Enact.C_MkEnactState_57 v13 v14 v15 v16 v17
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Enact.C_EnactState'46'constructor_2125
                                                                                    (coe
                                                                                       MAlonzo.Code.Data.Product.Base.du_map_128
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                          (coe
                                                                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                                                             (coe
                                                                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.du_Conv'45'HSMap_74
                                                                                                   (let v18
                                                                                                          = MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Core.d_HSTransactionStructure_888 in
                                                                                                    coe
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Conformance.Address.du_DecEq'45'Credential_146
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                                                                                                                  (coe
                                                                                                                     v18))))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                                                                                                               (coe
                                                                                                                  v18)))))
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_Conv'45'Rational_28))))
                                                                                       (coe
                                                                                          (\ v18 ->
                                                                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                               (coe
                                                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))))
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
                                                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))))
                                                                                       (coe
                                                                                          (\ v18 ->
                                                                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                               (coe
                                                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))))
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
                                                                                                MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)))
                                                                                       (coe
                                                                                          (\ v18 ->
                                                                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                               (coe
                                                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))))
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
                                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.PParams.d_Conv'45'PParams_26))
                                                                                       (coe
                                                                                          (\ v18 ->
                                                                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                               (coe
                                                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))))
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
                                                                                                 = MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Core.d_HSTransactionStructure_888 in
                                                                                           coe
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Conway.Conformance.Address.du_DecEq'45'RwdAddr_198
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.d_DecEq'45'Netw_280
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_globalConstants_1248
                                                                                                      (coe
                                                                                                         v18)))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                                                                                                         (coe
                                                                                                            v18))))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                                                                                                      (coe
                                                                                                         v18)))))
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'RwdAddr_26)
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))
                                                                                       (MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.d_assocList_28
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
                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Ratify.C_'10214'_'44'_'44'_'10215''691'_2036 v13 v14 v15
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Ratify.C_MkRatifyState_4845
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Enact.C_MkEnactState_57
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
                                                                                                         MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.du_Conv'45'HSMap_74
                                                                                                         (let v16
                                                                                                                = MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Core.d_HSTransactionStructure_888 in
                                                                                                          coe
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Conway.Conformance.Address.du_DecEq'45'Credential_146
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                                                                                                                        (coe
                                                                                                                           v16))))
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                                                                                                                     (coe
                                                                                                                        v16)))))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_Conv'45'Rational_28))))
                                                                                             (coe
                                                                                                (\ v16 ->
                                                                                                   MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))))
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Conway.Conformance.Enact.d_cc_868
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
                                                                                                         MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))))
                                                                                             (coe
                                                                                                (\ v16 ->
                                                                                                   MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))))
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Conway.Conformance.Enact.d_constitution_870
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
                                                                                                      MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)))
                                                                                             (coe
                                                                                                (\ v16 ->
                                                                                                   MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))))
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Conway.Conformance.Enact.d_pv_872
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
                                                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.PParams.d_Conv'45'PParams_26))
                                                                                             (coe
                                                                                                (\ v16 ->
                                                                                                   MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))))
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Conway.Conformance.Enact.d_pparams_874
                                                                                                (coe
                                                                                                   v13))))
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                                                                          (coe
                                                                                             MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                             (coe
                                                                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                                (coe
                                                                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'RwdAddr_26)
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)))
                                                                                             (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Enact.d_withdrawals_876
                                                                                                   (coe
                                                                                                      v13))))))
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSSet_42
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                          (coe
                                                                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_118
                                                                                             (coe
                                                                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                (coe
                                                                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Gov.d_Conv'45'GovActionState_330)))
                                                                                          v14))
                                                                                    (coe v15)
                                                                             _ -> MAlonzo.RTE.mazUnreachableError))
                                                                     (coe
                                                                        (\ v12 ->
                                                                           case coe v12 of
                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Ratify.C_MkRatifyState_4845 v13 v14 v15
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Ratify.C_'10214'_'44'_'44'_'10215''691'_2036
                                                                                    (coe
                                                                                       MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                                                          (coe
                                                                                             (\ v16 ->
                                                                                                case coe
                                                                                                       v16 of
                                                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Enact.C_EnactState'46'constructor_2125 v17 v18 v19 v20 v21
                                                                                                    -> coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Enact.C_MkEnactState_57
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
                                                                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.du_Conv'45'HSMap_74
                                                                                                                           (let v22
                                                                                                                                  = MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Core.d_HSTransactionStructure_888 in
                                                                                                                            coe
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Address.du_DecEq'45'Credential_146
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
                                                                                                                                       (coe
                                                                                                                                          MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                                                                                                                                          (coe
                                                                                                                                             v22))))
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                                                                                                                                       (coe
                                                                                                                                          v22)))))
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_Conv'45'Rational_28))))
                                                                                                               (coe
                                                                                                                  (\ v22 ->
                                                                                                                     MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                                          (coe
                                                                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                                                                                                          (coe
                                                                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))))
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
                                                                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))))
                                                                                                               (coe
                                                                                                                  (\ v22 ->
                                                                                                                     MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                                          (coe
                                                                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                                                                                                          (coe
                                                                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))))
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
                                                                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)))
                                                                                                               (coe
                                                                                                                  (\ v22 ->
                                                                                                                     MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                                          (coe
                                                                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                                                                                                          (coe
                                                                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))))
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
                                                                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.PParams.d_Conv'45'PParams_26))
                                                                                                               (coe
                                                                                                                  (\ v22 ->
                                                                                                                     MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                                          (coe
                                                                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                                                                                                          (coe
                                                                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))))
                                                                                                               (coe
                                                                                                                  v20)))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'RwdAddr_26)
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)))
                                                                                                               (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                  (coe
                                                                                                                     v21))))
                                                                                                  _ -> MAlonzo.RTE.mazUnreachableError))
                                                                                          (coe
                                                                                             (\ v16 ->
                                                                                                case coe
                                                                                                       v16 of
                                                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Enact.C_MkEnactState_57 v17 v18 v19 v20 v21
                                                                                                    -> coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Conformance.Enact.C_EnactState'46'constructor_2125
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Data.Product.Base.du_map_128
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.du_Conv'45'HSMap_74
                                                                                                                        (let v22
                                                                                                                               = MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Core.d_HSTransactionStructure_888 in
                                                                                                                         coe
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Address.du_DecEq'45'Credential_146
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                                                                                                                                       (coe
                                                                                                                                          v22))))
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                                                                                                                                    (coe
                                                                                                                                       v22)))))
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_Conv'45'Rational_28))))
                                                                                                            (coe
                                                                                                               (\ v22 ->
                                                                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))))
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
                                                                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))))
                                                                                                            (coe
                                                                                                               (\ v22 ->
                                                                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))))
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
                                                                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)))
                                                                                                            (coe
                                                                                                               (\ v22 ->
                                                                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))))
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
                                                                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.PParams.d_Conv'45'PParams_26))
                                                                                                            (coe
                                                                                                               (\ v22 ->
                                                                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))))
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
                                                                                                                      = MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Core.d_HSTransactionStructure_888 in
                                                                                                                coe
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Address.du_DecEq'45'RwdAddr_198
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.d_DecEq'45'Netw_280
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_globalConstants_1248
                                                                                                                           (coe
                                                                                                                              v22)))
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                                                                                                                              (coe
                                                                                                                                 v22))))
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                                                                                                                           (coe
                                                                                                                              v22)))))
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'RwdAddr_26)
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))
                                                                                                            (MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.d_assocList_28
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
                                                                                                      MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Gov.d_Conv'45'GovActionState_330)))
                                                                                          (MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.d_elems_40
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
                                                   MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.NewEpoch.d_Conv'45'RewardUpdate_172))
                                             v5)
                                   _ -> MAlonzo.RTE.mazUnreachableError)))
                        v1)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Chain.HsTy-Block
d_HsTy'45'Block_54 ::
  MAlonzo.Code.Foreign.HaskellTypes.T_HasHsType_14
d_HsTy'45'Block_54 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Chain.Conv-Block
d_Conv'45'Block_56 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Conv'45'Block_56
  = coe
      MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Conway.Conformance.Chain.C_Block'46'constructor_3901 v1 v2
                -> coe
                     C_Block_381
                     (coe
                        MAlonzo.Code.Class.Functor.Core.du_fmap_22
                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20 () erased
                        () erased
                        (MAlonzo.Code.Foreign.Convertible.d_to_18
                           (coe
                              MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Transaction.d_Conv'45'Tx_34))
                        v1)
                     (coe v2)
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 ->
            case coe v0 of
              C_Block_381 v1 v2
                -> coe
                     MAlonzo.Code.Ledger.Conway.Conformance.Chain.C_Block'46'constructor_3901
                     (coe
                        MAlonzo.Code.Class.Functor.Core.du_fmap_22
                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20 () erased
                        () erased
                        (MAlonzo.Code.Foreign.Convertible.d_from_20
                           (coe
                              MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Transaction.d_Conv'45'Tx_34))
                        v1)
                     (coe v2)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Chain.chain-step
chainStep ::
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  T_ChainState_73 ->
  T_Block_379 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.T_ComputationResult_48
    MAlonzo.Code.Agda.Builtin.String.T_String_6 T_ChainState_73
chainStep = coe d_chain'45'step_58
d_chain'45'step_58 ::
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  T_ChainState_73 ->
  T_Block_379 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.T_ComputationResult_48
    MAlonzo.Code.Agda.Builtin.String.T_String_6 T_ChainState_73
d_chain'45'step_58 ~v0 = du_chain'45'step_58
du_chain'45'step_58 ::
  T_ChainState_73 ->
  T_Block_379 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.T_ComputationResult_48
    MAlonzo.Code.Agda.Builtin.String.T_String_6 T_ChainState_73
du_chain'45'step_58
  = coe
      MAlonzo.Code.Foreign.Convertible.d_to_18
      (coe
         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Fun_130
         (coe d_Conv'45'ChainState_52)
         (coe
            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Fun_130
            (coe d_Conv'45'Block_56)
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.du_Conv'45'ComputationResult_90
               (coe
                  MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvString_16)
               (coe d_Conv'45'ChainState_52))))
      (coe
         MAlonzo.Code.Interface.ComputationalRelation.du_compute_274
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Chain.Properties.d_Computational'45'CHAIN_2020
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Core.d_HSTransactionStructure_888)
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Core.d_HSAbstractFunctions_2638))
         (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Chain.ChainState
d_ChainState_73 = ()
type T_ChainState_73 = ChainState
pattern C_ChainState_75 a0 = ChainState a0
check_ChainState_75 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.NewEpoch.T_NewEpochState_2125 ->
  T_ChainState_73
check_ChainState_75 = ChainState
cover_ChainState_73 :: ChainState -> ()
cover_ChainState_73 x
  = case x of
      ChainState _ -> ()
-- Ledger.Conway.Conformance.Foreign.HSLedger.Chain.Block
d_Block_379 = ()
type T_Block_379 = Block
pattern C_Block_381 a0 a1 = Block a0 a1
check_Block_381 ::
  MAlonzo.Code.Agda.Builtin.List.T_List_10
    ()
    MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Transaction.T_Tx_110051 ->
  Integer -> T_Block_379
check_Block_381 = Block
cover_Block_379 :: Block -> ()
cover_Block_379 x
  = case x of
      Block _ _ -> ()
