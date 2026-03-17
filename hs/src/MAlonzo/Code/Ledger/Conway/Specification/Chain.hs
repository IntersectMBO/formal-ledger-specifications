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
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasCast'45'HashProtected_1080
-- _.HasPParams
d_HasPParams_326 a0 a1 a2 = ()
-- _.PParamsOf
d_PParamsOf_468 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_436 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286
d_PParamsOf_468 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_PParamsOf_444
      (coe v0)
-- _.Tx
d_Tx_606 a0 = ()
-- _.HasPParams.PParamsOf
d_PParamsOf_1284 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_436 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286
d_PParamsOf_1284 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_PParamsOf_444
      (coe v0)
-- _.Tx.body
d_body_1916 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3594 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3414
d_body_1916 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3606
      (coe v0)
-- _.Tx.isValid
d_isValid_1918 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3594 ->
  Bool
d_isValid_1918 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_isValid_3612
      (coe v0)
-- _.Tx.txAD
d_txAD_1920 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3594 ->
  Maybe AgdaAny
d_txAD_1920 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txAD_3614
      (coe v0)
-- _.Tx.txsize
d_txsize_1922 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3594 ->
  Integer
d_txsize_1922 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txsize_3610
      (coe v0)
-- _.Tx.wits
d_wits_1924 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3594 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3572
d_wits_1924 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3608
      (coe v0)
-- Ledger.Conway.Specification.Chain._._⊢_⇀⦇_,BBODY⦈_
d__'8866'_'8640''10631'_'44'BBODY'10632'__2012 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Specification.Chain._.BBodyEnv
d_BBodyEnv_2016 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2492 ->
  ()
d_BBodyEnv_2016 = erased
-- Ledger.Conway.Specification.Chain._.BBodyState
d_BBodyState_2018 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2492 ->
  ()
d_BBodyState_2018 = erased
-- Ledger.Conway.Specification.Chain._.BHBody
d_BHBody_2020 a0 a1 = ()
-- Ledger.Conway.Specification.Chain._.BHeader
d_BHeader_2024 a0 a1 = ()
-- Ledger.Conway.Specification.Chain._.Block
d_Block_2028 a0 a1 = ()
-- Ledger.Conway.Specification.Chain._.incrBlocks
d_incrBlocks_2032 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2492 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_incrBlocks_2032 v0 ~v1 = du_incrBlocks_2032 v0
du_incrBlocks_2032 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_incrBlocks_2032 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.du_incrBlocks_2368
      (coe v0)
-- Ledger.Conway.Specification.Chain._.BHBody.bhash
d_bhash_2040 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_BHBody_2300 ->
  AgdaAny
d_bhash_2040 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bhash_2318
      (coe v0)
-- Ledger.Conway.Specification.Chain._.BHBody.bsize
d_bsize_2042 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_BHBody_2300 ->
  Integer
d_bsize_2042 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bsize_2314
      (coe v0)
-- Ledger.Conway.Specification.Chain._.BHBody.bvkcold
d_bvkcold_2044 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_BHBody_2300 ->
  AgdaAny
d_bvkcold_2044 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bvkcold_2312
      (coe v0)
-- Ledger.Conway.Specification.Chain._.BHBody.hBbsize
d_hBbsize_2046 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_BHBody_2300 ->
  Integer
d_hBbsize_2046 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_hBbsize_2320
      (coe v0)
-- Ledger.Conway.Specification.Chain._.BHBody.slot
d_slot_2048 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_BHBody_2300 ->
  AgdaAny
d_slot_2048 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_slot_2316
      (coe v0)
-- Ledger.Conway.Specification.Chain._.BHeader.bhbody
d_bhbody_2052 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_BHeader_2324 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_BHBody_2300
d_bhbody_2052 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bhbody_2330
      (coe v0)
-- Ledger.Conway.Specification.Chain._.BHeader.bhsig
d_bhsig_2054 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_BHeader_2324 ->
  AgdaAny
d_bhsig_2054 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bhsig_2332
      (coe v0)
-- Ledger.Conway.Specification.Chain._.Block.bBodyHash
d_bBodyHash_2058 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2336 ->
  AgdaAny
