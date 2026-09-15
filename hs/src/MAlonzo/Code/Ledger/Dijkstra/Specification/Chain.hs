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
d_HasCast'45'HashProtected_316 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  () ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'HashProtected_316 ~v0
  = du_HasCast'45'HashProtected_316
du_HasCast'45'HashProtected_316 ::
  () ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'HashProtected_316 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasCast'45'HashProtected_1258
-- _.HasPParams
d_HasPParams_478 a0 a1 a2 = ()
-- _.PParamsOf
d_PParamsOf_732 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasPParams_578 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312
d_PParamsOf_732 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_PParamsOf_586
      (coe v0)
-- _.TopLevelTx
d_TopLevelTx_902 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_TopLevelTx_902 = erased
-- _.HasPParams.PParamsOf
d_PParamsOf_1782 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasPParams_578 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312
d_PParamsOf_1782 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_PParamsOf_586
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._._⊢_⇀⦇_,BBODY⦈_
d__'8866'_'8640''10631'_'44'BBODY'10632'__2608 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Dijkstra.Specification.Chain._.BBodyEnv
d_BBodyEnv_2612 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3142 ->
  ()
d_BBodyEnv_2612 = erased
-- Ledger.Dijkstra.Specification.Chain._.BBodyState
d_BBodyState_2614 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3142 ->
  ()
d_BBodyState_2614 = erased
-- Ledger.Dijkstra.Specification.Chain._.BHBody
d_BHBody_2616 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Chain._.BHeader
d_BHeader_2620 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Chain._.Block
d_Block_2624 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Chain._.incrBlocks
d_incrBlocks_2628 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3142 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_incrBlocks_2628 v0 ~v1 = du_incrBlocks_2628 v0
du_incrBlocks_2628 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_incrBlocks_2628 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.du_incrBlocks_3016
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.BHBody.bhash
d_bhash_2636 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_BHBody_2948 ->
  AgdaAny
d_bhash_2636 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bhash_2966
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.BHBody.bsize
d_bsize_2638 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_BHBody_2948 ->
  Integer
d_bsize_2638 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bsize_2962
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.BHBody.bvkcold
d_bvkcold_2640 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_BHBody_2948 ->
  AgdaAny
d_bvkcold_2640 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bvkcold_2960
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.BHBody.hBbsize
d_hBbsize_2642 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_BHBody_2948 ->
  Integer
d_hBbsize_2642 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_hBbsize_2968
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.BHBody.slot
d_slot_2644 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_BHBody_2948 ->
  AgdaAny
d_slot_2644 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_slot_2964
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.BHeader.bhbody
d_bhbody_2648 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_BHeader_2972 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_BHBody_2948
d_bhbody_2648 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bhbody_2978
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.BHeader.bhsig
d_bhsig_2650 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_BHeader_2972 ->
  AgdaAny
d_bhsig_2650 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bhsig_2980
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.Block.bBodyHash
d_bBodyHash_2654 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_2984 ->
  AgdaAny
d_bBodyHash_2654 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bBodyHash_3004
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.Block.bBodySize
d_bBodySize_2656 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_2984 ->
  Integer
d_bBodySize_2656 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bBodySize_3002
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.Block.bheader
d_bheader_2658 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_2984 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_BHeader_2972
d_bheader_2658 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bheader_2998
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.Block.ts
d_ts_2660 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_2984 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3706]
d_ts_2660 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_ts_3000
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.Block.≡-bBodyHash
d_'8801''45'bBodyHash_2662 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_2984 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8801''45'bBodyHash_2662 = erased
-- Ledger.Dijkstra.Specification.Chain._.Block.≡-bBodySize
d_'8801''45'bBodySize_2664 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_2984 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8801''45'bBodySize_2664 = erased
-- Ledger.Dijkstra.Specification.Chain._.CertStateOf
d_CertStateOf_2696 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasCertState_1748 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1420
d_CertStateOf_2696 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_CertStateOf_1756
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.HasCertState
d_HasCertState_2766 a0 a1 a2 a3 = ()
-- Ledger.Dijkstra.Specification.Chain._.HasRewards
d_HasRewards_2844 a0 a1 a2 a3 = ()
-- Ledger.Dijkstra.Specification.Chain._.HasRewards-CertState
d_HasRewards'45'CertState_2848 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3142 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasRewards_1628
d_HasRewards'45'CertState_2848 ~v0 ~v1
  = du_HasRewards'45'CertState_2848
