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
d_HasCast'45'HashProtected_254 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  () ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'HashProtected_254 ~v0
  = du_HasCast'45'HashProtected_254
du_HasCast'45'HashProtected_254 ::
  () ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'HashProtected_254 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasCast'45'HashProtected_1090
-- _.HasPParams
d_HasPParams_326 a0 a1 a2 = ()
-- _.PParamsOf
d_PParamsOf_474 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_436 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286
d_PParamsOf_474 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_PParamsOf_444
      (coe v0)
-- _.Tx
d_Tx_612 a0 = ()
-- _.HasPParams.PParamsOf
d_PParamsOf_1290 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_436 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286
d_PParamsOf_1290 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_PParamsOf_444
      (coe v0)
-- _.Tx.body
d_body_1926 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3614 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3434
d_body_1926 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3626
      (coe v0)
-- _.Tx.isValid
d_isValid_1928 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3614 ->
  Bool
d_isValid_1928 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_isValid_3632
      (coe v0)
-- _.Tx.txAD
d_txAD_1930 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3614 ->
  Maybe AgdaAny
d_txAD_1930 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txAD_3634
      (coe v0)
-- _.Tx.txsize
d_txsize_1932 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3614 ->
  Integer
d_txsize_1932 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txsize_3630
      (coe v0)
-- _.Tx.wits
d_wits_1934 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3614 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3592
d_wits_1934 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3628
      (coe v0)
-- Ledger.Conway.Specification.Chain._._⊢_⇀⦇_,BBODY⦈_
d__'8866'_'8640''10631'_'44'BBODY'10632'__2020 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Specification.Chain._.BBodyEnv
d_BBodyEnv_2024 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2502 ->
  ()
d_BBodyEnv_2024 = erased
-- Ledger.Conway.Specification.Chain._.BBodyState
d_BBodyState_2026 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2502 ->
  ()
d_BBodyState_2026 = erased
-- Ledger.Conway.Specification.Chain._.BHBody
d_BHBody_2028 a0 a1 = ()
-- Ledger.Conway.Specification.Chain._.BHeader
d_BHeader_2032 a0 a1 = ()
-- Ledger.Conway.Specification.Chain._.Block
d_Block_2036 a0 a1 = ()
-- Ledger.Conway.Specification.Chain._.incrBlocks
d_incrBlocks_2040 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2502 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_incrBlocks_2040 v0 ~v1 = du_incrBlocks_2040 v0
du_incrBlocks_2040 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_incrBlocks_2040 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.du_incrBlocks_2376
      (coe v0)
-- Ledger.Conway.Specification.Chain._.BHBody.bhash
d_bhash_2048 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_BHBody_2308 ->
  AgdaAny
d_bhash_2048 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bhash_2326
      (coe v0)
-- Ledger.Conway.Specification.Chain._.BHBody.bsize
d_bsize_2050 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_BHBody_2308 ->
  Integer
d_bsize_2050 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bsize_2322
      (coe v0)
-- Ledger.Conway.Specification.Chain._.BHBody.bvkcold
d_bvkcold_2052 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_BHBody_2308 ->
  AgdaAny
d_bvkcold_2052 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bvkcold_2320
      (coe v0)
-- Ledger.Conway.Specification.Chain._.BHBody.hBbsize
d_hBbsize_2054 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_BHBody_2308 ->
  Integer
d_hBbsize_2054 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_hBbsize_2328
      (coe v0)
-- Ledger.Conway.Specification.Chain._.BHBody.slot
d_slot_2056 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_BHBody_2308 ->
  AgdaAny
d_slot_2056 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_slot_2324
      (coe v0)
-- Ledger.Conway.Specification.Chain._.BHeader.bhbody
d_bhbody_2060 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_BHeader_2332 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_BHBody_2308
d_bhbody_2060 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bhbody_2338
      (coe v0)
-- Ledger.Conway.Specification.Chain._.BHeader.bhsig
d_bhsig_2062 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_BHeader_2332 ->
  AgdaAny
d_bhsig_2062 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bhsig_2340
      (coe v0)
-- Ledger.Conway.Specification.Chain._.Block.bBodyHash
d_bBodyHash_2066 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2344 ->
  AgdaAny
