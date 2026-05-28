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

module MAlonzo.Code.Ledger.Dijkstra.Specification.Chain where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Class.Functor.Core
import qualified MAlonzo.Code.Class.Functor.Instances
import qualified MAlonzo.Code.Data.Nat.ListAction
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Certs
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Enact
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.PParams
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.RewardUpdate
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo
import qualified MAlonzo.Code.Ledger.Prelude
import qualified MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base

-- _.HasCast-HashProtected
d_HasCast'45'HashProtected_312 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  () ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'HashProtected_312 ~v0
  = du_HasCast'45'HashProtected_312
du_HasCast'45'HashProtected_312 ::
  () ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'HashProtected_312 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasCast'45'HashProtected_1246
-- _.HasPParams
d_HasPParams_474 a0 a1 a2 = ()
-- _.PParamsOf
d_PParamsOf_726 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasPParams_572 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312
d_PParamsOf_726 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_PParamsOf_580
      (coe v0)
-- _.TopLevelTx
d_TopLevelTx_896 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_TopLevelTx_896 = erased
-- _.HasPParams.PParamsOf
d_PParamsOf_1772 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasPParams_572 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312
d_PParamsOf_1772 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_PParamsOf_580
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._._⊢_⇀⦇_,BBODY⦈_
d__'8866'_'8640''10631'_'44'BBODY'10632'__2592 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Dijkstra.Specification.Chain._.BBodyEnv
d_BBodyEnv_2596 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3086 ->
  ()
d_BBodyEnv_2596 = erased
-- Ledger.Dijkstra.Specification.Chain._.BBodyState
d_BBodyState_2598 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3086 ->
  ()
d_BBodyState_2598 = erased
-- Ledger.Dijkstra.Specification.Chain._.BHBody
d_BHBody_2600 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Chain._.BHeader
d_BHeader_2604 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Chain._.Block
d_Block_2608 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Chain._.incrBlocks
d_incrBlocks_2612 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3086 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_incrBlocks_2612 v0 ~v1 = du_incrBlocks_2612 v0
du_incrBlocks_2612 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_incrBlocks_2612 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.du_incrBlocks_3002
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.BHBody.bhash
d_bhash_2620 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_BHBody_2934 ->
  AgdaAny
d_bhash_2620 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bhash_2952
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.BHBody.bsize
d_bsize_2622 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_BHBody_2934 ->
  Integer
d_bsize_2622 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bsize_2948
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.BHBody.bvkcold
d_bvkcold_2624 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_BHBody_2934 ->
  AgdaAny
d_bvkcold_2624 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bvkcold_2946
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.BHBody.hBbsize
d_hBbsize_2626 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_BHBody_2934 ->
  Integer
d_hBbsize_2626 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_hBbsize_2954
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.BHBody.slot
d_slot_2628 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_BHBody_2934 ->
  AgdaAny
d_slot_2628 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_slot_2950
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.BHeader.bhbody
d_bhbody_2632 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_BHeader_2958 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_BHBody_2934
d_bhbody_2632 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bhbody_2964
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.BHeader.bhsig
d_bhsig_2634 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_BHeader_2958 ->
  AgdaAny
d_bhsig_2634 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bhsig_2966
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.Block.bBodyHash
d_bBodyHash_2638 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_2970 ->
  AgdaAny
d_bBodyHash_2638 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bBodyHash_2990
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.Block.bBodySize
d_bBodySize_2640 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_2970 ->
  Integer
d_bBodySize_2640 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bBodySize_2988
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.Block.bheader
d_bheader_2642 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_2970 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_BHeader_2958
d_bheader_2642 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bheader_2984
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.Block.ts
d_ts_2644 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_2970 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3640]
d_ts_2644 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_ts_2986
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.Block.≡-bBodyHash
d_'8801''45'bBodyHash_2646 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_2970 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8801''45'bBodyHash_2646 = erased
-- Ledger.Dijkstra.Specification.Chain._.Block.≡-bBodySize
d_'8801''45'bBodySize_2648 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_2970 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8801''45'bBodySize_2648 = erased
-- Ledger.Dijkstra.Specification.Chain._.CertStateOf
d_CertStateOf_2680 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasCertState_1640 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1404
d_CertStateOf_2680 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_CertStateOf_1648
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.HasCertState
d_HasCertState_2738 a0 a1 a2 a3 = ()
-- Ledger.Dijkstra.Specification.Chain._.HasRewards
d_HasRewards_2798 a0 a1 a2 a3 = ()
-- Ledger.Dijkstra.Specification.Chain._.HasRewards-CertState
d_HasRewards'45'CertState_2802 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3086 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasRewards_1520
d_HasRewards'45'CertState_2802 ~v0 ~v1
  = du_HasRewards'45'CertState_2802
