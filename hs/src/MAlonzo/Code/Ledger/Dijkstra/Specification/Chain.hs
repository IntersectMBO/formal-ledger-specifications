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
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Agda.Builtin.Reflection
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Class.HasAdd.Core
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.List.Relation.Unary.All
import qualified MAlonzo.Code.Data.List.Relation.Unary.Any
import qualified MAlonzo.Code.Data.Maybe.Base
import qualified MAlonzo.Code.Data.Product.Nary.NonDependent
import qualified MAlonzo.Code.Data.Rational.Base
import qualified MAlonzo.Code.Data.Refinement.Base
import qualified MAlonzo.Code.Ledger.Core.Specification.Epoch
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Certs
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Crypto
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Enact
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Leios
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.Types
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.Validity
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.PParams
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.RewardUpdate
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo
import qualified MAlonzo.Code.Ledger.Prelude
import qualified MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base
import qualified MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive

-- _.HasPParams
d_HasPParams_482 a0 a1 a2 = ()
-- _.PParamsOf
d_PParamsOf_748 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasPParams_746 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_320
d_PParamsOf_748 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_PParamsOf_754
      (coe v0)
-- _.Slot
d_Slot_884 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_Slot_884 = erased
-- _.TopLevelTx
d_TopLevelTx_922 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_TopLevelTx_922 = erased
-- _.addSlot
d_addSlot_1008 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addSlot_1008 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_addSlot_282
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1432
         (coe v0))
-- _.epoch
d_epoch_1044 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  AgdaAny -> AgdaAny
d_epoch_1044 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_epoch_92
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1432
         (coe v0))
-- _.HasPParams.PParamsOf
d_PParamsOf_1784 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasPParams_746 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_320
d_PParamsOf_1784 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_PParamsOf_754
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._._⊢_⇀⦇_,BBODY⦈_
d__'8866'_'8640''10631'_'44'BBODY'10632'__2668 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Dijkstra.Specification.Chain._.Announcement
d_Announcement_2670 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  ()
d_Announcement_2670 = erased
-- Ledger.Dijkstra.Specification.Chain._.BBodyEnv
d_BBodyEnv_2674 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  ()
d_BBodyEnv_2674 = erased
-- Ledger.Dijkstra.Specification.Chain._.BBodyState
d_BBodyState_2676 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  ()
d_BBodyState_2676 = erased
-- Ledger.Dijkstra.Specification.Chain._.BHBody
d_BHBody_2678 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Chain._.BHeader
d_BHeader_2682 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Chain._.Block
d_Block_2686 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Chain._.ValidLeiosBlock
d_ValidLeiosBlock_2690 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3130 ->
  ()
d_ValidLeiosBlock_2690 = erased
-- Ledger.Dijkstra.Specification.Chain._.incrBlocks
d_incrBlocks_2692 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_incrBlocks_2692 v0 ~v1 = du_incrBlocks_2692 v0
du_incrBlocks_2692 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_incrBlocks_2692 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.du_incrBlocks_3170
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.BHBody.announcedEB
d_announcedEB_2700 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_BHBody_3086 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_announcedEB_2700 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_announcedEB_3112
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.BHBody.bhash
d_bhash_2702 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_BHBody_3086 ->
  AgdaAny
d_bhash_2702 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bhash_3108
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.BHBody.bsize
d_bsize_2704 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_BHBody_3086 ->
  Integer
d_bsize_2704 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bsize_3104
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.BHBody.bvkcold
d_bvkcold_2706 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_BHBody_3086 ->
  AgdaAny
d_bvkcold_2706 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bvkcold_3102
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.BHBody.certifiesEB
d_certifiesEB_2708 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_BHBody_3086 ->
  Bool
d_certifiesEB_2708 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_certifiesEB_3114
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.BHBody.hBbsize
d_hBbsize_2710 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_BHBody_3086 ->
  Integer
d_hBbsize_2710 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_hBbsize_3110
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.BHBody.slot
d_slot_2712 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_BHBody_3086 ->
  AgdaAny
d_slot_2712 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_slot_3106
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.BHeader.bhbody
d_bhbody_2716 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_BHeader_3118 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_BHBody_3086
d_bhbody_2716 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bhbody_3124
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.BHeader.bhsig
d_bhsig_2718 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_BHeader_3118 ->
  AgdaAny
d_bhsig_2718 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bhsig_3126
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.Block.bBodyHash
d_bBodyHash_2722 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3130 ->
  AgdaAny
d_bBodyHash_2722 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bBodyHash_3158
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.Block.bBodySize
d_bBodySize_2724 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3130 ->
  Integer
d_bBodySize_2724 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bBodySize_3156
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.Block.bHeaderHash
d_bHeaderHash_2726 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3130 ->
  AgdaAny
d_bHeaderHash_2726 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bHeaderHash_3150
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.Block.bheader
d_bheader_2728 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3130 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_BHeader_3118
d_bheader_2728 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bheader_3148
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.Block.ebCert
d_ebCert_2730 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3130 ->
  Maybe
    MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_EBCert_1676
d_ebCert_2730 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_ebCert_3154
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.Block.ts
d_ts_2732 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3130 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3878]
d_ts_2732 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_ts_3152
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.Block.≡-bBodyHash
d_'8801''45'bBodyHash_2734 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3130 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8801''45'bBodyHash_2734 = erased
-- Ledger.Dijkstra.Specification.Chain._.Block.≡-bBodySize
d_'8801''45'bBodySize_2736 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3130 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8801''45'bBodySize_2736 = erased
-- Ledger.Dijkstra.Specification.Chain._.CertStateOf
d_CertStateOf_2768 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasCertState_1942 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1614
d_CertStateOf_2768 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_CertStateOf_1950
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.HasCertState
d_HasCertState_2844 a0 a1 a2 a3 = ()
-- Ledger.Dijkstra.Specification.Chain._.HasRewards
d_HasRewards_2922 a0 a1 a2 a3 = ()
-- Ledger.Dijkstra.Specification.Chain._.HasRewards-CertState
d_HasRewards'45'CertState_2926 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasRewards_1822
d_HasRewards'45'CertState_2926 ~v0 ~v1
  = du_HasRewards'45'CertState_2926
du_HasRewards'45'CertState_2926 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasRewards_1822
du_HasRewards'45'CertState_2926
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasRewards'45'CertState_2034
-- Ledger.Dijkstra.Specification.Chain._.RewardsOf
d_RewardsOf_2994 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasRewards_1822 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RewardsOf_2994 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_RewardsOf_1830
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.HasCertState.CertStateOf
d_CertStateOf_3156 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasCertState_1942 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1614
d_CertStateOf_3156 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_CertStateOf_1950
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.HasRewards.RewardsOf
d_RewardsOf_3196 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasRewards_1822 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RewardsOf_3196 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_RewardsOf_1830
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.EnactStateOf
d_EnactStateOf_3284 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_HasEnactState_1360 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1332
d_EnactStateOf_3284 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1368
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.HasEnactState
d_HasEnactState_3288 a0 a1 a2 a3 = ()
-- Ledger.Dijkstra.Specification.Chain._.HasPParams-EnactState
d_HasPParams'45'EnactState_3292 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasPParams_746
d_HasPParams'45'EnactState_3292 ~v0 ~v1
  = du_HasPParams'45'EnactState_3292