d_bBodyHash_2058 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bBodyHash_2356
      (coe v0)
-- Ledger.Conway.Specification.Chain._.Block.bBodySize
d_bBodySize_2060 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2336 ->
  Integer
d_bBodySize_2060 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bBodySize_2354
      (coe v0)
-- Ledger.Conway.Specification.Chain._.Block.bheader
d_bheader_2062 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2336 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_BHeader_2324
d_bheader_2062 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bheader_2350
      (coe v0)
-- Ledger.Conway.Specification.Chain._.Block.ts
d_ts_2064 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2336 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3594]
d_ts_2064 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_ts_2352
      (coe v0)
-- Ledger.Conway.Specification.Chain._.Block.≡-bBodyHash
d_'8801''45'bBodyHash_2066 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2336 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8801''45'bBodyHash_2066 = erased
-- Ledger.Conway.Specification.Chain._.Block.≡-bBodySize
d_'8801''45'bBodySize_2068 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2336 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8801''45'bBodySize_2068 = erased
-- Ledger.Conway.Specification.Chain._.CertStateOf
d_CertStateOf_2108 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCertState_1542 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1446
d_CertStateOf_2108 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_CertStateOf_1550
      (coe v0)
-- Ledger.Conway.Specification.Chain._.DepositsOf
d_DepositsOf_2142 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_1186 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DepositsOf_2142 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DepositsOf_1194
      (coe v0)
-- Ledger.Conway.Specification.Chain._.HasCertState
d_HasCertState_2178 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Chain._.HasDeposits
d_HasDeposits_2194 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Chain._.HasRewards
d_HasRewards_2226 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Chain._.HasRewards-CertState
d_HasRewards'45'CertState_2230 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2492 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1270
d_HasRewards'45'CertState_2230 ~v0 ~v1
  = du_HasRewards'45'CertState_2230
du_HasRewards'45'CertState_2230 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1270
du_HasRewards'45'CertState_2230
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasRewards'45'CertState_1582
-- Ledger.Conway.Specification.Chain._.RewardsOf
d_RewardsOf_2276 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1270 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RewardsOf_2276 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_RewardsOf_1278
      (coe v0)
-- Ledger.Conway.Specification.Chain._.HasCertState.CertStateOf
d_CertStateOf_2432 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCertState_1542 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1446
d_CertStateOf_2432 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_CertStateOf_1550
      (coe v0)
-- Ledger.Conway.Specification.Chain._.HasDeposits.DepositsOf
d_DepositsOf_2440 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_1186 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DepositsOf_2440 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DepositsOf_1194
      (coe v0)
-- Ledger.Conway.Specification.Chain._.HasRewards.RewardsOf
d_RewardsOf_2460 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1270 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RewardsOf_2460 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_RewardsOf_1278
      (coe v0)
-- Ledger.Conway.Specification.Chain._.EnactStateOf
d_EnactStateOf_2516 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_HasEnactState_1194 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1166
d_EnactStateOf_2516 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_EnactStateOf_1202
      (coe v0)
-- Ledger.Conway.Specification.Chain._.HasEnactState
d_HasEnactState_2520 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Chain._.HasPParams-EnactState
d_HasPParams'45'EnactState_2524 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2492 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_436
d_HasPParams'45'EnactState_2524 ~v0 ~v1
  = du_HasPParams'45'EnactState_2524
du_HasPParams'45'EnactState_2524 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_436
du_HasPParams'45'EnactState_2524
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.du_HasPParams'45'EnactState_1210
-- Ledger.Conway.Specification.Chain._.HasEnactState.EnactStateOf
d_EnactStateOf_2574 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_HasEnactState_1194 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1166
d_EnactStateOf_2574 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_EnactStateOf_1202
      (coe v0)
-- Ledger.Conway.Specification.Chain._.EpochStateOf
d_EpochStateOf_2588 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasEpochState_3294 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3266
d_EpochStateOf_2588 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_EpochStateOf_3302
      (coe v0)
-- Ledger.Conway.Specification.Chain._.HasEnactState-EpochState
d_HasEnactState'45'EpochState_2608 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2492 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_HasEnactState_1194
d_HasEnactState'45'EpochState_2608 ~v0 ~v1
  = du_HasEnactState'45'EpochState_2608
