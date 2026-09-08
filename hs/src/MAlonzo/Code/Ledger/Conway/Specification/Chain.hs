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
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasCast'45'HashProtected_1094
-- _.HasPParams
d_HasPParams_336 a0 a1 a2 = ()
-- _.PParamsOf
d_PParamsOf_484 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_436 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286
d_PParamsOf_484 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_PParamsOf_444
      (coe v0)
-- _.Tx
d_Tx_622 a0 = ()
-- _.HasPParams.PParamsOf
d_PParamsOf_1306 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_436 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286
d_PParamsOf_1306 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_PParamsOf_444
      (coe v0)
-- _.Tx.body
d_body_1942 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3634 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3434
d_body_1942 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3646
      (coe v0)
-- _.Tx.isValid
d_isValid_1944 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3634 ->
  Bool
d_isValid_1944 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_isValid_3652
      (coe v0)
-- _.Tx.txAD
d_txAD_1946 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3634 ->
  Maybe AgdaAny
d_txAD_1946 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txAD_3654
      (coe v0)
-- _.Tx.txsize
d_txsize_1948 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3634 ->
  Integer
d_txsize_1948 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txsize_3650
      (coe v0)
-- _.Tx.wits
d_wits_1950 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3634 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3612
d_wits_1950 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3648
      (coe v0)
-- Ledger.Conway.Specification.Chain._._⊢_⇀⦇_,BBODY⦈_
d__'8866'_'8640''10631'_'44'BBODY'10632'__2036 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Specification.Chain._.BBodyEnv
d_BBodyEnv_2040 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2510 ->
  ()
d_BBodyEnv_2040 = erased
-- Ledger.Conway.Specification.Chain._.BBodyState
d_BBodyState_2042 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2510 ->
  ()
d_BBodyState_2042 = erased
-- Ledger.Conway.Specification.Chain._.BHBody
d_BHBody_2044 a0 a1 = ()
-- Ledger.Conway.Specification.Chain._.BHeader
d_BHeader_2048 a0 a1 = ()
-- Ledger.Conway.Specification.Chain._.Block
d_Block_2052 a0 a1 = ()
-- Ledger.Conway.Specification.Chain._.incrBlocks
d_incrBlocks_2056 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2510 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_incrBlocks_2056 v0 ~v1 = du_incrBlocks_2056 v0
du_incrBlocks_2056 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_incrBlocks_2056 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.du_incrBlocks_2392
      (coe v0)
-- Ledger.Conway.Specification.Chain._.BHBody.bhash
d_bhash_2064 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_BHBody_2324 ->
  AgdaAny
d_bhash_2064 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bhash_2342
      (coe v0)
-- Ledger.Conway.Specification.Chain._.BHBody.bsize
d_bsize_2066 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_BHBody_2324 ->
  Integer
d_bsize_2066 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bsize_2338
      (coe v0)
-- Ledger.Conway.Specification.Chain._.BHBody.bvkcold
d_bvkcold_2068 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_BHBody_2324 ->
  AgdaAny
d_bvkcold_2068 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bvkcold_2336
      (coe v0)
-- Ledger.Conway.Specification.Chain._.BHBody.hBbsize
d_hBbsize_2070 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_BHBody_2324 ->
  Integer
d_hBbsize_2070 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_hBbsize_2344
      (coe v0)
-- Ledger.Conway.Specification.Chain._.BHBody.slot
d_slot_2072 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_BHBody_2324 ->
  AgdaAny
d_slot_2072 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_slot_2340
      (coe v0)
-- Ledger.Conway.Specification.Chain._.BHeader.bhbody
d_bhbody_2076 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_BHeader_2348 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_BHBody_2324
d_bhbody_2076 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bhbody_2354
      (coe v0)
-- Ledger.Conway.Specification.Chain._.BHeader.bhsig
d_bhsig_2078 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_BHeader_2348 ->
  AgdaAny
d_bhsig_2078 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bhsig_2356
      (coe v0)
-- Ledger.Conway.Specification.Chain._.Block.bBodyHash
d_bBodyHash_2082 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2360 ->
  AgdaAny
d_bBodyHash_2082 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bBodyHash_2380
      (coe v0)