du_HasRewards'45'CertState_2802 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasRewards_1520
du_HasRewards'45'CertState_2802
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasRewards'45'CertState_1730
-- Ledger.Dijkstra.Specification.Chain._.RewardsOf
d_RewardsOf_2854 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasRewards_1520 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RewardsOf_2854 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_RewardsOf_1528
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.HasCertState.CertStateOf
d_CertStateOf_3010 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasCertState_1640 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1404
d_CertStateOf_3010 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_CertStateOf_1648
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.HasRewards.RewardsOf
d_RewardsOf_3042 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasRewards_1520 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RewardsOf_3042 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_RewardsOf_1528
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.EnactStateOf
d_EnactStateOf_3104 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_HasEnactState_1256 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1228
d_EnactStateOf_3104 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1264
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.HasEnactState
d_HasEnactState_3108 a0 a1 a2 a3 = ()
-- Ledger.Dijkstra.Specification.Chain._.HasPParams-EnactState
d_HasPParams'45'EnactState_3112 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3086 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasPParams_572
d_HasPParams'45'EnactState_3112 ~v0 ~v1
  = du_HasPParams'45'EnactState_3112
du_HasPParams'45'EnactState_3112 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasPParams_572
du_HasPParams'45'EnactState_3112
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.du_HasPParams'45'EnactState_1272
-- Ledger.Dijkstra.Specification.Chain._.HasEnactState.EnactStateOf
d_EnactStateOf_3162 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_HasEnactState_1256 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1228
d_EnactStateOf_3162 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1264
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.EpochStateOf
d_EpochStateOf_3176 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_HasEpochState_4044 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_EpochState_4016
d_EpochStateOf_3176 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_EpochStateOf_4052
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.HasEnactState-EpochState
d_HasEnactState'45'EpochState_3190 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3086 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_HasEnactState_1256
d_HasEnactState'45'EpochState_3190 ~v0 ~v1
  = du_HasEnactState'45'EpochState_3190
du_HasEnactState'45'EpochState_3190 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_HasEnactState_1256
du_HasEnactState'45'EpochState_3190
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasEnactState'45'EpochState_4068
-- Ledger.Dijkstra.Specification.Chain._.HasEpochState
d_HasEpochState_3194 a0 a1 a2 a3 = ()
-- Ledger.Dijkstra.Specification.Chain._.HasEpochState-NewEpochState
d_HasEpochState'45'NewEpochState_3198 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3086 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_HasEpochState_4044
d_HasEpochState'45'NewEpochState_3198 ~v0 ~v1
  = du_HasEpochState'45'NewEpochState_3198
du_HasEpochState'45'NewEpochState_3198 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_HasEpochState_4044
du_HasEpochState'45'NewEpochState_3198
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasEpochState'45'NewEpochState_4154
-- Ledger.Dijkstra.Specification.Chain._.HasLastEpoch
d_HasLastEpoch_3204 a0 a1 a2 a3 = ()
-- Ledger.Dijkstra.Specification.Chain._.HasLastEpoch-NewEpochState
d_HasLastEpoch'45'NewEpochState_3208 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3086 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_HasLastEpoch_4136
d_HasLastEpoch'45'NewEpochState_3208 ~v0 ~v1
  = du_HasLastEpoch'45'NewEpochState_3208
du_HasLastEpoch'45'NewEpochState_3208 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_HasLastEpoch_4136
du_HasLastEpoch'45'NewEpochState_3208
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasLastEpoch'45'NewEpochState_4152
-- Ledger.Dijkstra.Specification.Chain._.HasLedgerState-EpochState
d_HasLedgerState'45'EpochState_3210 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3086 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_HasLedgerState_3716
d_HasLedgerState'45'EpochState_3210 ~v0 ~v1
  = du_HasLedgerState'45'EpochState_3210
du_HasLedgerState'45'EpochState_3210 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_HasLedgerState_3716
du_HasLedgerState'45'EpochState_3210
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasLedgerState'45'EpochState_4064
-- Ledger.Dijkstra.Specification.Chain._.HasNewEpochState
d_HasNewEpochState_3214 a0 a1 a2 a3 = ()
-- Ledger.Dijkstra.Specification.Chain._.LastEpochOf
d_LastEpochOf_3238 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_HasLastEpoch_4136 ->
  AgdaAny -> AgdaAny