du_HasRewards'45'CertState_2848 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasRewards_1628
du_HasRewards'45'CertState_2848
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasRewards'45'CertState_1840
-- Ledger.Dijkstra.Specification.Chain._.RewardsOf
d_RewardsOf_2904 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasRewards_1628 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RewardsOf_2904 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_RewardsOf_1636
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.HasCertState.CertStateOf
d_CertStateOf_3050 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasCertState_1748 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1420
d_CertStateOf_3050 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_CertStateOf_1756
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.HasRewards.RewardsOf
d_RewardsOf_3090 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasRewards_1628 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RewardsOf_3090 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_RewardsOf_1636
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.EnactStateOf
d_EnactStateOf_3160 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_HasEnactState_1266 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1238
d_EnactStateOf_3160 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1274
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.HasEnactState
d_HasEnactState_3164 a0 a1 a2 a3 = ()
-- Ledger.Dijkstra.Specification.Chain._.HasPParams-EnactState
d_HasPParams'45'EnactState_3168 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3142 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasPParams_578
d_HasPParams'45'EnactState_3168 ~v0 ~v1
  = du_HasPParams'45'EnactState_3168
du_HasPParams'45'EnactState_3168 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasPParams_578
du_HasPParams'45'EnactState_3168
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.du_HasPParams'45'EnactState_1282
-- Ledger.Dijkstra.Specification.Chain._.HasEnactState.EnactStateOf
d_EnactStateOf_3218 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_HasEnactState_1266 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1238
d_EnactStateOf_3218 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1274
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.EpochStateOf
d_EpochStateOf_3232 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_HasEpochState_4062 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_EpochState_4034
d_EpochStateOf_3232 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_EpochStateOf_4070
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.HasEnactState-EpochState
d_HasEnactState'45'EpochState_3250 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3142 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_HasEnactState_1266
d_HasEnactState'45'EpochState_3250 ~v0 ~v1
  = du_HasEnactState'45'EpochState_3250
du_HasEnactState'45'EpochState_3250 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_HasEnactState_1266
du_HasEnactState'45'EpochState_3250
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasEnactState'45'EpochState_4084
-- Ledger.Dijkstra.Specification.Chain._.HasEpochState
d_HasEpochState_3254 a0 a1 a2 a3 = ()
-- Ledger.Dijkstra.Specification.Chain._.HasEpochState-NewEpochState
d_HasEpochState'45'NewEpochState_3258 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3142 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_HasEpochState_4062
d_HasEpochState'45'NewEpochState_3258 ~v0 ~v1
  = du_HasEpochState'45'NewEpochState_3258
du_HasEpochState'45'NewEpochState_3258 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_HasEpochState_4062
du_HasEpochState'45'NewEpochState_3258
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasEpochState'45'NewEpochState_4170
-- Ledger.Dijkstra.Specification.Chain._.HasLastEpoch
d_HasLastEpoch_3264 a0 a1 a2 a3 = ()
-- Ledger.Dijkstra.Specification.Chain._.HasLastEpoch-NewEpochState
d_HasLastEpoch'45'NewEpochState_3268 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3142 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_HasLastEpoch_4152
d_HasLastEpoch'45'NewEpochState_3268 ~v0 ~v1
  = du_HasLastEpoch'45'NewEpochState_3268
du_HasLastEpoch'45'NewEpochState_3268 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_HasLastEpoch_4152
du_HasLastEpoch'45'NewEpochState_3268
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasLastEpoch'45'NewEpochState_4168
-- Ledger.Dijkstra.Specification.Chain._.HasLedgerState-EpochState
d_HasLedgerState'45'EpochState_3270 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3142 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_HasLedgerState_3828
d_HasLedgerState'45'EpochState_3270 ~v0 ~v1
  = du_HasLedgerState'45'EpochState_3270
du_HasLedgerState'45'EpochState_3270 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_HasLedgerState_3828
du_HasLedgerState'45'EpochState_3270
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasLedgerState'45'EpochState_4080
-- Ledger.Dijkstra.Specification.Chain._.HasNewEpochState
d_HasNewEpochState_3274 a0 a1 a2 a3 = ()
-- Ledger.Dijkstra.Specification.Chain._.LastEpochOf
d_LastEpochOf_3298 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_HasLastEpoch_4152 ->
  AgdaAny -> AgdaAny