-- Ledger.Conway.Specification.Chain._.Block.bBodySize
d_bBodySize_2084 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2360 ->
  Integer
d_bBodySize_2084 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bBodySize_2378
      (coe v0)
-- Ledger.Conway.Specification.Chain._.Block.bheader
d_bheader_2086 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2360 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_BHeader_2348
d_bheader_2086 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bheader_2374
      (coe v0)
-- Ledger.Conway.Specification.Chain._.Block.ts
d_ts_2088 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2360 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3634]
d_ts_2088 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_ts_2376
      (coe v0)
-- Ledger.Conway.Specification.Chain._.Block.≡-bBodyHash
d_'8801''45'bBodyHash_2090 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2360 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8801''45'bBodyHash_2090 = erased
-- Ledger.Conway.Specification.Chain._.Block.≡-bBodySize
d_'8801''45'bBodySize_2092 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2360 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8801''45'bBodySize_2092 = erased
-- Ledger.Conway.Specification.Chain._.CertStateOf
d_CertStateOf_2128 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCertState_1556 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1460
d_CertStateOf_2128 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_CertStateOf_1564
      (coe v0)
-- Ledger.Conway.Specification.Chain._.DepositsOf
d_DepositsOf_2162 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_1200 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DepositsOf_2162 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DepositsOf_1208
      (coe v0)
-- Ledger.Conway.Specification.Chain._.HasCertState
d_HasCertState_2198 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Chain._.HasDeposits
d_HasDeposits_2214 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Chain._.HasRewards
d_HasRewards_2246 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Chain._.HasRewards-CertState
d_HasRewards'45'CertState_2250 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2510 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1284
d_HasRewards'45'CertState_2250 ~v0 ~v1
  = du_HasRewards'45'CertState_2250
du_HasRewards'45'CertState_2250 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1284
du_HasRewards'45'CertState_2250
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasRewards'45'CertState_1596
-- Ledger.Conway.Specification.Chain._.RewardsOf
d_RewardsOf_2296 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1284 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RewardsOf_2296 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_RewardsOf_1292
      (coe v0)
-- Ledger.Conway.Specification.Chain._.HasCertState.CertStateOf
d_CertStateOf_2448 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCertState_1556 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1460
d_CertStateOf_2448 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_CertStateOf_1564
      (coe v0)
-- Ledger.Conway.Specification.Chain._.HasDeposits.DepositsOf
d_DepositsOf_2456 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_1200 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DepositsOf_2456 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DepositsOf_1208
      (coe v0)
-- Ledger.Conway.Specification.Chain._.HasRewards.RewardsOf
d_RewardsOf_2476 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1284 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RewardsOf_2476 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_RewardsOf_1292
      (coe v0)
-- Ledger.Conway.Specification.Chain._.EnactStateOf
d_EnactStateOf_2532 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_HasEnactState_1208 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1180
d_EnactStateOf_2532 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_EnactStateOf_1216
      (coe v0)
-- Ledger.Conway.Specification.Chain._.HasEnactState
d_HasEnactState_2536 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Chain._.HasPParams-EnactState
d_HasPParams'45'EnactState_2540 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2510 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_436
d_HasPParams'45'EnactState_2540 ~v0 ~v1
  = du_HasPParams'45'EnactState_2540
du_HasPParams'45'EnactState_2540 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_436
du_HasPParams'45'EnactState_2540
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.du_HasPParams'45'EnactState_1224
-- Ledger.Conway.Specification.Chain._.HasEnactState.EnactStateOf
d_EnactStateOf_2590 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_HasEnactState_1208 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1180
d_EnactStateOf_2590 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_EnactStateOf_1216
      (coe v0)
-- Ledger.Conway.Specification.Chain._.EpochStateOf
d_EpochStateOf_2604 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasEpochState_3314 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3286
d_EpochStateOf_2604 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_EpochStateOf_3322
      (coe v0)
-- Ledger.Conway.Specification.Chain._.HasEnactState-EpochState
d_HasEnactState'45'EpochState_2624 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2510 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_HasEnactState_1208
d_HasEnactState'45'EpochState_2624 ~v0 ~v1
  = du_HasEnactState'45'EpochState_2624