d_LastEpochOf_3238 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_LastEpochOf_4144
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.NewEpochState
d_NewEpochState_3246 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Chain._.NewEpochStateOf
d_NewEpochStateOf_3250 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_HasNewEpochState_4116 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4084
d_NewEpochStateOf_3250 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_NewEpochStateOf_4124
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.HasEpochState.EpochStateOf
d_EpochStateOf_3300 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_HasEpochState_4044 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_EpochState_4016
d_EpochStateOf_3300 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_EpochStateOf_4052
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.HasLastEpoch.LastEpochOf
d_LastEpochOf_3304 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_HasLastEpoch_4136 ->
  AgdaAny -> AgdaAny
d_LastEpochOf_3304 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_LastEpochOf_4144
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.HasNewEpochState.NewEpochStateOf
d_NewEpochStateOf_3308 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_HasNewEpochState_4116 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4084
d_NewEpochStateOf_3308 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_NewEpochStateOf_4124
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.NewEpochState.bcur
d_bcur_3312 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4084 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_bcur_3312 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_bcur_4102
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.NewEpochState.bprev
d_bprev_3314 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4084 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_bprev_3314 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_bprev_4100
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.NewEpochState.epochState
d_epochState_3316 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4084 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_EpochState_4016
d_epochState_3316 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4104
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.NewEpochState.lastEpoch
d_lastEpoch_3318 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4084 ->
  AgdaAny
d_lastEpoch_3318 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_lastEpoch_4098
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.NewEpochState.pd
d_pd_3320 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4084 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pd_3320 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_pd_4108 (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.NewEpochState.ru
d_ru_3322 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4084 ->
  Maybe
    MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_RewardUpdate_3704
d_ru_3322 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ru_4106 (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.HasCertState-LedgerState
d_HasCertState'45'LedgerState_3512 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3086 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasCertState_1640
d_HasCertState'45'LedgerState_3512 ~v0 ~v1
  = du_HasCertState'45'LedgerState_3512
du_HasCertState'45'LedgerState_3512 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasCertState_1640
du_HasCertState'45'LedgerState_3512
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasCertState'45'LedgerState_3738
-- Ledger.Dijkstra.Specification.Chain._.HasLedgerState
d_HasLedgerState_3532 a0 a1 a2 a3 = ()
-- Ledger.Dijkstra.Specification.Chain._.HasUTxO-LedgerState
d_HasUTxO'45'LedgerState_3546 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3086 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasUTxO_3622
d_HasUTxO'45'LedgerState_3546 ~v0 ~v1
  = du_HasUTxO'45'LedgerState_3546
du_HasUTxO'45'LedgerState_3546 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasUTxO_3622
du_HasUTxO'45'LedgerState_3546
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasUTxO'45'LedgerState_3734
-- Ledger.Dijkstra.Specification.Chain._.HasUTxOState-LedgerState
d_HasUTxOState'45'LedgerState_3550 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3086 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_HasUTxOState_3144
d_HasUTxOState'45'LedgerState_3550 ~v0 ~v1
  = du_HasUTxOState'45'LedgerState_3550
du_HasUTxOState'45'LedgerState_3550 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_HasUTxOState_3144
du_HasUTxOState'45'LedgerState_3550
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasUTxOState'45'LedgerState_3732
-- Ledger.Dijkstra.Specification.Chain._.LedgerState
d_LedgerState_3562 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Chain._.LedgerStateOf
d_LedgerStateOf_3566 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_HasLedgerState_3716 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3696
d_LedgerStateOf_3566 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_LedgerStateOf_3724
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.HasLedgerState.LedgerStateOf
d_LedgerStateOf_3598 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_HasLedgerState_3716 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3696
d_LedgerStateOf_3598 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_LedgerStateOf_3724
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.LedgerState.certState
d_certState_3614 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3696 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1404
d_certState_3614 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_certState_3708
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.LedgerState.govSt
d_govSt_3616 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3696 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_3616 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_govSt_3706
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.LedgerState.utxoSt
d_utxoSt_3618 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3696 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3124
d_utxoSt_3618 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_utxoSt_3704
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._._⊢_⇀⦇_,TICK⦈_
d__'8866'_'8640''10631'_'44'TICK'10632'__3826 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Dijkstra.Specification.Chain._.HasUTxOState
d_HasUTxOState_3928 a0 a1 a2 a3 = ()
-- Ledger.Dijkstra.Specification.Chain._.UTxOStateOf
d_UTxOStateOf_3964 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_HasUTxOState_3144 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3124
d_UTxOStateOf_3964 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_UTxOStateOf_3152
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.HasUTxOState.UTxOStateOf
d_UTxOStateOf_4050 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_HasUTxOState_3144 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3124
d_UTxOStateOf_4050 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_UTxOStateOf_3152
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain.ChainState
d_ChainState_4102 a0 a1 = ()
newtype T_ChainState_4102
  = C_constructor_4108 MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4084
-- Ledger.Dijkstra.Specification.Chain.ChainState.newEpochState
d_newEpochState_4106 ::
  T_ChainState_4102 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4084
d_newEpochState_4106 v0
  = case coe v0 of
      C_constructor_4108 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Chain.HasNewEpochState-ChainState
d_HasNewEpochState'45'ChainState_4110 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3086 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_HasNewEpochState_4116
d_HasNewEpochState'45'ChainState_4110 ~v0 ~v1
  = du_HasNewEpochState'45'ChainState_4110
du_HasNewEpochState'45'ChainState_4110 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_HasNewEpochState_4116
du_HasNewEpochState'45'ChainState_4110
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.C_constructor_4126
      (coe (\ v0 -> d_newEpochState_4106 (coe v0)))
-- Ledger.Dijkstra.Specification.Chain.HasLastEpoch-ChainState
d_HasLastEpoch'45'ChainState_4112 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3086 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_HasLastEpoch_4136
d_HasLastEpoch'45'ChainState_4112 ~v0 ~v1
  = du_HasLastEpoch'45'ChainState_4112
du_HasLastEpoch'45'ChainState_4112 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_HasLastEpoch_4136
du_HasLastEpoch'45'ChainState_4112
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.C_constructor_4146
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_LastEpochOf_4144
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasLastEpoch'45'NewEpochState_4152)
              (d_newEpochState_4106 (coe v0))))