du_HasEnactState'45'EpochState_2608 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_HasEnactState_1194
du_HasEnactState'45'EpochState_2608
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasEnactState'45'EpochState_3316
-- Ledger.Conway.Specification.Chain._.HasEpochState
d_HasEpochState_2612 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Chain._.HasEpochState-NewEpochState
d_HasEpochState'45'NewEpochState_2616 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2492 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasEpochState_3294
d_HasEpochState'45'NewEpochState_2616 ~v0 ~v1
  = du_HasEpochState'45'NewEpochState_2616
du_HasEpochState'45'NewEpochState_2616 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasEpochState_3294
du_HasEpochState'45'NewEpochState_2616
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasEpochState'45'NewEpochState_3406
-- Ledger.Conway.Specification.Chain._.HasLState-EpochState
d_HasLState'45'EpochState_2622 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2492 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_HasLState_2954
d_HasLState'45'EpochState_2622 ~v0 ~v1
  = du_HasLState'45'EpochState_2622
du_HasLState'45'EpochState_2622 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_HasLState_2954
du_HasLState'45'EpochState_2622
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasLState'45'EpochState_3312
-- Ledger.Conway.Specification.Chain._.HasLastEpoch
d_HasLastEpoch_2626 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Chain._.HasLastEpoch-NewEpochState
d_HasLastEpoch'45'NewEpochState_2630 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2492 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasLastEpoch_3388
d_HasLastEpoch'45'NewEpochState_2630 ~v0 ~v1
  = du_HasLastEpoch'45'NewEpochState_2630
du_HasLastEpoch'45'NewEpochState_2630 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasLastEpoch_3388
du_HasLastEpoch'45'NewEpochState_2630
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasLastEpoch'45'NewEpochState_3404
-- Ledger.Conway.Specification.Chain._.HasNewEpochState
d_HasNewEpochState_2632 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Chain._.LastEpochOf
d_LastEpochOf_2656 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasLastEpoch_3388 ->
  AgdaAny -> AgdaAny
d_LastEpochOf_2656 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_LastEpochOf_3396
      (coe v0)
-- Ledger.Conway.Specification.Chain._.NewEpochState
d_NewEpochState_2664 a0 a1 = ()
-- Ledger.Conway.Specification.Chain._.NewEpochStateOf
d_NewEpochStateOf_2668 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasNewEpochState_3368 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3336
d_NewEpochStateOf_2668 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_NewEpochStateOf_3376
      (coe v0)
-- Ledger.Conway.Specification.Chain._.HasEpochState.EpochStateOf
d_EpochStateOf_2752 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasEpochState_3294 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3266
d_EpochStateOf_2752 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_EpochStateOf_3302
      (coe v0)
-- Ledger.Conway.Specification.Chain._.HasLastEpoch.LastEpochOf
d_LastEpochOf_2756 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasLastEpoch_3388 ->
  AgdaAny -> AgdaAny
d_LastEpochOf_2756 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_LastEpochOf_3396
      (coe v0)
-- Ledger.Conway.Specification.Chain._.HasNewEpochState.NewEpochStateOf
d_NewEpochStateOf_2760 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasNewEpochState_3368 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3336
d_NewEpochStateOf_2760 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_NewEpochStateOf_3376
      (coe v0)
-- Ledger.Conway.Specification.Chain._.NewEpochState.bcur
d_bcur_2764 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3336 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_bcur_2764 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_bcur_3354 (coe v0)
-- Ledger.Conway.Specification.Chain._.NewEpochState.bprev
d_bprev_2766 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3336 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_bprev_2766 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_bprev_3352
      (coe v0)
-- Ledger.Conway.Specification.Chain._.NewEpochState.epochState
d_epochState_2768 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3336 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3266
d_epochState_2768 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_epochState_3356
      (coe v0)
-- Ledger.Conway.Specification.Chain._.NewEpochState.lastEpoch
d_lastEpoch_2770 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3336 ->
  AgdaAny
d_lastEpoch_2770 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_lastEpoch_3350
      (coe v0)
