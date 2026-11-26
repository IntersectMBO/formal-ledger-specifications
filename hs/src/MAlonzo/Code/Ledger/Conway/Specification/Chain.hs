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

module MAlonzo.Code.Ledger.Conway.Specification.Chain where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Builtin.Unit
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Class.Functor.Core
import qualified MAlonzo.Code.Class.Functor.Instances
import qualified MAlonzo.Code.Data.Nat.ListAction
import qualified MAlonzo.Code.Ledger.Conway.Specification.Abstract
import qualified MAlonzo.Code.Ledger.Conway.Specification.BlockBody
import qualified MAlonzo.Code.Ledger.Conway.Specification.Certs
import qualified MAlonzo.Code.Ledger.Conway.Specification.Enact
import qualified MAlonzo.Code.Ledger.Conway.Specification.Epoch
import qualified MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions
import qualified MAlonzo.Code.Ledger.Conway.Specification.Ledger
import qualified MAlonzo.Code.Ledger.Conway.Specification.PParams
import qualified MAlonzo.Code.Ledger.Conway.Specification.RewardUpdate
import qualified MAlonzo.Code.Ledger.Conway.Specification.Rewards
import qualified MAlonzo.Code.Ledger.Conway.Specification.Transaction
import qualified MAlonzo.Code.Ledger.Conway.Specification.Utxo
import qualified MAlonzo.Code.Ledger.Prelude
import qualified MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base

-- _.HasCast-HashProtected
d_HasCast'45'HashProtected_258 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  () ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'HashProtected_258 ~v0
  = du_HasCast'45'HashProtected_258
du_HasCast'45'HashProtected_258 ::
  () ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'HashProtected_258 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasCast'45'HashProtected_1100
-- _.HasPParams
d_HasPParams_336 a0 a1 a2 = ()
-- _.PParamsOf
d_PParamsOf_488 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_438 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288
d_PParamsOf_488 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_PParamsOf_446
      (coe v0)
-- _.Tx
d_Tx_628 a0 = ()
-- _.HasPParams.PParamsOf
d_PParamsOf_1312 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_438 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288
d_PParamsOf_1312 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_PParamsOf_446
      (coe v0)
-- _.Tx.body
d_body_1948 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3650 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3446
d_body_1948 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3662
      (coe v0)
-- _.Tx.isValid
d_isValid_1950 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3650 ->
  Bool
d_isValid_1950 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_isValid_3668
      (coe v0)
-- _.Tx.txAD
d_txAD_1952 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3650 ->
  Maybe AgdaAny
d_txAD_1952 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txAD_3670
      (coe v0)
-- _.Tx.txsize
d_txsize_1954 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3650 ->
  Integer
d_txsize_1954 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txsize_3666
      (coe v0)
-- _.Tx.wits
d_wits_1956 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3650 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3628
d_wits_1956 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3664
      (coe v0)
-- Ledger.Conway.Specification.Chain._._⊢_⇀⦇_,BBODY⦈_
d__'8866'_'8640''10631'_'44'BBODY'10632'__2044 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Specification.Chain._.BBodyEnv
d_BBodyEnv_2048 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2518 ->
  ()
d_BBodyEnv_2048 = erased
-- Ledger.Conway.Specification.Chain._.BBodyState
d_BBodyState_2050 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2518 ->
  ()
d_BBodyState_2050 = erased
-- Ledger.Conway.Specification.Chain._.BHBody
d_BHBody_2052 a0 a1 = ()
-- Ledger.Conway.Specification.Chain._.BHeader
d_BHeader_2056 a0 a1 = ()
-- Ledger.Conway.Specification.Chain._.Block
d_Block_2060 a0 a1 = ()
-- Ledger.Conway.Specification.Chain._.incrBlocks
d_incrBlocks_2064 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2518 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_incrBlocks_2064 v0 ~v1 = du_incrBlocks_2064 v0
du_incrBlocks_2064 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_incrBlocks_2064 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.du_incrBlocks_2400
      (coe v0)
