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
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasPParams_736 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318
d_PParamsOf_748 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_PParamsOf_744
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
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1428
         (coe v0))
-- _.epoch
d_epoch_1044 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  AgdaAny -> AgdaAny
d_epoch_1044 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_epoch_92
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1428
         (coe v0))
-- _.HasPParams.PParamsOf
d_PParamsOf_1804 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasPParams_736 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318
d_PParamsOf_1804 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_PParamsOf_744
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._._⊢_⇀⦇_,BBODY⦈_
d__'8866'_'8640''10631'_'44'BBODY'10632'__2684 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Dijkstra.Specification.Chain._.Announcement
d_Announcement_2686 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3276 ->
  ()
d_Announcement_2686 = erased
-- Ledger.Dijkstra.Specification.Chain._.BBodyEnv
d_BBodyEnv_2690 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3276 ->
  ()
d_BBodyEnv_2690 = erased
-- Ledger.Dijkstra.Specification.Chain._.BBodyState
d_BBodyState_2692 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3276 ->
  ()
d_BBodyState_2692 = erased
-- Ledger.Dijkstra.Specification.Chain._.BHBody
d_BHBody_2694 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Chain._.BHeader
d_BHeader_2698 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Chain._.Block
d_Block_2702 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Chain._.ValidLeiosBlock
d_ValidLeiosBlock_2706 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3276 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3132 ->
  ()
d_ValidLeiosBlock_2706 = erased
-- Ledger.Dijkstra.Specification.Chain._.incrBlocks
d_incrBlocks_2708 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3276 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_incrBlocks_2708 v0 ~v1 = du_incrBlocks_2708 v0
du_incrBlocks_2708 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_incrBlocks_2708 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.du_incrBlocks_3172
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.BHBody.announcedEB
d_announcedEB_2716 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_BHBody_3088 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_announcedEB_2716 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_announcedEB_3114
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.BHBody.bhash
d_bhash_2718 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_BHBody_3088 ->
  AgdaAny
d_bhash_2718 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bhash_3110
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.BHBody.bsize
d_bsize_2720 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_BHBody_3088 ->
  Integer
d_bsize_2720 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bsize_3106
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.BHBody.bvkcold
d_bvkcold_2722 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_BHBody_3088 ->
  AgdaAny
d_bvkcold_2722 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bvkcold_3104
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.BHBody.certifiesEB
d_certifiesEB_2724 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_BHBody_3088 ->
  Bool
d_certifiesEB_2724 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_certifiesEB_3116
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.BHBody.hBbsize
d_hBbsize_2726 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_BHBody_3088 ->
  Integer
d_hBbsize_2726 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_hBbsize_3112
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.BHBody.slot
d_slot_2728 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_BHBody_3088 ->
  AgdaAny
d_slot_2728 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_slot_3108
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.BHeader.bhbody
d_bhbody_2732 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_BHeader_3120 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_BHBody_3088
d_bhbody_2732 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bhbody_3126
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.BHeader.bhsig
d_bhsig_2734 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_BHeader_3120 ->
  AgdaAny
d_bhsig_2734 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bhsig_3128
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.Block.bBodyHash
d_bBodyHash_2738 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3132 ->
  AgdaAny
d_bBodyHash_2738 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bBodyHash_3160
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.Block.bBodySize
d_bBodySize_2740 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3132 ->
  Integer
d_bBodySize_2740 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bBodySize_3158
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.Block.bHeaderHash
d_bHeaderHash_2742 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3132 ->
  AgdaAny
d_bHeaderHash_2742 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bHeaderHash_3152
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.Block.bheader
d_bheader_2744 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3132 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_BHeader_3120
d_bheader_2744 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bheader_3150
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.Block.ebCert
d_ebCert_2746 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3132 ->
  Maybe
    MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_EBCert_1648
d_ebCert_2746 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_ebCert_3156
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.Block.ts
d_ts_2748 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3132 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3866]
d_ts_2748 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_ts_3154
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.Block.≡-bBodyHash
d_'8801''45'bBodyHash_2750 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3132 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8801''45'bBodyHash_2750 = erased
-- Ledger.Dijkstra.Specification.Chain._.Block.≡-bBodySize
d_'8801''45'bBodySize_2752 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3132 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8801''45'bBodySize_2752 = erased
-- Ledger.Dijkstra.Specification.Chain._.CertStateOf
d_CertStateOf_2784 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasCertState_1912 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1584
d_CertStateOf_2784 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_CertStateOf_1920
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.HasCertState
d_HasCertState_2860 a0 a1 a2 a3 = ()
-- Ledger.Dijkstra.Specification.Chain._.HasRewards
d_HasRewards_2938 a0 a1 a2 a3 = ()
-- Ledger.Dijkstra.Specification.Chain._.HasRewards-CertState
d_HasRewards'45'CertState_2942 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3276 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasRewards_1792
d_HasRewards'45'CertState_2942 ~v0 ~v1
  = du_HasRewards'45'CertState_2942
du_HasRewards'45'CertState_2942 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasRewards_1792
du_HasRewards'45'CertState_2942
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasRewards'45'CertState_2004
-- Ledger.Dijkstra.Specification.Chain._.RewardsOf
d_RewardsOf_3010 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasRewards_1792 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RewardsOf_3010 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_RewardsOf_1800
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.HasCertState.CertStateOf
d_CertStateOf_3168 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasCertState_1912 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1584
d_CertStateOf_3168 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_CertStateOf_1920
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.HasRewards.RewardsOf
d_RewardsOf_3208 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasRewards_1792 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RewardsOf_3208 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_RewardsOf_1800
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.EnactStateOf
d_EnactStateOf_3296 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_HasEnactState_1356 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1328
d_EnactStateOf_3296 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1364
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.HasEnactState
d_HasEnactState_3300 a0 a1 a2 a3 = ()
-- Ledger.Dijkstra.Specification.Chain._.HasPParams-EnactState
d_HasPParams'45'EnactState_3304 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3276 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasPParams_736
d_HasPParams'45'EnactState_3304 ~v0 ~v1
  = du_HasPParams'45'EnactState_3304