d_LastEpochOf_3298 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_LastEpochOf_4160
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.NewEpochState
d_NewEpochState_3306 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Chain._.NewEpochStateOf
d_NewEpochStateOf_3310 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_HasNewEpochState_4132 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4100
d_NewEpochStateOf_3310 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_NewEpochStateOf_4140
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.HasEpochState.EpochStateOf
d_EpochStateOf_3392 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_HasEpochState_4062 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_EpochState_4034
d_EpochStateOf_3392 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_EpochStateOf_4070
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.HasLastEpoch.LastEpochOf
d_LastEpochOf_3396 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_HasLastEpoch_4152 ->
  AgdaAny -> AgdaAny
d_LastEpochOf_3396 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_LastEpochOf_4160
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.HasNewEpochState.NewEpochStateOf
d_NewEpochStateOf_3400 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_HasNewEpochState_4132 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4100
d_NewEpochStateOf_3400 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_NewEpochStateOf_4140
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.NewEpochState.bcur
d_bcur_3404 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4100 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_bcur_3404 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_bcur_4118
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.NewEpochState.bprev
d_bprev_3406 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4100 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_bprev_3406 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_bprev_4116
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.NewEpochState.epochState
d_epochState_3408 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4100 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_EpochState_4034
d_epochState_3408 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4120
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.NewEpochState.lastEpoch
d_lastEpoch_3410 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4100 ->
  AgdaAny
d_lastEpoch_3410 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_lastEpoch_4114
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.NewEpochState.pd
d_pd_3412 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4100 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pd_3412 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_pd_4124 (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.NewEpochState.ru
d_ru_3414 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4100 ->
  Maybe
    MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_RewardUpdate_3756
d_ru_3414 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ru_4122 (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.HasCertState-LedgerState
d_HasCertState'45'LedgerState_3644 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3142 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasCertState_1748
d_HasCertState'45'LedgerState_3644 ~v0 ~v1
  = du_HasCertState'45'LedgerState_3644
du_HasCertState'45'LedgerState_3644 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasCertState_1748
du_HasCertState'45'LedgerState_3644
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasCertState'45'LedgerState_3850
-- Ledger.Dijkstra.Specification.Chain._.HasLedgerState
d_HasLedgerState_3664 a0 a1 a2 a3 = ()
-- Ledger.Dijkstra.Specification.Chain._.HasUTxO-LedgerState
d_HasUTxO'45'LedgerState_3678 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3142 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasUTxO_3688
d_HasUTxO'45'LedgerState_3678 ~v0 ~v1
  = du_HasUTxO'45'LedgerState_3678
du_HasUTxO'45'LedgerState_3678 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasUTxO_3688
du_HasUTxO'45'LedgerState_3678
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasUTxO'45'LedgerState_3846
-- Ledger.Dijkstra.Specification.Chain._.HasUTxOState-LedgerState
d_HasUTxOState'45'LedgerState_3682 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3142 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_HasUTxOState_3198
d_HasUTxOState'45'LedgerState_3682 ~v0 ~v1
  = du_HasUTxOState'45'LedgerState_3682
du_HasUTxOState'45'LedgerState_3682 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_HasUTxOState_3198
du_HasUTxOState'45'LedgerState_3682
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasUTxOState'45'LedgerState_3844
-- Ledger.Dijkstra.Specification.Chain._.LedgerState
d_LedgerState_3694 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Chain._.LedgerStateOf
d_LedgerStateOf_3698 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_HasLedgerState_3828 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3808
d_LedgerStateOf_3698 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_LedgerStateOf_3836
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.HasLedgerState.LedgerStateOf
d_LedgerStateOf_3730 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_HasLedgerState_3828 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3808
d_LedgerStateOf_3730 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_LedgerStateOf_3836
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.LedgerState.certState
d_certState_3746 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3808 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1420
d_certState_3746 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_certState_3820
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.LedgerState.govSt
d_govSt_3748 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3808 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_3748 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_govSt_3818
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.LedgerState.utxoSt
d_utxoSt_3750 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3808 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3178
d_utxoSt_3750 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_utxoSt_3816
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._._⊢_⇀⦇_,TICK⦈_
d__'8866'_'8640''10631'_'44'TICK'10632'__3958 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Dijkstra.Specification.Chain._.HasUTxOState
d_HasUTxOState_4056 a0 a1 a2 a3 = ()
-- Ledger.Dijkstra.Specification.Chain._.UTxOStateOf
d_UTxOStateOf_4092 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_HasUTxOState_3198 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3178
d_UTxOStateOf_4092 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_UTxOStateOf_3206
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.HasUTxOState.UTxOStateOf
d_UTxOStateOf_4182 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_HasUTxOState_3198 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3178
d_UTxOStateOf_4182 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_UTxOStateOf_3206
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain.ChainState
d_ChainState_4232 a0 a1 = ()
newtype T_ChainState_4232
  = C_constructor_4238 MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4100
-- Ledger.Dijkstra.Specification.Chain.ChainState.newEpochState
d_newEpochState_4236 ::
  T_ChainState_4232 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4100
d_newEpochState_4236 v0
  = case coe v0 of
      C_constructor_4238 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Chain.HasNewEpochState-ChainState
d_HasNewEpochState'45'ChainState_4240 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3142 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_HasNewEpochState_4132
d_HasNewEpochState'45'ChainState_4240 ~v0 ~v1
  = du_HasNewEpochState'45'ChainState_4240
du_HasNewEpochState'45'ChainState_4240 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_HasNewEpochState_4132
du_HasNewEpochState'45'ChainState_4240
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.C_constructor_4142
      (coe (\ v0 -> d_newEpochState_4236 (coe v0)))
-- Ledger.Dijkstra.Specification.Chain.HasLastEpoch-ChainState
d_HasLastEpoch'45'ChainState_4242 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3142 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_HasLastEpoch_4152
d_HasLastEpoch'45'ChainState_4242 ~v0 ~v1
  = du_HasLastEpoch'45'ChainState_4242
du_HasLastEpoch'45'ChainState_4242 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_HasLastEpoch_4152
du_HasLastEpoch'45'ChainState_4242
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.C_constructor_4162
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_LastEpochOf_4160
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasLastEpoch'45'NewEpochState_4168)
              (d_newEpochState_4236 (coe v0))))