d_bBodyHash_2066 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bBodyHash_2364
      (coe v0)
-- Ledger.Conway.Specification.Chain._.Block.bBodySize
d_bBodySize_2068 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2344 ->
  Integer
d_bBodySize_2068 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bBodySize_2362
      (coe v0)
-- Ledger.Conway.Specification.Chain._.Block.bheader
d_bheader_2070 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2344 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_BHeader_2332
d_bheader_2070 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bheader_2358
      (coe v0)
-- Ledger.Conway.Specification.Chain._.Block.ts
d_ts_2072 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2344 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3614]
d_ts_2072 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_ts_2360
      (coe v0)
-- Ledger.Conway.Specification.Chain._.Block.≡-bBodyHash
d_'8801''45'bBodyHash_2074 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2344 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8801''45'bBodyHash_2074 = erased
-- Ledger.Conway.Specification.Chain._.Block.≡-bBodySize
d_'8801''45'bBodySize_2076 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2344 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8801''45'bBodySize_2076 = erased
-- Ledger.Conway.Specification.Chain._.CertStateOf
d_CertStateOf_2116 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCertState_1552 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1456
d_CertStateOf_2116 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_CertStateOf_1560
      (coe v0)
-- Ledger.Conway.Specification.Chain._.DepositsOf
d_DepositsOf_2150 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_1196 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DepositsOf_2150 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DepositsOf_1204
      (coe v0)
-- Ledger.Conway.Specification.Chain._.HasCertState
d_HasCertState_2186 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Chain._.HasDeposits
d_HasDeposits_2202 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Chain._.HasRewards
d_HasRewards_2234 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Chain._.HasRewards-CertState
d_HasRewards'45'CertState_2238 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2502 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1280
d_HasRewards'45'CertState_2238 ~v0 ~v1
  = du_HasRewards'45'CertState_2238
du_HasRewards'45'CertState_2238 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1280
du_HasRewards'45'CertState_2238
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasRewards'45'CertState_1592
-- Ledger.Conway.Specification.Chain._.RewardsOf
d_RewardsOf_2284 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1280 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RewardsOf_2284 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_RewardsOf_1288
      (coe v0)
-- Ledger.Conway.Specification.Chain._.HasCertState.CertStateOf
d_CertStateOf_2440 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCertState_1552 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1456
d_CertStateOf_2440 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_CertStateOf_1560
      (coe v0)
-- Ledger.Conway.Specification.Chain._.HasDeposits.DepositsOf
d_DepositsOf_2448 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_1196 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DepositsOf_2448 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DepositsOf_1204
      (coe v0)
-- Ledger.Conway.Specification.Chain._.HasRewards.RewardsOf
d_RewardsOf_2468 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1280 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RewardsOf_2468 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_RewardsOf_1288
      (coe v0)
-- Ledger.Conway.Specification.Chain._.EnactStateOf
d_EnactStateOf_2524 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_HasEnactState_1204 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1176
d_EnactStateOf_2524 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_EnactStateOf_1212
      (coe v0)
-- Ledger.Conway.Specification.Chain._.HasEnactState
d_HasEnactState_2528 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Chain._.HasPParams-EnactState
d_HasPParams'45'EnactState_2532 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2502 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_436
d_HasPParams'45'EnactState_2532 ~v0 ~v1
  = du_HasPParams'45'EnactState_2532
du_HasPParams'45'EnactState_2532 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_436
du_HasPParams'45'EnactState_2532
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.du_HasPParams'45'EnactState_1220
-- Ledger.Conway.Specification.Chain._.HasEnactState.EnactStateOf
d_EnactStateOf_2582 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_HasEnactState_1204 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1176
d_EnactStateOf_2582 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_EnactStateOf_1212
      (coe v0)
-- Ledger.Conway.Specification.Chain._.EpochStateOf
d_EpochStateOf_2596 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasEpochState_3302 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3274
d_EpochStateOf_2596 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_EpochStateOf_3310
      (coe v0)
-- Ledger.Conway.Specification.Chain._.HasEnactState-EpochState
d_HasEnactState'45'EpochState_2616 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2502 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_HasEnactState_1204
d_HasEnactState'45'EpochState_2616 ~v0 ~v1
  = du_HasEnactState'45'EpochState_2616
