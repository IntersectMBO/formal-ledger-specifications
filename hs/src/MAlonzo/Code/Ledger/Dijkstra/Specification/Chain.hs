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
d_PParamsOf_740 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasPParams_578 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312
d_PParamsOf_740 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_PParamsOf_586
      (coe v0)
-- _.TopLevelTx
d_TopLevelTx_912 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_TopLevelTx_912 = erased
-- _.HasPParams.PParamsOf
d_PParamsOf_1792 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasPParams_578 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312
d_PParamsOf_1792 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_PParamsOf_586
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._._⊢_⇀⦇_,BBODY⦈_
d__'8866'_'8640''10631'_'44'BBODY'10632'__2624 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Dijkstra.Specification.Chain._.BBodyEnv
d_BBodyEnv_2628 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  ()
d_BBodyEnv_2628 = erased
-- Ledger.Dijkstra.Specification.Chain._.BBodyState
d_BBodyState_2630 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  ()
d_BBodyState_2630 = erased
-- Ledger.Dijkstra.Specification.Chain._.BHBody
d_BHBody_2632 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Chain._.BHeader
d_BHeader_2636 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Chain._.Block
d_Block_2640 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Chain._.incrBlocks
d_incrBlocks_2644 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_incrBlocks_2644 v0 ~v1 = du_incrBlocks_2644 v0
du_incrBlocks_2644 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_incrBlocks_2644 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.du_incrBlocks_3034
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.BHBody.bhash
d_bhash_2652 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_BHBody_2966 ->
  AgdaAny
d_bhash_2652 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bhash_2984
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.BHBody.bsize
d_bsize_2654 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_BHBody_2966 ->
  Integer
d_bsize_2654 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bsize_2980
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.BHBody.bvkcold
d_bvkcold_2656 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_BHBody_2966 ->
  AgdaAny
d_bvkcold_2656 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bvkcold_2978
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.BHBody.hBbsize
d_hBbsize_2658 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_BHBody_2966 ->
  Integer
d_hBbsize_2658 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_hBbsize_2986
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.BHBody.slot
d_slot_2660 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_BHBody_2966 ->
  AgdaAny
d_slot_2660 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_slot_2982
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.BHeader.bhbody
d_bhbody_2664 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_BHeader_2990 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_BHBody_2966
d_bhbody_2664 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bhbody_2996
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.BHeader.bhsig
d_bhsig_2666 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_BHeader_2990 ->
  AgdaAny
d_bhsig_2666 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bhsig_2998
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.Block.bBodyHash
d_bBodyHash_2670 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3002 ->
  AgdaAny
d_bBodyHash_2670 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bBodyHash_3022
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.Block.bBodySize
d_bBodySize_2672 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3002 ->
  Integer
d_bBodySize_2672 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bBodySize_3020
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.Block.bheader
d_bheader_2674 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3002 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_BHeader_2990
d_bheader_2674 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bheader_3016
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.Block.ts
d_ts_2676 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3002 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3712]
d_ts_2676 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_ts_3018
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.Block.≡-bBodyHash
d_'8801''45'bBodyHash_2678 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3002 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8801''45'bBodyHash_2678 = erased
-- Ledger.Dijkstra.Specification.Chain._.Block.≡-bBodySize
d_'8801''45'bBodySize_2680 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3002 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8801''45'bBodySize_2680 = erased
-- Ledger.Dijkstra.Specification.Chain._.CertStateOf
d_CertStateOf_2712 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasCertState_1748 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1420
d_CertStateOf_2712 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_CertStateOf_1756
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.HasCertState
d_HasCertState_2782 a0 a1 a2 a3 = ()
-- Ledger.Dijkstra.Specification.Chain._.HasRewards
d_HasRewards_2860 a0 a1 a2 a3 = ()
-- Ledger.Dijkstra.Specification.Chain._.HasRewards-CertState
d_HasRewards'45'CertState_2864 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasRewards_1628
d_HasRewards'45'CertState_2864 ~v0 ~v1
  = du_HasRewards'45'CertState_2864