du_HasPParams'45'EnactState_3304 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasPParams_736
du_HasPParams'45'EnactState_3304
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.du_HasPParams'45'EnactState_1372
-- Ledger.Dijkstra.Specification.Chain._.HasEnactState.EnactStateOf
d_EnactStateOf_3354 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_HasEnactState_1356 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1328
d_EnactStateOf_3354 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1364
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.EpochStateOf
d_EpochStateOf_3368 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_HasEpochState_4236 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_EpochState_4208
d_EpochStateOf_3368 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_EpochStateOf_4244
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.HasEnactState-EpochState
d_HasEnactState'45'EpochState_3386 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3276 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_HasEnactState_1356
d_HasEnactState'45'EpochState_3386 ~v0 ~v1
  = du_HasEnactState'45'EpochState_3386
du_HasEnactState'45'EpochState_3386 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_HasEnactState_1356
du_HasEnactState'45'EpochState_3386
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasEnactState'45'EpochState_4258
-- Ledger.Dijkstra.Specification.Chain._.HasEpochState
d_HasEpochState_3390 a0 a1 a2 a3 = ()
-- Ledger.Dijkstra.Specification.Chain._.HasEpochState-NewEpochState
d_HasEpochState'45'NewEpochState_3394 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3276 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_HasEpochState_4236
d_HasEpochState'45'NewEpochState_3394 ~v0 ~v1
  = du_HasEpochState'45'NewEpochState_3394
du_HasEpochState'45'NewEpochState_3394 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_HasEpochState_4236
du_HasEpochState'45'NewEpochState_3394
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasEpochState'45'NewEpochState_4348
-- Ledger.Dijkstra.Specification.Chain._.HasLastEpoch
d_HasLastEpoch_3400 a0 a1 a2 a3 = ()
-- Ledger.Dijkstra.Specification.Chain._.HasLastEpoch-NewEpochState
d_HasLastEpoch'45'NewEpochState_3404 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3276 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_HasLastEpoch_4330
d_HasLastEpoch'45'NewEpochState_3404 ~v0 ~v1
  = du_HasLastEpoch'45'NewEpochState_3404
du_HasLastEpoch'45'NewEpochState_3404 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_HasLastEpoch_4330
du_HasLastEpoch'45'NewEpochState_3404
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasLastEpoch'45'NewEpochState_4346
-- Ledger.Dijkstra.Specification.Chain._.HasLedgerState-EpochState
d_HasLedgerState'45'EpochState_3406 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3276 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_HasLedgerState_3956
d_HasLedgerState'45'EpochState_3406 ~v0 ~v1
  = du_HasLedgerState'45'EpochState_3406
du_HasLedgerState'45'EpochState_3406 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_HasLedgerState_3956
du_HasLedgerState'45'EpochState_3406
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasLedgerState'45'EpochState_4254
-- Ledger.Dijkstra.Specification.Chain._.HasNewEpochState
d_HasNewEpochState_3410 a0 a1 a2 a3 = ()
-- Ledger.Dijkstra.Specification.Chain._.LastEpochOf
d_LastEpochOf_3434 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_HasLastEpoch_4330 ->
  AgdaAny -> AgdaAny
d_LastEpochOf_3434 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_LastEpochOf_4338
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.NewEpochState
d_NewEpochState_3442 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Chain._.NewEpochStateOf
d_NewEpochStateOf_3446 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_HasNewEpochState_4310 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4274
d_NewEpochStateOf_3446 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_NewEpochStateOf_4318
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.HasEpochState.EpochStateOf
d_EpochStateOf_3528 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_HasEpochState_4236 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_EpochState_4208
d_EpochStateOf_3528 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_EpochStateOf_4244
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.HasLastEpoch.LastEpochOf
d_LastEpochOf_3532 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_HasLastEpoch_4330 ->
  AgdaAny -> AgdaAny
d_LastEpochOf_3532 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_LastEpochOf_4338
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.HasNewEpochState.NewEpochStateOf
d_NewEpochStateOf_3536 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_HasNewEpochState_4310 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4274
d_NewEpochStateOf_3536 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_NewEpochStateOf_4318
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.NewEpochState.bcur
d_bcur_3540 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4274 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_bcur_3540 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_bcur_4294
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.NewEpochState.bprev
d_bprev_3542 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4274 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_bprev_3542 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_bprev_4292
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.NewEpochState.epochState
d_epochState_3544 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4274 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_EpochState_4208
d_epochState_3544 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4296
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.NewEpochState.lastEpoch
d_lastEpoch_3546 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4274 ->
  AgdaAny