-- Ledger.Dijkstra.Specification.Chain.HasEpochState-ChainState
d_HasEpochState'45'ChainState_4244 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3142 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_HasEpochState_4062
d_HasEpochState'45'ChainState_4244 ~v0 ~v1
  = du_HasEpochState'45'ChainState_4244
du_HasEpochState'45'ChainState_4244 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_HasEpochState_4062
du_HasEpochState'45'ChainState_4244
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.C_constructor_4072
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_EpochStateOf_4070
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasEpochState'45'NewEpochState_4170)
              (d_newEpochState_4236 (coe v0))))
-- Ledger.Dijkstra.Specification.Chain.HasEnactState-ChainState
d_HasEnactState'45'ChainState_4246 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3142 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_HasEnactState_1266
d_HasEnactState'45'ChainState_4246 ~v0 ~v1
  = du_HasEnactState'45'ChainState_4246
du_HasEnactState'45'ChainState_4246 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_HasEnactState_1266
du_HasEnactState'45'ChainState_4246
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.C_constructor_1276
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1274
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasEnactState'45'EpochState_4084)
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_EpochStateOf_4070
                 (coe
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasEpochState'45'NewEpochState_4170)
                 (d_newEpochState_4236 (coe v0)))))
-- Ledger.Dijkstra.Specification.Chain.HasLedgerState-ChainState
d_HasLedgerState'45'ChainState_4248 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3142 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_HasLedgerState_3828
d_HasLedgerState'45'ChainState_4248 ~v0 ~v1
  = du_HasLedgerState'45'ChainState_4248
du_HasLedgerState'45'ChainState_4248 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_HasLedgerState_3828
du_HasLedgerState'45'ChainState_4248
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.C_constructor_3838
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_LedgerStateOf_3836
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasLedgerState'45'EpochState_4080)
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_EpochStateOf_4070
                 (coe
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasEpochState'45'NewEpochState_4170)
                 (d_newEpochState_4236 (coe v0)))))
-- Ledger.Dijkstra.Specification.Chain.HasUTxOState-ChainState
d_HasUTxOState'45'ChainState_4250 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3142 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_HasUTxOState_3198
d_HasUTxOState'45'ChainState_4250 ~v0 ~v1
  = du_HasUTxOState'45'ChainState_4250