-- Ledger.Dijkstra.Specification.Chain.HasEpochState-ChainState
d_HasEpochState'45'ChainState_4114 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3086 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_HasEpochState_4044
d_HasEpochState'45'ChainState_4114 ~v0 ~v1
  = du_HasEpochState'45'ChainState_4114
du_HasEpochState'45'ChainState_4114 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_HasEpochState_4044
du_HasEpochState'45'ChainState_4114
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.C_constructor_4054
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_EpochStateOf_4052
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasEpochState'45'NewEpochState_4154)
              (d_newEpochState_4106 (coe v0))))
-- Ledger.Dijkstra.Specification.Chain.HasEnactState-ChainState
d_HasEnactState'45'ChainState_4116 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3086 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_HasEnactState_1256
d_HasEnactState'45'ChainState_4116 ~v0 ~v1
  = du_HasEnactState'45'ChainState_4116
du_HasEnactState'45'ChainState_4116 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_HasEnactState_1256
du_HasEnactState'45'ChainState_4116
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.C_constructor_1266
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1264
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasEnactState'45'EpochState_4068)
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_EpochStateOf_4052
                 (coe
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasEpochState'45'NewEpochState_4154)
                 (d_newEpochState_4106 (coe v0)))))
-- Ledger.Dijkstra.Specification.Chain.HasLedgerState-ChainState
d_HasLedgerState'45'ChainState_4118 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3086 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_HasLedgerState_3716
d_HasLedgerState'45'ChainState_4118 ~v0 ~v1
  = du_HasLedgerState'45'ChainState_4118
du_HasLedgerState'45'ChainState_4118 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_HasLedgerState_3716
du_HasLedgerState'45'ChainState_4118
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.C_constructor_3726
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_LedgerStateOf_3724
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasLedgerState'45'EpochState_4064)
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_EpochStateOf_4052
                 (coe
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasEpochState'45'NewEpochState_4154)
                 (d_newEpochState_4106 (coe v0)))))
-- Ledger.Dijkstra.Specification.Chain.HasUTxOState-ChainState
d_HasUTxOState'45'ChainState_4120 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3086 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_HasUTxOState_3144
d_HasUTxOState'45'ChainState_4120 ~v0 ~v1
  = du_HasUTxOState'45'ChainState_4120
