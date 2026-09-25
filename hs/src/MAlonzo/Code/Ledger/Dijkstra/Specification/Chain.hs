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
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasCast'45'HashProtected_1338
-- _.HasPParams
d_HasPParams_478 a0 a1 a2 = ()
-- _.PParamsOf
d_PParamsOf_740 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasPParams_632 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312
d_PParamsOf_740 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_PParamsOf_640
      (coe v0)
-- _.TopLevelTx
d_TopLevelTx_912 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_TopLevelTx_912 = erased
-- _.HasPParams.PParamsOf
d_PParamsOf_1794 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasPParams_632 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312
d_PParamsOf_1794 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_PParamsOf_640
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._._⊢_⇀⦇_,BBODY⦈_
d__'8866'_'8640''10631'_'44'BBODY'10632'__2662 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Dijkstra.Specification.Chain._.BBodyEnv
d_BBodyEnv_2666 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3244 ->
  ()
d_BBodyEnv_2666 = erased
-- Ledger.Dijkstra.Specification.Chain._.BBodyState
d_BBodyState_2668 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3244 ->
  ()
d_BBodyState_2668 = erased
-- Ledger.Dijkstra.Specification.Chain._.BHBody
d_BHBody_2670 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Chain._.BHeader
d_BHeader_2674 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Chain._.Block
d_Block_2678 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Chain._.incrBlocks
d_incrBlocks_2682 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3244 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_incrBlocks_2682 v0 ~v1 = du_incrBlocks_2682 v0
du_incrBlocks_2682 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_incrBlocks_2682 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.du_incrBlocks_3072
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.BHBody.bhash
d_bhash_2690 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_BHBody_3004 ->
  AgdaAny
d_bhash_2690 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bhash_3022
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.BHBody.bsize
d_bsize_2692 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_BHBody_3004 ->
  Integer
d_bsize_2692 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bsize_3018
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.BHBody.bvkcold
d_bvkcold_2694 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_BHBody_3004 ->
  AgdaAny
d_bvkcold_2694 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bvkcold_3016
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.BHBody.hBbsize
d_hBbsize_2696 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_BHBody_3004 ->
  Integer
d_hBbsize_2696 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_hBbsize_3024
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.BHBody.slot
d_slot_2698 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_BHBody_3004 ->
  AgdaAny
d_slot_2698 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_slot_3020
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.BHeader.bhbody
d_bhbody_2702 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_BHeader_3028 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_BHBody_3004
d_bhbody_2702 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bhbody_3034
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.BHeader.bhsig
d_bhsig_2704 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_BHeader_3028 ->
  AgdaAny
d_bhsig_2704 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bhsig_3036
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.Block.bBodyHash
d_bBodyHash_2708 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3040 ->
  AgdaAny
d_bBodyHash_2708 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bBodyHash_3060
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.Block.bBodySize
d_bBodySize_2710 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3040 ->
  Integer
d_bBodySize_2710 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bBodySize_3058
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.Block.bheader
d_bheader_2712 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3040 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_BHeader_3028
d_bheader_2712 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bheader_3054
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.Block.ts
d_ts_2714 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3040 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3830]
d_ts_2714 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_ts_3056
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.Block.≡-bBodyHash
d_'8801''45'bBodyHash_2716 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3040 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8801''45'bBodyHash_2716 = erased
-- Ledger.Dijkstra.Specification.Chain._.Block.≡-bBodySize
d_'8801''45'bBodySize_2718 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3040 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8801''45'bBodySize_2718 = erased
-- Ledger.Dijkstra.Specification.Chain._.CertStateOf
d_CertStateOf_2750 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasCertState_1898 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1570
d_CertStateOf_2750 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_CertStateOf_1906
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.HasCertState
d_HasCertState_2826 a0 a1 a2 a3 = ()
-- Ledger.Dijkstra.Specification.Chain._.HasRewards
d_HasRewards_2904 a0 a1 a2 a3 = ()
-- Ledger.Dijkstra.Specification.Chain._.HasRewards-CertState
d_HasRewards'45'CertState_2908 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3244 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasRewards_1778
d_HasRewards'45'CertState_2908 ~v0 ~v1
  = du_HasRewards'45'CertState_2908