-- Ledger.Conway.Specification.Chain._.NewEpochState.pd
d_pd_2772 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3336 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pd_2772 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_pd_3360 (coe v0)
-- Ledger.Conway.Specification.Chain._.NewEpochState.ru
d_ru_2774 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3336 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2992
d_ru_2774 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_ru_3358 (coe v0)
-- Ledger.Conway.Specification.Chain._.HasCertState-LState
d_HasCertState'45'LState_2982 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2492 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCertState_1542
d_HasCertState'45'LState_2982 ~v0 ~v1
  = du_HasCertState'45'LState_2982
du_HasCertState'45'LState_2982 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCertState_1542
du_HasCertState'45'LState_2982
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasCertState'45'LState_2976
-- Ledger.Conway.Specification.Chain._.HasLState
d_HasLState_2998 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Chain._.HasUTxOState-LState
d_HasUTxOState'45'LState_3010 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2492 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_HasUTxOState_2512
d_HasUTxOState'45'LState_3010 ~v0 ~v1
  = du_HasUTxOState'45'LState_3010
du_HasUTxOState'45'LState_3010 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_HasUTxOState_2512
du_HasUTxOState'45'LState_3010
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasUTxOState'45'LState_2970
-- Ledger.Conway.Specification.Chain._.LState
d_LState_3022 a0 a1 = ()
-- Ledger.Conway.Specification.Chain._.LStateOf
d_LStateOf_3026 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_HasLState_2954 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2934
d_LStateOf_3026 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_LStateOf_2962
      (coe v0)
-- Ledger.Conway.Specification.Chain._.HasLState.LStateOf
d_LStateOf_3044 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_HasLState_2954 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2934
d_LStateOf_3044 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_LStateOf_2962
      (coe v0)
-- Ledger.Conway.Specification.Chain._.LState.certState
d_certState_3060 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2934 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1446
d_certState_3060 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_certState_2946
      (coe v0)
-- Ledger.Conway.Specification.Chain._.LState.govSt
d_govSt_3062 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2934 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_3062 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_govSt_2944
      (coe v0)
-- Ledger.Conway.Specification.Chain._.LState.utxoSt
d_utxoSt_3064 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2934 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2488
d_utxoSt_3064 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_utxoSt_2942
      (coe v0)
-- Ledger.Conway.Specification.Chain._._⊢_⇀⦇_,TICK⦈_
d__'8866'_'8640''10631'_'44'TICK'10632'__3252 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Specification.Chain._.HasDeposits-UTxOState
d_HasDeposits'45'UTxOState_3294 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2492 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_1186
d_HasDeposits'45'UTxOState_3294 ~v0 ~v1
  = du_HasDeposits'45'UTxOState_3294
du_HasDeposits'45'UTxOState_3294 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_1186
du_HasDeposits'45'UTxOState_3294
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_HasDeposits'45'UTxOState_2534
-- Ledger.Conway.Specification.Chain._.HasUTxOState
d_HasUTxOState_3304 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Chain._.UTxOStateOf
d_UTxOStateOf_3328 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_HasUTxOState_2512 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2488
d_UTxOStateOf_3328 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_UTxOStateOf_2520
      (coe v0)
-- Ledger.Conway.Specification.Chain._.HasUTxOState.UTxOStateOf
d_UTxOStateOf_3418 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_HasUTxOState_2512 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2488
d_UTxOStateOf_3418 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_UTxOStateOf_2520
      (coe v0)
-- Ledger.Conway.Specification.Chain.ChainState
d_ChainState_3468 a0 a1 = ()
newtype T_ChainState_3468
  = C_constructor_3474 MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3336
-- Ledger.Conway.Specification.Chain.ChainState.newEpochState
d_newEpochState_3472 ::
  T_ChainState_3468 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3336
d_newEpochState_3472 v0
  = case coe v0 of
      C_constructor_3474 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Chain.HasNewEpochState-ChainState
d_HasNewEpochState'45'ChainState_3476 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2492 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasNewEpochState_3368
d_HasNewEpochState'45'ChainState_3476 ~v0 ~v1
  = du_HasNewEpochState'45'ChainState_3476
du_HasNewEpochState'45'ChainState_3476 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasNewEpochState_3368
du_HasNewEpochState'45'ChainState_3476
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.C_constructor_3378
      (coe (\ v0 -> d_newEpochState_3472 (coe v0)))
