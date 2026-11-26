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
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasPParams_748 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_320
d_PParamsOf_748 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_PParamsOf_756
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
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasPParams_748 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_320
d_PParamsOf_1784 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_PParamsOf_756
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
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasPParams_748
d_HasPParams'45'EnactState_3292 ~v0 ~v1
  = du_HasPParams'45'EnactState_3292
du_HasPParams'45'EnactState_3292 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasPParams_748
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
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_HasEpochState_4252 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_EpochState_4224
d_EpochStateOf_3356 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_EpochStateOf_4260
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
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasEnactState'45'EpochState_4274
-- Ledger.Dijkstra.Specification.Chain._.HasEpochState
d_HasEpochState_3378 a0 a1 a2 a3 = ()
-- Ledger.Dijkstra.Specification.Chain._.HasEpochState-NewEpochState
d_HasEpochState'45'NewEpochState_3382 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_HasEpochState_4252
d_HasEpochState'45'NewEpochState_3382 ~v0 ~v1
  = du_HasEpochState'45'NewEpochState_3382
du_HasEpochState'45'NewEpochState_3382 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_HasEpochState_4252
du_HasEpochState'45'NewEpochState_3382
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasEpochState'45'NewEpochState_4364
-- Ledger.Dijkstra.Specification.Chain._.HasLastEpoch
d_HasLastEpoch_3388 a0 a1 a2 a3 = ()
-- Ledger.Dijkstra.Specification.Chain._.HasLastEpoch-NewEpochState
d_HasLastEpoch'45'NewEpochState_3392 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_HasLastEpoch_4346
d_HasLastEpoch'45'NewEpochState_3392 ~v0 ~v1
  = du_HasLastEpoch'45'NewEpochState_3392
du_HasLastEpoch'45'NewEpochState_3392 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_HasLastEpoch_4346
du_HasLastEpoch'45'NewEpochState_3392
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasLastEpoch'45'NewEpochState_4362
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
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasLedgerState'45'EpochState_4270
-- Ledger.Dijkstra.Specification.Chain._.HasNewEpochState
d_HasNewEpochState_3398 a0 a1 a2 a3 = ()
-- Ledger.Dijkstra.Specification.Chain._.LastEpochOf
d_LastEpochOf_3422 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_HasLastEpoch_4346 ->
  AgdaAny -> AgdaAny
d_LastEpochOf_3422 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_LastEpochOf_4354
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.NewEpochState
d_NewEpochState_3430 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Chain._.NewEpochStateOf
d_NewEpochStateOf_3434 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_HasNewEpochState_4326 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4290
d_NewEpochStateOf_3434 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_NewEpochStateOf_4334
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.HasEpochState.EpochStateOf
d_EpochStateOf_3514 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_HasEpochState_4252 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_EpochState_4224
d_EpochStateOf_3514 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_EpochStateOf_4260
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.HasLastEpoch.LastEpochOf
d_LastEpochOf_3518 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_HasLastEpoch_4346 ->
  AgdaAny -> AgdaAny
d_LastEpochOf_3518 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_LastEpochOf_4354
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.HasNewEpochState.NewEpochStateOf
d_NewEpochStateOf_3522 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_HasNewEpochState_4326 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4290
d_NewEpochStateOf_3522 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_NewEpochStateOf_4334
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.NewEpochState.bcur
d_bcur_3526 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4290 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_bcur_3526 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_bcur_4310
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.NewEpochState.bprev
d_bprev_3528 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4290 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_bprev_3528 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_bprev_4308
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.NewEpochState.epochState
d_epochState_3530 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4290 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_EpochState_4224
d_epochState_3530 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4312
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.NewEpochState.lastEpoch
d_lastEpoch_3532 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4290 ->
  AgdaAny