du_HasRewards'45'CertState_2908 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasRewards_1778
du_HasRewards'45'CertState_2908
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasRewards'45'CertState_1990
-- Ledger.Dijkstra.Specification.Chain._.RewardsOf
d_RewardsOf_2976 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasRewards_1778 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RewardsOf_2976 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_RewardsOf_1786
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.HasCertState.CertStateOf
d_CertStateOf_3134 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasCertState_1898 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1570
d_CertStateOf_3134 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_CertStateOf_1906
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.HasRewards.RewardsOf
d_RewardsOf_3174 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasRewards_1778 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RewardsOf_3174 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_RewardsOf_1786
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.EnactStateOf
d_EnactStateOf_3262 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_HasEnactState_1346 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1318
d_EnactStateOf_3262 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1354
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.HasEnactState
d_HasEnactState_3266 a0 a1 a2 a3 = ()
-- Ledger.Dijkstra.Specification.Chain._.HasPParams-EnactState
d_HasPParams'45'EnactState_3270 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3244 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasPParams_632
d_HasPParams'45'EnactState_3270 ~v0 ~v1
  = du_HasPParams'45'EnactState_3270
du_HasPParams'45'EnactState_3270 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasPParams_632
du_HasPParams'45'EnactState_3270
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.du_HasPParams'45'EnactState_1362
-- Ledger.Dijkstra.Specification.Chain._.HasEnactState.EnactStateOf
d_EnactStateOf_3320 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_HasEnactState_1346 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1318
d_EnactStateOf_3320 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1354
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.EpochStateOf
d_EpochStateOf_3334 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_HasEpochState_4156 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_EpochState_4128
d_EpochStateOf_3334 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_EpochStateOf_4164
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.HasEnactState-EpochState
d_HasEnactState'45'EpochState_3352 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3244 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_HasEnactState_1346
d_HasEnactState'45'EpochState_3352 ~v0 ~v1
  = du_HasEnactState'45'EpochState_3352
du_HasEnactState'45'EpochState_3352 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_HasEnactState_1346
du_HasEnactState'45'EpochState_3352
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasEnactState'45'EpochState_4178
-- Ledger.Dijkstra.Specification.Chain._.HasEpochState
d_HasEpochState_3356 a0 a1 a2 a3 = ()
-- Ledger.Dijkstra.Specification.Chain._.HasEpochState-NewEpochState
d_HasEpochState'45'NewEpochState_3360 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3244 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_HasEpochState_4156
d_HasEpochState'45'NewEpochState_3360 ~v0 ~v1
  = du_HasEpochState'45'NewEpochState_3360
du_HasEpochState'45'NewEpochState_3360 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_HasEpochState_4156
du_HasEpochState'45'NewEpochState_3360
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasEpochState'45'NewEpochState_4264
-- Ledger.Dijkstra.Specification.Chain._.HasLastEpoch
d_HasLastEpoch_3366 a0 a1 a2 a3 = ()
-- Ledger.Dijkstra.Specification.Chain._.HasLastEpoch-NewEpochState
d_HasLastEpoch'45'NewEpochState_3370 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3244 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_HasLastEpoch_4246
d_HasLastEpoch'45'NewEpochState_3370 ~v0 ~v1
  = du_HasLastEpoch'45'NewEpochState_3370
du_HasLastEpoch'45'NewEpochState_3370 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_HasLastEpoch_4246
du_HasLastEpoch'45'NewEpochState_3370
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasLastEpoch'45'NewEpochState_4262
-- Ledger.Dijkstra.Specification.Chain._.HasLedgerState-EpochState
d_HasLedgerState'45'EpochState_3372 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3244 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_HasLedgerState_3934
d_HasLedgerState'45'EpochState_3372 ~v0 ~v1
  = du_HasLedgerState'45'EpochState_3372
du_HasLedgerState'45'EpochState_3372 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_HasLedgerState_3934
du_HasLedgerState'45'EpochState_3372
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasLedgerState'45'EpochState_4174
-- Ledger.Dijkstra.Specification.Chain._.HasNewEpochState
d_HasNewEpochState_3376 a0 a1 a2 a3 = ()
-- Ledger.Dijkstra.Specification.Chain._.LastEpochOf
d_LastEpochOf_3400 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_HasLastEpoch_4246 ->
  AgdaAny -> AgdaAny