du_HasEnactState'45'EpochState_2616 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_HasEnactState_1204
du_HasEnactState'45'EpochState_2616
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasEnactState'45'EpochState_3324
-- Ledger.Conway.Specification.Chain._.HasEpochState
d_HasEpochState_2620 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Chain._.HasEpochState-NewEpochState
d_HasEpochState'45'NewEpochState_2624 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2502 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasEpochState_3302
d_HasEpochState'45'NewEpochState_2624 ~v0 ~v1
  = du_HasEpochState'45'NewEpochState_2624
du_HasEpochState'45'NewEpochState_2624 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasEpochState_3302
du_HasEpochState'45'NewEpochState_2624
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasEpochState'45'NewEpochState_3414
-- Ledger.Conway.Specification.Chain._.HasLState-EpochState
d_HasLState'45'EpochState_2630 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2502 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_HasLState_2976
d_HasLState'45'EpochState_2630 ~v0 ~v1
  = du_HasLState'45'EpochState_2630
du_HasLState'45'EpochState_2630 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_HasLState_2976
du_HasLState'45'EpochState_2630
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasLState'45'EpochState_3320
-- Ledger.Conway.Specification.Chain._.HasLastEpoch
d_HasLastEpoch_2634 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Chain._.HasLastEpoch-NewEpochState
d_HasLastEpoch'45'NewEpochState_2638 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2502 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasLastEpoch_3396
d_HasLastEpoch'45'NewEpochState_2638 ~v0 ~v1
  = du_HasLastEpoch'45'NewEpochState_2638
du_HasLastEpoch'45'NewEpochState_2638 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasLastEpoch_3396
du_HasLastEpoch'45'NewEpochState_2638
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasLastEpoch'45'NewEpochState_3412
-- Ledger.Conway.Specification.Chain._.HasNewEpochState
d_HasNewEpochState_2640 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Chain._.LastEpochOf
d_LastEpochOf_2664 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasLastEpoch_3396 ->
  AgdaAny -> AgdaAny
d_LastEpochOf_2664 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_LastEpochOf_3404
      (coe v0)
-- Ledger.Conway.Specification.Chain._.NewEpochState
d_NewEpochState_2672 a0 a1 = ()
-- Ledger.Conway.Specification.Chain._.NewEpochStateOf
d_NewEpochStateOf_2676 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasNewEpochState_3376 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3344
d_NewEpochStateOf_2676 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_NewEpochStateOf_3384
      (coe v0)
-- Ledger.Conway.Specification.Chain._.HasEpochState.EpochStateOf
d_EpochStateOf_2760 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasEpochState_3302 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3274
d_EpochStateOf_2760 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_EpochStateOf_3310
      (coe v0)
-- Ledger.Conway.Specification.Chain._.HasLastEpoch.LastEpochOf
d_LastEpochOf_2764 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasLastEpoch_3396 ->
  AgdaAny -> AgdaAny
d_LastEpochOf_2764 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_LastEpochOf_3404
      (coe v0)
-- Ledger.Conway.Specification.Chain._.HasNewEpochState.NewEpochStateOf
d_NewEpochStateOf_2768 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasNewEpochState_3376 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3344
d_NewEpochStateOf_2768 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_NewEpochStateOf_3384
      (coe v0)
-- Ledger.Conway.Specification.Chain._.NewEpochState.bcur
d_bcur_2772 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3344 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_bcur_2772 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_bcur_3362 (coe v0)
-- Ledger.Conway.Specification.Chain._.NewEpochState.bprev
d_bprev_2774 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3344 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_bprev_2774 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_bprev_3360
      (coe v0)
-- Ledger.Conway.Specification.Chain._.NewEpochState.epochState
d_epochState_2776 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3344 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3274
d_epochState_2776 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_epochState_3364
      (coe v0)
-- Ledger.Conway.Specification.Chain._.NewEpochState.lastEpoch
d_lastEpoch_2778 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3344 ->
  AgdaAny
d_lastEpoch_2778 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_lastEpoch_3358
      (coe v0)