d_lastEpoch_3532 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_lastEpoch_4306
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.NewEpochState.leiosCommittee
d_leiosCommittee_3534 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4290 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_LeiosSeat_1470]
d_leiosCommittee_3534 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_leiosCommittee_4318
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.NewEpochState.pd
d_pd_3536 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4290 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pd_3536 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_pd_4316 (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.NewEpochState.ru
d_ru_3538 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4290 ->
  Maybe
    MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_RewardUpdate_3892
d_ru_3538 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ru_4314 (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.HasCertState-LedgerState
d_HasCertState'45'LedgerState_3768 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasCertState_1942
d_HasCertState'45'LedgerState_3768 ~v0 ~v1
  = du_HasCertState'45'LedgerState_3768
du_HasCertState'45'LedgerState_3768 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasCertState_1942
du_HasCertState'45'LedgerState_3768
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasCertState'45'LedgerState_3984
-- Ledger.Dijkstra.Specification.Chain._.HasLedgerState
d_HasLedgerState_3788 a0 a1 a2 a3 = ()
-- Ledger.Dijkstra.Specification.Chain._.HasUTxOState-LedgerState
d_HasUTxOState'45'LedgerState_3806 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_HasUTxOState_3332
d_HasUTxOState'45'LedgerState_3806 ~v0 ~v1
  = du_HasUTxOState'45'LedgerState_3806
du_HasUTxOState'45'LedgerState_3806 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_HasUTxOState_3332
du_HasUTxOState'45'LedgerState_3806
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasUTxOState'45'LedgerState_3978
-- Ledger.Dijkstra.Specification.Chain._.LedgerEnv
d_LedgerEnv_3814 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Chain._.LedgerState
d_LedgerState_3818 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Chain._.LedgerStateOf
d_LedgerStateOf_3822 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_HasLedgerState_3962 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3942
d_LedgerStateOf_3822 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_LedgerStateOf_3970
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.HasLedgerState.LedgerStateOf
d_LedgerStateOf_3866 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_HasLedgerState_3962 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3942
d_LedgerStateOf_3866 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_LedgerStateOf_3970
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.LedgerEnv.enactState
d_enactState_3870 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerEnv_3902 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1332
d_enactState_3870 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_enactState_3920
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.LedgerEnv.pparams
d_pparams_3872 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerEnv_3902 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_320
d_pparams_3872 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_pparams_3918
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.LedgerEnv.ppolicy
d_ppolicy_3874 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerEnv_3902 ->
  Maybe AgdaAny
d_ppolicy_3874 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_ppolicy_3916
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.LedgerEnv.slot
d_slot_3876 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerEnv_3902 ->
  AgdaAny
d_slot_3876 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_slot_3914
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.LedgerEnv.treasury
d_treasury_3878 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerEnv_3902 ->
  Integer
d_treasury_3878 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_treasury_3922
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.LedgerState.certState
d_certState_3882 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3942 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1614
d_certState_3882 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_certState_3954
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.LedgerState.govSt
d_govSt_3884 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3942 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_3884 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_govSt_3952
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.LedgerState.utxoSt
d_utxoSt_3886 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3942 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3312
d_utxoSt_3886 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_utxoSt_3950
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.EBCert
d_EBCert_3914 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Chain._.ValidEBCert
d_ValidEBCert_3918 a0 a1 a2 a3 a4 a5 = ()
-- Ledger.Dijkstra.Specification.Chain._.certificationDelay
d_certificationDelay_3922 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_320 ->
  AgdaAny
d_certificationDelay_3922 v0 ~v1 = du_certificationDelay_3922 v0
du_certificationDelay_3922 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_320 ->
  AgdaAny
du_certificationDelay_3922 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.d_certificationDelay_1656
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2904
         (coe v0))
-- Ledger.Dijkstra.Specification.Chain._.EBCert.sig
d_sig_3926 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_EBCert_1676 ->
  AgdaAny
d_sig_3926 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.d_sig_1684
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.EBCert.signers
d_signers_3928 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_EBCert_1676 ->
  [Integer]
d_signers_3928 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.d_signers_1682
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.ValidEBCert.quorum
d_quorum_3932 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_ValidEBCert_1708 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
d_quorum_3932 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.d_quorum_1744
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.ValidEBCert.signersKeyed
d_signersKeyed_3936 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_ValidEBCert_1708 ->
  MAlonzo.Code.Data.List.Relation.Unary.All.T_All_44
d_signersKeyed_3936 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.d_signersKeyed_1738
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.ValidEBCert.signersSeated
d_signersSeated_3938 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_ValidEBCert_1708 ->
  Integer ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_signersSeated_3938 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.d_signersSeated_1734
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.ValidEBCert.validSignature
d_validSignature_3940 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_ValidEBCert_1708 ->
  AgdaAny
d_validSignature_3940 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.d_validSignature_1740
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.EndorserBlock
d_EndorserBlock_3944 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Chain._.hashEB
d_hashEB_3948 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.Types.T_EndorserBlock_22 ->
  AgdaAny
d_hashEB_3948 v0 ~v1 v2 = du_hashEB_3948 v0 v2
du_hashEB_3948 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.Types.T_EndorserBlock_22 ->
  AgdaAny
du_hashEB_3948 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Crypto.d_hashEBRefs_170
      (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_leiosCryptoStructure_1430
         (coe v0))
      (MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.Types.d_ebTxRefs_26
         (coe v1))
-- Ledger.Dijkstra.Specification.Chain._.EndorserBlock.ebTxRefs
d_ebTxRefs_3952 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.Types.T_EndorserBlock_22 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_ebTxRefs_3952 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.Types.d_ebTxRefs_26
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._._⊢_⇀⦇_,EB⦈_
d__'8866'_'8640''10631'_'44'EB'10632'__3956 a0 a1 a2 a3 a4 a5 = ()
-- Ledger.Dijkstra.Specification.Chain._._⊢_⇀⦇_,TICK⦈_
d__'8866'_'8640''10631'_'44'TICK'10632'__4140 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Dijkstra.Specification.Chain._.HasUTxOState
d_HasUTxOState_4242 a0 a1 a2 a3 = ()
-- Ledger.Dijkstra.Specification.Chain._.UTxOStateOf
d_UTxOStateOf_4278 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_HasUTxOState_3332 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3312
d_UTxOStateOf_4278 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_UTxOStateOf_3340
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.HasUTxOState.UTxOStateOf
d_UTxOStateOf_4368 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_HasUTxOState_3332 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3312
d_UTxOStateOf_4368 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_UTxOStateOf_3340
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.EBHash
d_EBHash_4424 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  ()
d_EBHash_4424 = erased
-- Ledger.Dijkstra.Specification.Chain._.RBHeaderHash
d_RBHeaderHash_4426 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  ()
d_RBHeaderHash_4426 = erased
-- Ledger.Dijkstra.Specification.Chain._.rbHeaderHashBytes
d_rbHeaderHashBytes_4428 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  AgdaAny -> AgdaAny
d_rbHeaderHashBytes_4428 v0 ~v1 = du_rbHeaderHashBytes_4428 v0
du_rbHeaderHashBytes_4428 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  AgdaAny -> AgdaAny
du_rbHeaderHashBytes_4428 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Crypto.d_rbHeaderHashBytes_172
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_leiosCryptoStructure_1430
         (coe v0))