d_lastEpoch_3546 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_lastEpoch_4290
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.NewEpochState.leiosCommittee
d_leiosCommittee_3548 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4274 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_LeiosSeat_1462]
d_leiosCommittee_3548 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_leiosCommittee_4302
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.NewEpochState.pd
d_pd_3550 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4274 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pd_3550 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_pd_4300 (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.NewEpochState.ru
d_ru_3552 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4274 ->
  Maybe
    MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_RewardUpdate_3876
d_ru_3552 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ru_4298 (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.HasCertState-LedgerState
d_HasCertState'45'LedgerState_3780 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3276 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasCertState_1912
d_HasCertState'45'LedgerState_3780 ~v0 ~v1
  = du_HasCertState'45'LedgerState_3780
du_HasCertState'45'LedgerState_3780 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasCertState_1912
du_HasCertState'45'LedgerState_3780
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasCertState'45'LedgerState_3978
-- Ledger.Dijkstra.Specification.Chain._.HasLedgerState
d_HasLedgerState_3800 a0 a1 a2 a3 = ()
-- Ledger.Dijkstra.Specification.Chain._.HasUTxOState-LedgerState
d_HasUTxOState'45'LedgerState_3818 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3276 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_HasUTxOState_3336
d_HasUTxOState'45'LedgerState_3818 ~v0 ~v1
  = du_HasUTxOState'45'LedgerState_3818
du_HasUTxOState'45'LedgerState_3818 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_HasUTxOState_3336
du_HasUTxOState'45'LedgerState_3818
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasUTxOState'45'LedgerState_3972
-- Ledger.Dijkstra.Specification.Chain._.LedgerEnv
d_LedgerEnv_3826 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Chain._.LedgerState
d_LedgerState_3830 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Chain._.LedgerStateOf
d_LedgerStateOf_3834 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_HasLedgerState_3956 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3936
d_LedgerStateOf_3834 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_LedgerStateOf_3964
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.HasLedgerState.LedgerStateOf
d_LedgerStateOf_3868 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_HasLedgerState_3956 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3936
d_LedgerStateOf_3868 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_LedgerStateOf_3964
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.LedgerEnv.enactState
d_enactState_3872 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerEnv_3896 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1328
d_enactState_3872 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_enactState_3914
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.LedgerEnv.pparams
d_pparams_3874 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerEnv_3896 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318
d_pparams_3874 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_pparams_3912
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.LedgerEnv.ppolicy
d_ppolicy_3876 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerEnv_3896 ->
  Maybe AgdaAny
d_ppolicy_3876 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_ppolicy_3910
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.LedgerEnv.slot
d_slot_3878 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerEnv_3896 ->
  AgdaAny
d_slot_3878 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_slot_3908
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.LedgerEnv.treasury
d_treasury_3880 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerEnv_3896 ->
  Integer
d_treasury_3880 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_treasury_3916
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.LedgerState.certState
d_certState_3884 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3936 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1584
d_certState_3884 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_certState_3948
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.LedgerState.govSt
d_govSt_3886 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3936 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_3886 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_govSt_3946
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.LedgerState.utxoSt
d_utxoSt_3888 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3936 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3316
d_utxoSt_3888 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_utxoSt_3944
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.EBCert
d_EBCert_3912 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Chain._.ValidEBCert
d_ValidEBCert_3916 a0 a1 a2 a3 a4 a5 = ()
-- Ledger.Dijkstra.Specification.Chain._.certificationDelay
d_certificationDelay_3920 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3276 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  AgdaAny
d_certificationDelay_3920 v0 ~v1 = du_certificationDelay_3920 v0
du_certificationDelay_3920 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  AgdaAny
du_certificationDelay_3920 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.d_certificationDelay_1646
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2896
         (coe v0))
-- Ledger.Dijkstra.Specification.Chain._.EBCert.sig
d_sig_3924 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_EBCert_1648 ->
  AgdaAny
d_sig_3924 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.d_sig_1656
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.EBCert.signers
d_signers_3926 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_EBCert_1648 ->
  [Integer]
d_signers_3926 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.d_signers_1654
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.ValidEBCert.quorum
d_quorum_3930 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_ValidEBCert_1680 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
d_quorum_3930 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.d_quorum_1716
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.ValidEBCert.signersKeyed
d_signersKeyed_3934 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_ValidEBCert_1680 ->
  MAlonzo.Code.Data.List.Relation.Unary.All.T_All_44
d_signersKeyed_3934 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.d_signersKeyed_1710
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.ValidEBCert.signersSeated
d_signersSeated_3936 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_ValidEBCert_1680 ->
  Integer ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_signersSeated_3936 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.d_signersSeated_1706
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.ValidEBCert.validSignature
d_validSignature_3938 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_ValidEBCert_1680 ->
  AgdaAny
d_validSignature_3938 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.d_validSignature_1712
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.EndorserBlock
d_EndorserBlock_3942 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Chain._.hashEB
d_hashEB_3946 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3276 ->
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
      (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_leiosCryptoStructure_1426
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
-- Ledger.Dijkstra.Specification.Chain._._,_⊢_⇀⦇_,EB⦈_
d__'44'_'8866'_'8640''10631'_'44'EB'10632'__3954 a0 a1 a2 a3 a4 a5
                                                 a6
  = ()
-- Ledger.Dijkstra.Specification.Chain._._⊢_⇀⦇_,TICK⦈_
d__'8866'_'8640''10631'_'44'TICK'10632'__4136 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Dijkstra.Specification.Chain._.HasUTxOState
d_HasUTxOState_4234 a0 a1 a2 a3 = ()
-- Ledger.Dijkstra.Specification.Chain._.UTxOStateOf
d_UTxOStateOf_4270 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_HasUTxOState_3336 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3316
d_UTxOStateOf_4270 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_UTxOStateOf_3344
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.HasUTxOState.UTxOStateOf
d_UTxOStateOf_4360 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_HasUTxOState_3336 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3316
d_UTxOStateOf_4360 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_UTxOStateOf_3344
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.EBHash
d_EBHash_4412 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3276 ->
  ()
d_EBHash_4412 = erased
-- Ledger.Dijkstra.Specification.Chain._.RBHeaderHash
d_RBHeaderHash_4414 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3276 ->
  ()
d_RBHeaderHash_4414 = erased
-- Ledger.Dijkstra.Specification.Chain._.rbHeaderHashBytes
d_rbHeaderHashBytes_4416 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3276 ->
  AgdaAny -> AgdaAny
d_rbHeaderHashBytes_4416 v0 ~v1 = du_rbHeaderHashBytes_4416 v0
du_rbHeaderHashBytes_4416 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  AgdaAny -> AgdaAny
du_rbHeaderHashBytes_4416 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Crypto.d_rbHeaderHashBytes_172
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_leiosCryptoStructure_1426
         (coe v0))
-- Ledger.Dijkstra.Specification.Chain.LastAppliedBlock
d_LastAppliedBlock_4418 a0 a1 = ()
data T_LastAppliedBlock_4418
  = C_constructor_4432 AgdaAny AgdaAny
                       (Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14)
-- Ledger.Dijkstra.Specification.Chain.LastAppliedBlock.slot
d_slot_4426 :: T_LastAppliedBlock_4418 -> AgdaAny
d_slot_4426 v0
  = case coe v0 of
      C_constructor_4432 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Chain.LastAppliedBlock.headerHash
d_headerHash_4428 :: T_LastAppliedBlock_4418 -> AgdaAny
d_headerHash_4428 v0
  = case coe v0 of
      C_constructor_4432 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Chain.LastAppliedBlock.announcedEB
d_announcedEB_4430 ::
  T_LastAppliedBlock_4418 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_announcedEB_4430 v0
  = case coe v0 of
      C_constructor_4432 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Chain.ChainState
d_ChainState_4434 a0 a1 = ()
data T_ChainState_4434
  = C_constructor_4444 MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4274
                       (Maybe T_LastAppliedBlock_4418)
-- Ledger.Dijkstra.Specification.Chain.ChainState.newEpochState
d_newEpochState_4440 ::
  T_ChainState_4434 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4274
d_newEpochState_4440 v0
  = case coe v0 of
      C_constructor_4444 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Chain.ChainState.lastApplied
d_lastApplied_4442 ::
  T_ChainState_4434 -> Maybe T_LastAppliedBlock_4418
d_lastApplied_4442 v0
  = case coe v0 of
      C_constructor_4444 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Chain.HasCast-LastAppliedBlock
d_HasCast'45'LastAppliedBlock_4446 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3276 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'LastAppliedBlock_4446 ~v0 ~v1
  = du_HasCast'45'LastAppliedBlock_4446
du_HasCast'45'LastAppliedBlock_4446 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'LastAppliedBlock_4446
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
                                 (4418 :: Integer) (18031157011309193886 :: Integer)
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
                                    (4418 :: Integer) (18031157011309193886 :: Integer)
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
                                    (4414 :: Integer) (18031157011309193886 :: Integer)
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
                                       (4418 :: Integer) (18031157011309193886 :: Integer)
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
                                                   (2686 :: Integer)
                                                   (18031157011309193886 :: Integer)
                                                   "Ledger.Dijkstra.Specification.Chain._.Announcement"
                                                   (MAlonzo.RTE.Fixity
                                                      MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                             (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                       (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))
                     (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
         (coe C_constructor_4432))
-- Ledger.Dijkstra.Specification.Chain.HasNewEpochState-ChainState
d_HasNewEpochState'45'ChainState_4448 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3276 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_HasNewEpochState_4310
d_HasNewEpochState'45'ChainState_4448 ~v0 ~v1
  = du_HasNewEpochState'45'ChainState_4448
du_HasNewEpochState'45'ChainState_4448 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_HasNewEpochState_4310
du_HasNewEpochState'45'ChainState_4448
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.C_constructor_4320
      (coe (\ v0 -> d_newEpochState_4440 (coe v0)))
-- Ledger.Dijkstra.Specification.Chain.HasLastEpoch-ChainState
d_HasLastEpoch'45'ChainState_4450 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3276 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_HasLastEpoch_4330
d_HasLastEpoch'45'ChainState_4450 ~v0 ~v1
  = du_HasLastEpoch'45'ChainState_4450
du_HasLastEpoch'45'ChainState_4450 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_HasLastEpoch_4330
du_HasLastEpoch'45'ChainState_4450
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.C_constructor_4340
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_LastEpochOf_4338
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasLastEpoch'45'NewEpochState_4346)
              (d_newEpochState_4440 (coe v0))))
