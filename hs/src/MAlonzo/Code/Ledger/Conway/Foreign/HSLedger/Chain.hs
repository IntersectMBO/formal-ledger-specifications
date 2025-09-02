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

module MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Chain where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Builtin.String
import qualified MAlonzo.Code.Agda.Builtin.Unit
import qualified MAlonzo.Code.Axiom.Set
import qualified MAlonzo.Code.Class.DecEq.Instances
import qualified MAlonzo.Code.Class.Functor.Core
import qualified MAlonzo.Code.Class.Functor.Instances
import qualified MAlonzo.Code.Data.List.Relation.Unary.Any
import qualified MAlonzo.Code.Data.Product.Base
import qualified MAlonzo.Code.Foreign.Convertible
import qualified MAlonzo.Code.Foreign.Haskell.Coerce
import qualified MAlonzo.Code.Foreign.HaskellTypes
import qualified MAlonzo.Code.Interface.ComputationalRelation
import qualified MAlonzo.Code.Interface.STS
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Certs
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Chain
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Chain.Properties
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Epoch
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Ledger
import qualified MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions
import qualified MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address
import qualified MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes
import qualified MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Cert
import qualified MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs
import qualified MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Enact
import qualified MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Epoch
import qualified MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures
import qualified MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov
import qualified MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.Core
import qualified MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Ledger
import qualified MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.NewEpoch
import qualified MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.PParams
import qualified MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Ratify
import qualified MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Rewards
import qualified MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction
import qualified MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Utxo
import qualified MAlonzo.Code.Ledger.Conway.Specification.Certs
import qualified MAlonzo.Code.Ledger.Conway.Specification.Enact
import qualified MAlonzo.Code.Ledger.Conway.Specification.PParams
import qualified MAlonzo.Code.Ledger.Conway.Specification.Ratify
import qualified MAlonzo.Code.Ledger.Conway.Specification.Rewards
import qualified MAlonzo.Code.Ledger.Conway.Specification.Transaction
import qualified MAlonzo.Code.Ledger.Conway.Specification.Utxo
import qualified MAlonzo.Code.Ledger.Core.Specification.Address
import qualified MAlonzo.Code.Ledger.Core.Specification.Crypto
import qualified MAlonzo.Code.Ledger.Core.Specification.Epoch
import qualified MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes
import qualified MAlonzo.Code.Prelude
import qualified MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory

import GHC.Generics (Generic)
data ChainState = ChainState {newEpochState :: MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.NewEpoch.NewEpochState}
  deriving (Show, Eq, Generic)
data Block = Block {ts :: [MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.Tx], slot :: Integer}
  deriving (Show, Eq, Generic)
-- Ledger.Conway.Foreign.HSLedger.Chain._._⊢_⇀⦇_,CHAIN⦈_
d__'8866'_'8640''10631'_'44'CHAIN'10632'__12 a0 a1 a2 a3 = ()
-- Ledger.Conway.Foreign.HSLedger.Chain._.Block
d_Block_14 = ()
-- Ledger.Conway.Foreign.HSLedger.Chain._.ChainState
d_ChainState_20 = ()
-- Ledger.Conway.Foreign.HSLedger.Chain._.calculateStakeDistrs
d_calculateStakeDistrs_24 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2340 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_StakeDistrs_2354
d_calculateStakeDistrs_24
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Chain.du_calculateStakeDistrs_2704
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_806
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))
-- Ledger.Conway.Foreign.HSLedger.Chain._.filterPurpose
d_filterPurpose_26 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DepositPurpose_980 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_filterPurpose_26
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Chain.du_filterPurpose_2634
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_806
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))
-- Ledger.Conway.Foreign.HSLedger.Chain._.govActionDeposits
d_govActionDeposits_28 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2340 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_govActionDeposits_28
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Chain.du_govActionDeposits_2648
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_806
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))
-- Ledger.Conway.Foreign.HSLedger.Chain._.maybePurpose
d_maybePurpose_30 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DepositPurpose_980 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer -> Maybe Integer
d_maybePurpose_30
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Chain.du_maybePurpose_2560
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_806
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))
-- Ledger.Conway.Foreign.HSLedger.Chain._.maybePurpose-prop
d_maybePurpose'45'prop_32 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DepositPurpose_980 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DepositPurpose_980 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_maybePurpose'45'prop_32 = erased
-- Ledger.Conway.Foreign.HSLedger.Chain._.Block.slot
d_slot_40 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Chain.T_Block_2538 ->
  Integer
d_slot_40 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Chain.d_slot_2546 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Chain._.Block.ts
d_ts_42 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Chain.T_Block_2538 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3310]
d_ts_42 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Chain.d_ts_2544 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Chain._.ChainState.newEpochState
d_newEpochState_46 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Chain.T_ChainState_2530 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2586
d_newEpochState_46 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Chain.d_newEpochState_2534
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Chain._.Computational-CHAIN
d_Computational'45'CHAIN_50 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'CHAIN_50
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Chain.Properties.d_Computational'45'CHAIN_1888
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_806
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.du_HSAbstractFunctions_2896)
-- Ledger.Conway.Foreign.HSLedger.Chain.HsTy-ChainState
d_HsTy'45'ChainState_52 ::
  MAlonzo.Code.Foreign.HaskellTypes.T_HasHsType_14