du_HasUTxOState'45'ChainState_4120 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_HasUTxOState_3144
du_HasUTxOState'45'ChainState_4120
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.C_constructor_3154
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_UTxOStateOf_3152
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasUTxOState'45'LedgerState_3732)
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_LedgerStateOf_3724
                 (coe
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasLedgerState'45'EpochState_4064)
                 (coe
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_EpochStateOf_4052
                    (coe
                       MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasEpochState'45'NewEpochState_4154)
                    (d_newEpochState_4106 (coe v0))))))
-- Ledger.Dijkstra.Specification.Chain.HasCertState-ChainState
d_HasCertState'45'ChainState_4122 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3086 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasCertState_1640
d_HasCertState'45'ChainState_4122 ~v0 ~v1
  = du_HasCertState'45'ChainState_4122
du_HasCertState'45'ChainState_4122 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasCertState_1640
du_HasCertState'45'ChainState_4122
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.C_constructor_1650
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_CertStateOf_1648
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasCertState'45'LedgerState_3738)
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_LedgerStateOf_3724
                 (coe
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasLedgerState'45'EpochState_4064)
                 (coe
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_EpochStateOf_4052
                    (coe
                       MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasEpochState'45'NewEpochState_4154)
                    (d_newEpochState_4106 (coe v0))))))
-- Ledger.Dijkstra.Specification.Chain.HasRewards-ChainState
d_HasRewards'45'ChainState_4124 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3086 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasRewards_1520
d_HasRewards'45'ChainState_4124 ~v0 ~v1
  = du_HasRewards'45'ChainState_4124
du_HasRewards'45'ChainState_4124 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasRewards_1520
du_HasRewards'45'ChainState_4124
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.C_constructor_1530
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_RewardsOf_1528
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasRewards'45'CertState_1730)
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_CertStateOf_1648
                 (coe
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasCertState'45'LedgerState_3738)
                 (coe
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_LedgerStateOf_3724
                    (coe
                       MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasLedgerState'45'EpochState_4064)
                    (coe
                       MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_EpochStateOf_4052
                       (coe
                          MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasEpochState'45'NewEpochState_4154)
                       (d_newEpochState_4106 (coe v0)))))))
-- Ledger.Dijkstra.Specification.Chain.HasPParams-ChainState
d_HasPParams'45'ChainState_4126 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3086 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasPParams_572
d_HasPParams'45'ChainState_4126 ~v0 ~v1
  = du_HasPParams'45'ChainState_4126
du_HasPParams'45'ChainState_4126 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasPParams_572
du_HasPParams'45'ChainState_4126
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.C_constructor_582
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_PParamsOf_580
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.du_HasPParams'45'EnactState_1272)
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1264
                 (coe
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasEnactState'45'EpochState_4068)
                 (coe
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_EpochStateOf_4052
                    (coe
                       MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasEpochState'45'NewEpochState_4154)
                    (d_newEpochState_4106 (coe v0))))))
-- Ledger.Dijkstra.Specification.Chain.totalRefScriptsSize
d_totalRefScriptsSize_4128 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3086 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3696 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3640] ->
  Integer
d_totalRefScriptsSize_4128 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.Nat.ListAction.d_sum_6
      (coe
         MAlonzo.Code.Class.Functor.Core.du_fmap_22
         MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
         () erased
         (\ v4 ->
            coe
              MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.du_refScriptsSize_3330
              (coe v0) (coe v1) (coe v4)
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_UTxOOf_3630
                 (coe
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasUTxO'45'LedgerState_3734)
                 v2))
         v3)
-- Ledger.Dijkstra.Specification.Chain._⊢_⇀⦇_,CHAIN⦈_
d__'8866'_'8640''10631'_'44'CHAIN'10632'__4138 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'CHAIN'10632'__4138
  = C_CHAIN_4228 MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4084
                 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Dijkstra.Specification.Chain._.newEpochState
d_newEpochState_4150 ::
  T_ChainState_4102 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4084
d_newEpochState_4150 v0 = coe d_newEpochState_4106 (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.bheader
d_bheader_4158 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3086 ->
  T_GeneralizeTel_22755 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_2970 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4084 ->
  T_ChainState_4102 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_BHeader_2958
d_bheader_4158 ~v0 ~v1 ~v2 v3 ~v4 ~v5 = du_bheader_4158 v3
du_bheader_4158 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_2970 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_BHeader_2958
du_bheader_4158 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bheader_2984
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.ts
d_ts_4160 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3086 ->
  T_GeneralizeTel_22755 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_2970 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4084 ->
  T_ChainState_4102 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3640]