-- Ledger.Conway.Specification.Chain.HasLastEpoch-ChainState
d_HasLastEpoch'45'ChainState_3478 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2492 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasLastEpoch_3388
d_HasLastEpoch'45'ChainState_3478 ~v0 ~v1
  = du_HasLastEpoch'45'ChainState_3478
du_HasLastEpoch'45'ChainState_3478 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasLastEpoch_3388
du_HasLastEpoch'45'ChainState_3478
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.C_constructor_3398
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_LastEpochOf_3396
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasLastEpoch'45'NewEpochState_3404)
              (d_newEpochState_3472 (coe v0))))
-- Ledger.Conway.Specification.Chain.HasEpochState-ChainState
d_HasEpochState'45'ChainState_3480 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2492 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasEpochState_3294
d_HasEpochState'45'ChainState_3480 ~v0 ~v1
  = du_HasEpochState'45'ChainState_3480
du_HasEpochState'45'ChainState_3480 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasEpochState_3294
du_HasEpochState'45'ChainState_3480
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.C_constructor_3304
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_EpochStateOf_3302
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasEpochState'45'NewEpochState_3406)
              (d_newEpochState_3472 (coe v0))))
-- Ledger.Conway.Specification.Chain.HasEnactState-ChainState
d_HasEnactState'45'ChainState_3482 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2492 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_HasEnactState_1194
d_HasEnactState'45'ChainState_3482 ~v0 ~v1
  = du_HasEnactState'45'ChainState_3482
du_HasEnactState'45'ChainState_3482 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_HasEnactState_1194
du_HasEnactState'45'ChainState_3482
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.C_constructor_1204
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Enact.d_EnactStateOf_1202
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasEnactState'45'EpochState_3316)
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_EpochStateOf_3302
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasEpochState'45'NewEpochState_3406)
                 (d_newEpochState_3472 (coe v0)))))
-- Ledger.Conway.Specification.Chain.HasLState-ChainState
d_HasLState'45'ChainState_3484 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2492 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_HasLState_2954
d_HasLState'45'ChainState_3484 ~v0 ~v1
  = du_HasLState'45'ChainState_3484
du_HasLState'45'ChainState_3484 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_HasLState_2954
du_HasLState'45'ChainState_3484
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.C_constructor_2964
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_LStateOf_2962
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasLState'45'EpochState_3312)
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_EpochStateOf_3302
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasEpochState'45'NewEpochState_3406)
                 (d_newEpochState_3472 (coe v0)))))
-- Ledger.Conway.Specification.Chain.HasUTxOState-ChainState
d_HasUTxOState'45'ChainState_3486 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2492 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_HasUTxOState_2512
d_HasUTxOState'45'ChainState_3486 ~v0 ~v1
  = du_HasUTxOState'45'ChainState_3486
du_HasUTxOState'45'ChainState_3486 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_HasUTxOState_2512
du_HasUTxOState'45'ChainState_3486
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.C_constructor_2522
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_UTxOStateOf_2520
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasUTxOState'45'LState_2970)
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_LStateOf_2962
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasLState'45'EpochState_3312)
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_EpochStateOf_3302
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasEpochState'45'NewEpochState_3406)
                    (d_newEpochState_3472 (coe v0))))))
-- Ledger.Conway.Specification.Chain.HasCertState-ChainState
d_HasCertState'45'ChainState_3488 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2492 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCertState_1542
d_HasCertState'45'ChainState_3488 ~v0 ~v1
  = du_HasCertState'45'ChainState_3488
du_HasCertState'45'ChainState_3488 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCertState_1542
du_HasCertState'45'ChainState_3488
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_constructor_1552
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Certs.d_CertStateOf_1550
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasCertState'45'LState_2976)
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_LStateOf_2962
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasLState'45'EpochState_3312)
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_EpochStateOf_3302
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasEpochState'45'NewEpochState_3406)
                    (d_newEpochState_3472 (coe v0))))))
-- Ledger.Conway.Specification.Chain.HasDeposits-ChainState
d_HasDeposits'45'ChainState_3490 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2492 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_1186
d_HasDeposits'45'ChainState_3490 ~v0 ~v1
  = du_HasDeposits'45'ChainState_3490