-- Ledger.Dijkstra.Specification.Chain.LastAppliedBlock
d_LastAppliedBlock_4430 a0 a1 = ()
data T_LastAppliedBlock_4430
  = C_constructor_4444 AgdaAny AgdaAny
                       (Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14)
-- Ledger.Dijkstra.Specification.Chain.LastAppliedBlock.slot
d_slot_4438 :: T_LastAppliedBlock_4430 -> AgdaAny
d_slot_4438 v0
  = case coe v0 of
      C_constructor_4444 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Chain.LastAppliedBlock.headerHash
d_headerHash_4440 :: T_LastAppliedBlock_4430 -> AgdaAny
d_headerHash_4440 v0
  = case coe v0 of
      C_constructor_4444 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Chain.LastAppliedBlock.announcedEB
d_announcedEB_4442 ::
  T_LastAppliedBlock_4430 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_announcedEB_4442 v0
  = case coe v0 of
      C_constructor_4444 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Chain.ChainState
d_ChainState_4446 a0 a1 = ()
data T_ChainState_4446
  = C_constructor_4456 MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4290
                       (Maybe T_LastAppliedBlock_4430)
-- Ledger.Dijkstra.Specification.Chain.ChainState.newEpochState
d_newEpochState_4452 ::
  T_ChainState_4446 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4290
d_newEpochState_4452 v0
  = case coe v0 of
      C_constructor_4456 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Chain.ChainState.lastApplied
d_lastApplied_4454 ::
  T_ChainState_4446 -> Maybe T_LastAppliedBlock_4430
d_lastApplied_4454 v0
  = case coe v0 of
      C_constructor_4456 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Chain.HasCast-LastAppliedBlock
d_HasCast'45'LastAppliedBlock_4458 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'LastAppliedBlock_4458 ~v0 ~v1
  = du_HasCast'45'LastAppliedBlock_4458
du_HasCast'45'LastAppliedBlock_4458 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'LastAppliedBlock_4458
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
                                 (4430 :: Integer) (18031157011309193886 :: Integer)
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
                                    (4430 :: Integer) (18031157011309193886 :: Integer)
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
                                    (4426 :: Integer) (18031157011309193886 :: Integer)
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
                                       (4430 :: Integer) (18031157011309193886 :: Integer)
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
         (coe C_constructor_4444))
-- Ledger.Dijkstra.Specification.Chain.HasNewEpochState-ChainState
d_HasNewEpochState'45'ChainState_4460 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_HasNewEpochState_4326
d_HasNewEpochState'45'ChainState_4460 ~v0 ~v1
  = du_HasNewEpochState'45'ChainState_4460
du_HasNewEpochState'45'ChainState_4460 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_HasNewEpochState_4326
du_HasNewEpochState'45'ChainState_4460
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.C_constructor_4336
      (coe (\ v0 -> d_newEpochState_4452 (coe v0)))
-- Ledger.Dijkstra.Specification.Chain.HasLastEpoch-ChainState
d_HasLastEpoch'45'ChainState_4462 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_HasLastEpoch_4346
d_HasLastEpoch'45'ChainState_4462 ~v0 ~v1
  = du_HasLastEpoch'45'ChainState_4462
du_HasLastEpoch'45'ChainState_4462 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_HasLastEpoch_4346
du_HasLastEpoch'45'ChainState_4462
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.C_constructor_4356
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_LastEpochOf_4354
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasLastEpoch'45'NewEpochState_4362)
              (d_newEpochState_4452 (coe v0))))
-- Ledger.Dijkstra.Specification.Chain.HasEpochState-ChainState
d_HasEpochState'45'ChainState_4464 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_HasEpochState_4252
d_HasEpochState'45'ChainState_4464 ~v0 ~v1
  = du_HasEpochState'45'ChainState_4464