d_LastEpochOf_3400 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_LastEpochOf_4254
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.NewEpochState
d_NewEpochState_3408 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Chain._.NewEpochStateOf
d_NewEpochStateOf_3412 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_HasNewEpochState_4226 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4194
d_NewEpochStateOf_3412 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_NewEpochStateOf_4234
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.HasEpochState.EpochStateOf
d_EpochStateOf_3494 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_HasEpochState_4156 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_EpochState_4128
d_EpochStateOf_3494 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_EpochStateOf_4164
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.HasLastEpoch.LastEpochOf
d_LastEpochOf_3498 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_HasLastEpoch_4246 ->
  AgdaAny -> AgdaAny
d_LastEpochOf_3498 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_LastEpochOf_4254
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.HasNewEpochState.NewEpochStateOf
d_NewEpochStateOf_3502 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_HasNewEpochState_4226 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4194
d_NewEpochStateOf_3502 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_NewEpochStateOf_4234
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.NewEpochState.bcur
d_bcur_3506 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4194 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_bcur_3506 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_bcur_4212
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.NewEpochState.bprev
d_bprev_3508 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4194 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_bprev_3508 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_bprev_4210
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.NewEpochState.epochState
d_epochState_3510 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4194 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_EpochState_4128
d_epochState_3510 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4214
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.NewEpochState.lastEpoch
d_lastEpoch_3512 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4194 ->
  AgdaAny
d_lastEpoch_3512 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_lastEpoch_4208
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.NewEpochState.pd
d_pd_3514 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4194 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pd_3514 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_pd_4218 (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.NewEpochState.ru
d_ru_3516 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4194 ->
  Maybe
    MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_RewardUpdate_3860
d_ru_3516 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ru_4216 (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.HasCertState-LedgerState
d_HasCertState'45'LedgerState_3746 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3244 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasCertState_1898
d_HasCertState'45'LedgerState_3746 ~v0 ~v1
  = du_HasCertState'45'LedgerState_3746
du_HasCertState'45'LedgerState_3746 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasCertState_1898
du_HasCertState'45'LedgerState_3746
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasCertState'45'LedgerState_3956
-- Ledger.Dijkstra.Specification.Chain._.HasLedgerState
d_HasLedgerState_3766 a0 a1 a2 a3 = ()
-- Ledger.Dijkstra.Specification.Chain._.HasUTxO-LedgerState
d_HasUTxO'45'LedgerState_3780 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3244 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasUTxO_3812
d_HasUTxO'45'LedgerState_3780 ~v0 ~v1
  = du_HasUTxO'45'LedgerState_3780
du_HasUTxO'45'LedgerState_3780 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasUTxO_3812
du_HasUTxO'45'LedgerState_3780
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasUTxO'45'LedgerState_3952
-- Ledger.Dijkstra.Specification.Chain._.HasUTxOState-LedgerState
d_HasUTxOState'45'LedgerState_3784 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3244 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_HasUTxOState_3300
d_HasUTxOState'45'LedgerState_3784 ~v0 ~v1
  = du_HasUTxOState'45'LedgerState_3784
du_HasUTxOState'45'LedgerState_3784 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_HasUTxOState_3300
du_HasUTxOState'45'LedgerState_3784
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasUTxOState'45'LedgerState_3950
-- Ledger.Dijkstra.Specification.Chain._.LedgerState
d_LedgerState_3796 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Chain._.LedgerStateOf
d_LedgerStateOf_3800 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_HasLedgerState_3934 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3914
d_LedgerStateOf_3800 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_LedgerStateOf_3942
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.HasLedgerState.LedgerStateOf
d_LedgerStateOf_3834 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_HasLedgerState_3934 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3914
d_LedgerStateOf_3834 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_LedgerStateOf_3942
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.LedgerState.certState
d_certState_3850 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3914 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1570
d_certState_3850 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_certState_3926
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.LedgerState.govSt
d_govSt_3852 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3914 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_3852 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_govSt_3924
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.LedgerState.utxoSt
d_utxoSt_3854 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3914 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3280
d_utxoSt_3854 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_utxoSt_3922
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._._⊢_⇀⦇_,TICK⦈_
d__'8866'_'8640''10631'_'44'TICK'10632'__4052 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Dijkstra.Specification.Chain._.HasUTxOState
d_HasUTxOState_4150 a0 a1 a2 a3 = ()
-- Ledger.Dijkstra.Specification.Chain._.UTxOStateOf
d_UTxOStateOf_4186 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_HasUTxOState_3300 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3280
d_UTxOStateOf_4186 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_UTxOStateOf_3308
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.HasUTxOState.UTxOStateOf
d_UTxOStateOf_4276 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_HasUTxOState_3300 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3280
d_UTxOStateOf_4276 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_UTxOStateOf_3308
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain.ChainState
d_ChainState_4326 a0 a1 = ()
newtype T_ChainState_4326
  = C_constructor_4332 MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4194
-- Ledger.Dijkstra.Specification.Chain.ChainState.newEpochState
d_newEpochState_4330 ::
  T_ChainState_4326 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4194
d_newEpochState_4330 v0
  = case coe v0 of
      C_constructor_4332 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Chain.HasNewEpochState-ChainState
d_HasNewEpochState'45'ChainState_4334 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3244 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_HasNewEpochState_4226
d_HasNewEpochState'45'ChainState_4334 ~v0 ~v1
  = du_HasNewEpochState'45'ChainState_4334
du_HasNewEpochState'45'ChainState_4334 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_HasNewEpochState_4226
du_HasNewEpochState'45'ChainState_4334
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.C_constructor_4236
      (coe (\ v0 -> d_newEpochState_4330 (coe v0)))
-- Ledger.Dijkstra.Specification.Chain.HasLastEpoch-ChainState
d_HasLastEpoch'45'ChainState_4336 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3244 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_HasLastEpoch_4246
d_HasLastEpoch'45'ChainState_4336 ~v0 ~v1
  = du_HasLastEpoch'45'ChainState_4336
du_HasLastEpoch'45'ChainState_4336 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_HasLastEpoch_4246
du_HasLastEpoch'45'ChainState_4336
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.C_constructor_4256
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_LastEpochOf_4254
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasLastEpoch'45'NewEpochState_4262)
              (d_newEpochState_4330 (coe v0))))
