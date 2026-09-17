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
d_PParamsOf_486 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_436 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286
d_PParamsOf_486 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_PParamsOf_444
      (coe v0)
-- _.Tx
d_Tx_626 a0 = ()
-- _.HasPParams.PParamsOf
d_PParamsOf_1312 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_436 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286
d_PParamsOf_1312 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_PParamsOf_444
      (coe v0)
-- _.Tx.body
d_body_1948 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3646 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3446
d_body_1948 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3658
      (coe v0)
-- _.Tx.isValid
d_isValid_1950 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3646 ->
  Bool
d_isValid_1950 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_isValid_3664
      (coe v0)
-- _.Tx.txAD
d_txAD_1952 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3646 ->
  Maybe AgdaAny
d_txAD_1952 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txAD_3666
      (coe v0)
-- _.Tx.txsize
d_txsize_1954 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3646 ->
  Integer
d_txsize_1954 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txsize_3662
      (coe v0)
-- _.Tx.wits
d_wits_1956 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3646 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3624
d_wits_1956 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3660
      (coe v0)
-- Ledger.Conway.Specification.Chain._._⊢_⇀⦇_,BBODY⦈_
d__'8866'_'8640''10631'_'44'BBODY'10632'__2042 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Specification.Chain._.BBodyEnv
d_BBodyEnv_2046 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2516 ->
  ()
d_BBodyEnv_2046 = erased
-- Ledger.Conway.Specification.Chain._.BBodyState
d_BBodyState_2048 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2516 ->
  ()
d_BBodyState_2048 = erased
-- Ledger.Conway.Specification.Chain._.BHBody
d_BHBody_2050 a0 a1 = ()
-- Ledger.Conway.Specification.Chain._.BHeader
d_BHeader_2054 a0 a1 = ()
-- Ledger.Conway.Specification.Chain._.Block
d_Block_2058 a0 a1 = ()
-- Ledger.Conway.Specification.Chain._.incrBlocks
d_incrBlocks_2062 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2516 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_incrBlocks_2062 v0 ~v1 = du_incrBlocks_2062 v0
du_incrBlocks_2062 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_incrBlocks_2062 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.du_incrBlocks_2398
      (coe v0)
-- Ledger.Conway.Specification.Chain._.BHBody.bhash
d_bhash_2070 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_BHBody_2330 ->
  AgdaAny
d_bhash_2070 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bhash_2348
      (coe v0)
-- Ledger.Conway.Specification.Chain._.BHBody.bsize
d_bsize_2072 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_BHBody_2330 ->
  Integer
d_bsize_2072 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bsize_2344
      (coe v0)
-- Ledger.Conway.Specification.Chain._.BHBody.bvkcold
d_bvkcold_2074 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_BHBody_2330 ->
  AgdaAny
d_bvkcold_2074 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bvkcold_2342
      (coe v0)
-- Ledger.Conway.Specification.Chain._.BHBody.hBbsize
d_hBbsize_2076 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_BHBody_2330 ->
  Integer
d_hBbsize_2076 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_hBbsize_2350
      (coe v0)
-- Ledger.Conway.Specification.Chain._.BHBody.slot
d_slot_2078 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_BHBody_2330 ->
  AgdaAny
d_slot_2078 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_slot_2346
      (coe v0)
-- Ledger.Conway.Specification.Chain._.BHeader.bhbody
d_bhbody_2082 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_BHeader_2354 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_BHBody_2330
d_bhbody_2082 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bhbody_2360
      (coe v0)
-- Ledger.Conway.Specification.Chain._.BHeader.bhsig
d_bhsig_2084 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_BHeader_2354 ->
  AgdaAny
d_bhsig_2084 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bhsig_2362
      (coe v0)
-- Ledger.Conway.Specification.Chain._.Block.bBodyHash
d_bBodyHash_2088 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2366 ->
  AgdaAny
d_bBodyHash_2088 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bBodyHash_2386
      (coe v0)
-- Ledger.Conway.Specification.Chain._.Block.bBodySize
d_bBodySize_2090 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2366 ->
  Integer
d_bBodySize_2090 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bBodySize_2384
      (coe v0)