du_HasUTxOState'45'ChainState_4250 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_HasUTxOState_3198
du_HasUTxOState'45'ChainState_4250
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.C_constructor_3208
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_UTxOStateOf_3206
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasUTxOState'45'LedgerState_3844)
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_LedgerStateOf_3836
                 (coe
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasLedgerState'45'EpochState_4080)
                 (coe
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_EpochStateOf_4070
                    (coe
                       MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasEpochState'45'NewEpochState_4170)
                    (d_newEpochState_4236 (coe v0))))))
-- Ledger.Dijkstra.Specification.Chain.HasCertState-ChainState
d_HasCertState'45'ChainState_4252 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3142 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasCertState_1748
d_HasCertState'45'ChainState_4252 ~v0 ~v1
  = du_HasCertState'45'ChainState_4252
du_HasCertState'45'ChainState_4252 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasCertState_1748
du_HasCertState'45'ChainState_4252
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.C_constructor_1758
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_CertStateOf_1756
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasCertState'45'LedgerState_3850)
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_LedgerStateOf_3836
                 (coe
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasLedgerState'45'EpochState_4080)
                 (coe
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_EpochStateOf_4070
                    (coe
                       MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasEpochState'45'NewEpochState_4170)
                    (d_newEpochState_4236 (coe v0))))))
-- Ledger.Dijkstra.Specification.Chain.HasRewards-ChainState
d_HasRewards'45'ChainState_4254 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3142 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasRewards_1628
d_HasRewards'45'ChainState_4254 ~v0 ~v1
  = du_HasRewards'45'ChainState_4254
du_HasRewards'45'ChainState_4254 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasRewards_1628
du_HasRewards'45'ChainState_4254
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.C_constructor_1638
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_RewardsOf_1636
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasRewards'45'CertState_1840)
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_CertStateOf_1756
                 (coe
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasCertState'45'LedgerState_3850)
                 (coe
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_LedgerStateOf_3836
                    (coe
                       MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasLedgerState'45'EpochState_4080)
                    (coe
                       MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_EpochStateOf_4070
                       (coe
                          MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasEpochState'45'NewEpochState_4170)
                       (d_newEpochState_4236 (coe v0)))))))
-- Ledger.Dijkstra.Specification.Chain.HasPParams-ChainState
d_HasPParams'45'ChainState_4256 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3142 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasPParams_578
d_HasPParams'45'ChainState_4256 ~v0 ~v1
  = du_HasPParams'45'ChainState_4256
du_HasPParams'45'ChainState_4256 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasPParams_578
du_HasPParams'45'ChainState_4256
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.C_constructor_588
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_PParamsOf_586
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.du_HasPParams'45'EnactState_1282)
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1274
                 (coe
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasEnactState'45'EpochState_4084)
                 (coe
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_EpochStateOf_4070
                    (coe
                       MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasEpochState'45'NewEpochState_4170)
                    (d_newEpochState_4236 (coe v0))))))
-- Ledger.Dijkstra.Specification.Chain.totalRefScriptsSize
d_totalRefScriptsSize_4258 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3142 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3808 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3706] ->
  Integer
d_totalRefScriptsSize_4258 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.Nat.ListAction.d_sum_6
      (coe
         MAlonzo.Code.Class.Functor.Core.du_fmap_22
         MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
         () erased
         (\ v4 ->
            coe
              MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.du_refScriptsSize_3380
              (coe v0) (coe v1) (coe v4)
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_UTxOOf_3696
                 (coe
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasUTxO'45'LedgerState_3846)
                 v2))
         v3)
-- Ledger.Dijkstra.Specification.Chain._⊢_⇀⦇_,CHAIN⦈_
d__'8866'_'8640''10631'_'44'CHAIN'10632'__4268 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'CHAIN'10632'__4268
  = C_CHAIN_4358 MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4100
                 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Dijkstra.Specification.Chain._.newEpochState
d_newEpochState_4280 ::
  T_ChainState_4232 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4100
d_newEpochState_4280 v0 = coe d_newEpochState_4236 (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.bheader
d_bheader_4288 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3142 ->
  T_GeneralizeTel_23257 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_2984 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4100 ->
  T_ChainState_4232 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_BHeader_2972
d_bheader_4288 ~v0 ~v1 ~v2 v3 ~v4 ~v5 = du_bheader_4288 v3
du_bheader_4288 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_2984 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_BHeader_2972
du_bheader_4288 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bheader_2998
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.ts
d_ts_4290 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3142 ->
  T_GeneralizeTel_23257 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_2984 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4100 ->
  T_ChainState_4232 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3706]