-- Ledger.Dijkstra.Specification.Chain.HasEpochState-ChainState
d_HasEpochState'45'ChainState_4452 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3276 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_HasEpochState_4236
d_HasEpochState'45'ChainState_4452 ~v0 ~v1
  = du_HasEpochState'45'ChainState_4452
du_HasEpochState'45'ChainState_4452 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_HasEpochState_4236
du_HasEpochState'45'ChainState_4452
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.C_constructor_4246
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_EpochStateOf_4244
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasEpochState'45'NewEpochState_4348)
              (d_newEpochState_4440 (coe v0))))
-- Ledger.Dijkstra.Specification.Chain.HasEnactState-ChainState
d_HasEnactState'45'ChainState_4454 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3276 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_HasEnactState_1356
d_HasEnactState'45'ChainState_4454 ~v0 ~v1
  = du_HasEnactState'45'ChainState_4454
du_HasEnactState'45'ChainState_4454 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_HasEnactState_1356
du_HasEnactState'45'ChainState_4454
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.C_constructor_1366
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1364
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasEnactState'45'EpochState_4258)
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_EpochStateOf_4244
                 (coe
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasEpochState'45'NewEpochState_4348)
                 (d_newEpochState_4440 (coe v0)))))
-- Ledger.Dijkstra.Specification.Chain.HasLedgerState-ChainState
d_HasLedgerState'45'ChainState_4456 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3276 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_HasLedgerState_3956
d_HasLedgerState'45'ChainState_4456 ~v0 ~v1
  = du_HasLedgerState'45'ChainState_4456