du_HasDeposits'45'ChainState_3490 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_1186
du_HasDeposits'45'ChainState_3490
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_constructor_1196
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DepositsOf_1194
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_HasDeposits'45'UTxOState_2534)
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_UTxOStateOf_2520
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasUTxOState'45'LState_2970)
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_LStateOf_2962
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasLState'45'EpochState_3312)
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_EpochStateOf_3302
                       (coe
                          MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasEpochState'45'NewEpochState_3406)
                       (d_newEpochState_3472 (coe v0)))))))
-- Ledger.Conway.Specification.Chain.HasRewards-ChainState
d_HasRewards'45'ChainState_3492 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2492 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1270
d_HasRewards'45'ChainState_3492 ~v0 ~v1
  = du_HasRewards'45'ChainState_3492
du_HasRewards'45'ChainState_3492 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1270
du_HasRewards'45'ChainState_3492
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_constructor_1280
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Certs.d_RewardsOf_1278
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasRewards'45'CertState_1582)
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Certs.d_CertStateOf_1550
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasCertState'45'LState_2976)
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_LStateOf_2962
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasLState'45'EpochState_3312)
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_EpochStateOf_3302
                       (coe
                          MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasEpochState'45'NewEpochState_3406)
                       (d_newEpochState_3472 (coe v0)))))))
-- Ledger.Conway.Specification.Chain.HasPParams-ChainState
d_HasPParams'45'ChainState_3494 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2492 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_436
d_HasPParams'45'ChainState_3494 ~v0 ~v1
  = du_HasPParams'45'ChainState_3494
du_HasPParams'45'ChainState_3494 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_436
du_HasPParams'45'ChainState_3494
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.C_constructor_446
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.PParams.d_PParamsOf_444
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Enact.du_HasPParams'45'EnactState_1210)
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Enact.d_EnactStateOf_1202
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasEnactState'45'EpochState_3316)
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_EpochStateOf_3302
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasEpochState'45'NewEpochState_3406)
                    (d_newEpochState_3472 (coe v0))))))
-- Ledger.Conway.Specification.Chain.totalRefScriptsSize
d_totalRefScriptsSize_3496 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2492 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2934 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3594] ->
  Integer
d_totalRefScriptsSize_3496 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.Nat.ListAction.d_sum_6
      (coe
         MAlonzo.Code.Class.Functor.Core.du_fmap_22
         MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
         () erased
         (MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_refScriptsSize_2568
            (coe v0) (coe v1)
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2498
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_utxoSt_2942
                  (coe v2))))
         v3)
-- Ledger.Conway.Specification.Chain._⊢_⇀⦇_,CHAIN⦈_
d__'8866'_'8640''10631'_'44'CHAIN'10632'__3518 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'CHAIN'10632'__3518
  = C_CHAIN_3608 MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3336
                 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Specification.Chain._.newEpochState
d_newEpochState_3530 ::
  T_ChainState_3468 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3336
d_newEpochState_3530 v0 = coe d_newEpochState_3472 (coe v0)
-- Ledger.Conway.Specification.Chain._.bheader
d_bheader_3538 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2492 ->
  T_GeneralizeTel_19355 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2336 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3336 ->
  T_ChainState_3468 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_BHeader_2324
d_bheader_3538 ~v0 ~v1 ~v2 v3 ~v4 ~v5 = du_bheader_3538 v3
du_bheader_3538 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2336 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_BHeader_2324
du_bheader_3538 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bheader_2350
      (coe v0)
-- Ledger.Conway.Specification.Chain._.ts
d_ts_3540 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2492 ->
  T_GeneralizeTel_19355 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2336 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3336 ->
  T_ChainState_3468 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3594]
d_ts_3540 ~v0 ~v1 ~v2 v3 ~v4 ~v5 = du_ts_3540 v3
du_ts_3540 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2336 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3594]
du_ts_3540 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_ts_2352
      (coe v0)
-- Ledger.Conway.Specification.Chain._.bhbody
d_bhbody_3548 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2492 ->
  T_GeneralizeTel_19355 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2336 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3336 ->
  T_ChainState_3468 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_BHBody_2300