du_HasRewards'45'CertState_2864 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasRewards_1628
du_HasRewards'45'CertState_2864
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasRewards'45'CertState_1840
-- Ledger.Dijkstra.Specification.Chain._.RewardsOf
d_RewardsOf_2922 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasRewards_1628 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RewardsOf_2922 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_RewardsOf_1636
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.HasCertState.CertStateOf
d_CertStateOf_3072 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasCertState_1748 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1420
d_CertStateOf_3072 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_CertStateOf_1756
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.HasRewards.RewardsOf
d_RewardsOf_3112 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasRewards_1628 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RewardsOf_3112 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_RewardsOf_1636
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.EnactStateOf
d_EnactStateOf_3182 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_HasEnactState_1266 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1238
d_EnactStateOf_3182 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1274
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.HasEnactState
d_HasEnactState_3186 a0 a1 a2 a3 = ()
-- Ledger.Dijkstra.Specification.Chain._.HasPParams-EnactState
d_HasPParams'45'EnactState_3190 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasPParams_578
d_HasPParams'45'EnactState_3190 ~v0 ~v1
  = du_HasPParams'45'EnactState_3190
du_HasPParams'45'EnactState_3190 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasPParams_578
du_HasPParams'45'EnactState_3190
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.du_HasPParams'45'EnactState_1282
-- Ledger.Dijkstra.Specification.Chain._.HasEnactState.EnactStateOf
d_EnactStateOf_3240 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_HasEnactState_1266 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1238
d_EnactStateOf_3240 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1274
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.EpochStateOf
d_EpochStateOf_3254 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_HasEpochState_4076 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_EpochState_4048
d_EpochStateOf_3254 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_EpochStateOf_4084
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.HasEnactState-EpochState
d_HasEnactState'45'EpochState_3272 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_HasEnactState_1266
d_HasEnactState'45'EpochState_3272 ~v0 ~v1
  = du_HasEnactState'45'EpochState_3272
du_HasEnactState'45'EpochState_3272 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_HasEnactState_1266
du_HasEnactState'45'EpochState_3272
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasEnactState'45'EpochState_4098
-- Ledger.Dijkstra.Specification.Chain._.HasEpochState
d_HasEpochState_3276 a0 a1 a2 a3 = ()
-- Ledger.Dijkstra.Specification.Chain._.HasEpochState-NewEpochState
d_HasEpochState'45'NewEpochState_3280 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_HasEpochState_4076
d_HasEpochState'45'NewEpochState_3280 ~v0 ~v1
  = du_HasEpochState'45'NewEpochState_3280
du_HasEpochState'45'NewEpochState_3280 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_HasEpochState_4076
du_HasEpochState'45'NewEpochState_3280
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasEpochState'45'NewEpochState_4184
-- Ledger.Dijkstra.Specification.Chain._.HasLastEpoch
d_HasLastEpoch_3286 a0 a1 a2 a3 = ()
-- Ledger.Dijkstra.Specification.Chain._.HasLastEpoch-NewEpochState
d_HasLastEpoch'45'NewEpochState_3290 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_HasLastEpoch_4166
d_HasLastEpoch'45'NewEpochState_3290 ~v0 ~v1
  = du_HasLastEpoch'45'NewEpochState_3290
du_HasLastEpoch'45'NewEpochState_3290 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_HasLastEpoch_4166
du_HasLastEpoch'45'NewEpochState_3290
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasLastEpoch'45'NewEpochState_4182
-- Ledger.Dijkstra.Specification.Chain._.HasLedgerState-EpochState
d_HasLedgerState'45'EpochState_3292 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_HasLedgerState_3854
d_HasLedgerState'45'EpochState_3292 ~v0 ~v1
  = du_HasLedgerState'45'EpochState_3292
du_HasLedgerState'45'EpochState_3292 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_HasLedgerState_3854
du_HasLedgerState'45'EpochState_3292
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasLedgerState'45'EpochState_4094
-- Ledger.Dijkstra.Specification.Chain._.HasNewEpochState
d_HasNewEpochState_3296 a0 a1 a2 a3 = ()
-- Ledger.Dijkstra.Specification.Chain._.LastEpochOf
d_LastEpochOf_3320 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_HasLastEpoch_4166 ->
  AgdaAny -> AgdaAny