d_HsTy'45'ChainState_52 = erased
-- Ledger.Conway.Foreign.HSLedger.Chain.Conv-ChainState
d_Conv'45'ChainState_54 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Conv'45'ChainState_54
  = coe
      MAlonzo.Code.Foreign.Convertible.C_constructor_22
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Conway.Conformance.Chain.C_constructor_2536 v1
                -> coe
                     C_ChainState_71
                     (coe
                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.NewEpoch.C_MkNewEpochState_211
                        (coe
                           MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_lastEpoch_2594
                           (coe v1))
                        (coe
                           MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Epoch.C_MkEpochState_217
                           (coe
                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.PParams.C_MkAcnt_10575
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Specification.PParams.d_treasury_168
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_acnt_2574
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2596
                                       (coe v1))))
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Specification.PParams.d_reserves_170
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_acnt_2574
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2596
                                       (coe v1)))))
                           (coe
                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Rewards.C_MkSnapshots_2993
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Rewards.C_MkSnapshot_131
                                 (coe
                                    MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.d_to_18
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                       (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_stake_2678
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_mark_2738
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ss_2576
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2596
                                                      (coe v1))))))))
                                 (coe
                                    MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.d_to_18
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                       (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_delegations_2680
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_mark_2738
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ss_2576
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2596
                                                      (coe v1))))))))
                                 (coe
                                    MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.d_to_18
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'StakePoolParams_68)))
                                       (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_poolParameters_2682
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_mark_2738
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ss_2576
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2596
                                                      (coe v1)))))))))
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Rewards.C_MkSnapshot_131
                                 (coe
                                    MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.d_to_18
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                       (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_stake_2678
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_set_2740
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ss_2576
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2596
                                                      (coe v1))))))))
                                 (coe
                                    MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.d_to_18
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                       (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_delegations_2680
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_set_2740
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ss_2576
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2596
                                                      (coe v1))))))))
                                 (coe
                                    MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.d_to_18
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'StakePoolParams_68)))
                                       (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_poolParameters_2682
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_set_2740
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ss_2576
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2596
                                                      (coe v1)))))))))
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Rewards.C_MkSnapshot_131
                                 (coe
                                    MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.d_to_18
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                       (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_stake_2678
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_go_2742
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ss_2576
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2596
                                                      (coe v1))))))))
                                 (coe
                                    MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.d_to_18
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                       (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_delegations_2680
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_go_2742
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ss_2576
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2596
                                                      (coe v1))))))))
                                 (coe
                                    MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.d_to_18
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'StakePoolParams_68)))
                                       (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_poolParameters_2682
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_go_2742
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ss_2576
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2596
                                                      (coe v1)))))))))
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_feeSS_2744
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ss_2576
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2596
                                       (coe v1)))))
                           (coe
                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Ledger.C_MkLState_2893
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Utxo.C_MkUTxOState_1173
                                 (coe
                                    MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.d_to_18
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_100
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'BaseAddr_20)
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'BootstrapAddr_24))
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_90
                                                         (coe
                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_100
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_90
                                                         (coe
                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_100
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.d_Conv'45'HSTimelock_20)
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.d_Conv'45'HSPlutusScript_24))))))))
                                       (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2206
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2348
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2578
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2596
                                                      (coe v1))))))))
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_fees_2208
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2348
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2578
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2596
                                             (coe v1)))))
                                 (coe
                                    MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.d_to_18
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'DepositPurpose_72)
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                       (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_deposits_2210
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2348
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2578
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2596
                                                      (coe v1))))))))
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_donations_2212
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2348
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2578
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2596
                                             (coe v1))))))
                              (coe
                                 MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                 MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
                                 () erased
                                 (MAlonzo.Code.Foreign.Convertible.d_to_18
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.d_Conv'45'GovActionState_844)))
                                 (MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_govSt_2350
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2578
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2596
                                          (coe v1)))))
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Cert.C_MkCertState_563
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.C_MkDState_11863
                                    (coe
                                       MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.d_to_18
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.Core.d_Conv'45'VDeleg_34)))
                                          (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_1350
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1384
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2352
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2578
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2596
                                                            (coe v1)))))))))
                                    (coe
                                       MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.d_to_18
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                          (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_stakeDelegs_1352
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1384
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2352
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2578
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2596
                                                            (coe v1)))))))))
                                    (coe
                                       MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.d_to_18
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                          (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1354
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1384
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2352
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2578
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2596
                                                            (coe v1)))))))))
                                    (coe
                                       MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.d_to_18
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'DepositPurpose_72)
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                          (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1356
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1384
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2352
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2578
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2596
                                                            (coe v1))))))))))
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.C_MkPState_6153
                                    (coe
                                       MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.d_to_18
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'StakePoolParams_68)))
                                          (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pools_1230
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1386
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2352
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2578
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2596
                                                            (coe v1)))))))))
                                    (coe
                                       MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.d_to_18
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                          (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Certs.d_retiring_1232
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1386
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2352
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2578
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2596
                                                            (coe v1))))))))))
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.C_MkGState_23749
                                    (coe
                                       MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.d_to_18
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                          (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dreps_1368
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1388
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2352
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2578
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2596
                                                            (coe v1)))))))))
                                    (coe
                                       MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.d_to_18
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_90
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16))))
                                          (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_ccHotKeys_1370
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1388
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2352
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2578
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2596
                                                            (coe v1)))))))))
                                    (coe
                                       MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.d_to_18
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'DepositPurpose_72)
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                          (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1372
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1388
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2352
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2578
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2596
                                                            (coe v1))))))))))))
                           (coe
                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Enact.C_MkEnactState_133
                              (coe
                                 MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased () erased
                                 (coe MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                                 (coe
                                    MAlonzo.Code.Data.Product.Base.du_map_128
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.d_to_18
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_90
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.du_Conv'45'HSMap_72
                                                (let v2
                                                       = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
                                                 coe
                                                   (let v3
                                                          = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_806
                                                              (coe v2) in
                                                    coe
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_200
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                            (coe
                                                               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1332
                                                                  (coe v3))))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1332
                                                               (coe v3))))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_Conv'45'Rational_26))))
                                    (coe
                                       (\ v2 ->
                                          MAlonzo.Code.Foreign.Convertible.d_to_18
                                            (coe
                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.Enact.d_cc_1008
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_es_2580
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2596
                                             (coe v1))))))
                              (coe
                                 MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased () erased
                                 (coe MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                                 (coe
                                    MAlonzo.Code.Data.Product.Base.du_map_128
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.d_to_18
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_90
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
                                    (coe
                                       (\ v2 ->
                                          MAlonzo.Code.Foreign.Convertible.d_to_18
                                            (coe
                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.Enact.d_constitution_1010
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_es_2580
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2596
                                             (coe v1))))))
                              (coe
                                 MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased () erased
                                 (coe MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                                 (coe
                                    MAlonzo.Code.Data.Product.Base.du_map_128
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.d_to_18
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                    (coe
                                       (\ v2 ->
                                          MAlonzo.Code.Foreign.Convertible.d_to_18
                                            (coe
                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pv_1012
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_es_2580
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2596
                                             (coe v1))))))
                              (coe
                                 MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased () erased
                                 (coe MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                                 (coe
                                    MAlonzo.Code.Data.Product.Base.du_map_128
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.d_to_18
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.PParams.d_Conv'45'PParams_24))
                                    (coe
                                       (\ v2 ->
                                          MAlonzo.Code.Foreign.Convertible.d_to_18
                                            (coe
                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pparams_1014
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_es_2580
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2596
                                             (coe v1))))))
                              (coe
                                 MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.d_to_18
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'RwdAddr_28)
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Enact.d_withdrawals_1016
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_es_2580
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2596
                                                (coe v1))))))))
                           (coe
                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Ratify.C_MkRatifyState_10473
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Enact.C_MkEnactState_133
                                 (coe
                                    MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased ()
                                    erased
                                    (coe MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                                    (coe
                                       MAlonzo.Code.Data.Product.Base.du_map_128
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.d_to_18
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_90
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.du_Conv'45'HSMap_72
                                                   (let v2
                                                          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
                                                    coe
                                                      (let v3
                                                             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_806
                                                                 (coe v2) in
                                                       coe
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_200
                                                            (coe
                                                               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1332
                                                                     (coe v3))))
                                                            (coe
                                                               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1332
                                                                  (coe v3))))))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_Conv'45'Rational_26))))
                                       (coe
                                          (\ v2 ->
                                             MAlonzo.Code.Foreign.Convertible.d_to_18
                                               (coe
                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Enact.d_cc_1008
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_es_2402
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_fut_2582
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2596
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
                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_90
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
                                       (coe
                                          (\ v2 ->
                                             MAlonzo.Code.Foreign.Convertible.d_to_18
                                               (coe
                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Enact.d_constitution_1010
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_es_2402
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_fut_2582
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2596
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
                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                       (coe
                                          (\ v2 ->
                                             MAlonzo.Code.Foreign.Convertible.d_to_18
                                               (coe
                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pv_1012
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_es_2402
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_fut_2582
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2596
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
                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.PParams.d_Conv'45'PParams_24))
                                       (coe
                                          (\ v2 ->
                                             MAlonzo.Code.Foreign.Convertible.d_to_18
                                               (coe
                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pparams_1014
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_es_2402
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_fut_2582
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2596
                                                   (coe v1)))))))
                                 (coe
                                    MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.d_to_18
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'RwdAddr_28)
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                       (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Enact.d_withdrawals_1016
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_es_2402
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_fut_2582
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2596
                                                      (coe v1)))))))))
                              (coe
                                 MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSSet_38
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.d_to_18
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_120
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.d_Conv'45'GovActionState_844)))
                                    (MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_removed_2404
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_fut_2582
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2596
                                             (coe v1))))))
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_delay_2406
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_fut_2582
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2596
                                       (coe v1))))))
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_to_18
                           (coe
                              MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                              (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Rewards.d_Conv'45'RewardUpdate_132))
                           (MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ru_2598 (coe v1))))
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 ->
            case coe v0 of
              C_ChainState_71 v1
                -> coe
                     MAlonzo.Code.Ledger.Conway.Conformance.Chain.C_constructor_2536
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.C_constructor_22
                           (coe
                              (\ v2 ->
                                 case coe v2 of
                                   MAlonzo.Code.Ledger.Conway.Conformance.Epoch.C_constructor_2600 v3 v4 v5
                                     -> coe
                                          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.NewEpoch.C_MkNewEpochState_211
                                          (coe v3)
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Epoch.C_MkEpochState_217
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.PParams.C_MkAcnt_10575
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.PParams.d_treasury_168
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_acnt_2574
                                                      (coe v4)))
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.PParams.d_reserves_170
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_acnt_2574
                                                      (coe v4))))
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Rewards.C_MkSnapshots_2993
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Rewards.C_MkSnapshot_131
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.d_to_18
                                                         (coe
                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                            (coe
                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_stake_2678
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_mark_2738
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ss_2576
                                                                     (coe v4)))))))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.d_to_18
                                                         (coe
                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                            (coe
                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_delegations_2680
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_mark_2738
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ss_2576
                                                                     (coe v4)))))))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.d_to_18
                                                         (coe
                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                            (coe
                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'StakePoolParams_68)))
                                                         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_poolParameters_2682
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_mark_2738
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ss_2576
                                                                     (coe v4))))))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Rewards.C_MkSnapshot_131
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.d_to_18
                                                         (coe
                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                            (coe
                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_stake_2678
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_set_2740
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ss_2576
                                                                     (coe v4)))))))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.d_to_18
                                                         (coe
                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                            (coe
                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_delegations_2680
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_set_2740
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ss_2576
                                                                     (coe v4)))))))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.d_to_18
                                                         (coe
                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                            (coe
                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'StakePoolParams_68)))
                                                         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_poolParameters_2682
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_set_2740
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ss_2576
                                                                     (coe v4))))))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Rewards.C_MkSnapshot_131
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.d_to_18
                                                         (coe
                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                            (coe
                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_stake_2678
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_go_2742
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ss_2576
                                                                     (coe v4)))))))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.d_to_18
                                                         (coe
                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                            (coe
                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_delegations_2680
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_go_2742
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ss_2576
                                                                     (coe v4)))))))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.d_to_18
                                                         (coe
                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                            (coe
                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'StakePoolParams_68)))
                                                         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_poolParameters_2682
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_go_2742
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ss_2576
                                                                     (coe v4))))))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_feeSS_2744
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ss_2576
                                                      (coe v4))))
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Ledger.C_MkLState_2893
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Utxo.C_MkUTxOState_1173
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.d_to_18
                                                         (coe
                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                            (coe
                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_100
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'BaseAddr_20)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'BootstrapAddr_24))
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                     (coe
                                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                        (coe
                                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_90
                                                                           (coe
                                                                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_100
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                        (coe
                                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_90
                                                                           (coe
                                                                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_100
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.d_Conv'45'HSTimelock_20)
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.d_Conv'45'HSPlutusScript_24))))))))
                                                         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2206
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2348
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2578
                                                                     (coe v4)))))))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_fees_2208
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2348
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2578
                                                            (coe v4))))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.d_to_18
                                                         (coe
                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                            (coe
                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'DepositPurpose_72)
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_deposits_2210
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2348
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2578
                                                                     (coe v4)))))))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_donations_2212
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2348
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2578
                                                            (coe v4)))))
                                                (coe
                                                   MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                   MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                                                   () erased () erased
                                                   (MAlonzo.Code.Foreign.Convertible.d_to_18
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                         (coe
                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.d_Conv'45'GovActionState_844)))
                                                   (MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_govSt_2350
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2578
                                                         (coe v4))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Cert.C_MkCertState_563
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.C_MkDState_11863
                                                      (coe
                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                                                         (coe
                                                            MAlonzo.Code.Foreign.Convertible.d_to_18
                                                            (coe
                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.Core.d_Conv'45'VDeleg_34)))
                                                            (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_1350
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1384
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2352
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2578
                                                                           (coe v4))))))))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                                                         (coe
                                                            MAlonzo.Code.Foreign.Convertible.d_to_18
                                                            (coe
                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                            (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_stakeDelegs_1352
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1384
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2352
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2578
                                                                           (coe v4))))))))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                                                         (coe
                                                            MAlonzo.Code.Foreign.Convertible.d_to_18
                                                            (coe
                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                            (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1354
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1384
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2352
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2578
                                                                           (coe v4))))))))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                                                         (coe
                                                            MAlonzo.Code.Foreign.Convertible.d_to_18
                                                            (coe
                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'DepositPurpose_72)
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                            (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1356
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1384
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2352
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2578
                                                                           (coe v4)))))))))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.C_MkPState_6153
                                                      (coe
                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                                                         (coe
                                                            MAlonzo.Code.Foreign.Convertible.d_to_18
                                                            (coe
                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'StakePoolParams_68)))
                                                            (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pools_1230
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1386
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2352
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2578
                                                                           (coe v4))))))))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                                                         (coe
                                                            MAlonzo.Code.Foreign.Convertible.d_to_18
                                                            (coe
                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                            (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.Certs.d_retiring_1232
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1386
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2352
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2578
                                                                           (coe v4)))))))))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.C_MkGState_23749
                                                      (coe
                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                                                         (coe
                                                            MAlonzo.Code.Foreign.Convertible.d_to_18
                                                            (coe
                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                            (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dreps_1368
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1388
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2352
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2578
                                                                           (coe v4))))))))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                                                         (coe
                                                            MAlonzo.Code.Foreign.Convertible.d_to_18
                                                            (coe
                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_90
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16))))
                                                            (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_ccHotKeys_1370
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1388
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2352
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2578
                                                                           (coe v4))))))))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                                                         (coe
                                                            MAlonzo.Code.Foreign.Convertible.d_to_18
                                                            (coe
                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'DepositPurpose_72)
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                            (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1372
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1388
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2352
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2578
                                                                           (coe v4)))))))))))
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Enact.C_MkEnactState_133
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
                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_90
                                                            (coe
                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.du_Conv'45'HSMap_72
                                                                  (let v6
                                                                         = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
                                                                   coe
                                                                     (let v7
                                                                            = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_806
                                                                                (coe v6) in
                                                                      coe
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_200
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1332
                                                                                    (coe v7))))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1332
                                                                                 (coe v7))))))
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_Conv'45'Rational_26))))
                                                      (coe
                                                         (\ v6 ->
                                                            MAlonzo.Code.Foreign.Convertible.d_to_18
                                                              (coe
                                                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.Enact.d_cc_1008
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_es_2580
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
                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                            (coe
                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_90
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
                                                      (coe
                                                         (\ v6 ->
                                                            MAlonzo.Code.Foreign.Convertible.d_to_18
                                                              (coe
                                                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.Enact.d_constitution_1010
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_es_2580
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
                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                      (coe
                                                         (\ v6 ->
                                                            MAlonzo.Code.Foreign.Convertible.d_to_18
                                                              (coe
                                                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pv_1012
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_es_2580
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
                                                            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.PParams.d_Conv'45'PParams_24))
                                                      (coe
                                                         (\ v6 ->
                                                            MAlonzo.Code.Foreign.Convertible.d_to_18
                                                              (coe
                                                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pparams_1014
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_es_2580
                                                            (coe v4)))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.d_to_18
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                         (coe
                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'RwdAddr_28)
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                      (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.Enact.d_withdrawals_1016
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_es_2580
                                                               (coe v4)))))))
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Ratify.C_MkRatifyState_10473
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Enact.C_MkEnactState_133
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
                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_90
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.du_Conv'45'HSMap_72
                                                                     (let v6
                                                                            = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
                                                                      coe
                                                                        (let v7
                                                                               = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_806
                                                                                   (coe v6) in
                                                                         coe
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_200
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1332
                                                                                       (coe v7))))
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1332
                                                                                    (coe v7))))))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_Conv'45'Rational_26))))
                                                         (coe
                                                            (\ v6 ->
                                                               MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                 (coe
                                                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.Enact.d_cc_1008
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_es_2402
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_fut_2582
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
                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_90
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
                                                         (coe
                                                            (\ v6 ->
                                                               MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                 (coe
                                                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.Enact.d_constitution_1010
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_es_2402
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_fut_2582
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
                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                         (coe
                                                            (\ v6 ->
                                                               MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                 (coe
                                                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pv_1012
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_es_2402
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_fut_2582
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
                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.PParams.d_Conv'45'PParams_24))
                                                         (coe
                                                            (\ v6 ->
                                                               MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                 (coe
                                                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pparams_1014
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_es_2402
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_fut_2582
                                                                  (coe v4))))))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.d_to_18
                                                         (coe
                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                            (coe
                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'RwdAddr_28)
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Enact.d_withdrawals_1016
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_es_2402
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_fut_2582
                                                                     (coe v4))))))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSSet_38
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.d_to_18
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_120
                                                         (coe
                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                            (coe
                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.d_Conv'45'GovActionState_844)))
                                                      (MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_removed_2404
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_fut_2582
                                                            (coe v4)))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_delay_2406
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_fut_2582
                                                      (coe v4)))))
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_to_18
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                (coe
                                                   MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Rewards.d_Conv'45'RewardUpdate_132))
                                             v5)
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v2 ->
                                 case coe v2 of
                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.NewEpoch.C_MkNewEpochState_211 v3 v4 v5
                                     -> coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Epoch.C_constructor_2600
                                          (coe v3)
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                (coe
                                                   (\ v6 ->
                                                      case coe v6 of
                                                        MAlonzo.Code.Ledger.Conway.Conformance.Epoch.C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_2584 v7 v8 v9 v10 v11
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Epoch.C_MkEpochState_217
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.PParams.C_MkAcnt_10575
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Specification.PParams.d_treasury_168
                                                                     (coe v7))
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Specification.PParams.d_reserves_170
                                                                     (coe v7)))
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Rewards.C_MkSnapshots_2993
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Rewards.C_MkSnapshot_131
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                                                                        (coe
                                                                           MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                           (coe
                                                                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                                              (coe
                                                                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_stake_2678
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_mark_2738
                                                                                    (coe v8))))))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                                                                        (coe
                                                                           MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                           (coe
                                                                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                                              (coe
                                                                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_delegations_2680
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_mark_2738
                                                                                    (coe v8))))))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                                                                        (coe
                                                                           MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                           (coe
                                                                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                                              (coe
                                                                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'StakePoolParams_68)))
                                                                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_poolParameters_2682
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_mark_2738
                                                                                    (coe v8)))))))
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Rewards.C_MkSnapshot_131
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                                                                        (coe
                                                                           MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                           (coe
                                                                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                                              (coe
                                                                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_stake_2678
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_set_2740
                                                                                    (coe v8))))))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                                                                        (coe
                                                                           MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                           (coe
                                                                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                                              (coe
                                                                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_delegations_2680
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_set_2740
                                                                                    (coe v8))))))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                                                                        (coe
                                                                           MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                           (coe
                                                                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                                              (coe
                                                                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'StakePoolParams_68)))
                                                                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_poolParameters_2682
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_set_2740
                                                                                    (coe v8)))))))
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Rewards.C_MkSnapshot_131
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                                                                        (coe
                                                                           MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                           (coe
                                                                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                                              (coe
                                                                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_stake_2678
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_go_2742
                                                                                    (coe v8))))))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                                                                        (coe
                                                                           MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                           (coe
                                                                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                                              (coe
                                                                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_delegations_2680
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_go_2742
                                                                                    (coe v8))))))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                                                                        (coe
                                                                           MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                           (coe
                                                                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                                              (coe
                                                                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'StakePoolParams_68)))
                                                                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_poolParameters_2682
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_go_2742
                                                                                    (coe v8)))))))
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_feeSS_2744
                                                                     (coe v8)))
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Ledger.C_MkLState_2893
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Utxo.C_MkUTxOState_1173
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                                                                        (coe
                                                                           MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                           (coe
                                                                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                                              (coe
                                                                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                 (coe
                                                                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                                 (coe
                                                                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                    (coe
                                                                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_100
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'BaseAddr_20)
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'BootstrapAddr_24))
                                                                                    (coe
                                                                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                          (coe
                                                                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_90
                                                                                             (coe
                                                                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_100
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                                          (coe
                                                                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_90
                                                                                             (coe
                                                                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_100
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.d_Conv'45'HSTimelock_20)
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.d_Conv'45'HSPlutusScript_24))))))))
                                                                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2206
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2348
                                                                                    (coe v9))))))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_fees_2208
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2348
                                                                           (coe v9)))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                                                                        (coe
                                                                           MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                           (coe
                                                                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                                              (coe
                                                                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'DepositPurpose_72)
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_deposits_2210
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2348
                                                                                    (coe v9))))))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_donations_2212
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2348
                                                                           (coe v9))))
                                                                  (coe
                                                                     MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                                     MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                                                                     () erased () erased
                                                                     (MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                        (coe
                                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                           (coe
                                                                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.d_Conv'45'GovActionState_844)))
                                                                     (MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_govSt_2350
                                                                        (coe v9)))
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Cert.C_MkCertState_563
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.C_MkDState_11863
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                                                                           (coe
                                                                              MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                              (coe
                                                                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                                                 (coe
                                                                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.Core.d_Conv'45'VDeleg_34)))
                                                                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_1350
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1384
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2352
                                                                                          (coe
                                                                                             v9)))))))
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                                                                           (coe
                                                                              MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                              (coe
                                                                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                                                 (coe
                                                                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_stakeDelegs_1352
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1384
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2352
                                                                                          (coe
                                                                                             v9)))))))
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                                                                           (coe
                                                                              MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                              (coe
                                                                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                                                 (coe
                                                                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1354
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1384
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2352
                                                                                          (coe
                                                                                             v9)))))))
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                                                                           (coe
                                                                              MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                              (coe
                                                                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                                                 (coe
                                                                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'DepositPurpose_72)
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1356
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1384
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2352
                                                                                          (coe
                                                                                             v9))))))))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.C_MkPState_6153
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                                                                           (coe
                                                                              MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                              (coe
                                                                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                                                 (coe
                                                                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'StakePoolParams_68)))
                                                                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pools_1230
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1386
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2352
                                                                                          (coe
                                                                                             v9)))))))
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                                                                           (coe
                                                                              MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                              (coe
                                                                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                                                 (coe
                                                                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Specification.Certs.d_retiring_1232
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1386
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2352
                                                                                          (coe
                                                                                             v9))))))))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.C_MkGState_23749
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                                                                           (coe
                                                                              MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                              (coe
                                                                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                                                 (coe
                                                                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dreps_1368
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1388
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2352
                                                                                          (coe
                                                                                             v9)))))))
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                                                                           (coe
                                                                              MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                              (coe
                                                                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                                                 (coe
                                                                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                                                    (coe
                                                                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_90
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16))))
                                                                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_ccHotKeys_1370
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1388
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2352
                                                                                          (coe
                                                                                             v9)))))))
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                                                                           (coe
                                                                              MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                              (coe
                                                                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                                                 (coe
                                                                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'DepositPurpose_72)
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1372
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1388
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2352
                                                                                          (coe
                                                                                             v9))))))))))
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Enact.C_MkEnactState_133
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
                                                                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_90
                                                                              (coe
                                                                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.du_Conv'45'HSMap_72
                                                                                    (let v12
                                                                                           = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
                                                                                     coe
                                                                                       (let v13
                                                                                              = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_806
                                                                                                  (coe
                                                                                                     v12) in
                                                                                        coe
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_200
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1332
                                                                                                      (coe
                                                                                                         v13))))
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1332
                                                                                                   (coe
                                                                                                      v13))))))
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_Conv'45'Rational_26))))
                                                                        (coe
                                                                           (\ v12 ->
                                                                              MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                (coe
                                                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Conway.Specification.Enact.d_cc_1008
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
                                                                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                              (coe
                                                                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_90
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
                                                                        (coe
                                                                           (\ v12 ->
                                                                              MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                (coe
                                                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Conway.Specification.Enact.d_constitution_1010
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
                                                                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                        (coe
                                                                           (\ v12 ->
                                                                              MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                (coe
                                                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pv_1012
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
                                                                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.PParams.d_Conv'45'PParams_24))
                                                                        (coe
                                                                           (\ v12 ->
                                                                              MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                (coe
                                                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pparams_1014
                                                                           (coe v10))))
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                                                                     (coe
                                                                        MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                        (coe
                                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                                           (coe
                                                                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'RwdAddr_28)
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                        (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Specification.Enact.d_withdrawals_1016
                                                                              (coe v10))))))
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Ratify.C_MkRatifyState_10473
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Enact.C_MkEnactState_133
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
                                                                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_90
                                                                                 (coe
                                                                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.du_Conv'45'HSMap_72
                                                                                       (let v12
                                                                                              = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
                                                                                        coe
                                                                                          (let v13
                                                                                                 = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_806
                                                                                                     (coe
                                                                                                        v12) in
                                                                                           coe
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_200
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1332
                                                                                                         (coe
                                                                                                            v13))))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1332
                                                                                                      (coe
                                                                                                         v13))))))
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_Conv'45'Rational_26))))
                                                                           (coe
                                                                              (\ v12 ->
                                                                                 MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                   (coe
                                                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Specification.Enact.d_cc_1008
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_es_2402
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
                                                                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                 (coe
                                                                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_90
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
                                                                           (coe
                                                                              (\ v12 ->
                                                                                 MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                   (coe
                                                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Specification.Enact.d_constitution_1010
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_es_2402
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
                                                                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                           (coe
                                                                              (\ v12 ->
                                                                                 MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                   (coe
                                                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pv_1012
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_es_2402
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
                                                                                 MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.PParams.d_Conv'45'PParams_24))
                                                                           (coe
                                                                              (\ v12 ->
                                                                                 MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                   (coe
                                                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pparams_1014
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_es_2402
                                                                                 (coe v11)))))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                                                                        (coe
                                                                           MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                           (coe
                                                                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                                              (coe
                                                                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'RwdAddr_28)
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Specification.Enact.d_withdrawals_1016
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_es_2402
                                                                                    (coe v11)))))))
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSSet_38
                                                                     (coe
                                                                        MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                        (coe
                                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_120
                                                                           (coe
                                                                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                              (coe
                                                                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.d_Conv'45'GovActionState_844)))
                                                                        (MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_removed_2404
                                                                           (coe v11))))
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_delay_2406
                                                                     (coe v11)))
                                                        _ -> MAlonzo.RTE.mazUnreachableError))
                                                (coe
                                                   (\ v6 ->
                                                      case coe v6 of
                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Epoch.C_MkEpochState_217 v7 v8 v9 v10 v11
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Epoch.C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_2584
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                                     (coe
                                                                        (\ v12 ->
                                                                           case coe v12 of
                                                                             MAlonzo.Code.Ledger.Conway.Specification.PParams.C_'10214'_'44'_'10215''7491'_172 v13 v14
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.PParams.C_MkAcnt_10575
                                                                                    (coe v13)
                                                                                    (coe v14)
                                                                             _ -> MAlonzo.RTE.mazUnreachableError))
                                                                     (coe
                                                                        (\ v12 ->
                                                                           case coe v12 of
                                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.PParams.C_MkAcnt_10575 v13 v14
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Conway.Specification.PParams.C_'10214'_'44'_'10215''7491'_172
                                                                                    (coe v13)
                                                                                    (coe v14)
                                                                             _ -> MAlonzo.RTE.mazUnreachableError)))
                                                                  v7)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                                     (coe
                                                                        (\ v12 ->
                                                                           case coe v12 of
                                                                             MAlonzo.Code.Ledger.Conway.Specification.Rewards.C_constructor_2746 v13 v14 v15 v16
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Rewards.C_MkSnapshots_2993
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Rewards.C_MkSnapshot_131
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                                                                                          (coe
                                                                                             MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                             (coe
                                                                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                                                                (coe
                                                                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                                             (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_stake_2678
                                                                                                   (coe
                                                                                                      v13)))))
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                                                                                          (coe
                                                                                             MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                             (coe
                                                                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                                                                (coe
                                                                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                                             (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_delegations_2680
                                                                                                   (coe
                                                                                                      v13)))))
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                                                                                          (coe
                                                                                             MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                             (coe
                                                                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                                                                (coe
                                                                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'StakePoolParams_68)))
                                                                                             (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_poolParameters_2682
                                                                                                   (coe
                                                                                                      v13))))))
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Rewards.C_MkSnapshot_131
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                                                                                          (coe
                                                                                             MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                             (coe
                                                                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                                                                (coe
                                                                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                                             (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_stake_2678
                                                                                                   (coe
                                                                                                      v14)))))
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                                                                                          (coe
                                                                                             MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                             (coe
                                                                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                                                                (coe
                                                                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                                             (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_delegations_2680
                                                                                                   (coe
                                                                                                      v14)))))
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                                                                                          (coe
                                                                                             MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                             (coe
                                                                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                                                                (coe
                                                                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'StakePoolParams_68)))
                                                                                             (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_poolParameters_2682
                                                                                                   (coe
                                                                                                      v14))))))
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Rewards.C_MkSnapshot_131
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                                                                                          (coe
                                                                                             MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                             (coe
                                                                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                                                                (coe
                                                                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                                             (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_stake_2678
                                                                                                   (coe
                                                                                                      v15)))))
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                                                                                          (coe
                                                                                             MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                             (coe
                                                                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                                                                (coe
                                                                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                                             (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_delegations_2680
                                                                                                   (coe
                                                                                                      v15)))))
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                                                                                          (coe
                                                                                             MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                             (coe
                                                                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                                                                (coe
                                                                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'StakePoolParams_68)))
                                                                                             (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_poolParameters_2682
                                                                                                   (coe
                                                                                                      v15))))))
                                                                                    (coe v16)
                                                                             _ -> MAlonzo.RTE.mazUnreachableError))
                                                                     (coe
                                                                        (\ v12 ->
                                                                           case coe v12 of
                                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Rewards.C_MkSnapshots_2993 v13 v14 v15 v16
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Conway.Specification.Rewards.C_constructor_2746
                                                                                    (coe
                                                                                       MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                                                          (coe
                                                                                             (\ v17 ->
                                                                                                case coe
                                                                                                       v17 of
                                                                                                  MAlonzo.Code.Ledger.Conway.Specification.Rewards.C_constructor_2684 v18 v19 v20
                                                                                                    -> coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Rewards.C_MkSnapshot_131
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                                                               (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                  (coe
                                                                                                                     v18))))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                                                               (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                  (coe
                                                                                                                     v19))))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'StakePoolParams_68)))
                                                                                                               (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                  (coe
                                                                                                                     v20))))
                                                                                                  _ -> MAlonzo.RTE.mazUnreachableError))
                                                                                          (coe
                                                                                             (\ v17 ->
                                                                                                case coe
                                                                                                       v17 of
                                                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Rewards.C_MkSnapshot_131 v18 v19 v20
                                                                                                    -> coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Specification.Rewards.C_constructor_2684
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                                                                               (let v21
                                                                                                                      = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
                                                                                                                coe
                                                                                                                  (let v22
                                                                                                                         = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_806
                                                                                                                             (coe
                                                                                                                                v21) in
                                                                                                                   coe
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_200
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1332
                                                                                                                                 (coe
                                                                                                                                    v22))))
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1332
                                                                                                                              (coe
                                                                                                                                 v22))))))
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                                                            (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_24
                                                                                                               (coe
                                                                                                                  v18)))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                                                                               (let v21
                                                                                                                      = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
                                                                                                                coe
                                                                                                                  (let v22
                                                                                                                         = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_806
                                                                                                                             (coe
                                                                                                                                v21) in
                                                                                                                   coe
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_200
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1332
                                                                                                                                 (coe
                                                                                                                                    v22))))
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1332
                                                                                                                              (coe
                                                                                                                                 v22))))))
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                                                            (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_24
                                                                                                               (coe
                                                                                                                  v19)))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'StakePoolParams_68))
                                                                                                            (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_24
                                                                                                               (coe
                                                                                                                  v20)))
                                                                                                  _ -> MAlonzo.RTE.mazUnreachableError)))
                                                                                       v13)
                                                                                    (coe
                                                                                       MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                                                          (coe
                                                                                             (\ v17 ->
                                                                                                case coe
                                                                                                       v17 of
                                                                                                  MAlonzo.Code.Ledger.Conway.Specification.Rewards.C_constructor_2684 v18 v19 v20
                                                                                                    -> coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Rewards.C_MkSnapshot_131
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                                                               (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                  (coe
                                                                                                                     v18))))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                                                               (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                  (coe
                                                                                                                     v19))))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'StakePoolParams_68)))
                                                                                                               (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                  (coe
                                                                                                                     v20))))
                                                                                                  _ -> MAlonzo.RTE.mazUnreachableError))
                                                                                          (coe
                                                                                             (\ v17 ->
                                                                                                case coe
                                                                                                       v17 of
                                                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Rewards.C_MkSnapshot_131 v18 v19 v20
                                                                                                    -> coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Specification.Rewards.C_constructor_2684
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                                                                               (let v21
                                                                                                                      = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
                                                                                                                coe
                                                                                                                  (let v22
                                                                                                                         = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_806
                                                                                                                             (coe
                                                                                                                                v21) in
                                                                                                                   coe
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_200
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1332
                                                                                                                                 (coe
                                                                                                                                    v22))))
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1332
                                                                                                                              (coe
                                                                                                                                 v22))))))
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                                                            (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_24
                                                                                                               (coe
                                                                                                                  v18)))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                                                                               (let v21
                                                                                                                      = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
                                                                                                                coe
                                                                                                                  (let v22
                                                                                                                         = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_806
                                                                                                                             (coe
                                                                                                                                v21) in
                                                                                                                   coe
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_200
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1332
                                                                                                                                 (coe
                                                                                                                                    v22))))
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1332
                                                                                                                              (coe
                                                                                                                                 v22))))))
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                                                            (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_24
                                                                                                               (coe
                                                                                                                  v19)))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'StakePoolParams_68))
                                                                                                            (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_24
                                                                                                               (coe
                                                                                                                  v20)))
                                                                                                  _ -> MAlonzo.RTE.mazUnreachableError)))
                                                                                       v14)
                                                                                    (coe
                                                                                       MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                                                          (coe
                                                                                             (\ v17 ->
                                                                                                case coe
                                                                                                       v17 of
                                                                                                  MAlonzo.Code.Ledger.Conway.Specification.Rewards.C_constructor_2684 v18 v19 v20
                                                                                                    -> coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Rewards.C_MkSnapshot_131
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                                                               (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                  (coe
                                                                                                                     v18))))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                                                               (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                  (coe
                                                                                                                     v19))))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'StakePoolParams_68)))
                                                                                                               (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                  (coe
                                                                                                                     v20))))
                                                                                                  _ -> MAlonzo.RTE.mazUnreachableError))
                                                                                          (coe
                                                                                             (\ v17 ->
                                                                                                case coe
                                                                                                       v17 of
                                                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Rewards.C_MkSnapshot_131 v18 v19 v20
                                                                                                    -> coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Specification.Rewards.C_constructor_2684
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                                                                               (let v21
                                                                                                                      = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
                                                                                                                coe
                                                                                                                  (let v22
                                                                                                                         = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_806
                                                                                                                             (coe
                                                                                                                                v21) in
                                                                                                                   coe
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_200
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1332
                                                                                                                                 (coe
                                                                                                                                    v22))))
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1332
                                                                                                                              (coe
                                                                                                                                 v22))))))
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                                                            (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_24
                                                                                                               (coe
                                                                                                                  v18)))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                                                                               (let v21
                                                                                                                      = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
                                                                                                                coe
                                                                                                                  (let v22
                                                                                                                         = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_806
                                                                                                                             (coe
                                                                                                                                v21) in
                                                                                                                   coe
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_200
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1332
                                                                                                                                 (coe
                                                                                                                                    v22))))
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1332
                                                                                                                              (coe
                                                                                                                                 v22))))))
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                                                            (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_24
                                                                                                               (coe
                                                                                                                  v19)))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'StakePoolParams_68))
                                                                                                            (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_24
                                                                                                               (coe
                                                                                                                  v20)))
                                                                                                  _ -> MAlonzo.RTE.mazUnreachableError)))
                                                                                       v15)
                                                                                    (coe v16)
                                                                             _ -> MAlonzo.RTE.mazUnreachableError)))
                                                                  v8)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                                     (coe
                                                                        (\ v12 ->
                                                                           case coe v12 of
                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Ledger.C_'10214'_'44'_'44'_'10215''737'_2354 v13 v14 v15
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Ledger.C_MkLState_2893
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Utxo.C_MkUTxOState_1173
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                                                                                          (coe
                                                                                             MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                             (coe
                                                                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                                                                (coe
                                                                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_100
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'BaseAddr_20)
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'BootstrapAddr_24))
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_90
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_100
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_90
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_100
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.d_Conv'45'HSTimelock_20)
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.d_Conv'45'HSPlutusScript_24))))))))
                                                                                             (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2206
                                                                                                   (coe
                                                                                                      v13)))))
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_fees_2208
                                                                                          (coe v13))
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                                                                                          (coe
                                                                                             MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                             (coe
                                                                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                                                                (coe
                                                                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'DepositPurpose_72)
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                                             (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_deposits_2210
                                                                                                   (coe
                                                                                                      v13)))))
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_donations_2212
                                                                                          (coe
                                                                                             v13)))
                                                                                    (coe
                                                                                       MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                                                       MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                                                                                       () erased ()
                                                                                       erased
                                                                                       (MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                          (coe
                                                                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                             (coe
                                                                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.d_Conv'45'GovActionState_844)))
                                                                                       v14)
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Cert.C_MkCertState_563
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.C_MkDState_11863
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                                                                                             (coe
                                                                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                (coe
                                                                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.Core.d_Conv'45'VDeleg_34)))
                                                                                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_1350
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1384
                                                                                                         (coe
                                                                                                            v15))))))
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                                                                                             (coe
                                                                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                (coe
                                                                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_stakeDelegs_1352
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1384
                                                                                                         (coe
                                                                                                            v15))))))
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                                                                                             (coe
                                                                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                (coe
                                                                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1354
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1384
                                                                                                         (coe
                                                                                                            v15))))))
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                                                                                             (coe
                                                                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                (coe
                                                                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'DepositPurpose_72)
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1356
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1384
                                                                                                         (coe
                                                                                                            v15)))))))
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.C_MkPState_6153
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                                                                                             (coe
                                                                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                (coe
                                                                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'StakePoolParams_68)))
                                                                                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pools_1230
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1386
                                                                                                         (coe
                                                                                                            v15))))))
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                                                                                             (coe
                                                                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                (coe
                                                                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_retiring_1232
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1386
                                                                                                         (coe
                                                                                                            v15)))))))
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.C_MkGState_23749
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                                                                                             (coe
                                                                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                (coe
                                                                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dreps_1368
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1388
                                                                                                         (coe
                                                                                                            v15))))))
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                                                                                             (coe
                                                                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                (coe
                                                                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_90
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16))))
                                                                                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_ccHotKeys_1370
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1388
                                                                                                         (coe
                                                                                                            v15))))))
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                                                                                             (coe
                                                                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                (coe
                                                                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'DepositPurpose_72)
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1372
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1388
                                                                                                         (coe
                                                                                                            v15))))))))
                                                                             _ -> MAlonzo.RTE.mazUnreachableError))
                                                                     (coe
                                                                        (\ v12 ->
                                                                           case coe v12 of
                                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Ledger.C_MkLState_2893 v13 v14 v15
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Ledger.C_'10214'_'44'_'44'_'10215''737'_2354
                                                                                    (coe
                                                                                       MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                                                          (coe
                                                                                             (\ v16 ->
                                                                                                case coe
                                                                                                       v16 of
                                                                                                  MAlonzo.Code.Ledger.Conway.Specification.Utxo.C_'10214'_'44'_'44'_'44'_'10215''7512'_2214 v17 v18 v19 v20
                                                                                                    -> coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Utxo.C_MkUTxOState_1173
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_100
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'BaseAddr_20)
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'BootstrapAddr_24))
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_90
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_100
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_90
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_100
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.d_Conv'45'HSTimelock_20)
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.d_Conv'45'HSPlutusScript_24))))))))
                                                                                                               (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                  (coe
                                                                                                                     v17))))
                                                                                                         (coe
                                                                                                            v18)
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'DepositPurpose_72)
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
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
                                                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Utxo.C_MkUTxOState_1173 v17 v18 v19 v20
                                                                                                    -> coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Specification.Utxo.C_'10214'_'44'_'44'_'44'_'10215''7512'_2214
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                                                                                  ()
                                                                                                                  erased
                                                                                                                  ()
                                                                                                                  erased
                                                                                                                  MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
                                                                                                                  MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_100
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'BaseAddr_20)
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'BootstrapAddr_24))
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_90
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_100
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_90
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_100
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.d_Conv'45'HSTimelock_20)
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.d_Conv'45'HSPlutusScript_24)))))))
                                                                                                            (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_24
                                                                                                               (coe
                                                                                                                  v17)))
                                                                                                         (coe
                                                                                                            v18)
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                                                                               (let v21
                                                                                                                      = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
                                                                                                                coe
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1056
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2526
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_806
                                                                                                                           (coe
                                                                                                                              v21)))))
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'DepositPurpose_72)
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                                                            (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_24
                                                                                                               (coe
                                                                                                                  v19)))
                                                                                                         (coe
                                                                                                            v20)
                                                                                                  _ -> MAlonzo.RTE.mazUnreachableError)))
                                                                                       v13)
                                                                                    (coe
                                                                                       MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                                                       MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                                                                                       () erased ()
                                                                                       erased
                                                                                       (MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                          (coe
                                                                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                             (coe
                                                                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.d_Conv'45'GovActionState_844)))
                                                                                       v14)
                                                                                    (coe
                                                                                       MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                                                          (coe
                                                                                             (\ v16 ->
                                                                                                case coe
                                                                                                       v16 of
                                                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'10215''7580''738'_1390 v17 v18 v19
                                                                                                    -> coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Cert.C_MkCertState_563
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.C_MkDState_11863
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.Core.d_Conv'45'VDeleg_34)))
                                                                                                                  (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_1350
                                                                                                                        (coe
                                                                                                                           v17)))))
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                                                                  (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_stakeDelegs_1352
                                                                                                                        (coe
                                                                                                                           v17)))))
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                                                                  (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1354
                                                                                                                        (coe
                                                                                                                           v17)))))
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'DepositPurpose_72)
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                                                                  (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1356
                                                                                                                        (coe
                                                                                                                           v17))))))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.C_MkPState_6153
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'StakePoolParams_68)))
                                                                                                                  (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pools_1230
                                                                                                                        (coe
                                                                                                                           v18)))))
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                                                                  (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Conway.Specification.Certs.d_retiring_1232
                                                                                                                        (coe
                                                                                                                           v18))))))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.C_MkGState_23749
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                                                                  (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dreps_1368
                                                                                                                        (coe
                                                                                                                           v19)))))
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_90
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16))))
                                                                                                                  (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_ccHotKeys_1370
                                                                                                                        (coe
                                                                                                                           v19)))))
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'DepositPurpose_72)
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                                                                  (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1372
                                                                                                                        (coe
                                                                                                                           v19))))))
                                                                                                  _ -> MAlonzo.RTE.mazUnreachableError))
                                                                                          (coe
                                                                                             (\ v16 ->
                                                                                                case coe
                                                                                                       v16 of
                                                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Cert.C_MkCertState_563 v17 v18 v19
                                                                                                    -> coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'10215''7580''738'_1390
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                                                                               (coe
                                                                                                                  (\ v20 ->
                                                                                                                     case coe
                                                                                                                            v20 of
                                                                                                                       MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'44'_'10215''7496'_1358 v21 v22 v23 v24
                                                                                                                         -> coe
                                                                                                                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.C_MkDState_11863
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                                                                                                       (coe
                                                                                                                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.Core.d_Conv'45'VDeleg_34)))
                                                                                                                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                       (coe
                                                                                                                                          v21))))
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                                                                                                       (coe
                                                                                                                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                                                                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                       (coe
                                                                                                                                          v22))))
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                                                                                                       (coe
                                                                                                                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                                                                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                       (coe
                                                                                                                                          v23))))
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                                                                                                       (coe
                                                                                                                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'DepositPurpose_72)
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                                                                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                       (coe
                                                                                                                                          v24))))
                                                                                                                       _ -> MAlonzo.RTE.mazUnreachableError))
                                                                                                               (coe
                                                                                                                  (\ v20 ->
                                                                                                                     case coe
                                                                                                                            v20 of
                                                                                                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.C_MkDState_11863 v21 v22 v23 v24
                                                                                                                         -> coe
                                                                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'44'_'10215''7496'_1358
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                                                                                                    (let v25
                                                                                                                                           = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
                                                                                                                                     coe
                                                                                                                                       (let v26
                                                                                                                                              = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_806
                                                                                                                                                  (coe
                                                                                                                                                     v25) in
                                                                                                                                        coe
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_200
                                                                                                                                             (coe
                                                                                                                                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                                                                                (coe
                                                                                                                                                   MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                                                                                   (coe
                                                                                                                                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1332
                                                                                                                                                      (coe
                                                                                                                                                         v26))))
                                                                                                                                             (coe
                                                                                                                                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                                                                                (coe
                                                                                                                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1332
                                                                                                                                                   (coe
                                                                                                                                                      v26))))))
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.Core.d_Conv'45'VDeleg_34))
                                                                                                                                 (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_24
                                                                                                                                    (coe
                                                                                                                                       v21)))
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                                                                                                    (let v25
                                                                                                                                           = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
                                                                                                                                     coe
                                                                                                                                       (let v26
                                                                                                                                              = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_806
                                                                                                                                                  (coe
                                                                                                                                                     v25) in
                                                                                                                                        coe
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_200
                                                                                                                                             (coe
                                                                                                                                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                                                                                (coe
                                                                                                                                                   MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                                                                                   (coe
                                                                                                                                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1332
                                                                                                                                                      (coe
                                                                                                                                                         v26))))
                                                                                                                                             (coe
                                                                                                                                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                                                                                (coe
                                                                                                                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1332
                                                                                                                                                   (coe
                                                                                                                                                      v26))))))
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                                                                                 (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_24
                                                                                                                                    (coe
                                                                                                                                       v22)))
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                                                                                                    (let v25
                                                                                                                                           = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
                                                                                                                                     coe
                                                                                                                                       (let v26
                                                                                                                                              = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_806
                                                                                                                                                  (coe
                                                                                                                                                     v25) in
                                                                                                                                        coe
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_200
                                                                                                                                             (coe
                                                                                                                                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                                                                                (coe
                                                                                                                                                   MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                                                                                   (coe
                                                                                                                                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1332
                                                                                                                                                      (coe
                                                                                                                                                         v26))))
                                                                                                                                             (coe
                                                                                                                                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                                                                                (coe
                                                                                                                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1332
                                                                                                                                                   (coe
                                                                                                                                                      v26))))))
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                                                                                 (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_24
                                                                                                                                    (coe
                                                                                                                                       v23)))
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                                                                                                    (let v25
                                                                                                                                           = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
                                                                                                                                     coe
                                                                                                                                       (coe
                                                                                                                                          MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1056
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2526
                                                                                                                                             (coe
                                                                                                                                                MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_806
                                                                                                                                                (coe
                                                                                                                                                   v25)))))
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'DepositPurpose_72)
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                                                                                 (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_24
                                                                                                                                    (coe
                                                                                                                                       v24)))
                                                                                                                       _ -> MAlonzo.RTE.mazUnreachableError)))
                                                                                                            v17)
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                                                                               (coe
                                                                                                                  (\ v20 ->
                                                                                                                     case coe
                                                                                                                            v20 of
                                                                                                                       MAlonzo.Code.Ledger.Conway.Specification.Certs.C_constructor_1234 v21 v22
                                                                                                                         -> coe
                                                                                                                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.C_MkPState_6153
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                                                                                                       (coe
                                                                                                                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'StakePoolParams_68)))
                                                                                                                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                       (coe
                                                                                                                                          v21))))
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                                                                                                       (coe
                                                                                                                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                                                                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                       (coe
                                                                                                                                          v22))))
                                                                                                                       _ -> MAlonzo.RTE.mazUnreachableError))
                                                                                                               (coe
                                                                                                                  (\ v20 ->
                                                                                                                     case coe
                                                                                                                            v20 of
                                                                                                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.C_MkPState_6153 v21 v22
                                                                                                                         -> coe
                                                                                                                              MAlonzo.Code.Ledger.Conway.Specification.Certs.C_constructor_1234
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'StakePoolParams_68))
                                                                                                                                 (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_24
                                                                                                                                    (coe
                                                                                                                                       v21)))
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                                                                                 (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_24
                                                                                                                                    (coe
                                                                                                                                       v22)))
                                                                                                                       _ -> MAlonzo.RTE.mazUnreachableError)))
                                                                                                            v18)
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                                                                               (coe
                                                                                                                  (\ v20 ->
                                                                                                                     case coe
                                                                                                                            v20 of
                                                                                                                       MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'10215''7515'_1374 v21 v22 v23
                                                                                                                         -> coe
                                                                                                                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.C_MkGState_23749
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                                                                                                       (coe
                                                                                                                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                                                                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                       (coe
                                                                                                                                          v21))))
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                                                                                                       (coe
                                                                                                                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_90
                                                                                                                                             (coe
                                                                                                                                                MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16))))
                                                                                                                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                       (coe
                                                                                                                                          v22))))
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                                                                                                       (coe
                                                                                                                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'DepositPurpose_72)
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                                                                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                       (coe
                                                                                                                                          v23))))
                                                                                                                       _ -> MAlonzo.RTE.mazUnreachableError))
                                                                                                               (coe
                                                                                                                  (\ v20 ->
                                                                                                                     case coe
                                                                                                                            v20 of
                                                                                                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.C_MkGState_23749 v21 v22 v23
                                                                                                                         -> coe
                                                                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'10215''7515'_1374
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                                                                                                    (let v24
                                                                                                                                           = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
                                                                                                                                     coe
                                                                                                                                       (let v25
                                                                                                                                              = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_806
                                                                                                                                                  (coe
                                                                                                                                                     v24) in
                                                                                                                                        coe
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_200
                                                                                                                                             (coe
                                                                                                                                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                                                                                (coe
                                                                                                                                                   MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                                                                                   (coe
                                                                                                                                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1332
                                                                                                                                                      (coe
                                                                                                                                                         v25))))
                                                                                                                                             (coe
                                                                                                                                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                                                                                (coe
                                                                                                                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1332
                                                                                                                                                   (coe
                                                                                                                                                      v25))))))
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                                                                                 (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_24
                                                                                                                                    (coe
                                                                                                                                       v21)))
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                                                                                                    (let v24
                                                                                                                                           = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
                                                                                                                                     coe
                                                                                                                                       (let v25
                                                                                                                                              = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_806
                                                                                                                                                  (coe
                                                                                                                                                     v24) in
                                                                                                                                        coe
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_200
                                                                                                                                             (coe
                                                                                                                                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                                                                                (coe
                                                                                                                                                   MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                                                                                   (coe
                                                                                                                                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1332
                                                                                                                                                      (coe
                                                                                                                                                         v25))))
                                                                                                                                             (coe
                                                                                                                                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                                                                                (coe
                                                                                                                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1332
                                                                                                                                                   (coe
                                                                                                                                                      v25))))))
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_90
                                                                                                                                       (coe
                                                                                                                                          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)))
                                                                                                                                 (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_24
                                                                                                                                    (coe
                                                                                                                                       v22)))
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                                                                                                    (let v24
                                                                                                                                           = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
                                                                                                                                     coe
                                                                                                                                       (coe
                                                                                                                                          MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1056
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2526
                                                                                                                                             (coe
                                                                                                                                                MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_806
                                                                                                                                                (coe
                                                                                                                                                   v24)))))
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'DepositPurpose_72)
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                                                                                 (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_24
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
                                                                     MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                                     (coe
                                                                        (\ v12 ->
                                                                           case coe v12 of
                                                                             MAlonzo.Code.Ledger.Conway.Specification.Enact.C_constructor_1018 v13 v14 v15 v16 v17
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Enact.C_MkEnactState_133
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
                                                                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_90
                                                                                                (coe
                                                                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.du_Conv'45'HSMap_72
                                                                                                      (let v18
                                                                                                             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
                                                                                                       coe
                                                                                                         (let v19
                                                                                                                = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_806
                                                                                                                    (coe
                                                                                                                       v18) in
                                                                                                          coe
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_200
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1332
                                                                                                                        (coe
                                                                                                                           v19))))
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1332
                                                                                                                     (coe
                                                                                                                        v19))))))
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_Conv'45'Rational_26))))
                                                                                          (coe
                                                                                             (\ v18 ->
                                                                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
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
                                                                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                                (coe
                                                                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_90
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
                                                                                          (coe
                                                                                             (\ v18 ->
                                                                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
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
                                                                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                                          (coe
                                                                                             (\ v18 ->
                                                                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
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
                                                                                                MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.PParams.d_Conv'45'PParams_24))
                                                                                          (coe
                                                                                             (\ v18 ->
                                                                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
                                                                                          (coe
                                                                                             v16)))
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                          (coe
                                                                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                                                             (coe
                                                                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'RwdAddr_28)
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                                          (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                             (coe
                                                                                                v17))))
                                                                             _ -> MAlonzo.RTE.mazUnreachableError))
                                                                     (coe
                                                                        (\ v12 ->
                                                                           case coe v12 of
                                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Enact.C_MkEnactState_133 v13 v14 v15 v16 v17
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Conway.Specification.Enact.C_constructor_1018
                                                                                    (coe
                                                                                       MAlonzo.Code.Data.Product.Base.du_map_128
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                          (coe
                                                                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_90
                                                                                             (coe
                                                                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.du_Conv'45'HSMap_72
                                                                                                   (let v18
                                                                                                          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
                                                                                                    coe
                                                                                                      (let v19
                                                                                                             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_806
                                                                                                                 (coe
                                                                                                                    v18) in
                                                                                                       coe
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_200
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1332
                                                                                                                     (coe
                                                                                                                        v19))))
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1332
                                                                                                                  (coe
                                                                                                                     v19))))))
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_Conv'45'Rational_26))))
                                                                                       (coe
                                                                                          (\ v18 ->
                                                                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                               (coe
                                                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
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
                                                                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                             (coe
                                                                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_90
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
                                                                                       (coe
                                                                                          (\ v18 ->
                                                                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                               (coe
                                                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
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
                                                                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                                       (coe
                                                                                          (\ v18 ->
                                                                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                               (coe
                                                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
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
                                                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.PParams.d_Conv'45'PParams_24))
                                                                                       (coe
                                                                                          (\ v18 ->
                                                                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                               (coe
                                                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
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
                                                                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                                                          (let v18
                                                                                                 = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
                                                                                           coe
                                                                                             (let v19
                                                                                                    = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_806
                                                                                                        (coe
                                                                                                           v18) in
                                                                                              coe
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'RwdAddr_252
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_286
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1300
                                                                                                         (coe
                                                                                                            v19)))
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1332
                                                                                                            (coe
                                                                                                               v19))))
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1332
                                                                                                         (coe
                                                                                                            v19))))))
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'RwdAddr_28)
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                                       (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_24
                                                                                          (coe
                                                                                             v17)))
                                                                             _ -> MAlonzo.RTE.mazUnreachableError)))
                                                                  v10)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                                     (coe
                                                                        (\ v12 ->
                                                                           case coe v12 of
                                                                             MAlonzo.Code.Ledger.Conway.Specification.Ratify.C_constructor_2408 v13 v14 v15
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Ratify.C_MkRatifyState_10473
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Enact.C_MkEnactState_133
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
                                                                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_90
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.du_Conv'45'HSMap_72
                                                                                                         (let v16
                                                                                                                = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
                                                                                                          coe
                                                                                                            (let v17
                                                                                                                   = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_806
                                                                                                                       (coe
                                                                                                                          v16) in
                                                                                                             coe
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_200
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1332
                                                                                                                           (coe
                                                                                                                              v17))))
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1332
                                                                                                                        (coe
                                                                                                                           v17))))))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_Conv'45'Rational_26))))
                                                                                             (coe
                                                                                                (\ v16 ->
                                                                                                   MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Conway.Specification.Enact.d_cc_1008
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
                                                                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_90
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
                                                                                             (coe
                                                                                                (\ v16 ->
                                                                                                   MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Conway.Specification.Enact.d_constitution_1010
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
                                                                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                                             (coe
                                                                                                (\ v16 ->
                                                                                                   MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pv_1012
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
                                                                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.PParams.d_Conv'45'PParams_24))
                                                                                             (coe
                                                                                                (\ v16 ->
                                                                                                   MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pparams_1014
                                                                                                (coe
                                                                                                   v13))))
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                                                                                          (coe
                                                                                             MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                             (coe
                                                                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                                                                (coe
                                                                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'RwdAddr_28)
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                                             (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Specification.Enact.d_withdrawals_1016
                                                                                                   (coe
                                                                                                      v13))))))
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSSet_38
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                          (coe
                                                                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_120
                                                                                             (coe
                                                                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                                (coe
                                                                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.d_Conv'45'GovActionState_844)))
                                                                                          v14))
                                                                                    (coe v15)
                                                                             _ -> MAlonzo.RTE.mazUnreachableError))
                                                                     (coe
                                                                        (\ v12 ->
                                                                           case coe v12 of
                                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Ratify.C_MkRatifyState_10473 v13 v14 v15
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Conway.Specification.Ratify.C_constructor_2408
                                                                                    (coe
                                                                                       MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                                                          (coe
                                                                                             (\ v16 ->
                                                                                                case coe
                                                                                                       v16 of
                                                                                                  MAlonzo.Code.Ledger.Conway.Specification.Enact.C_constructor_1018 v17 v18 v19 v20 v21
                                                                                                    -> coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Enact.C_MkEnactState_133
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
                                                                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_90
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.du_Conv'45'HSMap_72
                                                                                                                           (let v22
                                                                                                                                  = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
                                                                                                                            coe
                                                                                                                              (let v23
                                                                                                                                     = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_806
                                                                                                                                         (coe
                                                                                                                                            v22) in
                                                                                                                               coe
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_200
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                                                                       (coe
                                                                                                                                          MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1332
                                                                                                                                             (coe
                                                                                                                                                v23))))
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                                                                       (coe
                                                                                                                                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1332
                                                                                                                                          (coe
                                                                                                                                             v23))))))
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_Conv'45'Rational_26))))
                                                                                                               (coe
                                                                                                                  (\ v22 ->
                                                                                                                     MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                                                          (coe
                                                                                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                                                          (coe
                                                                                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
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
                                                                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_90
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
                                                                                                               (coe
                                                                                                                  (\ v22 ->
                                                                                                                     MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                                                          (coe
                                                                                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                                                          (coe
                                                                                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
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
                                                                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                                                               (coe
                                                                                                                  (\ v22 ->
                                                                                                                     MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                                                          (coe
                                                                                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                                                          (coe
                                                                                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
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
                                                                                                                     MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.PParams.d_Conv'45'PParams_24))
                                                                                                               (coe
                                                                                                                  (\ v22 ->
                                                                                                                     MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                                                          (coe
                                                                                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                                                          (coe
                                                                                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
                                                                                                               (coe
                                                                                                                  v20)))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'RwdAddr_28)
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                                                               (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                  (coe
                                                                                                                     v21))))
                                                                                                  _ -> MAlonzo.RTE.mazUnreachableError))
                                                                                          (coe
                                                                                             (\ v16 ->
                                                                                                case coe
                                                                                                       v16 of
                                                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Enact.C_MkEnactState_133 v17 v18 v19 v20 v21
                                                                                                    -> coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Specification.Enact.C_constructor_1018
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Data.Product.Base.du_map_128
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_90
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.du_Conv'45'HSMap_72
                                                                                                                        (let v22
                                                                                                                               = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
                                                                                                                         coe
                                                                                                                           (let v23
                                                                                                                                  = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_806
                                                                                                                                      (coe
                                                                                                                                         v22) in
                                                                                                                            coe
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_200
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                                                                       (coe
                                                                                                                                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1332
                                                                                                                                          (coe
                                                                                                                                             v23))))
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1332
                                                                                                                                       (coe
                                                                                                                                          v23))))))
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_Conv'45'Rational_26))))
                                                                                                            (coe
                                                                                                               (\ v22 ->
                                                                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
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
                                                                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_90
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
                                                                                                            (coe
                                                                                                               (\ v22 ->
                                                                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
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
                                                                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                                                            (coe
                                                                                                               (\ v22 ->
                                                                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
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
                                                                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.PParams.d_Conv'45'PParams_24))
                                                                                                            (coe
                                                                                                               (\ v22 ->
                                                                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
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
                                                                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                                                                               (let v22
                                                                                                                      = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
                                                                                                                coe
                                                                                                                  (let v23
                                                                                                                         = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_806
                                                                                                                             (coe
                                                                                                                                v22) in
                                                                                                                   coe
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'RwdAddr_252
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_286
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1300
                                                                                                                              (coe
                                                                                                                                 v23)))
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1332
                                                                                                                                 (coe
                                                                                                                                    v23))))
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1332
                                                                                                                              (coe
                                                                                                                                 v23))))))
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'RwdAddr_28)
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                                                            (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_24
                                                                                                               (coe
                                                                                                                  v21)))
                                                                                                  _ -> MAlonzo.RTE.mazUnreachableError)))
                                                                                       v13)
                                                                                    (coe
                                                                                       MAlonzo.Code.Axiom.Set.du_fromList_430
                                                                                       (coe
                                                                                          MAlonzo.Code.Axiom.Set.d_th_1480
                                                                                          (coe
                                                                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                          (coe
                                                                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_120
                                                                                             (coe
                                                                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                                (coe
                                                                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.d_Conv'45'GovActionState_844)))
                                                                                          (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_elems_36
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
                                                MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                (coe
                                                   MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Rewards.d_Conv'45'RewardUpdate_132))
                                             v5)
                                   _ -> MAlonzo.RTE.mazUnreachableError)))
                        v1)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.Foreign.HSLedger.Chain.HsTy-Block