du_HasEnactState'45'EpochState_2624 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_HasEnactState_1208
du_HasEnactState'45'EpochState_2624
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasEnactState'45'EpochState_3336
-- Ledger.Conway.Specification.Chain._.HasEpochState
d_HasEpochState_2628 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Chain._.HasEpochState-NewEpochState
d_HasEpochState'45'NewEpochState_2632 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2510 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasEpochState_3314
d_HasEpochState'45'NewEpochState_2632 ~v0 ~v1
  = du_HasEpochState'45'NewEpochState_2632
du_HasEpochState'45'NewEpochState_2632 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasEpochState_3314
du_HasEpochState'45'NewEpochState_2632
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasEpochState'45'NewEpochState_3428
-- Ledger.Conway.Specification.Chain._.HasLState-EpochState
d_HasLState'45'EpochState_2638 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2510 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_HasLState_2984
d_HasLState'45'EpochState_2638 ~v0 ~v1
  = du_HasLState'45'EpochState_2638
du_HasLState'45'EpochState_2638 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_HasLState_2984
du_HasLState'45'EpochState_2638
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasLState'45'EpochState_3332
-- Ledger.Conway.Specification.Chain._.HasLastEpoch
d_HasLastEpoch_2642 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Chain._.HasLastEpoch-NewEpochState
d_HasLastEpoch'45'NewEpochState_2646 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2510 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasLastEpoch_3410
d_HasLastEpoch'45'NewEpochState_2646 ~v0 ~v1
  = du_HasLastEpoch'45'NewEpochState_2646
du_HasLastEpoch'45'NewEpochState_2646 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasLastEpoch_3410
du_HasLastEpoch'45'NewEpochState_2646
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasLastEpoch'45'NewEpochState_3426
-- Ledger.Conway.Specification.Chain._.HasNewEpochState
d_HasNewEpochState_2648 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Chain._.LastEpochOf
d_LastEpochOf_2674 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasLastEpoch_3410 ->
  AgdaAny -> AgdaAny
d_LastEpochOf_2674 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_LastEpochOf_3418
      (coe v0)
-- Ledger.Conway.Specification.Chain._.NewEpochState
d_NewEpochState_2682 a0 a1 = ()
-- Ledger.Conway.Specification.Chain._.NewEpochStateOf
d_NewEpochStateOf_2686 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasNewEpochState_3390 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3358
d_NewEpochStateOf_2686 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_NewEpochStateOf_3398
      (coe v0)
-- Ledger.Conway.Specification.Chain._.HasEpochState.EpochStateOf
d_EpochStateOf_2770 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasEpochState_3314 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3286
d_EpochStateOf_2770 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_EpochStateOf_3322
      (coe v0)
-- Ledger.Conway.Specification.Chain._.HasLastEpoch.LastEpochOf
d_LastEpochOf_2774 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasLastEpoch_3410 ->
  AgdaAny -> AgdaAny
d_LastEpochOf_2774 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_LastEpochOf_3418
      (coe v0)
-- Ledger.Conway.Specification.Chain._.HasNewEpochState.NewEpochStateOf
d_NewEpochStateOf_2778 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasNewEpochState_3390 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3358
d_NewEpochStateOf_2778 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_NewEpochStateOf_3398
      (coe v0)
-- Ledger.Conway.Specification.Chain._.NewEpochState.bcur
d_bcur_2782 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3358 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_bcur_2782 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_bcur_3376 (coe v0)
-- Ledger.Conway.Specification.Chain._.NewEpochState.bprev
d_bprev_2784 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3358 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_bprev_2784 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_bprev_3374
      (coe v0)
-- Ledger.Conway.Specification.Chain._.NewEpochState.epochState
d_epochState_2786 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3358 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3286
d_epochState_2786 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_epochState_3378
      (coe v0)
-- Ledger.Conway.Specification.Chain._.NewEpochState.lastEpoch
d_lastEpoch_2788 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3358 ->
  AgdaAny
d_lastEpoch_2788 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_lastEpoch_3372
      (coe v0)
-- Ledger.Conway.Specification.Chain._.NewEpochState.pd
d_pd_2790 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3358 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pd_2790 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_pd_3382 (coe v0)
-- Ledger.Conway.Specification.Chain._.NewEpochState.ru
d_ru_2792 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3358 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_3010
d_ru_2792 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_ru_3380 (coe v0)
-- Ledger.Conway.Specification.Chain._.HasCertState-LState
d_HasCertState'45'LState_3000 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2510 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCertState_1556
d_HasCertState'45'LState_3000 ~v0 ~v1
  = du_HasCertState'45'LState_3000