du_HasLedgerState'45'ChainState_4456 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_HasLedgerState_3956
du_HasLedgerState'45'ChainState_4456
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.C_constructor_3966
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_LedgerStateOf_3964
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasLedgerState'45'EpochState_4254)
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_EpochStateOf_4244
                 (coe
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasEpochState'45'NewEpochState_4348)
                 (d_newEpochState_4440 (coe v0)))))
-- Ledger.Dijkstra.Specification.Chain.HasUTxOState-ChainState
d_HasUTxOState'45'ChainState_4458 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3276 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_HasUTxOState_3336
d_HasUTxOState'45'ChainState_4458 ~v0 ~v1
  = du_HasUTxOState'45'ChainState_4458
du_HasUTxOState'45'ChainState_4458 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_HasUTxOState_3336
du_HasUTxOState'45'ChainState_4458
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.C_constructor_3346
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_UTxOStateOf_3344
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasUTxOState'45'LedgerState_3972)
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_LedgerStateOf_3964
                 (coe
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasLedgerState'45'EpochState_4254)
                 (coe
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_EpochStateOf_4244
                    (coe
                       MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasEpochState'45'NewEpochState_4348)
                    (d_newEpochState_4440 (coe v0))))))
-- Ledger.Dijkstra.Specification.Chain.HasCertState-ChainState
d_HasCertState'45'ChainState_4460 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3276 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasCertState_1912
d_HasCertState'45'ChainState_4460 ~v0 ~v1
  = du_HasCertState'45'ChainState_4460
du_HasCertState'45'ChainState_4460 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasCertState_1912
du_HasCertState'45'ChainState_4460
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.C_constructor_1922
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_CertStateOf_1920
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasCertState'45'LedgerState_3978)
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_LedgerStateOf_3964
                 (coe
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasLedgerState'45'EpochState_4254)
                 (coe
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_EpochStateOf_4244
                    (coe
                       MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasEpochState'45'NewEpochState_4348)
                    (d_newEpochState_4440 (coe v0))))))
-- Ledger.Dijkstra.Specification.Chain.HasRewards-ChainState
d_HasRewards'45'ChainState_4462 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3276 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasRewards_1792
d_HasRewards'45'ChainState_4462 ~v0 ~v1
  = du_HasRewards'45'ChainState_4462
du_HasRewards'45'ChainState_4462 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasRewards_1792
du_HasRewards'45'ChainState_4462
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.C_constructor_1802
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_RewardsOf_1800
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasRewards'45'CertState_2004)
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_CertStateOf_1920
                 (coe
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasCertState'45'LedgerState_3978)
                 (coe
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_LedgerStateOf_3964
                    (coe
                       MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasLedgerState'45'EpochState_4254)
                    (coe
                       MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_EpochStateOf_4244
                       (coe
                          MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasEpochState'45'NewEpochState_4348)
                       (d_newEpochState_4440 (coe v0)))))))
-- Ledger.Dijkstra.Specification.Chain.HasPParams-ChainState
d_HasPParams'45'ChainState_4464 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3276 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasPParams_736
d_HasPParams'45'ChainState_4464 ~v0 ~v1
  = du_HasPParams'45'ChainState_4464
du_HasPParams'45'ChainState_4464 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasPParams_736
du_HasPParams'45'ChainState_4464
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.C_constructor_746
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_PParamsOf_744
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.du_HasPParams'45'EnactState_1372)
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1364
                 (coe
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasEnactState'45'EpochState_4258)
                 (coe
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_EpochStateOf_4244
                    (coe
                       MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasEpochState'45'NewEpochState_4348)
                    (d_newEpochState_4440 (coe v0))))))
-- Ledger.Dijkstra.Specification.Chain.ResolvedEB
d_ResolvedEB_4468 a0 a1 = ()
data T_ResolvedEB_4468
  = C_constructor_4478 MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.Types.T_EndorserBlock_22
                       [MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3866]
-- Ledger.Dijkstra.Specification.Chain.ResolvedEB.eb
d_eb_4474 ::
  T_ResolvedEB_4468 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.Types.T_EndorserBlock_22
d_eb_4474 v0
  = case coe v0 of
      C_constructor_4478 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Chain.ResolvedEB.closure
d_closure_4476 ::
  T_ResolvedEB_4468 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3866]
d_closure_4476 v0
  = case coe v0 of
      C_constructor_4478 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Chain.pendingEB
d_pendingEB_4480 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3276 ->
  T_LastAppliedBlock_4418 -> Maybe AgdaAny
d_pendingEB_4480 ~v0 ~v1 v2 = du_pendingEB_4480 v2
du_pendingEB_4480 :: T_LastAppliedBlock_4418 -> Maybe AgdaAny
du_pendingEB_4480 v0
  = coe
      MAlonzo.Code.Data.Maybe.Base.du_map_64
      (\ v1 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v1))
      (d_announcedEB_4430 (coe v0))
-- Ledger.Dijkstra.Specification.Chain.announcingEnv
d_announcingEnv_4484 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3276 ->
  T_ChainState_4434 ->
  T_LastAppliedBlock_4418 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerEnv_3896
d_announcingEnv_4484 ~v0 ~v1 v2 v3 = du_announcingEnv_4484 v2 v3
du_announcingEnv_4484 ::
  T_ChainState_4434 ->
  T_LastAppliedBlock_4418 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerEnv_3896