d_bhbody_3548 ~v0 ~v1 ~v2 v3 ~v4 ~v5 = du_bhbody_3548 v3
du_bhbody_3548 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2336 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_BHBody_2300
du_bhbody_3548 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bhbody_2330
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bheader_2350
         (coe v0))
-- Ledger.Conway.Specification.Chain._.slot
d_slot_3562 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2492 ->
  T_GeneralizeTel_19355 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2336 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3336 ->
  T_ChainState_3468 -> AgdaAny
d_slot_3562 ~v0 ~v1 ~v2 v3 ~v4 ~v5 = du_slot_3562 v3
du_slot_3562 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2336 ->
  AgdaAny
du_slot_3562 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_slot_2316
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bhbody_2330
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bheader_2350
            (coe v0)))
-- Ledger.Conway.Specification.Chain._.bcur
d_bcur_3566 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2492 ->
  T_GeneralizeTel_19355 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2336 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3336 ->
  T_ChainState_3468 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_bcur_3566 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_bcur_3566 v4
du_bcur_3566 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3336 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_bcur_3566 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_bcur_3354 (coe v0)
-- Ledger.Conway.Specification.Chain._.epochState
d_epochState_3570 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2492 ->
  T_GeneralizeTel_19355 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2336 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3336 ->
  T_ChainState_3468 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3266
d_epochState_3570 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_epochState_3570 v4
du_epochState_3570 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3336 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3266
du_epochState_3570 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_epochState_3356
      (coe v0)
-- Ledger.Conway.Specification.Chain._.acnt
d_acnt_3580 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2492 ->
  T_GeneralizeTel_19355 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2336 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3336 ->
  T_ChainState_3468 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_188
d_acnt_3580 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_acnt_3580 v4
du_acnt_3580 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3336 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_188
du_acnt_3580 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_acnt_3278
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_epochState_3356
         (coe v0))
-- Ledger.Conway.Specification.Chain._.es
d_es_3582 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2492 ->
  T_GeneralizeTel_19355 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2336 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3336 ->
  T_ChainState_3468 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1166
d_es_3582 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_es_3582 v4
du_es_3582 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3336 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1166
du_es_3582 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_es_3284
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_epochState_3356
         (coe v0))
-- Ledger.Conway.Specification.Chain._.ls
d_ls_3586 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2492 ->
  T_GeneralizeTel_19355 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2336 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3336 ->
  T_ChainState_3468 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2934
d_ls_3586 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_ls_3586 v4
du_ls_3586 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3336 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2934
du_ls_3586 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_ls_3282
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_epochState_3356
         (coe v0))
-- Ledger.Conway.Specification.Chain._.pparams
d_pparams_3596 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2492 ->
  T_GeneralizeTel_19355 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2336 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3336 ->
  T_ChainState_3468 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pparams_3596 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_pparams_3596 v4
du_pparams_3596 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3336 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_pparams_3596 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pparams_1184
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_es_3284
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_epochState_3356
            (coe v0)))
-- Ledger.Conway.Specification.Chain._.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_3604 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2492 ->
  T_GeneralizeTel_19355 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2336 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3336 ->
  T_ChainState_3468 -> Integer
d_maxRefScriptSizePerBlock_3604 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_maxRefScriptSizePerBlock_3604 v5
du_maxRefScriptSizePerBlock_3604 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3336 ->
  Integer
du_maxRefScriptSizePerBlock_3604 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerBlock_394
      (coe
         MAlonzo.Code.Ledger.Prelude.du_'8739'_'8739'_94
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasCast'45'HashProtected_1080)
         (MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pparams_1184
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_es_3284
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_epochState_3356
                  (coe v0)))))
-- Ledger.Conway.Specification.Chain..generalizedField-ls'
d_'46'generalizedField'45'ls''_19353 ::
  T_GeneralizeTel_19355 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2934
d_'46'generalizedField'45'ls''_19353 v0
  = case coe v0 of
      C_mkGeneralizeTel_19357 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Chain.GeneralizeTel
d_GeneralizeTel_19355 a0 a1 = ()
newtype T_GeneralizeTel_19355
  = C_mkGeneralizeTel_19357 MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2934