du_HasCertState'45'LState_3000 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCertState_1556
du_HasCertState'45'LState_3000
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasCertState'45'LState_3006
-- Ledger.Conway.Specification.Chain._.HasLState
d_HasLState_3016 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Chain._.HasUTxOState-LState
d_HasUTxOState'45'LState_3028 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2510 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_HasUTxOState_2528
d_HasUTxOState'45'LState_3028 ~v0 ~v1
  = du_HasUTxOState'45'LState_3028
du_HasUTxOState'45'LState_3028 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_HasUTxOState_2528
du_HasUTxOState'45'LState_3028
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasUTxOState'45'LState_3000
-- Ledger.Conway.Specification.Chain._.LState
d_LState_3040 a0 a1 = ()
-- Ledger.Conway.Specification.Chain._.LStateOf
d_LStateOf_3044 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_HasLState_2984 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2964
d_LStateOf_3044 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_LStateOf_2992
      (coe v0)
-- Ledger.Conway.Specification.Chain._.HasLState.LStateOf
d_LStateOf_3062 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_HasLState_2984 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2964
d_LStateOf_3062 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_LStateOf_2992
      (coe v0)
-- Ledger.Conway.Specification.Chain._.LState.certState
d_certState_3078 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2964 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1460
d_certState_3078 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_certState_2976
      (coe v0)
-- Ledger.Conway.Specification.Chain._.LState.govSt
d_govSt_3080 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2964 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_3080 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_govSt_2974
      (coe v0)
-- Ledger.Conway.Specification.Chain._.LState.utxoSt
d_utxoSt_3082 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2964 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2504
d_utxoSt_3082 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_utxoSt_2972
      (coe v0)
-- Ledger.Conway.Specification.Chain._._⊢_⇀⦇_,TICK⦈_
d__'8866'_'8640''10631'_'44'TICK'10632'__3270 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Specification.Chain._.HasDeposits-UTxOState
d_HasDeposits'45'UTxOState_3312 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2510 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_1200
d_HasDeposits'45'UTxOState_3312 ~v0 ~v1
  = du_HasDeposits'45'UTxOState_3312
du_HasDeposits'45'UTxOState_3312 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_1200
du_HasDeposits'45'UTxOState_3312
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_HasDeposits'45'UTxOState_2550
-- Ledger.Conway.Specification.Chain._.HasUTxOState
d_HasUTxOState_3322 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Chain._.UTxOStateOf
d_UTxOStateOf_3346 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_HasUTxOState_2528 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2504
d_UTxOStateOf_3346 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_UTxOStateOf_2536
      (coe v0)
-- Ledger.Conway.Specification.Chain._.HasUTxOState.UTxOStateOf
d_UTxOStateOf_3436 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_HasUTxOState_2528 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2504
d_UTxOStateOf_3436 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_UTxOStateOf_2536
      (coe v0)
-- Ledger.Conway.Specification.Chain.ChainState
d_ChainState_3486 a0 a1 = ()
newtype T_ChainState_3486
  = C_constructor_3492 MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3358
-- Ledger.Conway.Specification.Chain.ChainState.newEpochState
d_newEpochState_3490 ::
  T_ChainState_3486 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3358
d_newEpochState_3490 v0
  = case coe v0 of
      C_constructor_3492 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Chain.HasNewEpochState-ChainState
d_HasNewEpochState'45'ChainState_3494 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2510 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasNewEpochState_3390
d_HasNewEpochState'45'ChainState_3494 ~v0 ~v1
  = du_HasNewEpochState'45'ChainState_3494
du_HasNewEpochState'45'ChainState_3494 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasNewEpochState_3390
du_HasNewEpochState'45'ChainState_3494
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.C_constructor_3400
      (coe (\ v0 -> d_newEpochState_3490 (coe v0)))
-- Ledger.Conway.Specification.Chain.HasLastEpoch-ChainState
d_HasLastEpoch'45'ChainState_3496 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2510 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasLastEpoch_3410
d_HasLastEpoch'45'ChainState_3496 ~v0 ~v1
  = du_HasLastEpoch'45'ChainState_3496