-- Ledger.Conway.Specification.Chain._.BHBody.bhash
d_bhash_2072 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_BHBody_2332 ->
  AgdaAny
d_bhash_2072 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bhash_2350
      (coe v0)
-- Ledger.Conway.Specification.Chain._.BHBody.bsize
d_bsize_2074 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_BHBody_2332 ->
  Integer
d_bsize_2074 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bsize_2346
      (coe v0)
-- Ledger.Conway.Specification.Chain._.BHBody.bvkcold
d_bvkcold_2076 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_BHBody_2332 ->
  AgdaAny
d_bvkcold_2076 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bvkcold_2344
      (coe v0)
-- Ledger.Conway.Specification.Chain._.BHBody.hBbsize
d_hBbsize_2078 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_BHBody_2332 ->
  Integer
d_hBbsize_2078 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_hBbsize_2352
      (coe v0)
-- Ledger.Conway.Specification.Chain._.BHBody.slot
d_slot_2080 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_BHBody_2332 ->
  AgdaAny
d_slot_2080 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_slot_2348
      (coe v0)
-- Ledger.Conway.Specification.Chain._.BHeader.bhbody
d_bhbody_2084 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_BHeader_2356 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_BHBody_2332
d_bhbody_2084 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bhbody_2362
      (coe v0)
-- Ledger.Conway.Specification.Chain._.BHeader.bhsig
d_bhsig_2086 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_BHeader_2356 ->
  AgdaAny
d_bhsig_2086 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bhsig_2364
      (coe v0)
-- Ledger.Conway.Specification.Chain._.Block.bBodyHash
d_bBodyHash_2090 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2368 ->
  AgdaAny
d_bBodyHash_2090 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bBodyHash_2388
      (coe v0)
-- Ledger.Conway.Specification.Chain._.Block.bBodySize
d_bBodySize_2092 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2368 ->
  Integer
d_bBodySize_2092 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bBodySize_2386
      (coe v0)
-- Ledger.Conway.Specification.Chain._.Block.bheader
d_bheader_2094 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2368 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_BHeader_2356
d_bheader_2094 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bheader_2382
      (coe v0)
-- Ledger.Conway.Specification.Chain._.Block.ts
d_ts_2096 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2368 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3650]
d_ts_2096 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_ts_2384
      (coe v0)
-- Ledger.Conway.Specification.Chain._.Block.≡-bBodyHash
d_'8801''45'bBodyHash_2098 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2368 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8801''45'bBodyHash_2098 = erased
-- Ledger.Conway.Specification.Chain._.Block.≡-bBodySize
d_'8801''45'bBodySize_2100 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2368 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8801''45'bBodySize_2100 = erased
-- Ledger.Conway.Specification.Chain._.CertStateOf
d_CertStateOf_2136 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCertState_1562 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1466
d_CertStateOf_2136 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_CertStateOf_1570
      (coe v0)
-- Ledger.Conway.Specification.Chain._.DepositsOf
d_DepositsOf_2170 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_1206 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DepositsOf_2170 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DepositsOf_1214
      (coe v0)
-- Ledger.Conway.Specification.Chain._.HasCertState
d_HasCertState_2206 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Chain._.HasDeposits
d_HasDeposits_2222 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Chain._.HasRewards
d_HasRewards_2254 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Chain._.HasRewards-CertState
d_HasRewards'45'CertState_2258 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2518 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1290
d_HasRewards'45'CertState_2258 ~v0 ~v1
  = du_HasRewards'45'CertState_2258
du_HasRewards'45'CertState_2258 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1290
du_HasRewards'45'CertState_2258
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasRewards'45'CertState_1602
-- Ledger.Conway.Specification.Chain._.RewardsOf
d_RewardsOf_2304 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1290 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RewardsOf_2304 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_RewardsOf_1298
      (coe v0)