du_HasEpochState'45'ChainState_4464 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_HasEpochState_4252
du_HasEpochState'45'ChainState_4464
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.C_constructor_4262
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_EpochStateOf_4260
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasEpochState'45'NewEpochState_4364)
              (d_newEpochState_4452 (coe v0))))
-- Ledger.Dijkstra.Specification.Chain.HasEnactState-ChainState
d_HasEnactState'45'ChainState_4466 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_HasEnactState_1360
d_HasEnactState'45'ChainState_4466 ~v0 ~v1
  = du_HasEnactState'45'ChainState_4466
du_HasEnactState'45'ChainState_4466 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_HasEnactState_1360
du_HasEnactState'45'ChainState_4466
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.C_constructor_1370
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1368
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasEnactState'45'EpochState_4274)
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_EpochStateOf_4260
                 (coe
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasEpochState'45'NewEpochState_4364)
                 (d_newEpochState_4452 (coe v0)))))
-- Ledger.Dijkstra.Specification.Chain.HasLedgerState-ChainState
d_HasLedgerState'45'ChainState_4468 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_HasLedgerState_3962
d_HasLedgerState'45'ChainState_4468 ~v0 ~v1
  = du_HasLedgerState'45'ChainState_4468
du_HasLedgerState'45'ChainState_4468 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_HasLedgerState_3962
du_HasLedgerState'45'ChainState_4468
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.C_constructor_3972
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_LedgerStateOf_3970
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasLedgerState'45'EpochState_4270)
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_EpochStateOf_4260
                 (coe
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasEpochState'45'NewEpochState_4364)
                 (d_newEpochState_4452 (coe v0)))))
-- Ledger.Dijkstra.Specification.Chain.HasUTxOState-ChainState
d_HasUTxOState'45'ChainState_4470 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_HasUTxOState_3332
d_HasUTxOState'45'ChainState_4470 ~v0 ~v1
  = du_HasUTxOState'45'ChainState_4470
du_HasUTxOState'45'ChainState_4470 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_HasUTxOState_3332
du_HasUTxOState'45'ChainState_4470
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
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasLedgerState'45'EpochState_4270)
                 (coe
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_EpochStateOf_4260
                    (coe
                       MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasEpochState'45'NewEpochState_4364)
                    (d_newEpochState_4452 (coe v0))))))
-- Ledger.Dijkstra.Specification.Chain.HasCertState-ChainState
d_HasCertState'45'ChainState_4472 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasCertState_1942
d_HasCertState'45'ChainState_4472 ~v0 ~v1
  = du_HasCertState'45'ChainState_4472
du_HasCertState'45'ChainState_4472 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasCertState_1942
du_HasCertState'45'ChainState_4472
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
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasLedgerState'45'EpochState_4270)
                 (coe
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_EpochStateOf_4260
                    (coe
                       MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasEpochState'45'NewEpochState_4364)
                    (d_newEpochState_4452 (coe v0))))))
-- Ledger.Dijkstra.Specification.Chain.HasRewards-ChainState
d_HasRewards'45'ChainState_4474 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasRewards_1822
d_HasRewards'45'ChainState_4474 ~v0 ~v1
  = du_HasRewards'45'ChainState_4474
du_HasRewards'45'ChainState_4474 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasRewards_1822
du_HasRewards'45'ChainState_4474
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
                       MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasLedgerState'45'EpochState_4270)
                    (coe
                       MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_EpochStateOf_4260
                       (coe
                          MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasEpochState'45'NewEpochState_4364)
                       (d_newEpochState_4452 (coe v0)))))))
-- Ledger.Dijkstra.Specification.Chain.HasPParams-ChainState
d_HasPParams'45'ChainState_4476 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasPParams_748
d_HasPParams'45'ChainState_4476 ~v0 ~v1
  = du_HasPParams'45'ChainState_4476
du_HasPParams'45'ChainState_4476 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasPParams_748
du_HasPParams'45'ChainState_4476
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.C_constructor_758
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_PParamsOf_756
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.du_HasPParams'45'EnactState_1376)
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1368
                 (coe
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasEnactState'45'EpochState_4274)
                 (coe
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_EpochStateOf_4260
                    (coe
                       MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasEpochState'45'NewEpochState_4364)
                    (d_newEpochState_4452 (coe v0))))))
-- Ledger.Dijkstra.Specification.Chain.ResolvedEB
d_ResolvedEB_4480 a0 a1 = ()
data T_ResolvedEB_4480
  = C_constructor_4490 MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.Types.T_EndorserBlock_22
                       [MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3878]
-- Ledger.Dijkstra.Specification.Chain.ResolvedEB.eb
d_eb_4486 ::
  T_ResolvedEB_4480 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.Types.T_EndorserBlock_22
d_eb_4486 v0
  = case coe v0 of
      C_constructor_4490 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Chain.ResolvedEB.closure
d_closure_4488 ::
  T_ResolvedEB_4480 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3878]
d_closure_4488 v0
  = case coe v0 of
      C_constructor_4490 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Chain.ChainEnv