d_HsTy'45'Block_56 ::
  MAlonzo.Code.Foreign.HaskellTypes.T_HasHsType_14
d_HsTy'45'Block_56 = erased
-- Ledger.Conway.Foreign.HSLedger.Chain.Conv-Block
d_Conv'45'Block_58 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Conv'45'Block_58
  = coe
      MAlonzo.Code.Foreign.Convertible.C_constructor_22
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Conway.Conformance.Chain.C_constructor_2548 v1 v2
                -> coe
                     C_Block_399
                     (coe
                        MAlonzo.Code.Class.Functor.Core.du_fmap_22
                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
                        () erased
                        (MAlonzo.Code.Foreign.Convertible.d_to_18
                           (coe
                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.d_Conv'45'Tx_36))
                        v1)
                     (coe v2)
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 ->
            case coe v0 of
              C_Block_399 v1 v2
                -> coe
                     MAlonzo.Code.Ledger.Conway.Conformance.Chain.C_constructor_2548
                     (coe
                        MAlonzo.Code.Class.Functor.Core.du_fmap_22
                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
                        () erased
                        (MAlonzo.Code.Foreign.Convertible.d_from_20
                           (coe
                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.d_Conv'45'Tx_36))
                        v1)
                     (coe v2)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.Foreign.HSLedger.Chain.chain-step