-- Ledger.Conway.Specification.Chain._.HasCertState.CertStateOf
d_CertStateOf_2456 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCertState_1562 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1466
d_CertStateOf_2456 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_CertStateOf_1570
      (coe v0)
-- Ledger.Conway.Specification.Chain._.HasDeposits.DepositsOf
d_DepositsOf_2464 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_1206 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DepositsOf_2464 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DepositsOf_1214
      (coe v0)
-- Ledger.Conway.Specification.Chain._.HasRewards.RewardsOf
d_RewardsOf_2484 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1290 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RewardsOf_2484 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_RewardsOf_1298
      (coe v0)
-- Ledger.Conway.Specification.Chain._.EnactStateOf
d_EnactStateOf_2540 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_HasEnactState_1214 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1186
d_EnactStateOf_2540 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_EnactStateOf_1222
      (coe v0)
-- Ledger.Conway.Specification.Chain._.HasEnactState
d_HasEnactState_2544 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Chain._.HasPParams-EnactState
d_HasPParams'45'EnactState_2548 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2518 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_438
d_HasPParams'45'EnactState_2548 ~v0 ~v1
  = du_HasPParams'45'EnactState_2548
du_HasPParams'45'EnactState_2548 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_438
du_HasPParams'45'EnactState_2548
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.du_HasPParams'45'EnactState_1230
-- Ledger.Conway.Specification.Chain._.HasEnactState.EnactStateOf
d_EnactStateOf_2598 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_HasEnactState_1214 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1186
d_EnactStateOf_2598 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_EnactStateOf_1222
      (coe v0)
-- Ledger.Conway.Specification.Chain._.EpochStateOf
d_EpochStateOf_2612 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasEpochState_3324 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3296
d_EpochStateOf_2612 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_EpochStateOf_3332
      (coe v0)
-- Ledger.Conway.Specification.Chain._.HasEnactState-EpochState
d_HasEnactState'45'EpochState_2632 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2518 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_HasEnactState_1214
d_HasEnactState'45'EpochState_2632 ~v0 ~v1
  = du_HasEnactState'45'EpochState_2632
du_HasEnactState'45'EpochState_2632 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_HasEnactState_1214
du_HasEnactState'45'EpochState_2632
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasEnactState'45'EpochState_3346
-- Ledger.Conway.Specification.Chain._.HasEpochState
d_HasEpochState_2636 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Chain._.HasEpochState-NewEpochState
d_HasEpochState'45'NewEpochState_2640 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2518 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasEpochState_3324
d_HasEpochState'45'NewEpochState_2640 ~v0 ~v1
  = du_HasEpochState'45'NewEpochState_2640
du_HasEpochState'45'NewEpochState_2640 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasEpochState_3324
du_HasEpochState'45'NewEpochState_2640
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasEpochState'45'NewEpochState_3438
-- Ledger.Conway.Specification.Chain._.HasLState-EpochState
d_HasLState'45'EpochState_2646 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2518 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_HasLState_2994
d_HasLState'45'EpochState_2646 ~v0 ~v1
  = du_HasLState'45'EpochState_2646
du_HasLState'45'EpochState_2646 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_HasLState_2994
du_HasLState'45'EpochState_2646
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasLState'45'EpochState_3342
-- Ledger.Conway.Specification.Chain._.HasLastEpoch
d_HasLastEpoch_2650 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Chain._.HasLastEpoch-NewEpochState
d_HasLastEpoch'45'NewEpochState_2654 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2518 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasLastEpoch_3420
d_HasLastEpoch'45'NewEpochState_2654 ~v0 ~v1
  = du_HasLastEpoch'45'NewEpochState_2654
du_HasLastEpoch'45'NewEpochState_2654 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasLastEpoch_3420
du_HasLastEpoch'45'NewEpochState_2654
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasLastEpoch'45'NewEpochState_3436
-- Ledger.Conway.Specification.Chain._.HasNewEpochState
d_HasNewEpochState_2656 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Chain._.LastEpochOf
d_LastEpochOf_2682 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasLastEpoch_3420 ->
  AgdaAny -> AgdaAny