du_HasLastEpoch'45'ChainState_3496 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasLastEpoch_3410
du_HasLastEpoch'45'ChainState_3496
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.C_constructor_3420
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_LastEpochOf_3418
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasLastEpoch'45'NewEpochState_3426)
              (d_newEpochState_3490 (coe v0))))
-- Ledger.Conway.Specification.Chain.HasEpochState-ChainState
d_HasEpochState'45'ChainState_3498 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2510 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasEpochState_3314
d_HasEpochState'45'ChainState_3498 ~v0 ~v1
  = du_HasEpochState'45'ChainState_3498
du_HasEpochState'45'ChainState_3498 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasEpochState_3314
du_HasEpochState'45'ChainState_3498
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.C_constructor_3324
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_EpochStateOf_3322
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasEpochState'45'NewEpochState_3428)
              (d_newEpochState_3490 (coe v0))))
-- Ledger.Conway.Specification.Chain.HasEnactState-ChainState
d_HasEnactState'45'ChainState_3500 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2510 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_HasEnactState_1208
d_HasEnactState'45'ChainState_3500 ~v0 ~v1
  = du_HasEnactState'45'ChainState_3500
du_HasEnactState'45'ChainState_3500 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_HasEnactState_1208
du_HasEnactState'45'ChainState_3500
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.C_constructor_1218
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Enact.d_EnactStateOf_1216
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasEnactState'45'EpochState_3336)
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_EpochStateOf_3322
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasEpochState'45'NewEpochState_3428)
                 (d_newEpochState_3490 (coe v0)))))
-- Ledger.Conway.Specification.Chain.HasLState-ChainState
d_HasLState'45'ChainState_3502 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2510 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_HasLState_2984
d_HasLState'45'ChainState_3502 ~v0 ~v1
  = du_HasLState'45'ChainState_3502
du_HasLState'45'ChainState_3502 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_HasLState_2984
du_HasLState'45'ChainState_3502
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.C_constructor_2994
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_LStateOf_2992
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasLState'45'EpochState_3332)
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_EpochStateOf_3322
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasEpochState'45'NewEpochState_3428)
                 (d_newEpochState_3490 (coe v0)))))
-- Ledger.Conway.Specification.Chain.HasUTxOState-ChainState
d_HasUTxOState'45'ChainState_3504 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2510 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_HasUTxOState_2528
d_HasUTxOState'45'ChainState_3504 ~v0 ~v1
  = du_HasUTxOState'45'ChainState_3504
du_HasUTxOState'45'ChainState_3504 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_HasUTxOState_2528
du_HasUTxOState'45'ChainState_3504
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.C_constructor_2538
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_UTxOStateOf_2536
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasUTxOState'45'LState_3000)
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_LStateOf_2992
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasLState'45'EpochState_3332)
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_EpochStateOf_3322
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasEpochState'45'NewEpochState_3428)
                    (d_newEpochState_3490 (coe v0))))))
-- Ledger.Conway.Specification.Chain.HasCertState-ChainState
d_HasCertState'45'ChainState_3506 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2510 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCertState_1556
d_HasCertState'45'ChainState_3506 ~v0 ~v1
  = du_HasCertState'45'ChainState_3506
du_HasCertState'45'ChainState_3506 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCertState_1556
du_HasCertState'45'ChainState_3506
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_constructor_1566
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Certs.d_CertStateOf_1564
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasCertState'45'LState_3006)
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_LStateOf_2992
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasLState'45'EpochState_3332)
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_EpochStateOf_3322
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasEpochState'45'NewEpochState_3428)
                    (d_newEpochState_3490 (coe v0))))))
-- Ledger.Conway.Specification.Chain.HasDeposits-ChainState
d_HasDeposits'45'ChainState_3508 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2510 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_1200
d_HasDeposits'45'ChainState_3508 ~v0 ~v1
  = du_HasDeposits'45'ChainState_3508