d_LastEpochOf_3320 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_LastEpochOf_4174
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.NewEpochState
d_NewEpochState_3328 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Chain._.NewEpochStateOf
d_NewEpochStateOf_3332 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_HasNewEpochState_4146 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4114
d_NewEpochStateOf_3332 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_NewEpochStateOf_4154
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.HasEpochState.EpochStateOf
d_EpochStateOf_3412 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_HasEpochState_4076 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_EpochState_4048
d_EpochStateOf_3412 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_EpochStateOf_4084
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.HasLastEpoch.LastEpochOf
d_LastEpochOf_3416 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_HasLastEpoch_4166 ->
  AgdaAny -> AgdaAny
d_LastEpochOf_3416 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_LastEpochOf_4174
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.HasNewEpochState.NewEpochStateOf
d_NewEpochStateOf_3420 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_HasNewEpochState_4146 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4114
d_NewEpochStateOf_3420 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_NewEpochStateOf_4154
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.NewEpochState.bcur
d_bcur_3424 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4114 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_bcur_3424 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_bcur_4132
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.NewEpochState.bprev
d_bprev_3426 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4114 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_bprev_3426 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_bprev_4130
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.NewEpochState.epochState
d_epochState_3428 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4114 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_EpochState_4048
d_epochState_3428 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4134
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.NewEpochState.lastEpoch
d_lastEpoch_3430 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4114 ->
  AgdaAny
d_lastEpoch_3430 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_lastEpoch_4128
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.NewEpochState.pd
d_pd_3432 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4114 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pd_3432 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_pd_4138 (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.NewEpochState.ru
d_ru_3434 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4114 ->
  Maybe
    MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_RewardUpdate_3780
d_ru_3434 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ru_4136 (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.HasCertState-LedgerState
d_HasCertState'45'LedgerState_3664 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasCertState_1748
d_HasCertState'45'LedgerState_3664 ~v0 ~v1
  = du_HasCertState'45'LedgerState_3664
du_HasCertState'45'LedgerState_3664 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasCertState_1748
du_HasCertState'45'LedgerState_3664
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasCertState'45'LedgerState_3876
-- Ledger.Dijkstra.Specification.Chain._.HasLedgerState
d_HasLedgerState_3684 a0 a1 a2 a3 = ()
-- Ledger.Dijkstra.Specification.Chain._.HasUTxO-LedgerState
d_HasUTxO'45'LedgerState_3698 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasUTxO_3694
d_HasUTxO'45'LedgerState_3698 ~v0 ~v1
  = du_HasUTxO'45'LedgerState_3698
du_HasUTxO'45'LedgerState_3698 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasUTxO_3694
du_HasUTxO'45'LedgerState_3698
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasUTxO'45'LedgerState_3872
-- Ledger.Dijkstra.Specification.Chain._.HasUTxOState-LedgerState
d_HasUTxOState'45'LedgerState_3702 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_HasUTxOState_3220
d_HasUTxOState'45'LedgerState_3702 ~v0 ~v1
  = du_HasUTxOState'45'LedgerState_3702
du_HasUTxOState'45'LedgerState_3702 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_HasUTxOState_3220
du_HasUTxOState'45'LedgerState_3702
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasUTxOState'45'LedgerState_3870
-- Ledger.Dijkstra.Specification.Chain._.LedgerState
d_LedgerState_3714 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Chain._.LedgerStateOf
d_LedgerStateOf_3718 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_HasLedgerState_3854 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3834
d_LedgerStateOf_3718 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_LedgerStateOf_3862
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.HasLedgerState.LedgerStateOf
d_LedgerStateOf_3752 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_HasLedgerState_3854 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3834
d_LedgerStateOf_3752 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_LedgerStateOf_3862
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.LedgerState.certState
d_certState_3768 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3834 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1420
d_certState_3768 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_certState_3846
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.LedgerState.govSt
d_govSt_3770 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3834 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_3770 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_govSt_3844
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.LedgerState.utxoSt
d_utxoSt_3772 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3834 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3200
d_utxoSt_3772 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_utxoSt_3842
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._._⊢_⇀⦇_,TICK⦈_
d__'8866'_'8640''10631'_'44'TICK'10632'__3970 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Dijkstra.Specification.Chain._.HasUTxOState
d_HasUTxOState_4068 a0 a1 a2 a3 = ()
-- Ledger.Dijkstra.Specification.Chain._.UTxOStateOf
d_UTxOStateOf_4104 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_HasUTxOState_3220 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3200
d_UTxOStateOf_4104 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_UTxOStateOf_3228
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.HasUTxOState.UTxOStateOf
d_UTxOStateOf_4194 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_HasUTxOState_3220 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3200
d_UTxOStateOf_4194 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_UTxOStateOf_3228
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain.ChainState
d_ChainState_4244 a0 a1 = ()
newtype T_ChainState_4244
  = C_constructor_4250 MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4114
-- Ledger.Dijkstra.Specification.Chain.ChainState.newEpochState
d_newEpochState_4248 ::
  T_ChainState_4244 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4114
d_newEpochState_4248 v0
  = case coe v0 of
      C_constructor_4250 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Chain.HasNewEpochState-ChainState
d_HasNewEpochState'45'ChainState_4252 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_HasNewEpochState_4146
d_HasNewEpochState'45'ChainState_4252 ~v0 ~v1
  = du_HasNewEpochState'45'ChainState_4252
du_HasNewEpochState'45'ChainState_4252 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_HasNewEpochState_4146
du_HasNewEpochState'45'ChainState_4252
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.C_constructor_4156
      (coe (\ v0 -> d_newEpochState_4248 (coe v0)))
-- Ledger.Dijkstra.Specification.Chain.HasLastEpoch-ChainState
d_HasLastEpoch'45'ChainState_4254 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_HasLastEpoch_4166
d_HasLastEpoch'45'ChainState_4254 ~v0 ~v1
  = du_HasLastEpoch'45'ChainState_4254
du_HasLastEpoch'45'ChainState_4254 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_HasLastEpoch_4166
du_HasLastEpoch'45'ChainState_4254
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.C_constructor_4176
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_LastEpochOf_4174
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasLastEpoch'45'NewEpochState_4182)
              (d_newEpochState_4248 (coe v0))))