d_ts_4290 ~v0 ~v1 ~v2 v3 ~v4 ~v5 = du_ts_4290 v3
du_ts_4290 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_2984 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3706]
du_ts_4290 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_ts_3000
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.bhbody
d_bhbody_4298 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3142 ->
  T_GeneralizeTel_23257 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_2984 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4100 ->
  T_ChainState_4232 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_BHBody_2948
d_bhbody_4298 ~v0 ~v1 ~v2 v3 ~v4 ~v5 = du_bhbody_4298 v3
du_bhbody_4298 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_2984 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_BHBody_2948
du_bhbody_4298 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bhbody_2978
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bheader_2998
         (coe v0))
-- Ledger.Dijkstra.Specification.Chain._.slot
d_slot_4312 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3142 ->
  T_GeneralizeTel_23257 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_2984 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4100 ->
  T_ChainState_4232 -> AgdaAny
d_slot_4312 ~v0 ~v1 ~v2 v3 ~v4 ~v5 = du_slot_4312 v3
du_slot_4312 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_2984 ->
  AgdaAny
du_slot_4312 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_slot_2964
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bhbody_2978
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bheader_2998
            (coe v0)))
-- Ledger.Dijkstra.Specification.Chain._.bcur
d_bcur_4316 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3142 ->
  T_GeneralizeTel_23257 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_2984 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4100 ->
  T_ChainState_4232 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_bcur_4316 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_bcur_4316 v4
du_bcur_4316 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4100 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_bcur_4316 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_bcur_4118
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.epochState
d_epochState_4320 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3142 ->
  T_GeneralizeTel_23257 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_2984 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4100 ->
  T_ChainState_4232 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_EpochState_4034
d_epochState_4320 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_epochState_4320 v4
du_epochState_4320 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4100 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_EpochState_4034
du_epochState_4320 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4120
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.acnt
d_acnt_4330 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3142 ->
  T_GeneralizeTel_23257 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_2984 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4100 ->
  T_ChainState_4232 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_194
d_acnt_4330 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_acnt_4330 v4
du_acnt_4330 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4100 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_194
du_acnt_4330 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4046
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4120
         (coe v0))
-- Ledger.Dijkstra.Specification.Chain._.es
d_es_4332 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3142 ->
  T_GeneralizeTel_23257 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_2984 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4100 ->
  T_ChainState_4232 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1238
d_es_4332 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_es_4332 v4
du_es_4332 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4100 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1238
du_es_4332 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_es_4052
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4120
         (coe v0))
-- Ledger.Dijkstra.Specification.Chain._.ls
d_ls_4336 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3142 ->
  T_GeneralizeTel_23257 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_2984 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4100 ->
  T_ChainState_4232 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3808
d_ls_4336 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_ls_4336 v4
du_ls_4336 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4100 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3808
du_ls_4336 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4050
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4120
         (coe v0))
-- Ledger.Dijkstra.Specification.Chain._.pparams
d_pparams_4346 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3142 ->
  T_GeneralizeTel_23257 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_2984 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4100 ->
  T_ChainState_4232 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pparams_4346 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_pparams_4346 v4
du_pparams_4346 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4100 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_pparams_4346 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_pparams_1256
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_es_4052
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4120
            (coe v0)))
-- Ledger.Dijkstra.Specification.Chain._.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_4354 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3142 ->
  T_GeneralizeTel_23257 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_2984 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4100 ->
  T_ChainState_4232 -> Integer
d_maxRefScriptSizePerBlock_4354 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_maxRefScriptSizePerBlock_4354 v5
du_maxRefScriptSizePerBlock_4354 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4100 ->
  Integer
du_maxRefScriptSizePerBlock_4354 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxRefScriptSizePerBlock_424
      (coe
         MAlonzo.Code.Ledger.Prelude.du_'8739'_'8739'_70
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasCast'45'HashProtected_1258)
         (MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_pparams_1256
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_es_4052
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4120
                  (coe v0)))))
-- Ledger.Dijkstra.Specification.Chain..generalizedField-ls'
d_'46'generalizedField'45'ls''_23255 ::
  T_GeneralizeTel_23257 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3808
d_'46'generalizedField'45'ls''_23255 v0
  = case coe v0 of
      C_mkGeneralizeTel_23259 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Chain.GeneralizeTel
d_GeneralizeTel_23257 a0 a1 = ()
newtype T_GeneralizeTel_23257
  = C_mkGeneralizeTel_23259 MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3808