du_announcingEnv_4484 v0 v1
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
                                    (3896 :: Integer) (2632180534421049758 :: Integer)
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
                                       (3896 :: Integer) (2632180534421049758 :: Integer)
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
                                          (3896 :: Integer) (2632180534421049758 :: Integer)
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
                                             (3896 :: Integer) (2632180534421049758 :: Integer)
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
                                             (2704 :: Integer) (2632180534421049758 :: Integer)
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
                                                (3896 :: Integer) (2632180534421049758 :: Integer)
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
               MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.C_constructor_3918)))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe d_slot_4426 (coe v1))
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
            (coe
               MAlonzo.Code.Ledger.Prelude.du_'8739'_'8739'_70
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasCast'45'HashProtected'45'MaybeScriptHash_1350)
               (MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_constitution_1342
                  (coe du_es_4494 (coe v0))))
            (coe
               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_PParamsOf_744
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.du_HasPParams'45'EnactState_1372)
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1364
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasEnactState'45'EpochState_4258)
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_EpochStateOf_4244
                        (coe
                           MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasEpochState'45'NewEpochState_4348)
                        (d_newEpochState_4440 (coe v0)))))
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                  (coe du_es_4494 (coe v0))
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_treasury_206
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4220
                        (coe
                           MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4296
                           (coe d_newEpochState_4440 (coe v0)))))))))
-- Ledger.Dijkstra.Specification.Chain._.es
d_es_4494 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3276 ->
  T_ChainState_4434 ->
  T_LastAppliedBlock_4418 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1328
d_es_4494 ~v0 ~v1 v2 ~v3 = du_es_4494 v2
du_es_4494 ::
  T_ChainState_4434 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1328
du_es_4494 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1364
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasEnactState'45'EpochState_4258)
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_EpochStateOf_4244
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasEpochState'45'NewEpochState_4348)
         (d_newEpochState_4440 (coe v0)))
-- Ledger.Dijkstra.Specification.Chain._⊢_⇀⦇_,CHAIN⦈_
d__'8866'_'8640''10631'_'44'CHAIN'10632'__4500 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'CHAIN'10632'__4500
  = C_CHAIN'45'None_4586 MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4274
                         MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_CHAIN'45'EB_4698 MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_EBCert_1648
                       T_LastAppliedBlock_4418
                       MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4274
                       MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3936
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Dijkstra.Specification.Chain._.lastApplied
d_lastApplied_4512 ::
  T_ChainState_4434 -> Maybe T_LastAppliedBlock_4418
d_lastApplied_4512 v0 = coe d_lastApplied_4442 (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.newEpochState
d_newEpochState_4514 ::
  T_ChainState_4434 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4274
d_newEpochState_4514 v0 = coe d_newEpochState_4440 (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.bHeaderHash
d_bHeaderHash_4522 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3276 ->
  T_GeneralizeTel_27455 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3132 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4274 ->
  T_ChainState_4434 -> AgdaAny
d_bHeaderHash_4522 ~v0 ~v1 ~v2 v3 ~v4 ~v5 = du_bHeaderHash_4522 v3
du_bHeaderHash_4522 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3132 ->
  AgdaAny
du_bHeaderHash_4522 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bHeaderHash_3152
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.bheader
d_bheader_4524 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3276 ->
  T_GeneralizeTel_27455 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3132 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4274 ->
  T_ChainState_4434 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_BHeader_3120
d_bheader_4524 ~v0 ~v1 ~v2 v3 ~v4 ~v5 = du_bheader_4524 v3
du_bheader_4524 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3132 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_BHeader_3120
du_bheader_4524 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bheader_3150
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.ebCert
d_ebCert_4526 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3276 ->
  T_GeneralizeTel_27455 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3132 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4274 ->
  T_ChainState_4434 ->
  Maybe
    MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_EBCert_1648
d_ebCert_4526 ~v0 ~v1 ~v2 v3 ~v4 ~v5 = du_ebCert_4526 v3
du_ebCert_4526 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3132 ->
  Maybe
    MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_EBCert_1648
du_ebCert_4526 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_ebCert_3156
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.bhbody
d_bhbody_4536 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3276 ->
  T_GeneralizeTel_27455 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3132 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4274 ->
  T_ChainState_4434 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_BHBody_3088
d_bhbody_4536 ~v0 ~v1 ~v2 v3 ~v4 ~v5 = du_bhbody_4536 v3
du_bhbody_4536 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3132 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_BHBody_3088
du_bhbody_4536 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bhbody_3126
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bheader_3150
         (coe v0))
-- Ledger.Dijkstra.Specification.Chain._.announcedEB
d_announcedEB_4542 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3276 ->
  T_GeneralizeTel_27455 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3132 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4274 ->
  T_ChainState_4434 -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_announcedEB_4542 ~v0 ~v1 ~v2 v3 ~v4 ~v5 = du_announcedEB_4542 v3
du_announcedEB_4542 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3132 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_announcedEB_4542 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_announcedEB_3114
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bhbody_3126
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bheader_3150
            (coe v0)))
-- Ledger.Dijkstra.Specification.Chain._.slot
d_slot_4554 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3276 ->
  T_GeneralizeTel_27455 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3132 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4274 ->
  T_ChainState_4434 -> AgdaAny
d_slot_4554 ~v0 ~v1 ~v2 v3 ~v4 ~v5 = du_slot_4554 v3
du_slot_4554 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3132 ->
  AgdaAny
du_slot_4554 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_slot_3108
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bhbody_3126
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bheader_3150
            (coe v0)))
-- Ledger.Dijkstra.Specification.Chain._.bcur
d_bcur_4558 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3276 ->
  T_GeneralizeTel_27455 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3132 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4274 ->
  T_ChainState_4434 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_bcur_4558 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_bcur_4558 v4
du_bcur_4558 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4274 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_bcur_4558 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_bcur_4294
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.epochState
d_epochState_4562 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3276 ->
  T_GeneralizeTel_27455 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3132 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4274 ->
  T_ChainState_4434 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_EpochState_4208
d_epochState_4562 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_epochState_4562 v4
du_epochState_4562 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4274 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_EpochState_4208
du_epochState_4562 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4296
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.acnt
d_acnt_4574 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3276 ->
  T_GeneralizeTel_27455 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3132 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4274 ->
  T_ChainState_4434 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_200