-- Ledger.Conway.Specification.Chain._.NewEpochState.pd
d_pd_2780 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3344 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pd_2780 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_pd_3368 (coe v0)
-- Ledger.Conway.Specification.Chain._.NewEpochState.ru
d_ru_2782 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3344 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_3002
d_ru_2782 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_ru_3366 (coe v0)
-- Ledger.Conway.Specification.Chain._.HasCertState-LState
d_HasCertState'45'LState_2990 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2502 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCertState_1552
d_HasCertState'45'LState_2990 ~v0 ~v1
  = du_HasCertState'45'LState_2990
du_HasCertState'45'LState_2990 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCertState_1552
du_HasCertState'45'LState_2990
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasCertState'45'LState_2998
-- Ledger.Conway.Specification.Chain._.HasLState
d_HasLState_3006 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Chain._.HasUTxOState-LState
d_HasUTxOState'45'LState_3018 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2502 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_HasUTxOState_2520
d_HasUTxOState'45'LState_3018 ~v0 ~v1
  = du_HasUTxOState'45'LState_3018
du_HasUTxOState'45'LState_3018 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_HasUTxOState_2520
du_HasUTxOState'45'LState_3018
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasUTxOState'45'LState_2992
-- Ledger.Conway.Specification.Chain._.LState
d_LState_3030 a0 a1 = ()
-- Ledger.Conway.Specification.Chain._.LStateOf
d_LStateOf_3034 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_HasLState_2976 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2956
d_LStateOf_3034 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_LStateOf_2984
      (coe v0)
-- Ledger.Conway.Specification.Chain._.HasLState.LStateOf
d_LStateOf_3052 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_HasLState_2976 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2956
d_LStateOf_3052 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_LStateOf_2984
      (coe v0)
-- Ledger.Conway.Specification.Chain._.LState.certState
d_certState_3068 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2956 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1456
d_certState_3068 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_certState_2968
      (coe v0)
-- Ledger.Conway.Specification.Chain._.LState.govSt
d_govSt_3070 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2956 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_3070 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_govSt_2966
      (coe v0)
-- Ledger.Conway.Specification.Chain._.LState.utxoSt
d_utxoSt_3072 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2956 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2496
d_utxoSt_3072 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_utxoSt_2964
      (coe v0)
-- Ledger.Conway.Specification.Chain._._⊢_⇀⦇_,TICK⦈_
d__'8866'_'8640''10631'_'44'TICK'10632'__3260 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Specification.Chain._.HasDeposits-UTxOState
d_HasDeposits'45'UTxOState_3302 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2502 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_1196
d_HasDeposits'45'UTxOState_3302 ~v0 ~v1
  = du_HasDeposits'45'UTxOState_3302
du_HasDeposits'45'UTxOState_3302 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_1196
du_HasDeposits'45'UTxOState_3302
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_HasDeposits'45'UTxOState_2542
-- Ledger.Conway.Specification.Chain._.HasUTxOState
d_HasUTxOState_3312 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Chain._.UTxOStateOf
d_UTxOStateOf_3336 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_HasUTxOState_2520 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2496
d_UTxOStateOf_3336 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_UTxOStateOf_2528
      (coe v0)
-- Ledger.Conway.Specification.Chain._.HasUTxOState.UTxOStateOf
d_UTxOStateOf_3426 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_HasUTxOState_2520 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2496
d_UTxOStateOf_3426 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_UTxOStateOf_2528
      (coe v0)
-- Ledger.Conway.Specification.Chain.ChainState
d_ChainState_3476 a0 a1 = ()
newtype T_ChainState_3476
  = C_constructor_3482 MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3344
-- Ledger.Conway.Specification.Chain.ChainState.newEpochState
d_newEpochState_3480 ::
  T_ChainState_3476 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3344
d_newEpochState_3480 v0
  = case coe v0 of
      C_constructor_3482 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Chain.HasNewEpochState-ChainState
d_HasNewEpochState'45'ChainState_3484 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2502 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasNewEpochState_3376
d_HasNewEpochState'45'ChainState_3484 ~v0 ~v1
  = du_HasNewEpochState'45'ChainState_3484
du_HasNewEpochState'45'ChainState_3484 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasNewEpochState_3376
du_HasNewEpochState'45'ChainState_3484
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.C_constructor_3386
      (coe (\ v0 -> d_newEpochState_3480 (coe v0)))