-- Ledger.Conway.Specification.Chain._.Block.bheader
d_bheader_2092 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2366 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_BHeader_2354
d_bheader_2092 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bheader_2380
      (coe v0)
-- Ledger.Conway.Specification.Chain._.Block.ts
d_ts_2094 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2366 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3646]
d_ts_2094 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_ts_2382
      (coe v0)
-- Ledger.Conway.Specification.Chain._.Block.≡-bBodyHash
d_'8801''45'bBodyHash_2096 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2366 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8801''45'bBodyHash_2096 = erased
-- Ledger.Conway.Specification.Chain._.Block.≡-bBodySize
d_'8801''45'bBodySize_2098 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2366 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8801''45'bBodySize_2098 = erased
-- Ledger.Conway.Specification.Chain._.CertStateOf
d_CertStateOf_2134 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCertState_1562 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1466
d_CertStateOf_2134 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_CertStateOf_1570
      (coe v0)
-- Ledger.Conway.Specification.Chain._.DepositsOf
d_DepositsOf_2168 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_1206 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DepositsOf_2168 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DepositsOf_1214
      (coe v0)
-- Ledger.Conway.Specification.Chain._.HasCertState
d_HasCertState_2204 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Chain._.HasDeposits
d_HasDeposits_2220 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Chain._.HasRewards
d_HasRewards_2252 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Chain._.HasRewards-CertState
d_HasRewards'45'CertState_2256 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2516 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1290
d_HasRewards'45'CertState_2256 ~v0 ~v1
  = du_HasRewards'45'CertState_2256
du_HasRewards'45'CertState_2256 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1290
du_HasRewards'45'CertState_2256
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasRewards'45'CertState_1602
-- Ledger.Conway.Specification.Chain._.RewardsOf
d_RewardsOf_2302 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1290 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RewardsOf_2302 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_RewardsOf_1298
      (coe v0)
-- Ledger.Conway.Specification.Chain._.HasCertState.CertStateOf
d_CertStateOf_2454 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCertState_1562 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1466
d_CertStateOf_2454 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_CertStateOf_1570
      (coe v0)
-- Ledger.Conway.Specification.Chain._.HasDeposits.DepositsOf
d_DepositsOf_2462 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_1206 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DepositsOf_2462 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DepositsOf_1214
      (coe v0)
-- Ledger.Conway.Specification.Chain._.HasRewards.RewardsOf
d_RewardsOf_2482 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1290 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RewardsOf_2482 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_RewardsOf_1298
      (coe v0)
-- Ledger.Conway.Specification.Chain._.EnactStateOf
d_EnactStateOf_2538 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_HasEnactState_1214 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1186
d_EnactStateOf_2538 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_EnactStateOf_1222
      (coe v0)
-- Ledger.Conway.Specification.Chain._.HasEnactState
d_HasEnactState_2542 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Chain._.HasPParams-EnactState
d_HasPParams'45'EnactState_2546 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2516 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_436
d_HasPParams'45'EnactState_2546 ~v0 ~v1
  = du_HasPParams'45'EnactState_2546
du_HasPParams'45'EnactState_2546 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_436
du_HasPParams'45'EnactState_2546
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.du_HasPParams'45'EnactState_1230
-- Ledger.Conway.Specification.Chain._.HasEnactState.EnactStateOf
d_EnactStateOf_2596 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_HasEnactState_1214 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1186
d_EnactStateOf_2596 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_EnactStateOf_1222
      (coe v0)
-- Ledger.Conway.Specification.Chain._.EpochStateOf
d_EpochStateOf_2610 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasEpochState_3320 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3292
d_EpochStateOf_2610 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_EpochStateOf_3328
      (coe v0)
-- Ledger.Conway.Specification.Chain._.HasEnactState-EpochState
d_HasEnactState'45'EpochState_2630 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2516 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_HasEnactState_1214
d_HasEnactState'45'EpochState_2630 ~v0 ~v1
  = du_HasEnactState'45'EpochState_2630