d_ChainEnv_4492 a0 a1 = ()
newtype T_ChainEnv_4492
  = C_constructor_4498 (Maybe T_ResolvedEB_4480)
-- Ledger.Dijkstra.Specification.Chain.ChainEnv.resolvedEB
d_resolvedEB_4496 :: T_ChainEnv_4492 -> Maybe T_ResolvedEB_4480
d_resolvedEB_4496 v0
  = case coe v0 of
      C_constructor_4498 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Chain.pendingEB
d_pendingEB_4500 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  T_LastAppliedBlock_4430 -> Maybe AgdaAny
d_pendingEB_4500 ~v0 ~v1 v2 = du_pendingEB_4500 v2
du_pendingEB_4500 :: T_LastAppliedBlock_4430 -> Maybe AgdaAny
du_pendingEB_4500 v0
  = coe
      MAlonzo.Code.Data.Maybe.Base.du_map_64
      (\ v1 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v1))
      (d_announcedEB_4442 (coe v0))
-- Ledger.Dijkstra.Specification.Chain.announcingEnv
d_announcingEnv_4504 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  T_ChainState_4446 ->
  T_LastAppliedBlock_4430 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerEnv_3902
d_announcingEnv_4504 ~v0 ~v1 v2 v3 = du_announcingEnv_4504 v2 v3
du_announcingEnv_4504 ::
  T_ChainState_4446 ->
  T_LastAppliedBlock_4430 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerEnv_3902
du_announcingEnv_4504 v0 v1
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
         (coe d_slot_4438 (coe v1))
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
            (coe
               MAlonzo.Code.Ledger.Prelude.du_'8739'_'8739'_70
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasCast'45'HashProtected'45'MaybeScriptHash_1354)
               (MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_constitution_1346
                  (coe du_es_4514 (coe v0))))
            (coe
               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_PParamsOf_756
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.du_HasPParams'45'EnactState_1376)
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1368
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasEnactState'45'EpochState_4274)
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_EpochStateOf_4260
                        (coe
                           MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasEpochState'45'NewEpochState_4364)
                        (d_newEpochState_4452 (coe v0)))))
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                  (coe du_es_4514 (coe v0))
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_treasury_208
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4236
                        (coe
                           MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4312
                           (coe d_newEpochState_4452 (coe v0)))))))))
-- Ledger.Dijkstra.Specification.Chain._.es
d_es_4514 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  T_ChainState_4446 ->
  T_LastAppliedBlock_4430 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1332
d_es_4514 ~v0 ~v1 v2 ~v3 = du_es_4514 v2
du_es_4514 ::
  T_ChainState_4446 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1332
du_es_4514 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1368
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasEnactState'45'EpochState_4274)
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_EpochStateOf_4260
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasEpochState'45'NewEpochState_4364)
         (d_newEpochState_4452 (coe v0)))
-- Ledger.Dijkstra.Specification.Chain._⊢_⇀⦇_,CHAIN⦈_
d__'8866'_'8640''10631'_'44'CHAIN'10632'__4520 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'CHAIN'10632'__4520
  = C_CHAIN'45'None_4608 MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4290
                         MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_CHAIN'45'EB_4726 T_ResolvedEB_4480
                       MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_EBCert_1676
                       T_LastAppliedBlock_4430
                       MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4290
                       MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3942
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Dijkstra.Specification.Chain._.lastApplied
d_lastApplied_4534 ::
  T_ChainState_4446 -> Maybe T_LastAppliedBlock_4430
d_lastApplied_4534 v0 = coe d_lastApplied_4454 (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.newEpochState
d_newEpochState_4536 ::
  T_ChainState_4446 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4290
d_newEpochState_4536 v0 = coe d_newEpochState_4452 (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.bHeaderHash
d_bHeaderHash_4544 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  T_GeneralizeTel_28349 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_ChainEnv_4492 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3130 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4290 ->
  T_ChainState_4446 -> AgdaAny
d_bHeaderHash_4544 ~v0 ~v1 ~v2 ~v3 v4 ~v5 ~v6
  = du_bHeaderHash_4544 v4
du_bHeaderHash_4544 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3130 ->
  AgdaAny
du_bHeaderHash_4544 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bHeaderHash_3150
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.bheader
d_bheader_4546 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  T_GeneralizeTel_28349 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_ChainEnv_4492 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3130 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4290 ->
  T_ChainState_4446 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_BHeader_3118
d_bheader_4546 ~v0 ~v1 ~v2 ~v3 v4 ~v5 ~v6 = du_bheader_4546 v4
du_bheader_4546 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3130 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_BHeader_3118
du_bheader_4546 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bheader_3148
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.ebCert
d_ebCert_4548 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  T_GeneralizeTel_28349 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_ChainEnv_4492 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3130 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4290 ->
  T_ChainState_4446 ->
  Maybe
    MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_EBCert_1676
d_ebCert_4548 ~v0 ~v1 ~v2 ~v3 v4 ~v5 ~v6 = du_ebCert_4548 v4
du_ebCert_4548 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3130 ->
  Maybe
    MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_EBCert_1676
du_ebCert_4548 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_ebCert_3154
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.bhbody
d_bhbody_4558 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  T_GeneralizeTel_28349 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_ChainEnv_4492 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3130 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4290 ->
  T_ChainState_4446 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_BHBody_3086
d_bhbody_4558 ~v0 ~v1 ~v2 ~v3 v4 ~v5 ~v6 = du_bhbody_4558 v4
du_bhbody_4558 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3130 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_BHBody_3086
du_bhbody_4558 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bhbody_3124
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bheader_3148
         (coe v0))
-- Ledger.Dijkstra.Specification.Chain._.announcedEB
d_announcedEB_4564 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  T_GeneralizeTel_28349 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_ChainEnv_4492 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3130 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4290 ->
  T_ChainState_4446 -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_announcedEB_4564 ~v0 ~v1 ~v2 ~v3 v4 ~v5 ~v6
  = du_announcedEB_4564 v4
du_announcedEB_4564 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3130 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_announcedEB_4564 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_announcedEB_3112
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bhbody_3124
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bheader_3148
            (coe v0)))