-- Ledger.Conway.Specification.Chain.HasLastEpoch-ChainState
d_HasLastEpoch'45'ChainState_3486 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2502 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasLastEpoch_3396
d_HasLastEpoch'45'ChainState_3486 ~v0 ~v1
  = du_HasLastEpoch'45'ChainState_3486
du_HasLastEpoch'45'ChainState_3486 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasLastEpoch_3396
du_HasLastEpoch'45'ChainState_3486
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.C_constructor_3406
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_LastEpochOf_3404
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasLastEpoch'45'NewEpochState_3412)
              (d_newEpochState_3480 (coe v0))))
-- Ledger.Conway.Specification.Chain.HasEpochState-ChainState
d_HasEpochState'45'ChainState_3488 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2502 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasEpochState_3302
d_HasEpochState'45'ChainState_3488 ~v0 ~v1
  = du_HasEpochState'45'ChainState_3488
du_HasEpochState'45'ChainState_3488 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasEpochState_3302
du_HasEpochState'45'ChainState_3488
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.C_constructor_3312
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_EpochStateOf_3310
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasEpochState'45'NewEpochState_3414)
              (d_newEpochState_3480 (coe v0))))
-- Ledger.Conway.Specification.Chain.HasEnactState-ChainState
d_HasEnactState'45'ChainState_3490 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2502 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_HasEnactState_1204
d_HasEnactState'45'ChainState_3490 ~v0 ~v1
  = du_HasEnactState'45'ChainState_3490
du_HasEnactState'45'ChainState_3490 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_HasEnactState_1204
du_HasEnactState'45'ChainState_3490
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.C_constructor_1214
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Enact.d_EnactStateOf_1212
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasEnactState'45'EpochState_3324)
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_EpochStateOf_3310
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasEpochState'45'NewEpochState_3414)
                 (d_newEpochState_3480 (coe v0)))))
-- Ledger.Conway.Specification.Chain.HasLState-ChainState
d_HasLState'45'ChainState_3492 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2502 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_HasLState_2976
d_HasLState'45'ChainState_3492 ~v0 ~v1
  = du_HasLState'45'ChainState_3492
du_HasLState'45'ChainState_3492 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_HasLState_2976
du_HasLState'45'ChainState_3492
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.C_constructor_2986
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_LStateOf_2984
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasLState'45'EpochState_3320)
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_EpochStateOf_3310
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasEpochState'45'NewEpochState_3414)
                 (d_newEpochState_3480 (coe v0)))))
-- Ledger.Conway.Specification.Chain.HasUTxOState-ChainState
d_HasUTxOState'45'ChainState_3494 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2502 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_HasUTxOState_2520
d_HasUTxOState'45'ChainState_3494 ~v0 ~v1
  = du_HasUTxOState'45'ChainState_3494
du_HasUTxOState'45'ChainState_3494 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_HasUTxOState_2520
du_HasUTxOState'45'ChainState_3494
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.C_constructor_2530
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_UTxOStateOf_2528
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasUTxOState'45'LState_2992)
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_LStateOf_2984
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasLState'45'EpochState_3320)
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_EpochStateOf_3310
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasEpochState'45'NewEpochState_3414)
                    (d_newEpochState_3480 (coe v0))))))
-- Ledger.Conway.Specification.Chain.HasCertState-ChainState
d_HasCertState'45'ChainState_3496 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2502 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCertState_1552
d_HasCertState'45'ChainState_3496 ~v0 ~v1
  = du_HasCertState'45'ChainState_3496
du_HasCertState'45'ChainState_3496 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCertState_1552
du_HasCertState'45'ChainState_3496
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_constructor_1562
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Certs.d_CertStateOf_1560
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasCertState'45'LState_2998)
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_LStateOf_2984
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasLState'45'EpochState_3320)
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_EpochStateOf_3310
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasEpochState'45'NewEpochState_3414)
                    (d_newEpochState_3480 (coe v0))))))
-- Ledger.Conway.Specification.Chain.HasDeposits-ChainState
d_HasDeposits'45'ChainState_3498 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2502 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_1196
d_HasDeposits'45'ChainState_3498 ~v0 ~v1
  = du_HasDeposits'45'ChainState_3498