du_HasPParams'45'EnactState_3292 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasPParams_746
du_HasPParams'45'EnactState_3292
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.du_HasPParams'45'EnactState_1376
-- Ledger.Dijkstra.Specification.Chain._.HasEnactState.EnactStateOf
d_EnactStateOf_3342 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_HasEnactState_1360 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1332
d_EnactStateOf_3342 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1368
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.EpochStateOf
d_EpochStateOf_3356 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_HasEpochState_4250 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_EpochState_4222
d_EpochStateOf_3356 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_EpochStateOf_4258
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.HasEnactState-EpochState
d_HasEnactState'45'EpochState_3374 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_HasEnactState_1360
d_HasEnactState'45'EpochState_3374 ~v0 ~v1
  = du_HasEnactState'45'EpochState_3374
du_HasEnactState'45'EpochState_3374 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_HasEnactState_1360
du_HasEnactState'45'EpochState_3374
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasEnactState'45'EpochState_4272
-- Ledger.Dijkstra.Specification.Chain._.HasEpochState
d_HasEpochState_3378 a0 a1 a2 a3 = ()
-- Ledger.Dijkstra.Specification.Chain._.HasEpochState-NewEpochState
d_HasEpochState'45'NewEpochState_3382 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_HasEpochState_4250
d_HasEpochState'45'NewEpochState_3382 ~v0 ~v1
  = du_HasEpochState'45'NewEpochState_3382
du_HasEpochState'45'NewEpochState_3382 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_HasEpochState_4250
du_HasEpochState'45'NewEpochState_3382
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasEpochState'45'NewEpochState_4362
-- Ledger.Dijkstra.Specification.Chain._.HasLastEpoch
d_HasLastEpoch_3388 a0 a1 a2 a3 = ()
-- Ledger.Dijkstra.Specification.Chain._.HasLastEpoch-NewEpochState
d_HasLastEpoch'45'NewEpochState_3392 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_HasLastEpoch_4344
d_HasLastEpoch'45'NewEpochState_3392 ~v0 ~v1
  = du_HasLastEpoch'45'NewEpochState_3392
du_HasLastEpoch'45'NewEpochState_3392 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_HasLastEpoch_4344
du_HasLastEpoch'45'NewEpochState_3392
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasLastEpoch'45'NewEpochState_4360
-- Ledger.Dijkstra.Specification.Chain._.HasLedgerState-EpochState
d_HasLedgerState'45'EpochState_3394 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_HasLedgerState_3962
d_HasLedgerState'45'EpochState_3394 ~v0 ~v1
  = du_HasLedgerState'45'EpochState_3394
du_HasLedgerState'45'EpochState_3394 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_HasLedgerState_3962
du_HasLedgerState'45'EpochState_3394
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasLedgerState'45'EpochState_4268
-- Ledger.Dijkstra.Specification.Chain._.HasNewEpochState
d_HasNewEpochState_3398 a0 a1 a2 a3 = ()
-- Ledger.Dijkstra.Specification.Chain._.LastEpochOf
d_LastEpochOf_3422 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_HasLastEpoch_4344 ->
  AgdaAny -> AgdaAny
d_LastEpochOf_3422 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_LastEpochOf_4352
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.NewEpochState
d_NewEpochState_3430 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Chain._.NewEpochStateOf
d_NewEpochStateOf_3434 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_HasNewEpochState_4324 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4288
d_NewEpochStateOf_3434 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_NewEpochStateOf_4332
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.HasEpochState.EpochStateOf
d_EpochStateOf_3514 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_HasEpochState_4250 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_EpochState_4222
d_EpochStateOf_3514 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_EpochStateOf_4258
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.HasLastEpoch.LastEpochOf
d_LastEpochOf_3518 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_HasLastEpoch_4344 ->
  AgdaAny -> AgdaAny
d_LastEpochOf_3518 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_LastEpochOf_4352
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.HasNewEpochState.NewEpochStateOf
d_NewEpochStateOf_3522 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_HasNewEpochState_4324 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4288
d_NewEpochStateOf_3522 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_NewEpochStateOf_4332
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.NewEpochState.bcur
d_bcur_3526 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4288 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_bcur_3526 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_bcur_4308
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.NewEpochState.bprev
d_bprev_3528 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4288 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_bprev_3528 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_bprev_4306
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.NewEpochState.epochState
d_epochState_3530 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4288 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_EpochState_4222
d_epochState_3530 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4310
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.NewEpochState.lastEpoch
d_lastEpoch_3532 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4288 ->
  AgdaAny