-- Ledger.Dijkstra.Specification.Chain._.slot
d_slot_4576 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  T_GeneralizeTel_28349 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_ChainEnv_4492 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3130 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4290 ->
  T_ChainState_4446 -> AgdaAny
d_slot_4576 ~v0 ~v1 ~v2 ~v3 v4 ~v5 ~v6 = du_slot_4576 v4
du_slot_4576 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3130 ->
  AgdaAny
du_slot_4576 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_slot_3106
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bhbody_3124
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bheader_3148
            (coe v0)))
-- Ledger.Dijkstra.Specification.Chain._.bcur
d_bcur_4580 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  T_GeneralizeTel_28349 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_ChainEnv_4492 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3130 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4290 ->
  T_ChainState_4446 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_bcur_4580 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 = du_bcur_4580 v5
du_bcur_4580 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4290 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_bcur_4580 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_bcur_4310
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.epochState
d_epochState_4584 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  T_GeneralizeTel_28349 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_ChainEnv_4492 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3130 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4290 ->
  T_ChainState_4446 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_EpochState_4224
d_epochState_4584 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_epochState_4584 v5
du_epochState_4584 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4290 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_EpochState_4224
du_epochState_4584 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4312
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.acnt
d_acnt_4596 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  T_GeneralizeTel_28349 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_ChainEnv_4492 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3130 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4290 ->
  T_ChainState_4446 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_202
d_acnt_4596 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 = du_acnt_4596 v5
du_acnt_4596 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4290 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_202
du_acnt_4596 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4236
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4312
         (coe v0))
-- Ledger.Dijkstra.Specification.Chain._.es
d_es_4598 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  T_GeneralizeTel_28349 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_ChainEnv_4492 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3130 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4290 ->
  T_ChainState_4446 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1332
d_es_4598 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 = du_es_4598 v5
du_es_4598 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4290 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1332
du_es_4598 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_es_4242
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4312
         (coe v0))
-- Ledger.Dijkstra.Specification.Chain._.ls
d_ls_4602 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  T_GeneralizeTel_28349 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_ChainEnv_4492 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3130 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4290 ->
  T_ChainState_4446 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3942
d_ls_4602 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 = du_ls_4602 v5
du_ls_4602 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4290 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3942
du_ls_4602 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4240
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4312
         (coe v0))
-- Ledger.Dijkstra.Specification.Chain._.lastApplied
d_lastApplied_4630 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  T_GeneralizeTel_50705 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_ChainEnv_4492 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3130 ->
  T_ResolvedEB_4480 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_EBCert_1676 ->
  T_LastAppliedBlock_4430 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4290 ->
  T_ChainState_4446 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3942 ->
  Maybe T_LastAppliedBlock_4430
d_lastApplied_4630 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9 ~v10
  = du_lastApplied_4630 v9
du_lastApplied_4630 ::
  T_ChainState_4446 -> Maybe T_LastAppliedBlock_4430