chainStep ::
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  T_ChainState_69 ->
  T_Block_397 ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_ComputationResult_44
    MAlonzo.Code.Agda.Builtin.String.T_String_6 T_ChainState_69
chainStep = coe d_chain'45'step_60
d_chain'45'step_60 ::
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  T_ChainState_69 ->
  T_Block_397 ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_ComputationResult_44
    MAlonzo.Code.Agda.Builtin.String.T_String_6 T_ChainState_69
d_chain'45'step_60 ~v0 = du_chain'45'step_60
du_chain'45'step_60 ::
  T_ChainState_69 ->
  T_Block_397 ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_ComputationResult_44
    MAlonzo.Code.Agda.Builtin.String.T_String_6 T_ChainState_69
du_chain'45'step_60
  = coe
      MAlonzo.Code.Foreign.Convertible.d_to_18
      (coe
         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Fun_132
         (coe d_Conv'45'ChainState_54)
         (coe
            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Fun_132
            (coe d_Conv'45'Block_58)
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.du_Conv'45'ComputationResult_88
               (coe
                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvString_14)
               (coe d_Conv'45'ChainState_54))))
      (coe
         MAlonzo.Code.Interface.ComputationalRelation.du_compute_274
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Chain.Properties.d_Computational'45'CHAIN_1888
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_806
               (coe
                  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.du_HSAbstractFunctions_2896))
         (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
-- Ledger.Conway.Foreign.HSLedger.Chain.ChainState
d_ChainState_69 = ()
type T_ChainState_69 = ChainState
pattern C_ChainState_71 a0 = ChainState a0
check_ChainState_71 ::
  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.NewEpoch.T_NewEpochState_209 ->
  T_ChainState_69
check_ChainState_71 = ChainState
cover_ChainState_69 :: ChainState -> ()
cover_ChainState_69 x
  = case x of
      ChainState _ -> ()
-- Ledger.Conway.Foreign.HSLedger.Chain.Block
d_Block_397 = ()
type T_Block_397 = Block
pattern C_Block_399 a0 a1 = Block a0 a1
check_Block_399 ::
  MAlonzo.Code.Agda.Builtin.List.T_List_10
    ()
    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.T_Tx_107591 ->
  Integer -> T_Block_397
check_Block_399 = Block
cover_Block_397 :: Block -> ()
cover_Block_397 x
  = case x of
      Block _ _ -> ()