d_lastEpoch_3532 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_lastEpoch_4304
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.NewEpochState.leiosCommittee
d_leiosCommittee_3534 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4288 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_LeiosSeat_1470]
d_leiosCommittee_3534 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_leiosCommittee_4316
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.NewEpochState.pd
d_pd_3536 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4288 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pd_3536 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_pd_4314 (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.NewEpochState.ru
d_ru_3538 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4288 ->
  Maybe
    MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_RewardUpdate_3892
d_ru_3538 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ru_4312 (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.HasCertState-LedgerState
d_HasCertState'45'LedgerState_3766 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasCertState_1942
d_HasCertState'45'LedgerState_3766 ~v0 ~v1
  = du_HasCertState'45'LedgerState_3766
du_HasCertState'45'LedgerState_3766 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasCertState_1942
du_HasCertState'45'LedgerState_3766
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasCertState'45'LedgerState_3984
-- Ledger.Dijkstra.Specification.Chain._.HasLedgerState
d_HasLedgerState_3786 a0 a1 a2 a3 = ()
-- Ledger.Dijkstra.Specification.Chain._.HasUTxOState-LedgerState
d_HasUTxOState'45'LedgerState_3804 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_HasUTxOState_3332
d_HasUTxOState'45'LedgerState_3804 ~v0 ~v1
  = du_HasUTxOState'45'LedgerState_3804
du_HasUTxOState'45'LedgerState_3804 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_HasUTxOState_3332
du_HasUTxOState'45'LedgerState_3804
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasUTxOState'45'LedgerState_3978
-- Ledger.Dijkstra.Specification.Chain._.LedgerEnv
d_LedgerEnv_3812 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Chain._.LedgerState
d_LedgerState_3816 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Chain._.LedgerStateOf
d_LedgerStateOf_3820 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_HasLedgerState_3962 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3942
d_LedgerStateOf_3820 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_LedgerStateOf_3970
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.HasLedgerState.LedgerStateOf
d_LedgerStateOf_3864 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_HasLedgerState_3962 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3942
d_LedgerStateOf_3864 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_LedgerStateOf_3970
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.LedgerEnv.enactState
d_enactState_3868 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerEnv_3902 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1332
d_enactState_3868 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_enactState_3920
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.LedgerEnv.pparams
d_pparams_3870 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerEnv_3902 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_320
d_pparams_3870 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_pparams_3918
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.LedgerEnv.ppolicy
d_ppolicy_3872 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerEnv_3902 ->
  Maybe AgdaAny
d_ppolicy_3872 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_ppolicy_3916
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.LedgerEnv.slot
d_slot_3874 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerEnv_3902 ->
  AgdaAny
d_slot_3874 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_slot_3914
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.LedgerEnv.treasury
d_treasury_3876 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerEnv_3902 ->
  Integer
d_treasury_3876 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_treasury_3922
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.LedgerState.certState
d_certState_3880 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3942 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1614
d_certState_3880 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_certState_3954
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.LedgerState.govSt
d_govSt_3882 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3942 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_3882 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_govSt_3952
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.LedgerState.utxoSt
d_utxoSt_3884 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3942 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3312
d_utxoSt_3884 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_utxoSt_3950
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.EBCert
d_EBCert_3912 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Chain._.ValidEBCert
d_ValidEBCert_3916 a0 a1 a2 a3 a4 a5 = ()
-- Ledger.Dijkstra.Specification.Chain._.certificationDelay
d_certificationDelay_3920 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_320 ->
  AgdaAny
d_certificationDelay_3920 v0 ~v1 = du_certificationDelay_3920 v0
du_certificationDelay_3920 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_320 ->
  AgdaAny
du_certificationDelay_3920 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.d_certificationDelay_1656
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2904
         (coe v0))
-- Ledger.Dijkstra.Specification.Chain._.EBCert.sig
d_sig_3924 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_EBCert_1676 ->
  AgdaAny
d_sig_3924 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.d_sig_1684
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.EBCert.signers
d_signers_3926 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_EBCert_1676 ->
  [Integer]
d_signers_3926 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.d_signers_1682
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.ValidEBCert.quorum
d_quorum_3930 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_ValidEBCert_1708 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
d_quorum_3930 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.d_quorum_1744
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.ValidEBCert.signersKeyed
d_signersKeyed_3934 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_ValidEBCert_1708 ->
  MAlonzo.Code.Data.List.Relation.Unary.All.T_All_44
d_signersKeyed_3934 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.d_signersKeyed_1738
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.ValidEBCert.signersSeated
d_signersSeated_3936 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_ValidEBCert_1708 ->
  Integer ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_signersSeated_3936 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.d_signersSeated_1734
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.ValidEBCert.validSignature
d_validSignature_3938 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_ValidEBCert_1708 ->
  AgdaAny
d_validSignature_3938 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.d_validSignature_1740
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.EndorserBlock
d_EndorserBlock_3942 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Chain._.hashEB
d_hashEB_3946 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.Types.T_EndorserBlock_22 ->
  AgdaAny
d_hashEB_3946 v0 ~v1 v2 = du_hashEB_3946 v0 v2
du_hashEB_3946 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.Types.T_EndorserBlock_22 ->
  AgdaAny
du_hashEB_3946 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Crypto.d_hashEBRefs_170
      (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_leiosCryptoStructure_1430
         (coe v0))
      (MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.Types.d_ebTxRefs_26
         (coe v1))
-- Ledger.Dijkstra.Specification.Chain._.EndorserBlock.ebTxRefs
d_ebTxRefs_3950 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.Types.T_EndorserBlock_22 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_ebTxRefs_3950 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.Types.d_ebTxRefs_26
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._._⊢_⇀⦇_,EB⦈_
d__'8866'_'8640''10631'_'44'EB'10632'__3954 a0 a1 a2 a3 a4 a5 = ()
-- Ledger.Dijkstra.Specification.Chain._._⊢_⇀⦇_,TICK⦈_
d__'8866'_'8640''10631'_'44'TICK'10632'__4136 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Dijkstra.Specification.Chain._.HasUTxOState
d_HasUTxOState_4238 a0 a1 a2 a3 = ()
-- Ledger.Dijkstra.Specification.Chain._.UTxOStateOf
d_UTxOStateOf_4274 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_HasUTxOState_3332 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3312
d_UTxOStateOf_4274 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_UTxOStateOf_3340
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.HasUTxOState.UTxOStateOf
d_UTxOStateOf_4364 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_HasUTxOState_3332 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3312
d_UTxOStateOf_4364 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_UTxOStateOf_3340
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.EBHash
d_EBHash_4420 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  ()
d_EBHash_4420 = erased
-- Ledger.Dijkstra.Specification.Chain._.RBHeaderHash
d_RBHeaderHash_4422 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  ()
d_RBHeaderHash_4422 = erased
-- Ledger.Dijkstra.Specification.Chain._.rbHeaderHashBytes
d_rbHeaderHashBytes_4424 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  AgdaAny -> AgdaAny
d_rbHeaderHashBytes_4424 v0 ~v1 = du_rbHeaderHashBytes_4424 v0
du_rbHeaderHashBytes_4424 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  AgdaAny -> AgdaAny
du_rbHeaderHashBytes_4424 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Crypto.d_rbHeaderHashBytes_172
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_leiosCryptoStructure_1430
         (coe v0))
-- Ledger.Dijkstra.Specification.Chain.LastAppliedBlock
d_LastAppliedBlock_4426 a0 a1 = ()
data T_LastAppliedBlock_4426
  = C_constructor_4440 AgdaAny AgdaAny
                       (Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14)
-- Ledger.Dijkstra.Specification.Chain.LastAppliedBlock.slot
d_slot_4434 :: T_LastAppliedBlock_4426 -> AgdaAny
d_slot_4434 v0
  = case coe v0 of
      C_constructor_4440 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Chain.LastAppliedBlock.headerHash
d_headerHash_4436 :: T_LastAppliedBlock_4426 -> AgdaAny
d_headerHash_4436 v0
  = case coe v0 of
      C_constructor_4440 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Chain.LastAppliedBlock.announcedEB
d_announcedEB_4438 ::
  T_LastAppliedBlock_4426 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_announcedEB_4438 v0
  = case coe v0 of
      C_constructor_4440 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Chain.ChainState
d_ChainState_4442 a0 a1 = ()
data T_ChainState_4442
  = C_constructor_4452 MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4288
                       (Maybe T_LastAppliedBlock_4426)
-- Ledger.Dijkstra.Specification.Chain.ChainState.newEpochState
d_newEpochState_4448 ::
  T_ChainState_4442 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4288
d_newEpochState_4448 v0
  = case coe v0 of
      C_constructor_4452 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Chain.ChainState.lastApplied
d_lastApplied_4450 ::
  T_ChainState_4442 -> Maybe T_LastAppliedBlock_4426
d_lastApplied_4450 v0
  = case coe v0 of
      C_constructor_4452 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Chain.HasCast-LastAppliedBlock