d_LastEpochOf_2682 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_LastEpochOf_3428
      (coe v0)
-- Ledger.Conway.Specification.Chain._.NewEpochState
d_NewEpochState_2690 a0 a1 = ()
-- Ledger.Conway.Specification.Chain._.NewEpochStateOf
d_NewEpochStateOf_2694 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasNewEpochState_3400 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3368
d_NewEpochStateOf_2694 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_NewEpochStateOf_3408
      (coe v0)
-- Ledger.Conway.Specification.Chain._.HasEpochState.EpochStateOf
d_EpochStateOf_2778 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasEpochState_3324 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3296
d_EpochStateOf_2778 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_EpochStateOf_3332
      (coe v0)
-- Ledger.Conway.Specification.Chain._.HasLastEpoch.LastEpochOf
d_LastEpochOf_2782 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasLastEpoch_3420 ->
  AgdaAny -> AgdaAny
d_LastEpochOf_2782 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_LastEpochOf_3428
      (coe v0)
-- Ledger.Conway.Specification.Chain._.HasNewEpochState.NewEpochStateOf
d_NewEpochStateOf_2786 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasNewEpochState_3400 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3368
d_NewEpochStateOf_2786 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_NewEpochStateOf_3408
      (coe v0)
-- Ledger.Conway.Specification.Chain._.NewEpochState.bcur
d_bcur_2790 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3368 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_bcur_2790 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_bcur_3386 (coe v0)
-- Ledger.Conway.Specification.Chain._.NewEpochState.bprev
d_bprev_2792 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3368 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_bprev_2792 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_bprev_3384
      (coe v0)
-- Ledger.Conway.Specification.Chain._.NewEpochState.epochState
d_epochState_2794 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3368 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3296
d_epochState_2794 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_epochState_3388
      (coe v0)
-- Ledger.Conway.Specification.Chain._.NewEpochState.lastEpoch
d_lastEpoch_2796 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3368 ->
  AgdaAny
d_lastEpoch_2796 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_lastEpoch_3382
      (coe v0)
-- Ledger.Conway.Specification.Chain._.NewEpochState.pd
d_pd_2798 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3368 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pd_2798 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_pd_3392 (coe v0)
-- Ledger.Conway.Specification.Chain._.NewEpochState.ru
d_ru_2800 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3368 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_3018
d_ru_2800 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_ru_3390 (coe v0)
-- Ledger.Conway.Specification.Chain._.HasCertState-LState
d_HasCertState'45'LState_3010 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2518 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCertState_1562
d_HasCertState'45'LState_3010 ~v0 ~v1
  = du_HasCertState'45'LState_3010
du_HasCertState'45'LState_3010 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCertState_1562
du_HasCertState'45'LState_3010
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasCertState'45'LState_3016
-- Ledger.Conway.Specification.Chain._.HasLState
d_HasLState_3026 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Chain._.HasUTxOState-LState
d_HasUTxOState'45'LState_3038 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2518 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_HasUTxOState_2536
d_HasUTxOState'45'LState_3038 ~v0 ~v1
  = du_HasUTxOState'45'LState_3038
du_HasUTxOState'45'LState_3038 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_HasUTxOState_2536
du_HasUTxOState'45'LState_3038
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasUTxOState'45'LState_3010
-- Ledger.Conway.Specification.Chain._.LState
d_LState_3050 a0 a1 = ()
-- Ledger.Conway.Specification.Chain._.LStateOf
d_LStateOf_3054 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_HasLState_2994 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2974
d_LStateOf_3054 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_LStateOf_3002
      (coe v0)
-- Ledger.Conway.Specification.Chain._.HasLState.LStateOf
d_LStateOf_3072 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_HasLState_2994 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2974
d_LStateOf_3072 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_LStateOf_3002
      (coe v0)