du_HasEnactState'45'EpochState_2630 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_HasEnactState_1214
du_HasEnactState'45'EpochState_2630
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasEnactState'45'EpochState_3342
-- Ledger.Conway.Specification.Chain._.HasEpochState
d_HasEpochState_2634 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Chain._.HasEpochState-NewEpochState
d_HasEpochState'45'NewEpochState_2638 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2516 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasEpochState_3320
d_HasEpochState'45'NewEpochState_2638 ~v0 ~v1
  = du_HasEpochState'45'NewEpochState_2638
du_HasEpochState'45'NewEpochState_2638 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasEpochState_3320
du_HasEpochState'45'NewEpochState_2638
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasEpochState'45'NewEpochState_3434
-- Ledger.Conway.Specification.Chain._.HasLState-EpochState
d_HasLState'45'EpochState_2644 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2516 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_HasLState_2990
d_HasLState'45'EpochState_2644 ~v0 ~v1
  = du_HasLState'45'EpochState_2644
du_HasLState'45'EpochState_2644 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_HasLState_2990
du_HasLState'45'EpochState_2644
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasLState'45'EpochState_3338
-- Ledger.Conway.Specification.Chain._.HasLastEpoch
d_HasLastEpoch_2648 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Chain._.HasLastEpoch-NewEpochState
d_HasLastEpoch'45'NewEpochState_2652 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2516 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasLastEpoch_3416
d_HasLastEpoch'45'NewEpochState_2652 ~v0 ~v1
  = du_HasLastEpoch'45'NewEpochState_2652
du_HasLastEpoch'45'NewEpochState_2652 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasLastEpoch_3416
du_HasLastEpoch'45'NewEpochState_2652
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasLastEpoch'45'NewEpochState_3432
-- Ledger.Conway.Specification.Chain._.HasNewEpochState
d_HasNewEpochState_2654 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Chain._.LastEpochOf
d_LastEpochOf_2680 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasLastEpoch_3416 ->
  AgdaAny -> AgdaAny
d_LastEpochOf_2680 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_LastEpochOf_3424
      (coe v0)
-- Ledger.Conway.Specification.Chain._.NewEpochState
d_NewEpochState_2688 a0 a1 = ()
-- Ledger.Conway.Specification.Chain._.NewEpochStateOf
d_NewEpochStateOf_2692 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasNewEpochState_3396 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3364
d_NewEpochStateOf_2692 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_NewEpochStateOf_3404
      (coe v0)
-- Ledger.Conway.Specification.Chain._.HasEpochState.EpochStateOf
d_EpochStateOf_2776 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasEpochState_3320 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3292
d_EpochStateOf_2776 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_EpochStateOf_3328
      (coe v0)
-- Ledger.Conway.Specification.Chain._.HasLastEpoch.LastEpochOf
d_LastEpochOf_2780 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasLastEpoch_3416 ->
  AgdaAny -> AgdaAny
d_LastEpochOf_2780 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_LastEpochOf_3424
      (coe v0)
-- Ledger.Conway.Specification.Chain._.HasNewEpochState.NewEpochStateOf
d_NewEpochStateOf_2784 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasNewEpochState_3396 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3364
d_NewEpochStateOf_2784 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_NewEpochStateOf_3404
      (coe v0)
-- Ledger.Conway.Specification.Chain._.NewEpochState.bcur
d_bcur_2788 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3364 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_bcur_2788 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_bcur_3382 (coe v0)
-- Ledger.Conway.Specification.Chain._.NewEpochState.bprev
d_bprev_2790 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3364 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_bprev_2790 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_bprev_3380
      (coe v0)
-- Ledger.Conway.Specification.Chain._.NewEpochState.epochState
d_epochState_2792 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3364 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3292
d_epochState_2792 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_epochState_3384
      (coe v0)
-- Ledger.Conway.Specification.Chain._.NewEpochState.lastEpoch
d_lastEpoch_2794 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3364 ->
  AgdaAny
d_lastEpoch_2794 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_lastEpoch_3378
      (coe v0)
-- Ledger.Conway.Specification.Chain._.NewEpochState.pd
d_pd_2796 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3364 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pd_2796 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_pd_3388 (coe v0)
-- Ledger.Conway.Specification.Chain._.NewEpochState.ru
d_ru_2798 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3364 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_3016
d_ru_2798 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_ru_3386 (coe v0)
-- Ledger.Conway.Specification.Chain._.HasCertState-LState
d_HasCertState'45'LState_3006 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2516 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCertState_1562
d_HasCertState'45'LState_3006 ~v0 ~v1
  = du_HasCertState'45'LState_3006