du_HasDeposits'45'ChainState_3498 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_1196
du_HasDeposits'45'ChainState_3498
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_constructor_1206
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DepositsOf_1204
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_HasDeposits'45'UTxOState_2542)
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_UTxOStateOf_2528
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasUTxOState'45'LState_2992)
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_LStateOf_2984
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasLState'45'EpochState_3320)
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_EpochStateOf_3310
                       (coe
                          MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasEpochState'45'NewEpochState_3414)
                       (d_newEpochState_3480 (coe v0)))))))
-- Ledger.Conway.Specification.Chain.HasRewards-ChainState
d_HasRewards'45'ChainState_3500 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2502 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1280
d_HasRewards'45'ChainState_3500 ~v0 ~v1
  = du_HasRewards'45'ChainState_3500
du_HasRewards'45'ChainState_3500 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1280
du_HasRewards'45'ChainState_3500
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_constructor_1290
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Certs.d_RewardsOf_1288
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasRewards'45'CertState_1592)
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Certs.d_CertStateOf_1560
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasCertState'45'LState_2998)
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_LStateOf_2984
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasLState'45'EpochState_3320)
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_EpochStateOf_3310
                       (coe
                          MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasEpochState'45'NewEpochState_3414)
                       (d_newEpochState_3480 (coe v0)))))))
-- Ledger.Conway.Specification.Chain.HasPParams-ChainState
d_HasPParams'45'ChainState_3502 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2502 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_436
d_HasPParams'45'ChainState_3502 ~v0 ~v1
  = du_HasPParams'45'ChainState_3502
du_HasPParams'45'ChainState_3502 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_436
du_HasPParams'45'ChainState_3502
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.C_constructor_446
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.PParams.d_PParamsOf_444
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Enact.du_HasPParams'45'EnactState_1220)
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Enact.d_EnactStateOf_1212
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasEnactState'45'EpochState_3324)
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_EpochStateOf_3310
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasEpochState'45'NewEpochState_3414)
                    (d_newEpochState_3480 (coe v0))))))
-- Ledger.Conway.Specification.Chain.totalRefScriptsSize
d_totalRefScriptsSize_3504 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2502 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2956 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3614] ->
  Integer
d_totalRefScriptsSize_3504 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.Nat.ListAction.d_sum_6
      (coe
         MAlonzo.Code.Class.Functor.Core.du_fmap_22
         MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
         () erased
         (MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_refScriptsSize_2576
            (coe v0) (coe v1)
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2506
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_utxoSt_2964
                  (coe v2))))
         v3)
-- Ledger.Conway.Specification.Chain._⊢_⇀⦇_,CHAIN⦈_
d__'8866'_'8640''10631'_'44'CHAIN'10632'__3526 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'CHAIN'10632'__3526
  = C_CHAIN_3616 MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3344
                 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Specification.Chain._.newEpochState
d_newEpochState_3538 ::
  T_ChainState_3476 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3344
d_newEpochState_3538 v0 = coe d_newEpochState_3480 (coe v0)
-- Ledger.Conway.Specification.Chain._.bheader
d_bheader_3546 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2502 ->
  T_GeneralizeTel_19383 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2344 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3344 ->
  T_ChainState_3476 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_BHeader_2332
d_bheader_3546 ~v0 ~v1 ~v2 v3 ~v4 ~v5 = du_bheader_3546 v3
du_bheader_3546 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2344 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_BHeader_2332
du_bheader_3546 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bheader_2358
      (coe v0)
-- Ledger.Conway.Specification.Chain._.ts
d_ts_3548 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2502 ->
  T_GeneralizeTel_19383 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2344 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3344 ->
  T_ChainState_3476 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3614]
d_ts_3548 ~v0 ~v1 ~v2 v3 ~v4 ~v5 = du_ts_3548 v3
du_ts_3548 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2344 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3614]
du_ts_3548 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_ts_2360
      (coe v0)
-- Ledger.Conway.Specification.Chain._.bhbody
d_bhbody_3556 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2502 ->
  T_GeneralizeTel_19383 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2344 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3344 ->
  T_ChainState_3476 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_BHBody_2308