-- Ledger.Dijkstra.Specification.Chain.HasEpochState-ChainState
d_HasEpochState'45'ChainState_4338 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3244 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_HasEpochState_4156
d_HasEpochState'45'ChainState_4338 ~v0 ~v1
  = du_HasEpochState'45'ChainState_4338
du_HasEpochState'45'ChainState_4338 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_HasEpochState_4156
du_HasEpochState'45'ChainState_4338
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.C_constructor_4166
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_EpochStateOf_4164
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasEpochState'45'NewEpochState_4264)
              (d_newEpochState_4330 (coe v0))))
-- Ledger.Dijkstra.Specification.Chain.HasEnactState-ChainState
d_HasEnactState'45'ChainState_4340 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3244 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_HasEnactState_1346
d_HasEnactState'45'ChainState_4340 ~v0 ~v1
  = du_HasEnactState'45'ChainState_4340
du_HasEnactState'45'ChainState_4340 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_HasEnactState_1346
du_HasEnactState'45'ChainState_4340
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.C_constructor_1356
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1354
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasEnactState'45'EpochState_4178)
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_EpochStateOf_4164
                 (coe
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasEpochState'45'NewEpochState_4264)
                 (d_newEpochState_4330 (coe v0)))))
-- Ledger.Dijkstra.Specification.Chain.HasLedgerState-ChainState
d_HasLedgerState'45'ChainState_4342 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3244 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_HasLedgerState_3934
d_HasLedgerState'45'ChainState_4342 ~v0 ~v1
  = du_HasLedgerState'45'ChainState_4342
du_HasLedgerState'45'ChainState_4342 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_HasLedgerState_3934
du_HasLedgerState'45'ChainState_4342
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.C_constructor_3944
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_LedgerStateOf_3942
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasLedgerState'45'EpochState_4174)
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_EpochStateOf_4164
                 (coe
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasEpochState'45'NewEpochState_4264)
                 (d_newEpochState_4330 (coe v0)))))
-- Ledger.Dijkstra.Specification.Chain.HasUTxOState-ChainState
d_HasUTxOState'45'ChainState_4344 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3244 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_HasUTxOState_3300
d_HasUTxOState'45'ChainState_4344 ~v0 ~v1
  = du_HasUTxOState'45'ChainState_4344
du_HasUTxOState'45'ChainState_4344 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_HasUTxOState_3300
du_HasUTxOState'45'ChainState_4344
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.C_constructor_3310
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_UTxOStateOf_3308
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasUTxOState'45'LedgerState_3950)
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_LedgerStateOf_3942
                 (coe
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasLedgerState'45'EpochState_4174)
                 (coe
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_EpochStateOf_4164
                    (coe
                       MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasEpochState'45'NewEpochState_4264)
                    (d_newEpochState_4330 (coe v0))))))