du_HasCertState'45'LState_3006 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCertState_1562
du_HasCertState'45'LState_3006
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasCertState'45'LState_3012
-- Ledger.Conway.Specification.Chain._.HasLState
d_HasLState_3022 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Chain._.HasUTxOState-LState
d_HasUTxOState'45'LState_3034 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2516 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_HasUTxOState_2534
d_HasUTxOState'45'LState_3034 ~v0 ~v1
  = du_HasUTxOState'45'LState_3034
du_HasUTxOState'45'LState_3034 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_HasUTxOState_2534
du_HasUTxOState'45'LState_3034
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasUTxOState'45'LState_3006
-- Ledger.Conway.Specification.Chain._.LState
d_LState_3046 a0 a1 = ()
-- Ledger.Conway.Specification.Chain._.LStateOf
d_LStateOf_3050 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_HasLState_2990 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2970
d_LStateOf_3050 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_LStateOf_2998
      (coe v0)
-- Ledger.Conway.Specification.Chain._.HasLState.LStateOf
d_LStateOf_3068 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_HasLState_2990 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2970
d_LStateOf_3068 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_LStateOf_2998
      (coe v0)
-- Ledger.Conway.Specification.Chain._.LState.certState
d_certState_3084 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2970 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1466
d_certState_3084 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_certState_2982
      (coe v0)
-- Ledger.Conway.Specification.Chain._.LState.govSt
d_govSt_3086 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2970 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_3086 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_govSt_2980
      (coe v0)
-- Ledger.Conway.Specification.Chain._.LState.utxoSt
d_utxoSt_3088 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2970 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2510
d_utxoSt_3088 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_utxoSt_2978
      (coe v0)
-- Ledger.Conway.Specification.Chain._._⊢_⇀⦇_,TICK⦈_
d__'8866'_'8640''10631'_'44'TICK'10632'__3276 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Specification.Chain._.HasDeposits-UTxOState
d_HasDeposits'45'UTxOState_3318 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2516 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_1206
d_HasDeposits'45'UTxOState_3318 ~v0 ~v1
  = du_HasDeposits'45'UTxOState_3318
du_HasDeposits'45'UTxOState_3318 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_1206
du_HasDeposits'45'UTxOState_3318
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_HasDeposits'45'UTxOState_2556
-- Ledger.Conway.Specification.Chain._.HasUTxOState
d_HasUTxOState_3328 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Chain._.UTxOStateOf
d_UTxOStateOf_3352 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_HasUTxOState_2534 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2510
d_UTxOStateOf_3352 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_UTxOStateOf_2542
      (coe v0)
-- Ledger.Conway.Specification.Chain._.HasUTxOState.UTxOStateOf
d_UTxOStateOf_3442 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_HasUTxOState_2534 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2510
d_UTxOStateOf_3442 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_UTxOStateOf_2542
      (coe v0)
-- Ledger.Conway.Specification.Chain.ChainState
d_ChainState_3492 a0 a1 = ()
newtype T_ChainState_3492
  = C_constructor_3498 MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3364
-- Ledger.Conway.Specification.Chain.ChainState.newEpochState
d_newEpochState_3496 ::
  T_ChainState_3492 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3364
d_newEpochState_3496 v0
  = case coe v0 of
      C_constructor_3498 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Chain.HasNewEpochState-ChainState
d_HasNewEpochState'45'ChainState_3500 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2516 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasNewEpochState_3396
d_HasNewEpochState'45'ChainState_3500 ~v0 ~v1
  = du_HasNewEpochState'45'ChainState_3500
du_HasNewEpochState'45'ChainState_3500 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasNewEpochState_3396
du_HasNewEpochState'45'ChainState_3500
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.C_constructor_3406
      (coe (\ v0 -> d_newEpochState_3496 (coe v0)))
-- Ledger.Conway.Specification.Chain.HasLastEpoch-ChainState
d_HasLastEpoch'45'ChainState_3502 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2516 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasLastEpoch_3416
d_HasLastEpoch'45'ChainState_3502 ~v0 ~v1
  = du_HasLastEpoch'45'ChainState_3502