-- Ledger.Conway.Specification.Chain._.LState.certState
d_certState_3088 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2974 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1466
d_certState_3088 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_certState_2986
      (coe v0)
-- Ledger.Conway.Specification.Chain._.LState.govSt
d_govSt_3090 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2974 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_3090 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_govSt_2984
      (coe v0)
-- Ledger.Conway.Specification.Chain._.LState.utxoSt
d_utxoSt_3092 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2974 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2512
d_utxoSt_3092 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_utxoSt_2982
      (coe v0)
-- Ledger.Conway.Specification.Chain._._⊢_⇀⦇_,TICK⦈_
d__'8866'_'8640''10631'_'44'TICK'10632'__3282 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Specification.Chain._.HasDeposits-UTxOState
d_HasDeposits'45'UTxOState_3324 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2518 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_1206
d_HasDeposits'45'UTxOState_3324 ~v0 ~v1
  = du_HasDeposits'45'UTxOState_3324
du_HasDeposits'45'UTxOState_3324 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_1206
du_HasDeposits'45'UTxOState_3324
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_HasDeposits'45'UTxOState_2558
-- Ledger.Conway.Specification.Chain._.HasUTxOState
d_HasUTxOState_3334 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Chain._.UTxOStateOf
d_UTxOStateOf_3358 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_HasUTxOState_2536 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2512
d_UTxOStateOf_3358 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_UTxOStateOf_2544
      (coe v0)
-- Ledger.Conway.Specification.Chain._.HasUTxOState.UTxOStateOf
d_UTxOStateOf_3448 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_HasUTxOState_2536 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2512
d_UTxOStateOf_3448 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_UTxOStateOf_2544
      (coe v0)
-- Ledger.Conway.Specification.Chain.ChainState
d_ChainState_3498 a0 a1 = ()
newtype T_ChainState_3498
  = C_constructor_3504 MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3368
-- Ledger.Conway.Specification.Chain.ChainState.newEpochState
d_newEpochState_3502 ::
  T_ChainState_3498 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3368
d_newEpochState_3502 v0
  = case coe v0 of
      C_constructor_3504 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Chain.HasNewEpochState-ChainState
d_HasNewEpochState'45'ChainState_3506 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2518 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasNewEpochState_3400
d_HasNewEpochState'45'ChainState_3506 ~v0 ~v1
  = du_HasNewEpochState'45'ChainState_3506
du_HasNewEpochState'45'ChainState_3506 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasNewEpochState_3400
du_HasNewEpochState'45'ChainState_3506
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.C_constructor_3410
      (coe (\ v0 -> d_newEpochState_3502 (coe v0)))
-- Ledger.Conway.Specification.Chain.HasLastEpoch-ChainState
d_HasLastEpoch'45'ChainState_3508 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2518 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasLastEpoch_3420
d_HasLastEpoch'45'ChainState_3508 ~v0 ~v1
  = du_HasLastEpoch'45'ChainState_3508
du_HasLastEpoch'45'ChainState_3508 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasLastEpoch_3420
du_HasLastEpoch'45'ChainState_3508
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.C_constructor_3430
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_LastEpochOf_3428
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasLastEpoch'45'NewEpochState_3436)
              (d_newEpochState_3502 (coe v0))))
-- Ledger.Conway.Specification.Chain.HasEpochState-ChainState
d_HasEpochState'45'ChainState_3510 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2518 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasEpochState_3324
d_HasEpochState'45'ChainState_3510 ~v0 ~v1
  = du_HasEpochState'45'ChainState_3510
du_HasEpochState'45'ChainState_3510 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasEpochState_3324
du_HasEpochState'45'ChainState_3510
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.C_constructor_3334
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_EpochStateOf_3332
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasEpochState'45'NewEpochState_3438)
              (d_newEpochState_3502 (coe v0))))