-- Ledger.Dijkstra.Specification.Chain.HasEpochState-ChainState
d_HasEpochState'45'ChainState_4256 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_HasEpochState_4076
d_HasEpochState'45'ChainState_4256 ~v0 ~v1
  = du_HasEpochState'45'ChainState_4256
du_HasEpochState'45'ChainState_4256 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_HasEpochState_4076
du_HasEpochState'45'ChainState_4256
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.C_constructor_4086
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_EpochStateOf_4084
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasEpochState'45'NewEpochState_4184)
              (d_newEpochState_4248 (coe v0))))
-- Ledger.Dijkstra.Specification.Chain.HasEnactState-ChainState
d_HasEnactState'45'ChainState_4258 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_HasEnactState_1266
d_HasEnactState'45'ChainState_4258 ~v0 ~v1
  = du_HasEnactState'45'ChainState_4258
du_HasEnactState'45'ChainState_4258 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_HasEnactState_1266
du_HasEnactState'45'ChainState_4258
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.C_constructor_1276
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1274
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasEnactState'45'EpochState_4098)
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_EpochStateOf_4084
                 (coe
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasEpochState'45'NewEpochState_4184)
                 (d_newEpochState_4248 (coe v0)))))
-- Ledger.Dijkstra.Specification.Chain.HasLedgerState-ChainState
d_HasLedgerState'45'ChainState_4260 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_HasLedgerState_3854
d_HasLedgerState'45'ChainState_4260 ~v0 ~v1
  = du_HasLedgerState'45'ChainState_4260
du_HasLedgerState'45'ChainState_4260 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_HasLedgerState_3854
du_HasLedgerState'45'ChainState_4260
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.C_constructor_3864
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_LedgerStateOf_3862
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasLedgerState'45'EpochState_4094)
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_EpochStateOf_4084
                 (coe
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasEpochState'45'NewEpochState_4184)
                 (d_newEpochState_4248 (coe v0)))))
-- Ledger.Dijkstra.Specification.Chain.HasUTxOState-ChainState
d_HasUTxOState'45'ChainState_4262 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_HasUTxOState_3220
d_HasUTxOState'45'ChainState_4262 ~v0 ~v1
  = du_HasUTxOState'45'ChainState_4262