du_HasLastEpoch'45'ChainState_3502 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasLastEpoch_3416
du_HasLastEpoch'45'ChainState_3502
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.C_constructor_3426
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_LastEpochOf_3424
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasLastEpoch'45'NewEpochState_3432)
              (d_newEpochState_3496 (coe v0))))
-- Ledger.Conway.Specification.Chain.HasEpochState-ChainState
d_HasEpochState'45'ChainState_3504 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2516 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasEpochState_3320
d_HasEpochState'45'ChainState_3504 ~v0 ~v1
  = du_HasEpochState'45'ChainState_3504
du_HasEpochState'45'ChainState_3504 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasEpochState_3320
du_HasEpochState'45'ChainState_3504
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.C_constructor_3330
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_EpochStateOf_3328
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasEpochState'45'NewEpochState_3434)
              (d_newEpochState_3496 (coe v0))))
-- Ledger.Conway.Specification.Chain.HasEnactState-ChainState
d_HasEnactState'45'ChainState_3506 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2516 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_HasEnactState_1214
d_HasEnactState'45'ChainState_3506 ~v0 ~v1
  = du_HasEnactState'45'ChainState_3506
du_HasEnactState'45'ChainState_3506 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_HasEnactState_1214
du_HasEnactState'45'ChainState_3506
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.C_constructor_1224
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Enact.d_EnactStateOf_1222
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasEnactState'45'EpochState_3342)
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_EpochStateOf_3328
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasEpochState'45'NewEpochState_3434)
                 (d_newEpochState_3496 (coe v0)))))
-- Ledger.Conway.Specification.Chain.HasLState-ChainState
d_HasLState'45'ChainState_3508 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2516 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_HasLState_2990
d_HasLState'45'ChainState_3508 ~v0 ~v1
  = du_HasLState'45'ChainState_3508
du_HasLState'45'ChainState_3508 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_HasLState_2990
du_HasLState'45'ChainState_3508
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.C_constructor_3000
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_LStateOf_2998
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasLState'45'EpochState_3338)
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_EpochStateOf_3328
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasEpochState'45'NewEpochState_3434)
                 (d_newEpochState_3496 (coe v0)))))
-- Ledger.Conway.Specification.Chain.HasUTxOState-ChainState
d_HasUTxOState'45'ChainState_3510 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2516 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_HasUTxOState_2534
d_HasUTxOState'45'ChainState_3510 ~v0 ~v1
  = du_HasUTxOState'45'ChainState_3510
du_HasUTxOState'45'ChainState_3510 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_HasUTxOState_2534
du_HasUTxOState'45'ChainState_3510
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.C_constructor_2544
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_UTxOStateOf_2542
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasUTxOState'45'LState_3006)
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_LStateOf_2998
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasLState'45'EpochState_3338)
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_EpochStateOf_3328
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasEpochState'45'NewEpochState_3434)
                    (d_newEpochState_3496 (coe v0))))))
-- Ledger.Conway.Specification.Chain.HasCertState-ChainState
d_HasCertState'45'ChainState_3512 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2516 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCertState_1562
d_HasCertState'45'ChainState_3512 ~v0 ~v1
  = du_HasCertState'45'ChainState_3512
du_HasCertState'45'ChainState_3512 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCertState_1562
du_HasCertState'45'ChainState_3512
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_constructor_1572
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Certs.d_CertStateOf_1570
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasCertState'45'LState_3012)
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_LStateOf_2998
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasLState'45'EpochState_3338)
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_EpochStateOf_3328
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasEpochState'45'NewEpochState_3434)
                    (d_newEpochState_3496 (coe v0))))))
-- Ledger.Conway.Specification.Chain.HasDeposits-ChainState
d_HasDeposits'45'ChainState_3514 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2516 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_1206
d_HasDeposits'45'ChainState_3514 ~v0 ~v1
  = du_HasDeposits'45'ChainState_3514