-- Ledger.Conway.Specification.Chain.HasEnactState-ChainState
d_HasEnactState'45'ChainState_3512 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2518 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_HasEnactState_1214
d_HasEnactState'45'ChainState_3512 ~v0 ~v1
  = du_HasEnactState'45'ChainState_3512
du_HasEnactState'45'ChainState_3512 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_HasEnactState_1214
du_HasEnactState'45'ChainState_3512
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.C_constructor_1224
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Enact.d_EnactStateOf_1222
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasEnactState'45'EpochState_3346)
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_EpochStateOf_3332
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasEpochState'45'NewEpochState_3438)
                 (d_newEpochState_3502 (coe v0)))))
-- Ledger.Conway.Specification.Chain.HasLState-ChainState
d_HasLState'45'ChainState_3514 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2518 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_HasLState_2994
d_HasLState'45'ChainState_3514 ~v0 ~v1
  = du_HasLState'45'ChainState_3514
du_HasLState'45'ChainState_3514 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_HasLState_2994
du_HasLState'45'ChainState_3514
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.C_constructor_3004
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_LStateOf_3002
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasLState'45'EpochState_3342)
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_EpochStateOf_3332
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasEpochState'45'NewEpochState_3438)
                 (d_newEpochState_3502 (coe v0)))))
-- Ledger.Conway.Specification.Chain.HasUTxOState-ChainState
d_HasUTxOState'45'ChainState_3516 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2518 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_HasUTxOState_2536
d_HasUTxOState'45'ChainState_3516 ~v0 ~v1
  = du_HasUTxOState'45'ChainState_3516
du_HasUTxOState'45'ChainState_3516 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_HasUTxOState_2536
du_HasUTxOState'45'ChainState_3516
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.C_constructor_2546
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_UTxOStateOf_2544
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasUTxOState'45'LState_3010)
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_LStateOf_3002
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasLState'45'EpochState_3342)
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_EpochStateOf_3332
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasEpochState'45'NewEpochState_3438)
                    (d_newEpochState_3502 (coe v0))))))
-- Ledger.Conway.Specification.Chain.HasCertState-ChainState
d_HasCertState'45'ChainState_3518 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2518 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCertState_1562
d_HasCertState'45'ChainState_3518 ~v0 ~v1
  = du_HasCertState'45'ChainState_3518
du_HasCertState'45'ChainState_3518 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCertState_1562
du_HasCertState'45'ChainState_3518
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_constructor_1572
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Certs.d_CertStateOf_1570
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasCertState'45'LState_3016)
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_LStateOf_3002
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasLState'45'EpochState_3342)
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_EpochStateOf_3332
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasEpochState'45'NewEpochState_3438)
                    (d_newEpochState_3502 (coe v0))))))
-- Ledger.Conway.Specification.Chain.HasDeposits-ChainState
d_HasDeposits'45'ChainState_3520 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2518 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_1206
d_HasDeposits'45'ChainState_3520 ~v0 ~v1
  = du_HasDeposits'45'ChainState_3520
du_HasDeposits'45'ChainState_3520 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_1206
du_HasDeposits'45'ChainState_3520
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_constructor_1216
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DepositsOf_1214
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_HasDeposits'45'UTxOState_2558)
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_UTxOStateOf_2544
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasUTxOState'45'LState_3010)
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_LStateOf_3002
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasLState'45'EpochState_3342)
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_EpochStateOf_3332
                       (coe
                          MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasEpochState'45'NewEpochState_3438)
                       (d_newEpochState_3502 (coe v0)))))))
-- Ledger.Conway.Specification.Chain.HasRewards-ChainState
d_HasRewards'45'ChainState_3522 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2518 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1290
d_HasRewards'45'ChainState_3522 ~v0 ~v1
  = du_HasRewards'45'ChainState_3522