du_HasUTxOState'45'ChainState_4262 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_HasUTxOState_3220
du_HasUTxOState'45'ChainState_4262
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.C_constructor_3230
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_UTxOStateOf_3228
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasUTxOState'45'LedgerState_3870)
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_LedgerStateOf_3862
                 (coe
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasLedgerState'45'EpochState_4094)
                 (coe
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_EpochStateOf_4084
                    (coe
                       MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasEpochState'45'NewEpochState_4184)
                    (d_newEpochState_4248 (coe v0))))))
-- Ledger.Dijkstra.Specification.Chain.HasCertState-ChainState
d_HasCertState'45'ChainState_4264 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasCertState_1748
d_HasCertState'45'ChainState_4264 ~v0 ~v1
  = du_HasCertState'45'ChainState_4264
du_HasCertState'45'ChainState_4264 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasCertState_1748
du_HasCertState'45'ChainState_4264
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.C_constructor_1758
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_CertStateOf_1756
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasCertState'45'LedgerState_3876)
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_LedgerStateOf_3862
                 (coe
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasLedgerState'45'EpochState_4094)
                 (coe
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_EpochStateOf_4084
                    (coe
                       MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasEpochState'45'NewEpochState_4184)
                    (d_newEpochState_4248 (coe v0))))))
-- Ledger.Dijkstra.Specification.Chain.HasRewards-ChainState
d_HasRewards'45'ChainState_4266 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasRewards_1628
d_HasRewards'45'ChainState_4266 ~v0 ~v1
  = du_HasRewards'45'ChainState_4266
du_HasRewards'45'ChainState_4266 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasRewards_1628
du_HasRewards'45'ChainState_4266
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
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasCertState'45'LedgerState_3876)
                 (coe
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_LedgerStateOf_3862
                    (coe
                       MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasLedgerState'45'EpochState_4094)
                    (coe
                       MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_EpochStateOf_4084
                       (coe
                          MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasEpochState'45'NewEpochState_4184)
                       (d_newEpochState_4248 (coe v0)))))))
-- Ledger.Dijkstra.Specification.Chain.HasPParams-ChainState
d_HasPParams'45'ChainState_4268 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasPParams_578
d_HasPParams'45'ChainState_4268 ~v0 ~v1
  = du_HasPParams'45'ChainState_4268
du_HasPParams'45'ChainState_4268 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasPParams_578
du_HasPParams'45'ChainState_4268
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
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasEnactState'45'EpochState_4098)
                 (coe
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_EpochStateOf_4084
                    (coe
                       MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasEpochState'45'NewEpochState_4184)
                    (d_newEpochState_4248 (coe v0))))))
-- Ledger.Dijkstra.Specification.Chain.totalRefScriptsSize
d_totalRefScriptsSize_4270 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3834 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3712] ->
  Integer
d_totalRefScriptsSize_4270 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.Nat.ListAction.d_sum_6
      (coe
         MAlonzo.Code.Class.Functor.Core.du_fmap_22
         MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
         () erased
         (\ v4 ->
            coe
              MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.du_refScriptsSize_3402
              (coe v0) (coe v1) (coe v4)
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_UTxOOf_3702
                 (coe
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasUTxO'45'LedgerState_3872)
                 v2))
         v3)
-- Ledger.Dijkstra.Specification.Chain._⊢_⇀⦇_,CHAIN⦈_
d__'8866'_'8640''10631'_'44'CHAIN'10632'__4280 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'CHAIN'10632'__4280
  = C_CHAIN_4370 MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4114
                 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Dijkstra.Specification.Chain._.newEpochState
d_newEpochState_4292 ::
  T_ChainState_4244 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4114
d_newEpochState_4292 v0 = coe d_newEpochState_4248 (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.bheader
d_bheader_4300 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  T_GeneralizeTel_23293 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3002 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4114 ->
  T_ChainState_4244 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_BHeader_2990
d_bheader_4300 ~v0 ~v1 ~v2 v3 ~v4 ~v5 = du_bheader_4300 v3
du_bheader_4300 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3002 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_BHeader_2990
du_bheader_4300 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bheader_3016
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.ts
d_ts_4302 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  T_GeneralizeTel_23293 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3002 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4114 ->
  T_ChainState_4244 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3712]