du_HasDeposits'45'ChainState_3514 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_1206
du_HasDeposits'45'ChainState_3514
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_constructor_1216
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DepositsOf_1214
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_HasDeposits'45'UTxOState_2556)
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_UTxOStateOf_2542
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasUTxOState'45'LState_3006)
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_LStateOf_2998
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasLState'45'EpochState_3338)
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_EpochStateOf_3328
                       (coe
                          MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasEpochState'45'NewEpochState_3434)
                       (d_newEpochState_3496 (coe v0)))))))
-- Ledger.Conway.Specification.Chain.HasRewards-ChainState
d_HasRewards'45'ChainState_3516 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2516 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1290
d_HasRewards'45'ChainState_3516 ~v0 ~v1
  = du_HasRewards'45'ChainState_3516
du_HasRewards'45'ChainState_3516 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1290
du_HasRewards'45'ChainState_3516
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
                    MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasCertState'45'LState_3012)
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_LStateOf_2998
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasLState'45'EpochState_3338)
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_EpochStateOf_3328
                       (coe
                          MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasEpochState'45'NewEpochState_3434)
                       (d_newEpochState_3496 (coe v0)))))))
-- Ledger.Conway.Specification.Chain.HasPParams-ChainState
d_HasPParams'45'ChainState_3518 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2516 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_436
d_HasPParams'45'ChainState_3518 ~v0 ~v1
  = du_HasPParams'45'ChainState_3518
du_HasPParams'45'ChainState_3518 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_436
du_HasPParams'45'ChainState_3518
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.C_constructor_446
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.PParams.d_PParamsOf_444
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Enact.du_HasPParams'45'EnactState_1230)
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Enact.d_EnactStateOf_1222
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasEnactState'45'EpochState_3342)
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_EpochStateOf_3328
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasEpochState'45'NewEpochState_3434)
                    (d_newEpochState_3496 (coe v0))))))
-- Ledger.Conway.Specification.Chain.totalRefScriptsSize
d_totalRefScriptsSize_3520 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2516 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2970 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3646] ->
  Integer
d_totalRefScriptsSize_3520 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.Nat.ListAction.d_sum_6
      (coe
         MAlonzo.Code.Class.Functor.Core.du_fmap_22
         MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
         () erased
         (MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_refScriptsSize_2590
            (coe v0) (coe v1)
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2520
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_utxoSt_2978
                  (coe v2))))
         v3)
-- Ledger.Conway.Specification.Chain._⊢_⇀⦇_,CHAIN⦈_
d__'8866'_'8640''10631'_'44'CHAIN'10632'__3542 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'CHAIN'10632'__3542
  = C_CHAIN_3632 MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3364
                 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Specification.Chain._.newEpochState
d_newEpochState_3554 ::
  T_ChainState_3492 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3364
d_newEpochState_3554 v0 = coe d_newEpochState_3496 (coe v0)
-- Ledger.Conway.Specification.Chain._.bheader
d_bheader_3562 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2516 ->
  T_GeneralizeTel_19425 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2366 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3364 ->
  T_ChainState_3492 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_BHeader_2354
d_bheader_3562 ~v0 ~v1 ~v2 v3 ~v4 ~v5 = du_bheader_3562 v3
du_bheader_3562 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2366 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_BHeader_2354
du_bheader_3562 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bheader_2380
      (coe v0)
-- Ledger.Conway.Specification.Chain._.ts
d_ts_3564 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2516 ->
  T_GeneralizeTel_19425 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2366 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3364 ->
  T_ChainState_3492 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3646]
d_ts_3564 ~v0 ~v1 ~v2 v3 ~v4 ~v5 = du_ts_3564 v3
du_ts_3564 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2366 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3646]
du_ts_3564 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_ts_2382
      (coe v0)
-- Ledger.Conway.Specification.Chain._.bhbody
d_bhbody_3572 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2516 ->
  T_GeneralizeTel_19425 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2366 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3364 ->
  T_ChainState_3492 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_BHBody_2330
d_bhbody_3572 ~v0 ~v1 ~v2 v3 ~v4 ~v5 = du_bhbody_3572 v3
du_bhbody_3572 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2366 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_BHBody_2330
du_bhbody_3572 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bhbody_2360
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bheader_2380
         (coe v0))