d_acnt_4574 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_acnt_4574 v4
du_acnt_4574 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4274 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_200
du_acnt_4574 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4220
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4296
         (coe v0))
-- Ledger.Dijkstra.Specification.Chain._.es
d_es_4576 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3276 ->
  T_GeneralizeTel_27455 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3132 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4274 ->
  T_ChainState_4434 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1328
d_es_4576 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_es_4576 v4
du_es_4576 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4274 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1328
du_es_4576 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_es_4226
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4296
         (coe v0))
-- Ledger.Dijkstra.Specification.Chain._.ls
d_ls_4580 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3276 ->
  T_GeneralizeTel_27455 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3132 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4274 ->
  T_ChainState_4434 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3936
d_ls_4580 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_ls_4580 v4
du_ls_4580 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4274 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3936
du_ls_4580 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4224
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4296
         (coe v0))
-- Ledger.Dijkstra.Specification.Chain._.lastApplied
d_lastApplied_4606 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3276 ->
  T_GeneralizeTel_47787 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3132 ->
  T_ResolvedEB_4468 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_EBCert_1648 ->
  T_LastAppliedBlock_4418 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4274 ->
  T_ChainState_4434 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3936 ->
  Maybe T_LastAppliedBlock_4418
d_lastApplied_4606 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8 ~v9
  = du_lastApplied_4606 v8
du_lastApplied_4606 ::
  T_ChainState_4434 -> Maybe T_LastAppliedBlock_4418
du_lastApplied_4606 v0 = coe d_lastApplied_4442 (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.newEpochState
d_newEpochState_4608 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3276 ->
  T_GeneralizeTel_47787 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3132 ->
  T_ResolvedEB_4468 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_EBCert_1648 ->
  T_LastAppliedBlock_4418 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4274 ->
  T_ChainState_4434 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3936 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4274
d_newEpochState_4608 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8 ~v9
  = du_newEpochState_4608 v8
du_newEpochState_4608 ::
  T_ChainState_4434 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4274
du_newEpochState_4608 v0 = coe d_newEpochState_4440 (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.bHeaderHash
d_bHeaderHash_4616 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3276 ->
  T_GeneralizeTel_47787 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3132 ->
  T_ResolvedEB_4468 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_EBCert_1648 ->
  T_LastAppliedBlock_4418 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4274 ->
  T_ChainState_4434 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3936 ->
  AgdaAny
d_bHeaderHash_4616 ~v0 ~v1 ~v2 v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9
  = du_bHeaderHash_4616 v3
du_bHeaderHash_4616 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3132 ->
  AgdaAny
du_bHeaderHash_4616 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bHeaderHash_3152
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.bheader
d_bheader_4618 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3276 ->
  T_GeneralizeTel_47787 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3132 ->
  T_ResolvedEB_4468 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_EBCert_1648 ->
  T_LastAppliedBlock_4418 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4274 ->
  T_ChainState_4434 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3936 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_BHeader_3120
d_bheader_4618 ~v0 ~v1 ~v2 v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9
  = du_bheader_4618 v3
du_bheader_4618 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3132 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_BHeader_3120
du_bheader_4618 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bheader_3150
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.ebCert
d_ebCert_4620 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3276 ->
  T_GeneralizeTel_47787 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3132 ->
  T_ResolvedEB_4468 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_EBCert_1648 ->
  T_LastAppliedBlock_4418 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4274 ->
  T_ChainState_4434 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3936 ->
  Maybe
    MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_EBCert_1648
d_ebCert_4620 ~v0 ~v1 ~v2 v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9
  = du_ebCert_4620 v3
du_ebCert_4620 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3132 ->
  Maybe
    MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_EBCert_1648
du_ebCert_4620 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_ebCert_3156
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.bhbody
d_bhbody_4630 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3276 ->
  T_GeneralizeTel_47787 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3132 ->
  T_ResolvedEB_4468 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_EBCert_1648 ->
  T_LastAppliedBlock_4418 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4274 ->
  T_ChainState_4434 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3936 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_BHBody_3088
d_bhbody_4630 ~v0 ~v1 ~v2 v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9
  = du_bhbody_4630 v3
du_bhbody_4630 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3132 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_BHBody_3088
du_bhbody_4630 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bhbody_3126
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bheader_3150
         (coe v0))
-- Ledger.Dijkstra.Specification.Chain._.announcedEB
d_announcedEB_4636 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3276 ->
  T_GeneralizeTel_47787 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3132 ->
  T_ResolvedEB_4468 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_EBCert_1648 ->
  T_LastAppliedBlock_4418 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4274 ->
  T_ChainState_4434 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3936 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_announcedEB_4636 ~v0 ~v1 ~v2 v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9
  = du_announcedEB_4636 v3
du_announcedEB_4636 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3132 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_announcedEB_4636 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_announcedEB_3114
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bhbody_3126
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bheader_3150
            (coe v0)))
-- Ledger.Dijkstra.Specification.Chain._.slot
d_slot_4648 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3276 ->
  T_GeneralizeTel_47787 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3132 ->
  T_ResolvedEB_4468 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_EBCert_1648 ->
  T_LastAppliedBlock_4418 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4274 ->
  T_ChainState_4434 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3936 ->
  AgdaAny
d_slot_4648 ~v0 ~v1 ~v2 v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9
  = du_slot_4648 v3
du_slot_4648 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3132 ->
  AgdaAny
du_slot_4648 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_slot_3108
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bhbody_3126
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bheader_3150
            (coe v0)))