-- Ledger.Dijkstra.Specification.Chain.HasCertState-ChainState
d_HasCertState'45'ChainState_4346 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3244 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasCertState_1898
d_HasCertState'45'ChainState_4346 ~v0 ~v1
  = du_HasCertState'45'ChainState_4346
du_HasCertState'45'ChainState_4346 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasCertState_1898
du_HasCertState'45'ChainState_4346
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.C_constructor_1908
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_CertStateOf_1906
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasCertState'45'LedgerState_3956)
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_LedgerStateOf_3942
                 (coe
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasLedgerState'45'EpochState_4174)
                 (coe
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_EpochStateOf_4164
                    (coe
                       MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasEpochState'45'NewEpochState_4264)
                    (d_newEpochState_4330 (coe v0))))))
-- Ledger.Dijkstra.Specification.Chain.HasRewards-ChainState
d_HasRewards'45'ChainState_4348 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3244 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasRewards_1778
d_HasRewards'45'ChainState_4348 ~v0 ~v1
  = du_HasRewards'45'ChainState_4348
du_HasRewards'45'ChainState_4348 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasRewards_1778
du_HasRewards'45'ChainState_4348
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.C_constructor_1788
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_RewardsOf_1786
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasRewards'45'CertState_1990)
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_CertStateOf_1906
                 (coe
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasCertState'45'LedgerState_3956)
                 (coe
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_LedgerStateOf_3942
                    (coe
                       MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasLedgerState'45'EpochState_4174)
                    (coe
                       MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_EpochStateOf_4164
                       (coe
                          MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasEpochState'45'NewEpochState_4264)
                       (d_newEpochState_4330 (coe v0)))))))
-- Ledger.Dijkstra.Specification.Chain.HasPParams-ChainState
d_HasPParams'45'ChainState_4350 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3244 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasPParams_632
d_HasPParams'45'ChainState_4350 ~v0 ~v1
  = du_HasPParams'45'ChainState_4350
du_HasPParams'45'ChainState_4350 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasPParams_632
du_HasPParams'45'ChainState_4350
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.C_constructor_642
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_PParamsOf_640
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.du_HasPParams'45'EnactState_1362)
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1354
                 (coe
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasEnactState'45'EpochState_4178)
                 (coe
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_EpochStateOf_4164
                    (coe
                       MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasEpochState'45'NewEpochState_4264)
                    (d_newEpochState_4330 (coe v0))))))
-- Ledger.Dijkstra.Specification.Chain.totalRefScriptsSize
d_totalRefScriptsSize_4352 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3244 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3914 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3830] ->
  Integer
d_totalRefScriptsSize_4352 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.Nat.ListAction.d_sum_6
      (coe
         MAlonzo.Code.Class.Functor.Core.du_fmap_22
         MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
         () erased
         (\ v4 ->
            coe
              MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.du_refScriptsSize_3482
              (coe v0) (coe v1) (coe v4)
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_UTxOOf_3820
                 (coe
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasUTxO'45'LedgerState_3952)
                 v2))
         v3)
-- Ledger.Dijkstra.Specification.Chain._⊢_⇀⦇_,CHAIN⦈_
d__'8866'_'8640''10631'_'44'CHAIN'10632'__4362 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'CHAIN'10632'__4362
  = C_CHAIN_4452 MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4194
                 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Dijkstra.Specification.Chain._.newEpochState
d_newEpochState_4374 ::
  T_ChainState_4326 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4194
d_newEpochState_4374 v0 = coe d_newEpochState_4330 (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.bheader
d_bheader_4382 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3244 ->
  T_GeneralizeTel_23847 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3040 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4194 ->
  T_ChainState_4326 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_BHeader_3028
d_bheader_4382 ~v0 ~v1 ~v2 v3 ~v4 ~v5 = du_bheader_4382 v3
du_bheader_4382 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3040 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_BHeader_3028
du_bheader_4382 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bheader_3054
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.ts
d_ts_4384 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3244 ->
  T_GeneralizeTel_23847 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3040 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4194 ->
  T_ChainState_4326 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3830]