d_ts_4302 ~v0 ~v1 ~v2 v3 ~v4 ~v5 = du_ts_4302 v3
du_ts_4302 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3002 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3712]
du_ts_4302 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_ts_3018
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.bhbody
d_bhbody_4310 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  T_GeneralizeTel_23293 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3002 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4114 ->
  T_ChainState_4244 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_BHBody_2966
d_bhbody_4310 ~v0 ~v1 ~v2 v3 ~v4 ~v5 = du_bhbody_4310 v3
du_bhbody_4310 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3002 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_BHBody_2966
du_bhbody_4310 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bhbody_2996
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bheader_3016
         (coe v0))
-- Ledger.Dijkstra.Specification.Chain._.slot
d_slot_4324 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  T_GeneralizeTel_23293 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3002 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4114 ->
  T_ChainState_4244 -> AgdaAny
d_slot_4324 ~v0 ~v1 ~v2 v3 ~v4 ~v5 = du_slot_4324 v3
du_slot_4324 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3002 ->
  AgdaAny
du_slot_4324 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_slot_2982
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bhbody_2996
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bheader_3016
            (coe v0)))
-- Ledger.Dijkstra.Specification.Chain._.bcur
d_bcur_4328 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  T_GeneralizeTel_23293 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3002 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4114 ->
  T_ChainState_4244 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_bcur_4328 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_bcur_4328 v4
du_bcur_4328 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4114 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_bcur_4328 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_bcur_4132
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.epochState
d_epochState_4332 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  T_GeneralizeTel_23293 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3002 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4114 ->
  T_ChainState_4244 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_EpochState_4048
d_epochState_4332 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_epochState_4332 v4
du_epochState_4332 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4114 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_EpochState_4048
du_epochState_4332 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4134
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.acnt
d_acnt_4342 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  T_GeneralizeTel_23293 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3002 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4114 ->
  T_ChainState_4244 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_194
d_acnt_4342 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_acnt_4342 v4
du_acnt_4342 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4114 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_194
du_acnt_4342 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4060
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4134
         (coe v0))
-- Ledger.Dijkstra.Specification.Chain._.es
d_es_4344 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  T_GeneralizeTel_23293 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3002 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4114 ->
  T_ChainState_4244 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1238
d_es_4344 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_es_4344 v4
du_es_4344 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4114 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1238
du_es_4344 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_es_4066
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4134
         (coe v0))
-- Ledger.Dijkstra.Specification.Chain._.ls
d_ls_4348 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  T_GeneralizeTel_23293 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3002 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4114 ->
  T_ChainState_4244 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3834
d_ls_4348 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_ls_4348 v4
du_ls_4348 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4114 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3834
du_ls_4348 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4064
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4134
         (coe v0))
-- Ledger.Dijkstra.Specification.Chain._.pparams
d_pparams_4358 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  T_GeneralizeTel_23293 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3002 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4114 ->
  T_ChainState_4244 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pparams_4358 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_pparams_4358 v4
du_pparams_4358 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4114 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_pparams_4358 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_pparams_1256
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_es_4066
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4134
            (coe v0)))
-- Ledger.Dijkstra.Specification.Chain._.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_4366 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  T_GeneralizeTel_23293 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3002 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4114 ->
  T_ChainState_4244 -> Integer
d_maxRefScriptSizePerBlock_4366 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_maxRefScriptSizePerBlock_4366 v5
du_maxRefScriptSizePerBlock_4366 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4114 ->
  Integer
du_maxRefScriptSizePerBlock_4366 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxRefScriptSizePerBlock_424
      (coe
         MAlonzo.Code.Ledger.Prelude.du_'8739'_'8739'_70
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasCast'45'HashProtected_1258)
         (MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_pparams_1256
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_es_4066
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4134
                  (coe v0)))))
-- Ledger.Dijkstra.Specification.Chain..generalizedField-ls'
d_'46'generalizedField'45'ls''_23291 ::
  T_GeneralizeTel_23293 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3834
d_'46'generalizedField'45'ls''_23291 v0
  = case coe v0 of
      C_mkGeneralizeTel_23295 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Chain.GeneralizeTel
d_GeneralizeTel_23293 a0 a1 = ()
newtype T_GeneralizeTel_23293
  = C_mkGeneralizeTel_23295 MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3834