-- Ledger.Dijkstra.Specification.Chain._.bcur
d_bcur_4652 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3276 ->
  T_GeneralizeTel_47787 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3132 ->
  T_ResolvedEB_4468 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_EBCert_1648 ->
  T_LastAppliedBlock_4418 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4274 ->
  T_ChainState_4434 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3936 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_bcur_4652 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7 ~v8 ~v9
  = du_bcur_4652 v7
du_bcur_4652 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4274 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_bcur_4652 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_bcur_4294
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.epochState
d_epochState_4656 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3276 ->
  T_GeneralizeTel_47787 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3132 ->
  T_ResolvedEB_4468 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_EBCert_1648 ->
  T_LastAppliedBlock_4418 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4274 ->
  T_ChainState_4434 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3936 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_EpochState_4208
d_epochState_4656 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7 ~v8 ~v9
  = du_epochState_4656 v7
du_epochState_4656 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4274 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_EpochState_4208
du_epochState_4656 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4296
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.acnt
d_acnt_4668 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3276 ->
  T_GeneralizeTel_47787 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3132 ->
  T_ResolvedEB_4468 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_EBCert_1648 ->
  T_LastAppliedBlock_4418 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4274 ->
  T_ChainState_4434 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3936 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_200
d_acnt_4668 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7 ~v8 ~v9
  = du_acnt_4668 v7
du_acnt_4668 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4274 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_200
du_acnt_4668 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4220
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4296
         (coe v0))
-- Ledger.Dijkstra.Specification.Chain._.es
d_es_4670 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3276 ->
  T_GeneralizeTel_47787 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3132 ->
  T_ResolvedEB_4468 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_EBCert_1648 ->
  T_LastAppliedBlock_4418 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4274 ->
  T_ChainState_4434 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3936 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1328
d_es_4670 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7 ~v8 ~v9 = du_es_4670 v7
du_es_4670 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4274 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1328
du_es_4670 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_es_4226
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4296
         (coe v0))
-- Ledger.Dijkstra.Specification.Chain._.ls
d_ls_4674 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3276 ->
  T_GeneralizeTel_47787 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3132 ->
  T_ResolvedEB_4468 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_EBCert_1648 ->
  T_LastAppliedBlock_4418 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4274 ->
  T_ChainState_4434 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3936 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3936
d_ls_4674 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7 ~v8 ~v9 = du_ls_4674 v7
du_ls_4674 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4274 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3936
du_ls_4674 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4224
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4296
         (coe v0))
-- Ledger.Dijkstra.Specification.Chain._.slot
d_slot_4680 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3276 ->
  T_GeneralizeTel_47787 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3132 ->
  T_ResolvedEB_4468 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_EBCert_1648 ->
  T_LastAppliedBlock_4418 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4274 ->
  T_ChainState_4434 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3936 ->
  AgdaAny
d_slot_4680 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 ~v7 ~v8 ~v9
  = du_slot_4680 v6
du_slot_4680 :: T_LastAppliedBlock_4418 -> AgdaAny
du_slot_4680 v0 = coe d_slot_4426 (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.headerHash
d_headerHash_4682 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3276 ->
  T_GeneralizeTel_47787 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3132 ->
  T_ResolvedEB_4468 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_EBCert_1648 ->
  T_LastAppliedBlock_4418 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4274 ->
  T_ChainState_4434 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3936 ->
  AgdaAny
d_headerHash_4682 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 ~v7 ~v8 ~v9
  = du_headerHash_4682 v6
du_headerHash_4682 :: T_LastAppliedBlock_4418 -> AgdaAny
du_headerHash_4682 v0 = coe d_headerHash_4428 (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.closure
d_closure_4686 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3276 ->
  T_GeneralizeTel_47787 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3132 ->
  T_ResolvedEB_4468 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_EBCert_1648 ->
  T_LastAppliedBlock_4418 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4274 ->
  T_ChainState_4434 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3936 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3866]
d_closure_4686 ~v0 ~v1 ~v2 ~v3 v4 ~v5 ~v6 ~v7 ~v8 ~v9
  = du_closure_4686 v4
du_closure_4686 ::
  T_ResolvedEB_4468 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3866]
du_closure_4686 v0 = coe d_closure_4476 (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.eb
d_eb_4688 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3276 ->
  T_GeneralizeTel_47787 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3132 ->
  T_ResolvedEB_4468 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_EBCert_1648 ->
  T_LastAppliedBlock_4418 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4274 ->
  T_ChainState_4434 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3936 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.Types.T_EndorserBlock_22
d_eb_4688 ~v0 ~v1 ~v2 ~v3 v4 ~v5 ~v6 ~v7 ~v8 ~v9 = du_eb_4688 v4
du_eb_4688 ::
  T_ResolvedEB_4468 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.Types.T_EndorserBlock_22
du_eb_4688 v0 = coe d_eb_4474 (coe v0)
-- Ledger.Dijkstra.Specification.Chain..generalizedField-ls'
d_'46'generalizedField'45'ls''_27453 ::
  T_GeneralizeTel_27455 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3936
d_'46'generalizedField'45'ls''_27453 v0
  = case coe v0 of
      C_mkGeneralizeTel_27457 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Chain.GeneralizeTel
d_GeneralizeTel_27455 a0 a1 = ()
newtype T_GeneralizeTel_27455
  = C_mkGeneralizeTel_27457 MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3936
-- Ledger.Dijkstra.Specification.Chain..generalizedField-ls'
d_'46'generalizedField'45'ls''_47785 ::
  T_GeneralizeTel_47787 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3936
d_'46'generalizedField'45'ls''_47785 v0
  = case coe v0 of
      C_mkGeneralizeTel_47789 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Chain.GeneralizeTel
d_GeneralizeTel_47787 a0 a1 = ()
newtype T_GeneralizeTel_47787
  = C_mkGeneralizeTel_47789 MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3936