du_HasDeposits'45'ChainState_3508 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_1200
du_HasDeposits'45'ChainState_3508
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_constructor_1210
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DepositsOf_1208
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_HasDeposits'45'UTxOState_2550)
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_UTxOStateOf_2536
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasUTxOState'45'LState_3000)
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_LStateOf_2992
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasLState'45'EpochState_3332)
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_EpochStateOf_3322
                       (coe
                          MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasEpochState'45'NewEpochState_3428)
                       (d_newEpochState_3490 (coe v0)))))))
-- Ledger.Conway.Specification.Chain.HasRewards-ChainState
d_HasRewards'45'ChainState_3510 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2510 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1284
d_HasRewards'45'ChainState_3510 ~v0 ~v1
  = du_HasRewards'45'ChainState_3510
du_HasRewards'45'ChainState_3510 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1284
du_HasRewards'45'ChainState_3510
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_constructor_1294
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Certs.d_RewardsOf_1292
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasRewards'45'CertState_1596)
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Certs.d_CertStateOf_1564
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasCertState'45'LState_3006)
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_LStateOf_2992
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasLState'45'EpochState_3332)
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_EpochStateOf_3322
                       (coe
                          MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasEpochState'45'NewEpochState_3428)
                       (d_newEpochState_3490 (coe v0)))))))
-- Ledger.Conway.Specification.Chain.HasPParams-ChainState
d_HasPParams'45'ChainState_3512 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2510 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_436
d_HasPParams'45'ChainState_3512 ~v0 ~v1
  = du_HasPParams'45'ChainState_3512
du_HasPParams'45'ChainState_3512 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_436
du_HasPParams'45'ChainState_3512
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.C_constructor_446
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.PParams.d_PParamsOf_444
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Enact.du_HasPParams'45'EnactState_1224)
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Enact.d_EnactStateOf_1216
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasEnactState'45'EpochState_3336)
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_EpochStateOf_3322
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasEpochState'45'NewEpochState_3428)
                    (d_newEpochState_3490 (coe v0))))))
-- Ledger.Conway.Specification.Chain.totalRefScriptsSize
d_totalRefScriptsSize_3514 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2510 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2964 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3634] ->
  Integer
d_totalRefScriptsSize_3514 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.Nat.ListAction.d_sum_6
      (coe
         MAlonzo.Code.Class.Functor.Core.du_fmap_22
         MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
         () erased
         (MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_refScriptsSize_2584
            (coe v0) (coe v1)
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2514
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_utxoSt_2972
                  (coe v2))))
         v3)
-- Ledger.Conway.Specification.Chain._⊢_⇀⦇_,CHAIN⦈_
d__'8866'_'8640''10631'_'44'CHAIN'10632'__3536 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'CHAIN'10632'__3536
  = C_CHAIN_3626 MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3358
                 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Specification.Chain._.newEpochState
d_newEpochState_3548 ::
  T_ChainState_3486 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3358
d_newEpochState_3548 v0 = coe d_newEpochState_3490 (coe v0)
-- Ledger.Conway.Specification.Chain._.bheader
d_bheader_3556 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2510 ->
  T_GeneralizeTel_19425 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2360 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3358 ->
  T_ChainState_3486 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_BHeader_2348
d_bheader_3556 ~v0 ~v1 ~v2 v3 ~v4 ~v5 = du_bheader_3556 v3
du_bheader_3556 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2360 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_BHeader_2348
du_bheader_3556 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bheader_2374
      (coe v0)
-- Ledger.Conway.Specification.Chain._.ts
d_ts_3558 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2510 ->
  T_GeneralizeTel_19425 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2360 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3358 ->
  T_ChainState_3486 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3634]
d_ts_3558 ~v0 ~v1 ~v2 v3 ~v4 ~v5 = du_ts_3558 v3
du_ts_3558 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2360 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3634]
du_ts_3558 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_ts_2376
      (coe v0)
-- Ledger.Conway.Specification.Chain._.bhbody
d_bhbody_3566 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2510 ->
  T_GeneralizeTel_19425 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2360 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3358 ->
  T_ChainState_3486 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_BHBody_2324
d_bhbody_3566 ~v0 ~v1 ~v2 v3 ~v4 ~v5 = du_bhbody_3566 v3
du_bhbody_3566 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2360 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_BHBody_2324
du_bhbody_3566 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bhbody_2354
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bheader_2374
         (coe v0))