d_ts_4160 ~v0 ~v1 ~v2 v3 ~v4 ~v5 = du_ts_4160 v3
du_ts_4160 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_2970 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3640]
du_ts_4160 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_ts_2986
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.bhbody
d_bhbody_4168 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3086 ->
  T_GeneralizeTel_22755 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_2970 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4084 ->
  T_ChainState_4102 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_BHBody_2934
d_bhbody_4168 ~v0 ~v1 ~v2 v3 ~v4 ~v5 = du_bhbody_4168 v3
du_bhbody_4168 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_2970 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_BHBody_2934
du_bhbody_4168 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bhbody_2964
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bheader_2984
         (coe v0))
-- Ledger.Dijkstra.Specification.Chain._.slot
d_slot_4182 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3086 ->
  T_GeneralizeTel_22755 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_2970 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4084 ->
  T_ChainState_4102 -> AgdaAny
d_slot_4182 ~v0 ~v1 ~v2 v3 ~v4 ~v5 = du_slot_4182 v3
du_slot_4182 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_2970 ->
  AgdaAny
du_slot_4182 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_slot_2950
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bhbody_2964
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bheader_2984
            (coe v0)))
-- Ledger.Dijkstra.Specification.Chain._.bcur
d_bcur_4186 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3086 ->
  T_GeneralizeTel_22755 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_2970 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4084 ->
  T_ChainState_4102 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_bcur_4186 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_bcur_4186 v4
du_bcur_4186 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4084 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_bcur_4186 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_bcur_4102
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.epochState
d_epochState_4190 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3086 ->
  T_GeneralizeTel_22755 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_2970 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4084 ->
  T_ChainState_4102 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_EpochState_4016
d_epochState_4190 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_epochState_4190 v4
du_epochState_4190 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4084 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_EpochState_4016
du_epochState_4190 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4104
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.acnt
d_acnt_4200 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3086 ->
  T_GeneralizeTel_22755 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_2970 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4084 ->
  T_ChainState_4102 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_194
d_acnt_4200 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_acnt_4200 v4
du_acnt_4200 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4084 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_194
du_acnt_4200 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4028
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4104
         (coe v0))
-- Ledger.Dijkstra.Specification.Chain._.es
d_es_4202 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3086 ->
  T_GeneralizeTel_22755 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_2970 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4084 ->
  T_ChainState_4102 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1228
d_es_4202 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_es_4202 v4
du_es_4202 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4084 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1228
du_es_4202 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_es_4034
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4104
         (coe v0))
-- Ledger.Dijkstra.Specification.Chain._.ls
d_ls_4206 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3086 ->
  T_GeneralizeTel_22755 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_2970 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4084 ->
  T_ChainState_4102 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3696
d_ls_4206 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_ls_4206 v4
du_ls_4206 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4084 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3696
du_ls_4206 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4032
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4104
         (coe v0))
-- Ledger.Dijkstra.Specification.Chain._.pparams
d_pparams_4216 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3086 ->
  T_GeneralizeTel_22755 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_2970 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4084 ->
  T_ChainState_4102 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pparams_4216 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_pparams_4216 v4
du_pparams_4216 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4084 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_pparams_4216 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_pparams_1246
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_es_4034
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4104
            (coe v0)))
-- Ledger.Dijkstra.Specification.Chain._.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_4224 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3086 ->
  T_GeneralizeTel_22755 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_2970 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4084 ->
  T_ChainState_4102 -> Integer
d_maxRefScriptSizePerBlock_4224 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_maxRefScriptSizePerBlock_4224 v5
du_maxRefScriptSizePerBlock_4224 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4084 ->
  Integer
du_maxRefScriptSizePerBlock_4224 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxRefScriptSizePerBlock_420
      (coe
         MAlonzo.Code.Ledger.Prelude.du_'8739'_'8739'_70
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasCast'45'HashProtected_1246)
         (MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_pparams_1246
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_es_4034
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4104
                  (coe v0)))))
-- Ledger.Dijkstra.Specification.Chain..generalizedField-ls'
d_'46'generalizedField'45'ls''_22753 ::
  T_GeneralizeTel_22755 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3696
d_'46'generalizedField'45'ls''_22753 v0
  = case coe v0 of
      C_mkGeneralizeTel_22757 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Chain.GeneralizeTel
d_GeneralizeTel_22755 a0 a1 = ()
newtype T_GeneralizeTel_22755
  = C_mkGeneralizeTel_22757 MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3696