du_HasRewards'45'ChainState_3522 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1290
du_HasRewards'45'ChainState_3522
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_constructor_1300
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Certs.d_RewardsOf_1298
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasRewards'45'CertState_1602)
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Certs.d_CertStateOf_1570
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasCertState'45'LState_3016)
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_LStateOf_3002
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasLState'45'EpochState_3342)
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_EpochStateOf_3332
                       (coe
                          MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasEpochState'45'NewEpochState_3438)
                       (d_newEpochState_3502 (coe v0)))))))
-- Ledger.Conway.Specification.Chain.HasPParams-ChainState
d_HasPParams'45'ChainState_3524 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2518 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_438
d_HasPParams'45'ChainState_3524 ~v0 ~v1
  = du_HasPParams'45'ChainState_3524
du_HasPParams'45'ChainState_3524 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_438
du_HasPParams'45'ChainState_3524
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.C_constructor_448
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.PParams.d_PParamsOf_446
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Enact.du_HasPParams'45'EnactState_1230)
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Enact.d_EnactStateOf_1222
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasEnactState'45'EpochState_3346)
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_EpochStateOf_3332
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasEpochState'45'NewEpochState_3438)
                    (d_newEpochState_3502 (coe v0))))))
-- Ledger.Conway.Specification.Chain.totalRefScriptsSize
d_totalRefScriptsSize_3526 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2518 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2974 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3650] ->
  Integer
d_totalRefScriptsSize_3526 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.Nat.ListAction.d_sum_6
      (coe
         MAlonzo.Code.Class.Functor.Core.du_fmap_24
         MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
         () erased
         (MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_refScriptsSize_2592
            (coe v0) (coe v1)
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2522
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_utxoSt_2982
                  (coe v2))))
         v3)
-- Ledger.Conway.Specification.Chain._⊢_⇀⦇_,CHAIN⦈_
d__'8866'_'8640''10631'_'44'CHAIN'10632'__3548 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'CHAIN'10632'__3548
  = C_CHAIN_3638 MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3368
                 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Specification.Chain._.newEpochState
d_newEpochState_3560 ::
  T_ChainState_3498 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3368
d_newEpochState_3560 v0 = coe d_newEpochState_3502 (coe v0)
-- Ledger.Conway.Specification.Chain._.bheader
d_bheader_3568 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2518 ->
  T_GeneralizeTel_19529 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2368 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3368 ->
  T_ChainState_3498 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_BHeader_2356
d_bheader_3568 ~v0 ~v1 ~v2 v3 ~v4 ~v5 = du_bheader_3568 v3
du_bheader_3568 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2368 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_BHeader_2356
du_bheader_3568 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bheader_2382
      (coe v0)
-- Ledger.Conway.Specification.Chain._.ts
d_ts_3570 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2518 ->
  T_GeneralizeTel_19529 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2368 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3368 ->
  T_ChainState_3498 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3650]
d_ts_3570 ~v0 ~v1 ~v2 v3 ~v4 ~v5 = du_ts_3570 v3
du_ts_3570 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2368 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3650]
du_ts_3570 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_ts_2384
      (coe v0)
-- Ledger.Conway.Specification.Chain._.bhbody
d_bhbody_3578 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2518 ->
  T_GeneralizeTel_19529 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2368 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3368 ->
  T_ChainState_3498 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_BHBody_2332
d_bhbody_3578 ~v0 ~v1 ~v2 v3 ~v4 ~v5 = du_bhbody_3578 v3
du_bhbody_3578 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2368 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_BHBody_2332
du_bhbody_3578 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bhbody_2362
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bheader_2382
         (coe v0))
-- Ledger.Conway.Specification.Chain._.slot
d_slot_3592 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2518 ->
  T_GeneralizeTel_19529 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2368 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3368 ->
  T_ChainState_3498 -> AgdaAny
d_slot_3592 ~v0 ~v1 ~v2 v3 ~v4 ~v5 = du_slot_3592 v3
du_slot_3592 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2368 ->
  AgdaAny