d_HasCast'45'LastAppliedBlock_4454 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'LastAppliedBlock_4454 ~v0 ~v1
  = du_HasCast'45'LastAppliedBlock_4454
du_HasCast'45'LastAppliedBlock_4454 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'LastAppliedBlock_4454
  = coe
      MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.C_constructor_30
      (coe
         MAlonzo.Code.Data.Product.Nary.NonDependent.du_uncurry'8345'_170
         (coe
            MAlonzo.Code.Data.List.Base.du_length_268
            (coe
               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
               (coe
                  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive.d_getCodPi_8
                  (coe
                     MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202
                     (coe
                        MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                           (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                           (coe
                              MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                              (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                              (coe MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                           (coe
                              (MAlonzo.RTE.QName
                                 (4426 :: Integer) (18031157011309193886 :: Integer)
                                 "Ledger.Dijkstra.Specification.Chain.LastAppliedBlock"
                                 (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                     (coe
                        MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                        (coe ("r" :: Data.Text.Text))
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                           (coe
                              (MAlonzo.RTE.QName
                                 (884 :: Integer) (18031157011309193886 :: Integer) "_.Slot"
                                 (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
               (coe
                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                  (coe
                     MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive.d_getCodPi_8
                     (coe
                        MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                           (coe
                              MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                              (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                 (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                 (coe MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                           (coe
                              MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                              (coe
                                 (MAlonzo.RTE.QName
                                    (4426 :: Integer) (18031157011309193886 :: Integer)
                                    "Ledger.Dijkstra.Specification.Chain.LastAppliedBlock"
                                    (MAlonzo.RTE.Fixity
                                       MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                              (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                           (coe ("r" :: Data.Text.Text))
                           (coe
                              MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                              (coe
                                 (MAlonzo.RTE.QName
                                    (4422 :: Integer) (18031157011309193886 :: Integer)
                                    "Ledger.Dijkstra.Specification.Chain._.RBHeaderHash"
                                    (MAlonzo.RTE.Fixity
                                       MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                              (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                  (coe
                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                     (coe
                        MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive.d_getCodPi_8
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202
                           (coe
                              MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                 (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                    (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                    (coe MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                 (coe
                                    (MAlonzo.RTE.QName
                                       (4426 :: Integer) (18031157011309193886 :: Integer)
                                       "Ledger.Dijkstra.Specification.Chain.LastAppliedBlock"
                                       (MAlonzo.RTE.Fixity
                                          MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                           (coe
                              MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                              (coe ("r" :: Data.Text.Text))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                 (coe
                                    (MAlonzo.RTE.QName
                                       (10 :: Integer) (15412666033012224255 :: Integer)
                                       "Agda.Builtin.Maybe.Maybe"
                                       (MAlonzo.RTE.Fixity
                                          MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                          (coe MAlonzo.Code.Agda.Builtin.Reflection.C_hidden_52)
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                          (coe
                                             (MAlonzo.RTE.QName
                                                (20 :: Integer) (10880583612240331187 :: Integer)
                                                "Agda.Primitive.lzero"
                                                (MAlonzo.RTE.Fixity
                                                   MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                          (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                             (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                             (coe
                                                (MAlonzo.RTE.QName
                                                   (2670 :: Integer)
                                                   (18031157011309193886 :: Integer)
                                                   "Ledger.Dijkstra.Specification.Chain._.Announcement"
                                                   (MAlonzo.RTE.Fixity
                                                      MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                             (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                       (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))
                     (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
         (coe C_constructor_4440))
-- Ledger.Dijkstra.Specification.Chain.HasNewEpochState-ChainState
d_HasNewEpochState'45'ChainState_4456 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_HasNewEpochState_4324
d_HasNewEpochState'45'ChainState_4456 ~v0 ~v1
  = du_HasNewEpochState'45'ChainState_4456
du_HasNewEpochState'45'ChainState_4456 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_HasNewEpochState_4324
du_HasNewEpochState'45'ChainState_4456
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.C_constructor_4334
      (coe (\ v0 -> d_newEpochState_4448 (coe v0)))
-- Ledger.Dijkstra.Specification.Chain.HasLastEpoch-ChainState
d_HasLastEpoch'45'ChainState_4458 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_HasLastEpoch_4344
d_HasLastEpoch'45'ChainState_4458 ~v0 ~v1
  = du_HasLastEpoch'45'ChainState_4458
du_HasLastEpoch'45'ChainState_4458 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_HasLastEpoch_4344
du_HasLastEpoch'45'ChainState_4458
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.C_constructor_4354
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_LastEpochOf_4352
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasLastEpoch'45'NewEpochState_4360)
              (d_newEpochState_4448 (coe v0))))
-- Ledger.Dijkstra.Specification.Chain.HasEpochState-ChainState
d_HasEpochState'45'ChainState_4460 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_HasEpochState_4250
d_HasEpochState'45'ChainState_4460 ~v0 ~v1
  = du_HasEpochState'45'ChainState_4460
du_HasEpochState'45'ChainState_4460 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_HasEpochState_4250
du_HasEpochState'45'ChainState_4460
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.C_constructor_4260
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_EpochStateOf_4258
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasEpochState'45'NewEpochState_4362)
              (d_newEpochState_4448 (coe v0))))
-- Ledger.Dijkstra.Specification.Chain.HasEnactState-ChainState
d_HasEnactState'45'ChainState_4462 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_HasEnactState_1360
d_HasEnactState'45'ChainState_4462 ~v0 ~v1
  = du_HasEnactState'45'ChainState_4462
du_HasEnactState'45'ChainState_4462 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_HasEnactState_1360
du_HasEnactState'45'ChainState_4462
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.C_constructor_1370
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1368
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasEnactState'45'EpochState_4272)
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_EpochStateOf_4258
                 (coe
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasEpochState'45'NewEpochState_4362)
                 (d_newEpochState_4448 (coe v0)))))
-- Ledger.Dijkstra.Specification.Chain.HasLedgerState-ChainState
d_HasLedgerState'45'ChainState_4464 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_HasLedgerState_3962
d_HasLedgerState'45'ChainState_4464 ~v0 ~v1
  = du_HasLedgerState'45'ChainState_4464
du_HasLedgerState'45'ChainState_4464 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_HasLedgerState_3962
du_HasLedgerState'45'ChainState_4464
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.C_constructor_3972
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_LedgerStateOf_3970
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasLedgerState'45'EpochState_4268)
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_EpochStateOf_4258
                 (coe
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasEpochState'45'NewEpochState_4362)
                 (d_newEpochState_4448 (coe v0)))))
-- Ledger.Dijkstra.Specification.Chain.HasUTxOState-ChainState
d_HasUTxOState'45'ChainState_4466 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_HasUTxOState_3332
d_HasUTxOState'45'ChainState_4466 ~v0 ~v1
  = du_HasUTxOState'45'ChainState_4466
du_HasUTxOState'45'ChainState_4466 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_HasUTxOState_3332
du_HasUTxOState'45'ChainState_4466
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.C_constructor_3342
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_UTxOStateOf_3340
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasUTxOState'45'LedgerState_3978)
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_LedgerStateOf_3970
                 (coe
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasLedgerState'45'EpochState_4268)
                 (coe
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_EpochStateOf_4258
                    (coe
                       MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasEpochState'45'NewEpochState_4362)
                    (d_newEpochState_4448 (coe v0))))))
-- Ledger.Dijkstra.Specification.Chain.HasCertState-ChainState
d_HasCertState'45'ChainState_4468 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasCertState_1942
d_HasCertState'45'ChainState_4468 ~v0 ~v1
  = du_HasCertState'45'ChainState_4468
du_HasCertState'45'ChainState_4468 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasCertState_1942
du_HasCertState'45'ChainState_4468
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.C_constructor_1952
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_CertStateOf_1950
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasCertState'45'LedgerState_3984)
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_LedgerStateOf_3970
                 (coe
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasLedgerState'45'EpochState_4268)
                 (coe
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_EpochStateOf_4258
                    (coe
                       MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasEpochState'45'NewEpochState_4362)
                    (d_newEpochState_4448 (coe v0))))))
-- Ledger.Dijkstra.Specification.Chain.HasRewards-ChainState
d_HasRewards'45'ChainState_4470 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasRewards_1822
d_HasRewards'45'ChainState_4470 ~v0 ~v1
  = du_HasRewards'45'ChainState_4470
du_HasRewards'45'ChainState_4470 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasRewards_1822
du_HasRewards'45'ChainState_4470
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.C_constructor_1832
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_RewardsOf_1830
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasRewards'45'CertState_2034)
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_CertStateOf_1950
                 (coe
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasCertState'45'LedgerState_3984)
                 (coe
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_LedgerStateOf_3970
                    (coe
                       MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasLedgerState'45'EpochState_4268)
                    (coe
                       MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_EpochStateOf_4258
                       (coe
                          MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasEpochState'45'NewEpochState_4362)
                       (d_newEpochState_4448 (coe v0)))))))
-- Ledger.Dijkstra.Specification.Chain.HasPParams-ChainState
d_HasPParams'45'ChainState_4472 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasPParams_746
d_HasPParams'45'ChainState_4472 ~v0 ~v1
  = du_HasPParams'45'ChainState_4472
du_HasPParams'45'ChainState_4472 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasPParams_746
du_HasPParams'45'ChainState_4472
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.C_constructor_756
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_PParamsOf_754
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.du_HasPParams'45'EnactState_1376)
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1368
                 (coe
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasEnactState'45'EpochState_4272)
                 (coe
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_EpochStateOf_4258
                    (coe
                       MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasEpochState'45'NewEpochState_4362)
                    (d_newEpochState_4448 (coe v0))))))
-- Ledger.Dijkstra.Specification.Chain.ResolvedEB
d_ResolvedEB_4476 a0 a1 = ()
data T_ResolvedEB_4476
  = C_constructor_4486 MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.Types.T_EndorserBlock_22
                       [MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3878]
-- Ledger.Dijkstra.Specification.Chain.ResolvedEB.eb
d_eb_4482 ::
  T_ResolvedEB_4476 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.Types.T_EndorserBlock_22
d_eb_4482 v0
  = case coe v0 of
      C_constructor_4486 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Chain.ResolvedEB.closure
d_closure_4484 ::
  T_ResolvedEB_4476 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3878]
d_closure_4484 v0
  = case coe v0 of
      C_constructor_4486 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Chain.ChainEnv
d_ChainEnv_4488 a0 a1 = ()
newtype T_ChainEnv_4488
  = C_constructor_4494 (Maybe T_ResolvedEB_4476)
-- Ledger.Dijkstra.Specification.Chain.ChainEnv.resolvedEB
d_resolvedEB_4492 :: T_ChainEnv_4488 -> Maybe T_ResolvedEB_4476
d_resolvedEB_4492 v0
  = case coe v0 of
      C_constructor_4494 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Chain.pendingEB
d_pendingEB_4496 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  T_LastAppliedBlock_4426 -> Maybe AgdaAny
d_pendingEB_4496 ~v0 ~v1 v2 = du_pendingEB_4496 v2
du_pendingEB_4496 :: T_LastAppliedBlock_4426 -> Maybe AgdaAny
du_pendingEB_4496 v0
  = coe
      MAlonzo.Code.Data.Maybe.Base.du_map_64
      (\ v1 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v1))
      (d_announcedEB_4438 (coe v0))
-- Ledger.Dijkstra.Specification.Chain.announcingEnv
d_announcingEnv_4500 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  T_ChainState_4442 ->
  T_LastAppliedBlock_4426 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerEnv_3902
d_announcingEnv_4500 ~v0 ~v1 v2 v3 = du_announcingEnv_4500 v2 v3
du_announcingEnv_4500 ::
  T_ChainState_4442 ->
  T_LastAppliedBlock_4426 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerEnv_3902
du_announcingEnv_4500 v0 v1
  = coe
      MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
      (coe
         MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.C_constructor_30
         (coe
            MAlonzo.Code.Data.Product.Nary.NonDependent.du_uncurry'8345'_170
            (coe
               MAlonzo.Code.Data.List.Base.du_length_268
               (coe
                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                  (coe
                     MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive.d_getCodPi_8
                     (coe
                        MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                           (coe
                              MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                              (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                 (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                 (coe MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                           (coe
                              MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                              (coe
                                 (MAlonzo.RTE.QName
                                    (3902 :: Integer) (2632180534421049758 :: Integer)
                                    "Ledger.Dijkstra.Specification.Ledger.LedgerEnv"
                                    (MAlonzo.RTE.Fixity
                                       MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                              (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                           (coe ("r" :: Data.Text.Text))
                           (coe
                              MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                              (coe
                                 (MAlonzo.RTE.QName
                                    (884 :: Integer) (2632180534421049758 :: Integer) "_.Slot"
                                    (MAlonzo.RTE.Fixity
                                       MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                              (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                  (coe
                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                     (coe
                        MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive.d_getCodPi_8
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202
                           (coe
                              MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                 (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                    (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                    (coe MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                 (coe
                                    (MAlonzo.RTE.QName
                                       (3902 :: Integer) (2632180534421049758 :: Integer)
                                       "Ledger.Dijkstra.Specification.Ledger.LedgerEnv"
                                       (MAlonzo.RTE.Fixity
                                          MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                           (coe
                              MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                              (coe ("r" :: Data.Text.Text))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                 (coe
                                    (MAlonzo.RTE.QName
                                       (10 :: Integer) (15412666033012224255 :: Integer)
                                       "Agda.Builtin.Maybe.Maybe"
                                       (MAlonzo.RTE.Fixity
                                          MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                          (coe MAlonzo.Code.Agda.Builtin.Reflection.C_hidden_52)
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                          (coe
                                             (MAlonzo.RTE.QName
                                                (20 :: Integer) (10880583612240331187 :: Integer)
                                                "Agda.Primitive.lzero"
                                                (MAlonzo.RTE.Fixity
                                                   MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                          (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                             (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                             (coe
                                                (MAlonzo.RTE.QName
                                                   (828 :: Integer) (2632180534421049758 :: Integer)
                                                   "_.ScriptHash"
                                                   (MAlonzo.RTE.Fixity
                                                      MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                             (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                       (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))
                     (coe
                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                        (coe
                           MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive.d_getCodPi_8
                           (coe
                              MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                    (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                       (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                    (coe
                                       (MAlonzo.RTE.QName
                                          (3902 :: Integer) (2632180534421049758 :: Integer)
                                          "Ledger.Dijkstra.Specification.Ledger.LedgerEnv"
                                          (MAlonzo.RTE.Fixity
                                             MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                    (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                                 (coe ("r" :: Data.Text.Text))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                    (coe
                                       (MAlonzo.RTE.QName
                                          (740 :: Integer) (2632180534421049758 :: Integer)
                                          "_.PParams"
                                          (MAlonzo.RTE.Fixity
                                             MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                    (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                        (coe
                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                           (coe
                              MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive.d_getCodPi_8
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                       (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                          (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                       (coe
                                          (MAlonzo.RTE.QName
                                             (3902 :: Integer) (2632180534421049758 :: Integer)
                                             "Ledger.Dijkstra.Specification.Ledger.LedgerEnv"
                                             (MAlonzo.RTE.Fixity
                                                MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                       (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                                    (coe ("r" :: Data.Text.Text))
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                       (coe
                                          (MAlonzo.RTE.QName
                                             (2688 :: Integer) (2632180534421049758 :: Integer)
                                             "Ledger.Dijkstra.Specification.Ledger._.EnactState"
                                             (MAlonzo.RTE.Fixity
                                                MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                       (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                           (coe
                              MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                              (coe
                                 MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive.d_getCodPi_8
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                          (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                          (coe
                                             (MAlonzo.RTE.QName
                                                (3902 :: Integer) (2632180534421049758 :: Integer)
                                                "Ledger.Dijkstra.Specification.Ledger.LedgerEnv"
                                                (MAlonzo.RTE.Fixity
                                                   MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                          (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                                       (coe ("r" :: Data.Text.Text))
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                          (coe
                                             (MAlonzo.RTE.QName
                                                (24 :: Integer) (14798748958053396954 :: Integer)
                                                "Ledger.Prelude.Base.Treasury"
                                                (MAlonzo.RTE.Fixity
                                                   MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                          (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                              (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.C_constructor_3924)))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe d_slot_4434 (coe v1))
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
            (coe
               MAlonzo.Code.Ledger.Prelude.du_'8739'_'8739'_70
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasCast'45'HashProtected'45'MaybeScriptHash_1354)
               (MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_constitution_1346
                  (coe du_es_4510 (coe v0))))
            (coe
               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_PParamsOf_754
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.du_HasPParams'45'EnactState_1376)
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1368
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasEnactState'45'EpochState_4272)
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_EpochStateOf_4258
                        (coe
                           MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasEpochState'45'NewEpochState_4362)
                        (d_newEpochState_4448 (coe v0)))))
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                  (coe du_es_4510 (coe v0))
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_treasury_208
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4234
                        (coe
                           MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4310
                           (coe d_newEpochState_4448 (coe v0)))))))))
-- Ledger.Dijkstra.Specification.Chain._.es
d_es_4510 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  T_ChainState_4442 ->
  T_LastAppliedBlock_4426 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1332
d_es_4510 ~v0 ~v1 v2 ~v3 = du_es_4510 v2
du_es_4510 ::
  T_ChainState_4442 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1332
du_es_4510 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1368
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasEnactState'45'EpochState_4272)
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_EpochStateOf_4258
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasEpochState'45'NewEpochState_4362)
         (d_newEpochState_4448 (coe v0)))
-- Ledger.Dijkstra.Specification.Chain._⊢_⇀⦇_,CHAIN⦈_
d__'8866'_'8640''10631'_'44'CHAIN'10632'__4516 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'CHAIN'10632'__4516
  = C_CHAIN'45'None_4604 MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4288
                         MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_CHAIN'45'EB_4722 T_ResolvedEB_4476
                       MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_EBCert_1676
                       T_LastAppliedBlock_4426
                       MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4288
                       MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3942
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Dijkstra.Specification.Chain._.lastApplied
d_lastApplied_4530 ::
  T_ChainState_4442 -> Maybe T_LastAppliedBlock_4426
d_lastApplied_4530 v0 = coe d_lastApplied_4450 (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.newEpochState
d_newEpochState_4532 ::
  T_ChainState_4442 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4288
d_newEpochState_4532 v0 = coe d_newEpochState_4448 (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.bHeaderHash
d_bHeaderHash_4540 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  T_GeneralizeTel_28275 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_ChainEnv_4488 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3130 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4288 ->
  T_ChainState_4442 -> AgdaAny
d_bHeaderHash_4540 ~v0 ~v1 ~v2 ~v3 v4 ~v5 ~v6
  = du_bHeaderHash_4540 v4
du_bHeaderHash_4540 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3130 ->
  AgdaAny
du_bHeaderHash_4540 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bHeaderHash_3150
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.bheader
d_bheader_4542 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  T_GeneralizeTel_28275 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_ChainEnv_4488 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3130 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4288 ->
  T_ChainState_4442 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_BHeader_3118
d_bheader_4542 ~v0 ~v1 ~v2 ~v3 v4 ~v5 ~v6 = du_bheader_4542 v4
du_bheader_4542 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3130 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_BHeader_3118
du_bheader_4542 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bheader_3148
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.ebCert
d_ebCert_4544 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  T_GeneralizeTel_28275 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_ChainEnv_4488 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3130 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4288 ->
  T_ChainState_4442 ->
  Maybe
    MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_EBCert_1676
d_ebCert_4544 ~v0 ~v1 ~v2 ~v3 v4 ~v5 ~v6 = du_ebCert_4544 v4
du_ebCert_4544 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3130 ->
  Maybe
    MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_EBCert_1676
du_ebCert_4544 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_ebCert_3154
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.bhbody
d_bhbody_4554 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  T_GeneralizeTel_28275 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_ChainEnv_4488 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3130 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4288 ->
  T_ChainState_4442 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_BHBody_3086
d_bhbody_4554 ~v0 ~v1 ~v2 ~v3 v4 ~v5 ~v6 = du_bhbody_4554 v4
du_bhbody_4554 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3130 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_BHBody_3086
du_bhbody_4554 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bhbody_3124
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bheader_3148
         (coe v0))
-- Ledger.Dijkstra.Specification.Chain._.announcedEB
d_announcedEB_4560 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  T_GeneralizeTel_28275 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_ChainEnv_4488 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3130 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4288 ->
  T_ChainState_4442 -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_announcedEB_4560 ~v0 ~v1 ~v2 ~v3 v4 ~v5 ~v6
  = du_announcedEB_4560 v4
du_announcedEB_4560 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3130 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_announcedEB_4560 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_announcedEB_3112
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bhbody_3124
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bheader_3148
            (coe v0)))
-- Ledger.Dijkstra.Specification.Chain._.slot
d_slot_4572 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  T_GeneralizeTel_28275 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_ChainEnv_4488 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3130 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4288 ->
  T_ChainState_4442 -> AgdaAny
d_slot_4572 ~v0 ~v1 ~v2 ~v3 v4 ~v5 ~v6 = du_slot_4572 v4
du_slot_4572 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3130 ->
  AgdaAny
du_slot_4572 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_slot_3106
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bhbody_3124
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bheader_3148
            (coe v0)))
-- Ledger.Dijkstra.Specification.Chain._.bcur
d_bcur_4576 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  T_GeneralizeTel_28275 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_ChainEnv_4488 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3130 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4288 ->
  T_ChainState_4442 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_bcur_4576 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 = du_bcur_4576 v5
du_bcur_4576 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4288 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_bcur_4576 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_bcur_4308
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.epochState
d_epochState_4580 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  T_GeneralizeTel_28275 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_ChainEnv_4488 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3130 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4288 ->
  T_ChainState_4442 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_EpochState_4222
d_epochState_4580 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_epochState_4580 v5
du_epochState_4580 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4288 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_EpochState_4222
du_epochState_4580 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4310
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.acnt
d_acnt_4592 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  T_GeneralizeTel_28275 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_ChainEnv_4488 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3130 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4288 ->
  T_ChainState_4442 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_202
d_acnt_4592 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 = du_acnt_4592 v5
du_acnt_4592 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4288 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_202
du_acnt_4592 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4234
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4310
         (coe v0))
-- Ledger.Dijkstra.Specification.Chain._.es
d_es_4594 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  T_GeneralizeTel_28275 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_ChainEnv_4488 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3130 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4288 ->
  T_ChainState_4442 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1332
d_es_4594 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 = du_es_4594 v5
du_es_4594 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4288 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1332
du_es_4594 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_es_4240
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4310
         (coe v0))
-- Ledger.Dijkstra.Specification.Chain._.ls
d_ls_4598 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  T_GeneralizeTel_28275 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_ChainEnv_4488 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3130 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4288 ->
  T_ChainState_4442 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3942
d_ls_4598 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 = du_ls_4598 v5
du_ls_4598 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4288 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3942
du_ls_4598 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4238
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4310
         (coe v0))
-- Ledger.Dijkstra.Specification.Chain._.lastApplied
d_lastApplied_4626 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  T_GeneralizeTel_50631 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_ChainEnv_4488 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3130 ->
  T_ResolvedEB_4476 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_EBCert_1676 ->
  T_LastAppliedBlock_4426 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4288 ->
  T_ChainState_4442 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3942 ->
  Maybe T_LastAppliedBlock_4426
d_lastApplied_4626 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9 ~v10
  = du_lastApplied_4626 v9
du_lastApplied_4626 ::
  T_ChainState_4442 -> Maybe T_LastAppliedBlock_4426
du_lastApplied_4626 v0 = coe d_lastApplied_4450 (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.newEpochState
d_newEpochState_4628 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  T_GeneralizeTel_50631 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_ChainEnv_4488 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3130 ->
  T_ResolvedEB_4476 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_EBCert_1676 ->
  T_LastAppliedBlock_4426 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4288 ->
  T_ChainState_4442 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3942 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4288
d_newEpochState_4628 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9 ~v10
  = du_newEpochState_4628 v9
du_newEpochState_4628 ::
  T_ChainState_4442 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4288
du_newEpochState_4628 v0 = coe d_newEpochState_4448 (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.bHeaderHash
d_bHeaderHash_4636 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  T_GeneralizeTel_50631 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_ChainEnv_4488 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3130 ->
  T_ResolvedEB_4476 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_EBCert_1676 ->
  T_LastAppliedBlock_4426 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4288 ->
  T_ChainState_4442 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3942 ->
  AgdaAny
d_bHeaderHash_4636 ~v0 ~v1 ~v2 ~v3 v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10
  = du_bHeaderHash_4636 v4
du_bHeaderHash_4636 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3130 ->
  AgdaAny
du_bHeaderHash_4636 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bHeaderHash_3150
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.bheader
d_bheader_4638 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  T_GeneralizeTel_50631 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_ChainEnv_4488 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3130 ->
  T_ResolvedEB_4476 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_EBCert_1676 ->
  T_LastAppliedBlock_4426 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4288 ->
  T_ChainState_4442 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3942 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_BHeader_3118
d_bheader_4638 ~v0 ~v1 ~v2 ~v3 v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10
  = du_bheader_4638 v4
du_bheader_4638 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3130 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_BHeader_3118
du_bheader_4638 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bheader_3148
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.ebCert
d_ebCert_4640 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  T_GeneralizeTel_50631 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_ChainEnv_4488 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3130 ->
  T_ResolvedEB_4476 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_EBCert_1676 ->
  T_LastAppliedBlock_4426 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4288 ->
  T_ChainState_4442 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3942 ->
  Maybe
    MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_EBCert_1676
d_ebCert_4640 ~v0 ~v1 ~v2 ~v3 v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10
  = du_ebCert_4640 v4
du_ebCert_4640 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3130 ->
  Maybe
    MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_EBCert_1676
du_ebCert_4640 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_ebCert_3154
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.bhbody
d_bhbody_4650 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  T_GeneralizeTel_50631 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_ChainEnv_4488 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3130 ->
  T_ResolvedEB_4476 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_EBCert_1676 ->
  T_LastAppliedBlock_4426 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4288 ->
  T_ChainState_4442 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3942 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_BHBody_3086
d_bhbody_4650 ~v0 ~v1 ~v2 ~v3 v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10
  = du_bhbody_4650 v4
du_bhbody_4650 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3130 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_BHBody_3086
du_bhbody_4650 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bhbody_3124
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bheader_3148
         (coe v0))
-- Ledger.Dijkstra.Specification.Chain._.announcedEB
d_announcedEB_4656 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  T_GeneralizeTel_50631 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_ChainEnv_4488 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3130 ->
  T_ResolvedEB_4476 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_EBCert_1676 ->
  T_LastAppliedBlock_4426 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4288 ->
  T_ChainState_4442 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3942 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_announcedEB_4656 ~v0 ~v1 ~v2 ~v3 v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10
  = du_announcedEB_4656 v4
du_announcedEB_4656 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3130 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_announcedEB_4656 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_announcedEB_3112
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bhbody_3124
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bheader_3148
            (coe v0)))
-- Ledger.Dijkstra.Specification.Chain._.slot
d_slot_4668 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  T_GeneralizeTel_50631 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_ChainEnv_4488 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3130 ->
  T_ResolvedEB_4476 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_EBCert_1676 ->
  T_LastAppliedBlock_4426 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4288 ->
  T_ChainState_4442 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3942 ->
  AgdaAny
d_slot_4668 ~v0 ~v1 ~v2 ~v3 v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10
  = du_slot_4668 v4
du_slot_4668 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3130 ->
  AgdaAny
du_slot_4668 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_slot_3106
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bhbody_3124
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bheader_3148
            (coe v0)))
-- Ledger.Dijkstra.Specification.Chain._.bcur
d_bcur_4672 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  T_GeneralizeTel_50631 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_ChainEnv_4488 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3130 ->
  T_ResolvedEB_4476 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_EBCert_1676 ->
  T_LastAppliedBlock_4426 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4288 ->
  T_ChainState_4442 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3942 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_bcur_4672 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8 ~v9 ~v10
  = du_bcur_4672 v8
du_bcur_4672 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4288 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_bcur_4672 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_bcur_4308
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.epochState
d_epochState_4676 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  T_GeneralizeTel_50631 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_ChainEnv_4488 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3130 ->
  T_ResolvedEB_4476 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_EBCert_1676 ->
  T_LastAppliedBlock_4426 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4288 ->
  T_ChainState_4442 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3942 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_EpochState_4222
d_epochState_4676 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8 ~v9 ~v10
  = du_epochState_4676 v8
du_epochState_4676 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4288 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_EpochState_4222
du_epochState_4676 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4310
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.acnt
d_acnt_4688 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  T_GeneralizeTel_50631 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_ChainEnv_4488 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3130 ->
  T_ResolvedEB_4476 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_EBCert_1676 ->
  T_LastAppliedBlock_4426 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4288 ->
  T_ChainState_4442 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3942 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_202
d_acnt_4688 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8 ~v9 ~v10
  = du_acnt_4688 v8
du_acnt_4688 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4288 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_202
du_acnt_4688 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4234
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4310
         (coe v0))
-- Ledger.Dijkstra.Specification.Chain._.es
d_es_4690 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  T_GeneralizeTel_50631 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_ChainEnv_4488 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3130 ->
  T_ResolvedEB_4476 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_EBCert_1676 ->
  T_LastAppliedBlock_4426 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4288 ->
  T_ChainState_4442 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3942 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1332
d_es_4690 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8 ~v9 ~v10
  = du_es_4690 v8
du_es_4690 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4288 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1332
du_es_4690 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_es_4240
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4310
         (coe v0))
-- Ledger.Dijkstra.Specification.Chain._.ls
d_ls_4694 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  T_GeneralizeTel_50631 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_ChainEnv_4488 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3130 ->
  T_ResolvedEB_4476 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_EBCert_1676 ->
  T_LastAppliedBlock_4426 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4288 ->
  T_ChainState_4442 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3942 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3942
d_ls_4694 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8 ~v9 ~v10
  = du_ls_4694 v8
du_ls_4694 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4288 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3942
du_ls_4694 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4238
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4310
         (coe v0))
-- Ledger.Dijkstra.Specification.Chain._.slot
d_slot_4700 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  T_GeneralizeTel_50631 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_ChainEnv_4488 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3130 ->
  T_ResolvedEB_4476 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_EBCert_1676 ->
  T_LastAppliedBlock_4426 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4288 ->
  T_ChainState_4442 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3942 ->
  AgdaAny
d_slot_4700 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7 ~v8 ~v9 ~v10
  = du_slot_4700 v7
du_slot_4700 :: T_LastAppliedBlock_4426 -> AgdaAny
du_slot_4700 v0 = coe d_slot_4434 (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.headerHash
d_headerHash_4702 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  T_GeneralizeTel_50631 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_ChainEnv_4488 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3130 ->
  T_ResolvedEB_4476 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_EBCert_1676 ->
  T_LastAppliedBlock_4426 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4288 ->
  T_ChainState_4442 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3942 ->
  AgdaAny
d_headerHash_4702 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7 ~v8 ~v9 ~v10
  = du_headerHash_4702 v7
du_headerHash_4702 :: T_LastAppliedBlock_4426 -> AgdaAny
du_headerHash_4702 v0 = coe d_headerHash_4436 (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.closure
d_closure_4706 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  T_GeneralizeTel_50631 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_ChainEnv_4488 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3130 ->
  T_ResolvedEB_4476 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_EBCert_1676 ->
  T_LastAppliedBlock_4426 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4288 ->
  T_ChainState_4442 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3942 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3878]
d_closure_4706 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8 ~v9 ~v10
  = du_closure_4706 v5
du_closure_4706 ::
  T_ResolvedEB_4476 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3878]
du_closure_4706 v0 = coe d_closure_4484 (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.eb
d_eb_4708 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  T_GeneralizeTel_50631 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_ChainEnv_4488 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3130 ->
  T_ResolvedEB_4476 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_EBCert_1676 ->
  T_LastAppliedBlock_4426 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4288 ->
  T_ChainState_4442 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3942 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.Types.T_EndorserBlock_22
d_eb_4708 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8 ~v9 ~v10
  = du_eb_4708 v5
du_eb_4708 ::
  T_ResolvedEB_4476 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.Types.T_EndorserBlock_22
du_eb_4708 v0 = coe d_eb_4482 (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.resolvedEB
d_resolvedEB_4712 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  T_GeneralizeTel_50631 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_ChainEnv_4488 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3130 ->
  T_ResolvedEB_4476 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_EBCert_1676 ->
  T_LastAppliedBlock_4426 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4288 ->
  T_ChainState_4442 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3942 ->
  Maybe T_ResolvedEB_4476
d_resolvedEB_4712 ~v0 ~v1 ~v2 v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10
  = du_resolvedEB_4712 v3
du_resolvedEB_4712 :: T_ChainEnv_4488 -> Maybe T_ResolvedEB_4476
du_resolvedEB_4712 v0 = coe d_resolvedEB_4492 (coe v0)
-- Ledger.Dijkstra.Specification.Chain..generalizedField-ls'
d_'46'generalizedField'45'ls''_28273 ::
  T_GeneralizeTel_28275 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3942
d_'46'generalizedField'45'ls''_28273 v0
  = case coe v0 of
      C_mkGeneralizeTel_28277 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Chain.GeneralizeTel
d_GeneralizeTel_28275 a0 a1 = ()
newtype T_GeneralizeTel_28275
  = C_mkGeneralizeTel_28277 MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3942
-- Ledger.Dijkstra.Specification.Chain..generalizedField-ls'
d_'46'generalizedField'45'ls''_50629 ::
  T_GeneralizeTel_50631 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3942
d_'46'generalizedField'45'ls''_50629 v0
  = case coe v0 of
      C_mkGeneralizeTel_50633 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Chain.GeneralizeTel
d_GeneralizeTel_50631 a0 a1 = ()
newtype T_GeneralizeTel_50631
  = C_mkGeneralizeTel_50633 MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3942