d_ts_4384 ~v0 ~v1 ~v2 v3 ~v4 ~v5 = du_ts_4384 v3
du_ts_4384 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3040 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3830]
du_ts_4384 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_ts_3056
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.bhbody
d_bhbody_4392 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3244 ->
  T_GeneralizeTel_23847 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3040 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4194 ->
  T_ChainState_4326 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_BHBody_3004
d_bhbody_4392 ~v0 ~v1 ~v2 v3 ~v4 ~v5 = du_bhbody_4392 v3
du_bhbody_4392 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3040 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_BHBody_3004
du_bhbody_4392 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bhbody_3034
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bheader_3054
         (coe v0))
-- Ledger.Dijkstra.Specification.Chain._.slot
d_slot_4406 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3244 ->
  T_GeneralizeTel_23847 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3040 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4194 ->
  T_ChainState_4326 -> AgdaAny
d_slot_4406 ~v0 ~v1 ~v2 v3 ~v4 ~v5 = du_slot_4406 v3
du_slot_4406 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3040 ->
  AgdaAny
du_slot_4406 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_slot_3020
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bhbody_3034
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bheader_3054
            (coe v0)))
-- Ledger.Dijkstra.Specification.Chain._.bcur
d_bcur_4410 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3244 ->
  T_GeneralizeTel_23847 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3040 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4194 ->
  T_ChainState_4326 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_bcur_4410 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_bcur_4410 v4
du_bcur_4410 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4194 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_bcur_4410 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_bcur_4212
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.epochState
d_epochState_4414 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3244 ->
  T_GeneralizeTel_23847 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3040 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4194 ->
  T_ChainState_4326 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_EpochState_4128
d_epochState_4414 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_epochState_4414 v4
du_epochState_4414 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4194 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_EpochState_4128
du_epochState_4414 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4214
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.acnt
d_acnt_4424 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3244 ->
  T_GeneralizeTel_23847 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3040 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4194 ->
  T_ChainState_4326 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_194
d_acnt_4424 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_acnt_4424 v4
du_acnt_4424 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4194 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_194
du_acnt_4424 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4140
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4214
         (coe v0))
-- Ledger.Dijkstra.Specification.Chain._.es
d_es_4426 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3244 ->
  T_GeneralizeTel_23847 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3040 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4194 ->
  T_ChainState_4326 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1318
d_es_4426 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_es_4426 v4
du_es_4426 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4194 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1318
du_es_4426 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_es_4146
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4214
         (coe v0))
-- Ledger.Dijkstra.Specification.Chain._.ls
d_ls_4430 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3244 ->
  T_GeneralizeTel_23847 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3040 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4194 ->
  T_ChainState_4326 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3914
d_ls_4430 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_ls_4430 v4
du_ls_4430 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4194 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3914
du_ls_4430 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4144
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4214
         (coe v0))
-- Ledger.Dijkstra.Specification.Chain._.pparams
d_pparams_4440 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3244 ->
  T_GeneralizeTel_23847 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3040 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4194 ->
  T_ChainState_4326 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pparams_4440 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_pparams_4440 v4
du_pparams_4440 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4194 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_pparams_4440 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_pparams_1336
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_es_4146
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4214
            (coe v0)))
-- Ledger.Dijkstra.Specification.Chain._.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_4448 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3244 ->
  T_GeneralizeTel_23847 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3040 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4194 ->
  T_ChainState_4326 -> Integer
d_maxRefScriptSizePerBlock_4448 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_maxRefScriptSizePerBlock_4448 v5
du_maxRefScriptSizePerBlock_4448 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4194 ->
  Integer
du_maxRefScriptSizePerBlock_4448 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxRefScriptSizePerBlock_460
      (coe
         MAlonzo.Code.Ledger.Prelude.du_'8739'_'8739'_70
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasCast'45'HashProtected_1338)
         (MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_pparams_1336
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_es_4146
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4214
                  (coe v0)))))
-- Ledger.Dijkstra.Specification.Chain..generalizedField-ls'
d_'46'generalizedField'45'ls''_23845 ::
  T_GeneralizeTel_23847 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3914
d_'46'generalizedField'45'ls''_23845 v0
  = case coe v0 of
      C_mkGeneralizeTel_23849 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Chain.GeneralizeTel
d_GeneralizeTel_23847 a0 a1 = ()
newtype T_GeneralizeTel_23847
  = C_mkGeneralizeTel_23849 MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3914