-- Ledger.Conway.Specification.Chain._.slot
d_slot_3586 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2516 ->
  T_GeneralizeTel_19425 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2366 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3364 ->
  T_ChainState_3492 -> AgdaAny
d_slot_3586 ~v0 ~v1 ~v2 v3 ~v4 ~v5 = du_slot_3586 v3
du_slot_3586 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2366 ->
  AgdaAny
du_slot_3586 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_slot_2346
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bhbody_2360
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bheader_2380
            (coe v0)))
-- Ledger.Conway.Specification.Chain._.bcur
d_bcur_3590 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2516 ->
  T_GeneralizeTel_19425 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2366 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3364 ->
  T_ChainState_3492 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_bcur_3590 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_bcur_3590 v4
du_bcur_3590 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3364 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_bcur_3590 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_bcur_3382 (coe v0)
-- Ledger.Conway.Specification.Chain._.epochState
d_epochState_3594 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2516 ->
  T_GeneralizeTel_19425 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2366 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3364 ->
  T_ChainState_3492 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3292
d_epochState_3594 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_epochState_3594 v4
du_epochState_3594 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3364 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3292
du_epochState_3594 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_epochState_3384
      (coe v0)
-- Ledger.Conway.Specification.Chain._.acnt
d_acnt_3604 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2516 ->
  T_GeneralizeTel_19425 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2366 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3364 ->
  T_ChainState_3492 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_188
d_acnt_3604 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_acnt_3604 v4
du_acnt_3604 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3364 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_188
du_acnt_3604 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_acnt_3304
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_epochState_3384
         (coe v0))
-- Ledger.Conway.Specification.Chain._.es
d_es_3606 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2516 ->
  T_GeneralizeTel_19425 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2366 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3364 ->
  T_ChainState_3492 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1186
d_es_3606 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_es_3606 v4
du_es_3606 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3364 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1186
du_es_3606 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_es_3310
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_epochState_3384
         (coe v0))
-- Ledger.Conway.Specification.Chain._.ls
d_ls_3610 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2516 ->
  T_GeneralizeTel_19425 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2366 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3364 ->
  T_ChainState_3492 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2970
d_ls_3610 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_ls_3610 v4
du_ls_3610 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3364 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2970
du_ls_3610 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_ls_3308
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_epochState_3384
         (coe v0))
-- Ledger.Conway.Specification.Chain._.pparams
d_pparams_3620 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2516 ->
  T_GeneralizeTel_19425 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2366 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3364 ->
  T_ChainState_3492 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pparams_3620 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_pparams_3620 v4
du_pparams_3620 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3364 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_pparams_3620 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pparams_1204
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_es_3310
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_epochState_3384
            (coe v0)))
-- Ledger.Conway.Specification.Chain._.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_3628 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2516 ->
  T_GeneralizeTel_19425 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2366 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3364 ->
  T_ChainState_3492 -> Integer
d_maxRefScriptSizePerBlock_3628 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_maxRefScriptSizePerBlock_3628 v5
du_maxRefScriptSizePerBlock_3628 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3364 ->
  Integer
du_maxRefScriptSizePerBlock_3628 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerBlock_394
      (coe
         MAlonzo.Code.Ledger.Prelude.du_'8739'_'8739'_70
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasCast'45'HashProtected_1100)
         (MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pparams_1204
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_es_3310
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_epochState_3384
                  (coe v0)))))
-- Ledger.Conway.Specification.Chain._⊢_⇀⦇_,CHAINS⦈_
d__'8866'_'8640''10631'_'44'CHAINS'10632'__3634 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2516 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  T_ChainState_3492 ->
  [MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2366] ->
  T_ChainState_3492 -> ()
d__'8866'_'8640''10631'_'44'CHAINS'10632'__3634 = erased
-- Ledger.Conway.Specification.Chain..generalizedField-ls'
d_'46'generalizedField'45'ls''_19423 ::
  T_GeneralizeTel_19425 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2970
d_'46'generalizedField'45'ls''_19423 v0
  = case coe v0 of
      C_mkGeneralizeTel_19427 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Chain.GeneralizeTel
d_GeneralizeTel_19425 a0 a1 = ()
newtype T_GeneralizeTel_19425
  = C_mkGeneralizeTel_19427 MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2970