-- Ledger.Conway.Specification.Chain._.slot
d_slot_3580 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2510 ->
  T_GeneralizeTel_19425 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2360 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3358 ->
  T_ChainState_3486 -> AgdaAny
d_slot_3580 ~v0 ~v1 ~v2 v3 ~v4 ~v5 = du_slot_3580 v3
du_slot_3580 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2360 ->
  AgdaAny
du_slot_3580 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_slot_2340
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bhbody_2354
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bheader_2374
            (coe v0)))
-- Ledger.Conway.Specification.Chain._.bcur
d_bcur_3584 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2510 ->
  T_GeneralizeTel_19425 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2360 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3358 ->
  T_ChainState_3486 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_bcur_3584 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_bcur_3584 v4
du_bcur_3584 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3358 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_bcur_3584 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_bcur_3376 (coe v0)
-- Ledger.Conway.Specification.Chain._.epochState
d_epochState_3588 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2510 ->
  T_GeneralizeTel_19425 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2360 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3358 ->
  T_ChainState_3486 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3286
d_epochState_3588 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_epochState_3588 v4
du_epochState_3588 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3358 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3286
du_epochState_3588 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_epochState_3378
      (coe v0)
-- Ledger.Conway.Specification.Chain._.acnt
d_acnt_3598 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2510 ->
  T_GeneralizeTel_19425 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2360 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3358 ->
  T_ChainState_3486 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_188
d_acnt_3598 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_acnt_3598 v4
du_acnt_3598 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3358 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_188
du_acnt_3598 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_acnt_3298
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_epochState_3378
         (coe v0))
-- Ledger.Conway.Specification.Chain._.es
d_es_3600 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2510 ->
  T_GeneralizeTel_19425 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2360 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3358 ->
  T_ChainState_3486 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1180
d_es_3600 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_es_3600 v4
du_es_3600 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3358 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1180
du_es_3600 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_es_3304
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_epochState_3378
         (coe v0))
-- Ledger.Conway.Specification.Chain._.ls
d_ls_3604 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2510 ->
  T_GeneralizeTel_19425 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2360 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3358 ->
  T_ChainState_3486 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2964
d_ls_3604 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_ls_3604 v4
du_ls_3604 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3358 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2964
du_ls_3604 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_ls_3302
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_epochState_3378
         (coe v0))
-- Ledger.Conway.Specification.Chain._.pparams
d_pparams_3614 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2510 ->
  T_GeneralizeTel_19425 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2360 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3358 ->
  T_ChainState_3486 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pparams_3614 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_pparams_3614 v4
du_pparams_3614 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3358 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_pparams_3614 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pparams_1198
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_es_3304
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_epochState_3378
            (coe v0)))
-- Ledger.Conway.Specification.Chain._.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_3622 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2510 ->
  T_GeneralizeTel_19425 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2360 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3358 ->
  T_ChainState_3486 -> Integer
d_maxRefScriptSizePerBlock_3622 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_maxRefScriptSizePerBlock_3622 v5
du_maxRefScriptSizePerBlock_3622 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3358 ->
  Integer
du_maxRefScriptSizePerBlock_3622 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerBlock_394
      (coe
         MAlonzo.Code.Ledger.Prelude.du_'8739'_'8739'_70
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasCast'45'HashProtected_1094)
         (MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pparams_1198
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_es_3304
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_epochState_3378
                  (coe v0)))))
-- Ledger.Conway.Specification.Chain._⊢_⇀⦇_,CHAINS⦈_
d__'8866'_'8640''10631'_'44'CHAINS'10632'__3628 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2510 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  T_ChainState_3486 ->
  [MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2360] ->
  T_ChainState_3486 -> ()
d__'8866'_'8640''10631'_'44'CHAINS'10632'__3628 = erased
-- Ledger.Conway.Specification.Chain..generalizedField-ls'
d_'46'generalizedField'45'ls''_19423 ::
  T_GeneralizeTel_19425 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2964
d_'46'generalizedField'45'ls''_19423 v0
  = case coe v0 of
      C_mkGeneralizeTel_19427 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Chain.GeneralizeTel
d_GeneralizeTel_19425 a0 a1 = ()
newtype T_GeneralizeTel_19425
  = C_mkGeneralizeTel_19427 MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2964