du_lastApplied_4630 v0 = coe d_lastApplied_4454 (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.newEpochState
d_newEpochState_4632 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  T_GeneralizeTel_50705 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_ChainEnv_4492 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3130 ->
  T_ResolvedEB_4480 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_EBCert_1676 ->
  T_LastAppliedBlock_4430 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4290 ->
  T_ChainState_4446 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3942 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4290
d_newEpochState_4632 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9 ~v10
  = du_newEpochState_4632 v9
du_newEpochState_4632 ::
  T_ChainState_4446 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4290
du_newEpochState_4632 v0 = coe d_newEpochState_4452 (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.bHeaderHash
d_bHeaderHash_4640 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  T_GeneralizeTel_50705 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_ChainEnv_4492 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3130 ->
  T_ResolvedEB_4480 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_EBCert_1676 ->
  T_LastAppliedBlock_4430 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4290 ->
  T_ChainState_4446 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3942 ->
  AgdaAny
d_bHeaderHash_4640 ~v0 ~v1 ~v2 ~v3 v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10
  = du_bHeaderHash_4640 v4
du_bHeaderHash_4640 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3130 ->
  AgdaAny
du_bHeaderHash_4640 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bHeaderHash_3150
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.bheader
d_bheader_4642 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  T_GeneralizeTel_50705 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_ChainEnv_4492 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3130 ->
  T_ResolvedEB_4480 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_EBCert_1676 ->
  T_LastAppliedBlock_4430 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4290 ->
  T_ChainState_4446 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3942 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_BHeader_3118
d_bheader_4642 ~v0 ~v1 ~v2 ~v3 v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10
  = du_bheader_4642 v4
du_bheader_4642 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3130 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_BHeader_3118
du_bheader_4642 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bheader_3148
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.ebCert
d_ebCert_4644 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  T_GeneralizeTel_50705 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_ChainEnv_4492 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3130 ->
  T_ResolvedEB_4480 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_EBCert_1676 ->
  T_LastAppliedBlock_4430 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4290 ->
  T_ChainState_4446 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3942 ->
  Maybe
    MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_EBCert_1676
d_ebCert_4644 ~v0 ~v1 ~v2 ~v3 v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10
  = du_ebCert_4644 v4
du_ebCert_4644 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3130 ->
  Maybe
    MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_EBCert_1676
du_ebCert_4644 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_ebCert_3154
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.bhbody
d_bhbody_4654 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  T_GeneralizeTel_50705 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_ChainEnv_4492 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3130 ->
  T_ResolvedEB_4480 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_EBCert_1676 ->
  T_LastAppliedBlock_4430 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4290 ->
  T_ChainState_4446 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3942 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_BHBody_3086
d_bhbody_4654 ~v0 ~v1 ~v2 ~v3 v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10
  = du_bhbody_4654 v4
du_bhbody_4654 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3130 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_BHBody_3086
du_bhbody_4654 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bhbody_3124
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bheader_3148
         (coe v0))
-- Ledger.Dijkstra.Specification.Chain._.announcedEB
d_announcedEB_4660 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  T_GeneralizeTel_50705 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_ChainEnv_4492 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3130 ->
  T_ResolvedEB_4480 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_EBCert_1676 ->
  T_LastAppliedBlock_4430 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4290 ->
  T_ChainState_4446 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3942 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_announcedEB_4660 ~v0 ~v1 ~v2 ~v3 v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10
  = du_announcedEB_4660 v4
du_announcedEB_4660 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3130 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_announcedEB_4660 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_announcedEB_3112
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bhbody_3124
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bheader_3148
            (coe v0)))
-- Ledger.Dijkstra.Specification.Chain._.slot
d_slot_4672 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  T_GeneralizeTel_50705 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_ChainEnv_4492 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3130 ->
  T_ResolvedEB_4480 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_EBCert_1676 ->
  T_LastAppliedBlock_4430 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4290 ->
  T_ChainState_4446 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3942 ->
  AgdaAny
d_slot_4672 ~v0 ~v1 ~v2 ~v3 v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10
  = du_slot_4672 v4
du_slot_4672 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3130 ->
  AgdaAny
du_slot_4672 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_slot_3106
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bhbody_3124
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bheader_3148
            (coe v0)))
-- Ledger.Dijkstra.Specification.Chain._.bcur
d_bcur_4676 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  T_GeneralizeTel_50705 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_ChainEnv_4492 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3130 ->
  T_ResolvedEB_4480 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_EBCert_1676 ->
  T_LastAppliedBlock_4430 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4290 ->
  T_ChainState_4446 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3942 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_bcur_4676 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8 ~v9 ~v10
  = du_bcur_4676 v8
du_bcur_4676 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4290 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_bcur_4676 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_bcur_4310
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.epochState
d_epochState_4680 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  T_GeneralizeTel_50705 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_ChainEnv_4492 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3130 ->
  T_ResolvedEB_4480 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_EBCert_1676 ->
  T_LastAppliedBlock_4430 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4290 ->
  T_ChainState_4446 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3942 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_EpochState_4224
d_epochState_4680 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8 ~v9 ~v10
  = du_epochState_4680 v8
du_epochState_4680 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4290 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_EpochState_4224
du_epochState_4680 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4312
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.acnt
d_acnt_4692 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  T_GeneralizeTel_50705 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_ChainEnv_4492 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3130 ->
  T_ResolvedEB_4480 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_EBCert_1676 ->
  T_LastAppliedBlock_4430 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4290 ->
  T_ChainState_4446 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3942 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_202
d_acnt_4692 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8 ~v9 ~v10
  = du_acnt_4692 v8
du_acnt_4692 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4290 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_202
du_acnt_4692 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4236
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4312
         (coe v0))