du_slot_3592 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_slot_2348
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bhbody_2362
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bheader_2382
            (coe v0)))
-- Ledger.Conway.Specification.Chain._.bcur
d_bcur_3596 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2518 ->
  T_GeneralizeTel_19529 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2368 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3368 ->
  T_ChainState_3498 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_bcur_3596 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_bcur_3596 v4
du_bcur_3596 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3368 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_bcur_3596 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_bcur_3386 (coe v0)
-- Ledger.Conway.Specification.Chain._.epochState
d_epochState_3600 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2518 ->
  T_GeneralizeTel_19529 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2368 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3368 ->
  T_ChainState_3498 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3296
d_epochState_3600 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_epochState_3600 v4
du_epochState_3600 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3368 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3296
du_epochState_3600 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_epochState_3388
      (coe v0)
-- Ledger.Conway.Specification.Chain._.acnt
d_acnt_3610 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2518 ->
  T_GeneralizeTel_19529 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2368 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3368 ->
  T_ChainState_3498 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_190
d_acnt_3610 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_acnt_3610 v4
du_acnt_3610 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3368 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_190
du_acnt_3610 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_acnt_3308
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_epochState_3388
         (coe v0))
-- Ledger.Conway.Specification.Chain._.es
d_es_3612 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2518 ->
  T_GeneralizeTel_19529 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2368 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3368 ->
  T_ChainState_3498 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1186
d_es_3612 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_es_3612 v4
du_es_3612 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3368 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1186
du_es_3612 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_es_3314
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_epochState_3388
         (coe v0))
-- Ledger.Conway.Specification.Chain._.ls
d_ls_3616 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2518 ->
  T_GeneralizeTel_19529 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2368 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3368 ->
  T_ChainState_3498 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2974
d_ls_3616 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_ls_3616 v4
du_ls_3616 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3368 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2974
du_ls_3616 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_ls_3312
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_epochState_3388
         (coe v0))
-- Ledger.Conway.Specification.Chain._.pparams
d_pparams_3626 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2518 ->
  T_GeneralizeTel_19529 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2368 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3368 ->
  T_ChainState_3498 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pparams_3626 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_pparams_3626 v4
du_pparams_3626 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3368 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_pparams_3626 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pparams_1204
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_es_3314
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_epochState_3388
            (coe v0)))
-- Ledger.Conway.Specification.Chain._.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_3634 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2518 ->
  T_GeneralizeTel_19529 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2368 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3368 ->
  T_ChainState_3498 -> Integer
d_maxRefScriptSizePerBlock_3634 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_maxRefScriptSizePerBlock_3634 v5
du_maxRefScriptSizePerBlock_3634 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3368 ->
  Integer
du_maxRefScriptSizePerBlock_3634 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerBlock_396
      (coe
         MAlonzo.Code.Ledger.Prelude.du_'8739'_'8739'_70
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasCast'45'HashProtected_1100)
         (MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pparams_1204
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_es_3314
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_epochState_3388
                  (coe v0)))))
-- Ledger.Conway.Specification.Chain._⊢_⇀⦇_,CHAINS⦈_
d__'8866'_'8640''10631'_'44'CHAINS'10632'__3640 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2518 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  T_ChainState_3498 ->
  [MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2368] ->
  T_ChainState_3498 -> ()
d__'8866'_'8640''10631'_'44'CHAINS'10632'__3640 = erased
-- Ledger.Conway.Specification.Chain..generalizedField-ls'
d_'46'generalizedField'45'ls''_19527 ::
  T_GeneralizeTel_19529 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2974
d_'46'generalizedField'45'ls''_19527 v0
  = case coe v0 of
      C_mkGeneralizeTel_19531 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Chain.GeneralizeTel
d_GeneralizeTel_19529 a0 a1 = ()
newtype T_GeneralizeTel_19529
  = C_mkGeneralizeTel_19531 MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2974