d_bhbody_3556 ~v0 ~v1 ~v2 v3 ~v4 ~v5 = du_bhbody_3556 v3
du_bhbody_3556 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2344 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_BHBody_2308
du_bhbody_3556 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bhbody_2338
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bheader_2358
         (coe v0))
-- Ledger.Conway.Specification.Chain._.slot
d_slot_3570 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2502 ->
  T_GeneralizeTel_19383 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2344 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3344 ->
  T_ChainState_3476 -> AgdaAny
d_slot_3570 ~v0 ~v1 ~v2 v3 ~v4 ~v5 = du_slot_3570 v3
du_slot_3570 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2344 ->
  AgdaAny
du_slot_3570 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_slot_2324
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bhbody_2338
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bheader_2358
            (coe v0)))
-- Ledger.Conway.Specification.Chain._.bcur
d_bcur_3574 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2502 ->
  T_GeneralizeTel_19383 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2344 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3344 ->
  T_ChainState_3476 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_bcur_3574 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_bcur_3574 v4
du_bcur_3574 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3344 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_bcur_3574 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_bcur_3362 (coe v0)
-- Ledger.Conway.Specification.Chain._.epochState
d_epochState_3578 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2502 ->
  T_GeneralizeTel_19383 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2344 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3344 ->
  T_ChainState_3476 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3274
d_epochState_3578 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_epochState_3578 v4
du_epochState_3578 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3344 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3274
du_epochState_3578 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_epochState_3364
      (coe v0)
-- Ledger.Conway.Specification.Chain._.acnt
d_acnt_3588 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2502 ->
  T_GeneralizeTel_19383 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2344 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3344 ->
  T_ChainState_3476 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_188
d_acnt_3588 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_acnt_3588 v4
du_acnt_3588 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3344 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_188
du_acnt_3588 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_acnt_3286
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_epochState_3364
         (coe v0))
-- Ledger.Conway.Specification.Chain._.es
d_es_3590 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2502 ->
  T_GeneralizeTel_19383 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2344 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3344 ->
  T_ChainState_3476 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1176
d_es_3590 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_es_3590 v4
du_es_3590 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3344 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1176
du_es_3590 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_es_3292
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_epochState_3364
         (coe v0))
-- Ledger.Conway.Specification.Chain._.ls
d_ls_3594 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2502 ->
  T_GeneralizeTel_19383 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2344 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3344 ->
  T_ChainState_3476 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2956
d_ls_3594 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_ls_3594 v4
du_ls_3594 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3344 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2956
du_ls_3594 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_ls_3290
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_epochState_3364
         (coe v0))
-- Ledger.Conway.Specification.Chain._.pparams
d_pparams_3604 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2502 ->
  T_GeneralizeTel_19383 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2344 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3344 ->
  T_ChainState_3476 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pparams_3604 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_pparams_3604 v4
du_pparams_3604 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3344 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_pparams_3604 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pparams_1194
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_es_3292
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_epochState_3364
            (coe v0)))
-- Ledger.Conway.Specification.Chain._.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_3612 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2502 ->
  T_GeneralizeTel_19383 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2344 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3344 ->
  T_ChainState_3476 -> Integer
d_maxRefScriptSizePerBlock_3612 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_maxRefScriptSizePerBlock_3612 v5
du_maxRefScriptSizePerBlock_3612 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3344 ->
  Integer
du_maxRefScriptSizePerBlock_3612 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerBlock_394
      (coe
         MAlonzo.Code.Ledger.Prelude.du_'8739'_'8739'_90
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasCast'45'HashProtected_1090)
         (MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pparams_1194
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_es_3292
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_epochState_3364
                  (coe v0)))))
-- Ledger.Conway.Specification.Chain..generalizedField-ls'
d_'46'generalizedField'45'ls''_19381 ::
  T_GeneralizeTel_19383 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2956
d_'46'generalizedField'45'ls''_19381 v0
  = case coe v0 of
      C_mkGeneralizeTel_19385 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Chain.GeneralizeTel
d_GeneralizeTel_19383 a0 a1 = ()
newtype T_GeneralizeTel_19383
  = C_mkGeneralizeTel_19385 MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2956