-- Ledger.Dijkstra.Specification.Chain._.es
d_es_4694 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  T_GeneralizeTel_50705 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_ChainEnv_4492 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3130 ->
  T_ResolvedEB_4480 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_EBCert_1676 ->
  T_LastAppliedBlock_4430 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4290 ->
  T_ChainState_4446 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3942 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1332
d_es_4694 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8 ~v9 ~v10
  = du_es_4694 v8
du_es_4694 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4290 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1332
du_es_4694 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_es_4242
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4312
         (coe v0))
-- Ledger.Dijkstra.Specification.Chain._.ls
d_ls_4698 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  T_GeneralizeTel_50705 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_ChainEnv_4492 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3130 ->
  T_ResolvedEB_4480 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_EBCert_1676 ->
  T_LastAppliedBlock_4430 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4290 ->
  T_ChainState_4446 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3942 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3942
d_ls_4698 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8 ~v9 ~v10
  = du_ls_4698 v8
du_ls_4698 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4290 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3942
du_ls_4698 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4240
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4312
         (coe v0))
-- Ledger.Dijkstra.Specification.Chain._.slot
d_slot_4704 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  T_GeneralizeTel_50705 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_ChainEnv_4492 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3130 ->
  T_ResolvedEB_4480 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_EBCert_1676 ->
  T_LastAppliedBlock_4430 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4290 ->
  T_ChainState_4446 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3942 ->
  AgdaAny
d_slot_4704 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7 ~v8 ~v9 ~v10
  = du_slot_4704 v7
du_slot_4704 :: T_LastAppliedBlock_4430 -> AgdaAny
du_slot_4704 v0 = coe d_slot_4438 (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.headerHash
d_headerHash_4706 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  T_GeneralizeTel_50705 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_ChainEnv_4492 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3130 ->
  T_ResolvedEB_4480 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_EBCert_1676 ->
  T_LastAppliedBlock_4430 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4290 ->
  T_ChainState_4446 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3942 ->
  AgdaAny
d_headerHash_4706 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7 ~v8 ~v9 ~v10
  = du_headerHash_4706 v7
du_headerHash_4706 :: T_LastAppliedBlock_4430 -> AgdaAny
du_headerHash_4706 v0 = coe d_headerHash_4440 (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.closure
d_closure_4710 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  T_GeneralizeTel_50705 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_ChainEnv_4492 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3130 ->
  T_ResolvedEB_4480 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_EBCert_1676 ->
  T_LastAppliedBlock_4430 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4290 ->
  T_ChainState_4446 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3942 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3878]
d_closure_4710 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8 ~v9 ~v10
  = du_closure_4710 v5
du_closure_4710 ::
  T_ResolvedEB_4480 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3878]
du_closure_4710 v0 = coe d_closure_4488 (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.eb
d_eb_4712 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  T_GeneralizeTel_50705 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_ChainEnv_4492 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3130 ->
  T_ResolvedEB_4480 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_EBCert_1676 ->
  T_LastAppliedBlock_4430 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4290 ->
  T_ChainState_4446 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3942 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.Types.T_EndorserBlock_22
d_eb_4712 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8 ~v9 ~v10
  = du_eb_4712 v5
du_eb_4712 ::
  T_ResolvedEB_4480 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.Types.T_EndorserBlock_22
du_eb_4712 v0 = coe d_eb_4486 (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.resolvedEB
d_resolvedEB_4716 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  T_GeneralizeTel_50705 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_ChainEnv_4492 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3130 ->
  T_ResolvedEB_4480 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_EBCert_1676 ->
  T_LastAppliedBlock_4430 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4290 ->
  T_ChainState_4446 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3942 ->
  Maybe T_ResolvedEB_4480
d_resolvedEB_4716 ~v0 ~v1 ~v2 v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10
  = du_resolvedEB_4716 v3
du_resolvedEB_4716 :: T_ChainEnv_4492 -> Maybe T_ResolvedEB_4480
du_resolvedEB_4716 v0 = coe d_resolvedEB_4496 (coe v0)
-- Ledger.Dijkstra.Specification.Chain..generalizedField-ls'
d_'46'generalizedField'45'ls''_28347 ::
  T_GeneralizeTel_28349 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3942
d_'46'generalizedField'45'ls''_28347 v0
  = case coe v0 of
      C_mkGeneralizeTel_28351 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Chain.GeneralizeTel
d_GeneralizeTel_28349 a0 a1 = ()
newtype T_GeneralizeTel_28349
  = C_mkGeneralizeTel_28351 MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3942
-- Ledger.Dijkstra.Specification.Chain..generalizedField-ls'
d_'46'generalizedField'45'ls''_50703 ::
  T_GeneralizeTel_50705 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3942
d_'46'generalizedField'45'ls''_50703 v0
  = case coe v0 of
      C_mkGeneralizeTel_50707 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Chain.GeneralizeTel
d_GeneralizeTel_50705 a0 a1 = ()
newtype T_GeneralizeTel_50705
  = C_mkGeneralizeTel_50707 MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3942
