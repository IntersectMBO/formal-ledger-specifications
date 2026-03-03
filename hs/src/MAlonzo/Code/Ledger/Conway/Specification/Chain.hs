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
d_HasCast'45'HashProtected_250 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  () ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'HashProtected_250 ~v0
  = du_HasCast'45'HashProtected_250
du_HasCast'45'HashProtected_250 ::
  () ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'HashProtected_250 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasCast'45'HashProtected_1082
-- _.HasPParams
d_HasPParams_322 a0 a1 a2 = ()
-- _.PParamsOf
d_PParamsOf_460 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_432 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_282
d_PParamsOf_460 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_PParamsOf_440
      (coe v0)
-- _.Tx
d_Tx_602 a0 = ()
-- _.HasPParams.PParamsOf
d_PParamsOf_1286 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_432 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_282
d_PParamsOf_1286 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_PParamsOf_440
      (coe v0)
-- _.Tx.body
d_body_1892 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3566 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3386
d_body_1892 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3578
      (coe v0)
-- _.Tx.isValid
d_isValid_1894 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3566 ->
  Bool
d_isValid_1894 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_isValid_3584
      (coe v0)
-- _.Tx.txAD
d_txAD_1896 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3566 ->
  Maybe AgdaAny
d_txAD_1896 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txAD_3586
      (coe v0)
-- _.Tx.txsize
d_txsize_1898 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3566 ->
  Integer
d_txsize_1898 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txsize_3582
      (coe v0)
-- _.Tx.wits
d_wits_1900 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3566 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3544
d_wits_1900 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3580
      (coe v0)
-- Ledger.Conway.Specification.Chain._._⊢_⇀⦇_,BBODY⦈_
d__'8866'_'8640''10631'_'44'BBODY'10632'__1998 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Specification.Chain._.BBodyEnv
d_BBodyEnv_2002 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2478 ->
  ()
d_BBodyEnv_2002 = erased
-- Ledger.Conway.Specification.Chain._.BBodyState
d_BBodyState_2004 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2478 ->
  ()
d_BBodyState_2004 = erased
-- Ledger.Conway.Specification.Chain._.BHBody
d_BHBody_2006 a0 a1 = ()
-- Ledger.Conway.Specification.Chain._.BHeader
d_BHeader_2010 a0 a1 = ()
-- Ledger.Conway.Specification.Chain._.Block
d_Block_2014 a0 a1 = ()
-- Ledger.Conway.Specification.Chain._.incrBlocks
d_incrBlocks_2018 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2478 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_incrBlocks_2018 v0 ~v1 = du_incrBlocks_2018 v0
du_incrBlocks_2018 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_incrBlocks_2018 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.du_incrBlocks_2354
      (coe v0)
-- Ledger.Conway.Specification.Chain._.BHBody.bhash
d_bhash_2026 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_BHBody_2286 ->
  AgdaAny
d_bhash_2026 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bhash_2304
      (coe v0)
-- Ledger.Conway.Specification.Chain._.BHBody.bsize
d_bsize_2028 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_BHBody_2286 ->
  Integer
d_bsize_2028 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bsize_2300
      (coe v0)
-- Ledger.Conway.Specification.Chain._.BHBody.bvkcold
d_bvkcold_2030 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_BHBody_2286 ->
  AgdaAny
d_bvkcold_2030 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bvkcold_2298
      (coe v0)
-- Ledger.Conway.Specification.Chain._.BHBody.hBbsize
d_hBbsize_2032 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_BHBody_2286 ->
  Integer
d_hBbsize_2032 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_hBbsize_2306
      (coe v0)
-- Ledger.Conway.Specification.Chain._.BHBody.slot
d_slot_2034 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_BHBody_2286 ->
  AgdaAny
d_slot_2034 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_slot_2302
      (coe v0)
-- Ledger.Conway.Specification.Chain._.BHeader.bhbody
d_bhbody_2038 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_BHeader_2310 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_BHBody_2286
d_bhbody_2038 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bhbody_2316
      (coe v0)
-- Ledger.Conway.Specification.Chain._.BHeader.bhsig
d_bhsig_2040 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_BHeader_2310 ->
  AgdaAny
d_bhsig_2040 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bhsig_2318
      (coe v0)
-- Ledger.Conway.Specification.Chain._.Block.bBodyHash
d_bBodyHash_2044 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2322 ->
  AgdaAny
d_bBodyHash_2044 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bBodyHash_2342
      (coe v0)
-- Ledger.Conway.Specification.Chain._.Block.bBodySize
d_bBodySize_2046 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2322 ->
  Integer
d_bBodySize_2046 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bBodySize_2340
      (coe v0)
-- Ledger.Conway.Specification.Chain._.Block.bheader
d_bheader_2048 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2322 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_BHeader_2310
d_bheader_2048 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bheader_2336
      (coe v0)
-- Ledger.Conway.Specification.Chain._.Block.ts
d_ts_2050 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2322 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3566]
d_ts_2050 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_ts_2338
      (coe v0)
-- Ledger.Conway.Specification.Chain._.Block.≡-bBodyHash
d_'8801''45'bBodyHash_2052 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2322 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8801''45'bBodyHash_2052 = erased
-- Ledger.Conway.Specification.Chain._.Block.≡-bBodySize
d_'8801''45'bBodySize_2054 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2322 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8801''45'bBodySize_2054 = erased
-- Ledger.Conway.Specification.Chain._.CertStateOf
d_CertStateOf_2094 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCertState_1544 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1448
d_CertStateOf_2094 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_CertStateOf_1552
      (coe v0)
-- Ledger.Conway.Specification.Chain._.DepositsOf
d_DepositsOf_2128 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_1188 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DepositsOf_2128 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DepositsOf_1196
      (coe v0)
-- Ledger.Conway.Specification.Chain._.HasCertState
d_HasCertState_2164 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Chain._.HasDeposits
d_HasDeposits_2180 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Chain._.HasRewards
d_HasRewards_2212 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Chain._.HasRewards-CertState
d_HasRewards'45'CertState_2216 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2478 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1272
d_HasRewards'45'CertState_2216 ~v0 ~v1
  = du_HasRewards'45'CertState_2216
du_HasRewards'45'CertState_2216 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1272
du_HasRewards'45'CertState_2216
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasRewards'45'CertState_1584
-- Ledger.Conway.Specification.Chain._.RewardsOf
d_RewardsOf_2262 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1272 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RewardsOf_2262 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_RewardsOf_1280
      (coe v0)
-- Ledger.Conway.Specification.Chain._.HasCertState.CertStateOf
d_CertStateOf_2418 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCertState_1544 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1448
d_CertStateOf_2418 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_CertStateOf_1552
      (coe v0)
-- Ledger.Conway.Specification.Chain._.HasDeposits.DepositsOf
d_DepositsOf_2426 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_1188 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DepositsOf_2426 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DepositsOf_1196
      (coe v0)
-- Ledger.Conway.Specification.Chain._.HasRewards.RewardsOf
d_RewardsOf_2446 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1272 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RewardsOf_2446 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_RewardsOf_1280
      (coe v0)
-- Ledger.Conway.Specification.Chain._.EnactStateOf
d_EnactStateOf_2502 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_HasEnactState_1196 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1168
d_EnactStateOf_2502 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_EnactStateOf_1204
      (coe v0)
-- Ledger.Conway.Specification.Chain._.HasEnactState
d_HasEnactState_2506 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Chain._.HasPParams-EnactState
d_HasPParams'45'EnactState_2510 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2478 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_432
d_HasPParams'45'EnactState_2510 ~v0 ~v1
  = du_HasPParams'45'EnactState_2510
du_HasPParams'45'EnactState_2510 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_432
du_HasPParams'45'EnactState_2510
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.du_HasPParams'45'EnactState_1212
-- Ledger.Conway.Specification.Chain._.HasEnactState.EnactStateOf
d_EnactStateOf_2560 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_HasEnactState_1196 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1168
d_EnactStateOf_2560 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_EnactStateOf_1204
      (coe v0)
-- Ledger.Conway.Specification.Chain._.EpochStateOf
d_EpochStateOf_2574 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasEpochState_3280 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3252
d_EpochStateOf_2574 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_EpochStateOf_3288
      (coe v0)
-- Ledger.Conway.Specification.Chain._.HasEnactState-EpochState
d_HasEnactState'45'EpochState_2594 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2478 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_HasEnactState_1196
d_HasEnactState'45'EpochState_2594 ~v0 ~v1
  = du_HasEnactState'45'EpochState_2594
du_HasEnactState'45'EpochState_2594 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_HasEnactState_1196
du_HasEnactState'45'EpochState_2594
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasEnactState'45'EpochState_3302
-- Ledger.Conway.Specification.Chain._.HasEpochState
d_HasEpochState_2598 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Chain._.HasEpochState-NewEpochState
d_HasEpochState'45'NewEpochState_2602 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2478 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasEpochState_3280
d_HasEpochState'45'NewEpochState_2602 ~v0 ~v1
  = du_HasEpochState'45'NewEpochState_2602
du_HasEpochState'45'NewEpochState_2602 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasEpochState_3280
du_HasEpochState'45'NewEpochState_2602
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasEpochState'45'NewEpochState_3392
-- Ledger.Conway.Specification.Chain._.HasLState-EpochState
d_HasLState'45'EpochState_2608 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2478 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_HasLState_2934
d_HasLState'45'EpochState_2608 ~v0 ~v1
  = du_HasLState'45'EpochState_2608
du_HasLState'45'EpochState_2608 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_HasLState_2934
du_HasLState'45'EpochState_2608
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasLState'45'EpochState_3298
-- Ledger.Conway.Specification.Chain._.HasLastEpoch
d_HasLastEpoch_2612 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Chain._.HasLastEpoch-NewEpochState
d_HasLastEpoch'45'NewEpochState_2616 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2478 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasLastEpoch_3374
d_HasLastEpoch'45'NewEpochState_2616 ~v0 ~v1
  = du_HasLastEpoch'45'NewEpochState_2616
du_HasLastEpoch'45'NewEpochState_2616 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasLastEpoch_3374
du_HasLastEpoch'45'NewEpochState_2616
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasLastEpoch'45'NewEpochState_3390
-- Ledger.Conway.Specification.Chain._.HasNewEpochState
d_HasNewEpochState_2618 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Chain._.LastEpochOf
d_LastEpochOf_2642 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasLastEpoch_3374 ->
  AgdaAny -> AgdaAny
d_LastEpochOf_2642 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_LastEpochOf_3382
      (coe v0)
-- Ledger.Conway.Specification.Chain._.NewEpochState
d_NewEpochState_2650 a0 a1 = ()
-- Ledger.Conway.Specification.Chain._.NewEpochStateOf
d_NewEpochStateOf_2654 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasNewEpochState_3354 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3322
d_NewEpochStateOf_2654 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_NewEpochStateOf_3362
      (coe v0)
-- Ledger.Conway.Specification.Chain._.HasEpochState.EpochStateOf
d_EpochStateOf_2738 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasEpochState_3280 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3252
d_EpochStateOf_2738 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_EpochStateOf_3288
      (coe v0)
-- Ledger.Conway.Specification.Chain._.HasLastEpoch.LastEpochOf
d_LastEpochOf_2742 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasLastEpoch_3374 ->
  AgdaAny -> AgdaAny
d_LastEpochOf_2742 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_LastEpochOf_3382
      (coe v0)
-- Ledger.Conway.Specification.Chain._.HasNewEpochState.NewEpochStateOf
d_NewEpochStateOf_2746 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasNewEpochState_3354 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3322
d_NewEpochStateOf_2746 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_NewEpochStateOf_3362
      (coe v0)
-- Ledger.Conway.Specification.Chain._.NewEpochState.bcur
d_bcur_2750 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3322 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_bcur_2750 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_bcur_3340 (coe v0)
-- Ledger.Conway.Specification.Chain._.NewEpochState.bprev
d_bprev_2752 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3322 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_bprev_2752 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_bprev_3338
      (coe v0)
-- Ledger.Conway.Specification.Chain._.NewEpochState.epochState
d_epochState_2754 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3322 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3252
d_epochState_2754 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_epochState_3342
      (coe v0)
-- Ledger.Conway.Specification.Chain._.NewEpochState.lastEpoch
d_lastEpoch_2756 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3322 ->
  AgdaAny
d_lastEpoch_2756 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_lastEpoch_3336
      (coe v0)
-- Ledger.Conway.Specification.Chain._.NewEpochState.pd
d_pd_2758 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3322 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pd_2758 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_pd_3346 (coe v0)
-- Ledger.Conway.Specification.Chain._.NewEpochState.ru
d_ru_2760 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3322 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2978
d_ru_2760 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_ru_3344 (coe v0)
-- Ledger.Conway.Specification.Chain._.HasCertState-LState
d_HasCertState'45'LState_2968 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2478 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCertState_1544
d_HasCertState'45'LState_2968 ~v0 ~v1
  = du_HasCertState'45'LState_2968
du_HasCertState'45'LState_2968 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCertState_1544
du_HasCertState'45'LState_2968
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasCertState'45'LState_2956
-- Ledger.Conway.Specification.Chain._.HasLState
d_HasLState_2984 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Chain._.HasUTxOState-LState
d_HasUTxOState'45'LState_2996 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2478 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_HasUTxOState_2498
d_HasUTxOState'45'LState_2996 ~v0 ~v1
  = du_HasUTxOState'45'LState_2996
du_HasUTxOState'45'LState_2996 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_HasUTxOState_2498
du_HasUTxOState'45'LState_2996
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasUTxOState'45'LState_2950
-- Ledger.Conway.Specification.Chain._.LState
d_LState_3008 a0 a1 = ()
-- Ledger.Conway.Specification.Chain._.LStateOf
d_LStateOf_3012 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_HasLState_2934 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2914
d_LStateOf_3012 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_LStateOf_2942
      (coe v0)
-- Ledger.Conway.Specification.Chain._.HasLState.LStateOf
d_LStateOf_3030 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_HasLState_2934 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2914
d_LStateOf_3030 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_LStateOf_2942
      (coe v0)
-- Ledger.Conway.Specification.Chain._.LState.certState
d_certState_3046 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2914 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1448
d_certState_3046 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_certState_2926
      (coe v0)
-- Ledger.Conway.Specification.Chain._.LState.govSt
d_govSt_3048 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2914 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_3048 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_govSt_2924
      (coe v0)
-- Ledger.Conway.Specification.Chain._.LState.utxoSt
d_utxoSt_3050 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2914 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2474
d_utxoSt_3050 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_utxoSt_2922
      (coe v0)
-- Ledger.Conway.Specification.Chain._._⊢_⇀⦇_,TICK⦈_
d__'8866'_'8640''10631'_'44'TICK'10632'__3238 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Specification.Chain._.HasDeposits-UTxOState
d_HasDeposits'45'UTxOState_3280 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2478 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_1188
d_HasDeposits'45'UTxOState_3280 ~v0 ~v1
  = du_HasDeposits'45'UTxOState_3280
du_HasDeposits'45'UTxOState_3280 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_1188
du_HasDeposits'45'UTxOState_3280
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_HasDeposits'45'UTxOState_2520
-- Ledger.Conway.Specification.Chain._.HasUTxOState
d_HasUTxOState_3290 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Chain._.UTxOStateOf
d_UTxOStateOf_3314 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_HasUTxOState_2498 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2474
d_UTxOStateOf_3314 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_UTxOStateOf_2506
      (coe v0)
-- Ledger.Conway.Specification.Chain._.HasUTxOState.UTxOStateOf
d_UTxOStateOf_3404 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_HasUTxOState_2498 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2474
d_UTxOStateOf_3404 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_UTxOStateOf_2506
      (coe v0)
-- Ledger.Conway.Specification.Chain.ChainState
d_ChainState_3454 a0 a1 = ()
newtype T_ChainState_3454
  = C_constructor_3460 MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3322
-- Ledger.Conway.Specification.Chain.ChainState.newEpochState
d_newEpochState_3458 ::
  T_ChainState_3454 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3322
d_newEpochState_3458 v0
  = case coe v0 of
      C_constructor_3460 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Chain.HasNewEpochState-ChainState
d_HasNewEpochState'45'ChainState_3462 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2478 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasNewEpochState_3354
d_HasNewEpochState'45'ChainState_3462 ~v0 ~v1
  = du_HasNewEpochState'45'ChainState_3462
du_HasNewEpochState'45'ChainState_3462 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasNewEpochState_3354
du_HasNewEpochState'45'ChainState_3462
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.C_constructor_3364
      (coe (\ v0 -> d_newEpochState_3458 (coe v0)))
-- Ledger.Conway.Specification.Chain.HasLastEpoch-ChainState
d_HasLastEpoch'45'ChainState_3464 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2478 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasLastEpoch_3374
d_HasLastEpoch'45'ChainState_3464 ~v0 ~v1
  = du_HasLastEpoch'45'ChainState_3464
du_HasLastEpoch'45'ChainState_3464 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasLastEpoch_3374
du_HasLastEpoch'45'ChainState_3464
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.C_constructor_3384
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_LastEpochOf_3382
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasLastEpoch'45'NewEpochState_3390)
              (d_newEpochState_3458 (coe v0))))
-- Ledger.Conway.Specification.Chain.HasEpochState-ChainState
d_HasEpochState'45'ChainState_3466 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2478 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasEpochState_3280
d_HasEpochState'45'ChainState_3466 ~v0 ~v1
  = du_HasEpochState'45'ChainState_3466
du_HasEpochState'45'ChainState_3466 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasEpochState_3280
du_HasEpochState'45'ChainState_3466
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.C_constructor_3290
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_EpochStateOf_3288
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasEpochState'45'NewEpochState_3392)
              (d_newEpochState_3458 (coe v0))))
-- Ledger.Conway.Specification.Chain.HasEnactState-ChainState
d_HasEnactState'45'ChainState_3468 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2478 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_HasEnactState_1196
d_HasEnactState'45'ChainState_3468 ~v0 ~v1
  = du_HasEnactState'45'ChainState_3468
du_HasEnactState'45'ChainState_3468 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_HasEnactState_1196
du_HasEnactState'45'ChainState_3468
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.C_constructor_1206
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Enact.d_EnactStateOf_1204
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasEnactState'45'EpochState_3302)
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_EpochStateOf_3288
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasEpochState'45'NewEpochState_3392)
                 (d_newEpochState_3458 (coe v0)))))
-- Ledger.Conway.Specification.Chain.HasLState-ChainState
d_HasLState'45'ChainState_3470 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2478 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_HasLState_2934
d_HasLState'45'ChainState_3470 ~v0 ~v1
  = du_HasLState'45'ChainState_3470
du_HasLState'45'ChainState_3470 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_HasLState_2934
du_HasLState'45'ChainState_3470
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.C_constructor_2944
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_LStateOf_2942
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasLState'45'EpochState_3298)
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_EpochStateOf_3288
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasEpochState'45'NewEpochState_3392)
                 (d_newEpochState_3458 (coe v0)))))
-- Ledger.Conway.Specification.Chain.HasUTxOState-ChainState
d_HasUTxOState'45'ChainState_3472 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2478 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_HasUTxOState_2498
d_HasUTxOState'45'ChainState_3472 ~v0 ~v1
  = du_HasUTxOState'45'ChainState_3472
du_HasUTxOState'45'ChainState_3472 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_HasUTxOState_2498
du_HasUTxOState'45'ChainState_3472
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.C_constructor_2508
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_UTxOStateOf_2506
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasUTxOState'45'LState_2950)
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_LStateOf_2942
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasLState'45'EpochState_3298)
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_EpochStateOf_3288
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasEpochState'45'NewEpochState_3392)
                    (d_newEpochState_3458 (coe v0))))))
-- Ledger.Conway.Specification.Chain.HasCertState-ChainState
d_HasCertState'45'ChainState_3474 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2478 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCertState_1544
d_HasCertState'45'ChainState_3474 ~v0 ~v1
  = du_HasCertState'45'ChainState_3474
du_HasCertState'45'ChainState_3474 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCertState_1544
du_HasCertState'45'ChainState_3474
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_constructor_1554
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Certs.d_CertStateOf_1552
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasCertState'45'LState_2956)
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_LStateOf_2942
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasLState'45'EpochState_3298)
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_EpochStateOf_3288
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasEpochState'45'NewEpochState_3392)
                    (d_newEpochState_3458 (coe v0))))))
-- Ledger.Conway.Specification.Chain.HasDeposits-ChainState
d_HasDeposits'45'ChainState_3476 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2478 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_1188
d_HasDeposits'45'ChainState_3476 ~v0 ~v1
  = du_HasDeposits'45'ChainState_3476
du_HasDeposits'45'ChainState_3476 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_1188
du_HasDeposits'45'ChainState_3476
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_constructor_1198
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DepositsOf_1196
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_HasDeposits'45'UTxOState_2520)
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_UTxOStateOf_2506
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasUTxOState'45'LState_2950)
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_LStateOf_2942
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasLState'45'EpochState_3298)
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_EpochStateOf_3288
                       (coe
                          MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasEpochState'45'NewEpochState_3392)
                       (d_newEpochState_3458 (coe v0)))))))
-- Ledger.Conway.Specification.Chain.HasRewards-ChainState
d_HasRewards'45'ChainState_3478 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2478 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1272
d_HasRewards'45'ChainState_3478 ~v0 ~v1
  = du_HasRewards'45'ChainState_3478
du_HasRewards'45'ChainState_3478 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1272
du_HasRewards'45'ChainState_3478
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_constructor_1282
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Certs.d_RewardsOf_1280
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasRewards'45'CertState_1584)
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Certs.d_CertStateOf_1552
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasCertState'45'LState_2956)
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_LStateOf_2942
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasLState'45'EpochState_3298)
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_EpochStateOf_3288
                       (coe
                          MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasEpochState'45'NewEpochState_3392)
                       (d_newEpochState_3458 (coe v0)))))))
-- Ledger.Conway.Specification.Chain.HasPParams-ChainState
d_HasPParams'45'ChainState_3480 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2478 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_432
d_HasPParams'45'ChainState_3480 ~v0 ~v1
  = du_HasPParams'45'ChainState_3480
du_HasPParams'45'ChainState_3480 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_432
du_HasPParams'45'ChainState_3480
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.C_constructor_442
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.PParams.d_PParamsOf_440
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Enact.du_HasPParams'45'EnactState_1212)
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Enact.d_EnactStateOf_1204
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasEnactState'45'EpochState_3302)
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_EpochStateOf_3288
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasEpochState'45'NewEpochState_3392)
                    (d_newEpochState_3458 (coe v0))))))
-- Ledger.Conway.Specification.Chain.totalRefScriptsSize
d_totalRefScriptsSize_3482 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2478 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2914 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3566] ->
  Integer
d_totalRefScriptsSize_3482 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.Nat.ListAction.d_sum_6
      (coe
         MAlonzo.Code.Class.Functor.Core.du_fmap_22
         MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
         () erased
         (MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_refScriptsSize_2554
            (coe v0) (coe v1)
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2484
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_utxoSt_2922
                  (coe v2))))
         v3)
-- Ledger.Conway.Specification.Chain._⊢_⇀⦇_,CHAIN⦈_
d__'8866'_'8640''10631'_'44'CHAIN'10632'__3504 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'CHAIN'10632'__3504
  = C_CHAIN_3594 MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3322
                 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Specification.Chain._.newEpochState
d_newEpochState_3516 ::
  T_ChainState_3454 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3322
d_newEpochState_3516 v0 = coe d_newEpochState_3458 (coe v0)
-- Ledger.Conway.Specification.Chain._.bheader
d_bheader_3524 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2478 ->
  T_GeneralizeTel_19355 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2322 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3322 ->
  T_ChainState_3454 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_BHeader_2310
d_bheader_3524 ~v0 ~v1 ~v2 v3 ~v4 ~v5 = du_bheader_3524 v3
du_bheader_3524 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2322 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_BHeader_2310
du_bheader_3524 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bheader_2336
      (coe v0)
-- Ledger.Conway.Specification.Chain._.ts
d_ts_3526 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2478 ->
  T_GeneralizeTel_19355 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2322 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3322 ->
  T_ChainState_3454 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3566]
d_ts_3526 ~v0 ~v1 ~v2 v3 ~v4 ~v5 = du_ts_3526 v3
du_ts_3526 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2322 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3566]
du_ts_3526 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_ts_2338
      (coe v0)
-- Ledger.Conway.Specification.Chain._.bhbody
d_bhbody_3534 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2478 ->
  T_GeneralizeTel_19355 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2322 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3322 ->
  T_ChainState_3454 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_BHBody_2286
d_bhbody_3534 ~v0 ~v1 ~v2 v3 ~v4 ~v5 = du_bhbody_3534 v3
du_bhbody_3534 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2322 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_BHBody_2286
du_bhbody_3534 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bhbody_2316
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bheader_2336
         (coe v0))
-- Ledger.Conway.Specification.Chain._.slot
d_slot_3548 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2478 ->
  T_GeneralizeTel_19355 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2322 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3322 ->
  T_ChainState_3454 -> AgdaAny
d_slot_3548 ~v0 ~v1 ~v2 v3 ~v4 ~v5 = du_slot_3548 v3
du_slot_3548 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2322 ->
  AgdaAny
du_slot_3548 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_slot_2302
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bhbody_2316
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bheader_2336
            (coe v0)))
-- Ledger.Conway.Specification.Chain._.bcur
d_bcur_3552 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2478 ->
  T_GeneralizeTel_19355 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2322 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3322 ->
  T_ChainState_3454 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_bcur_3552 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_bcur_3552 v4
du_bcur_3552 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3322 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_bcur_3552 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_bcur_3340 (coe v0)
-- Ledger.Conway.Specification.Chain._.epochState
d_epochState_3556 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2478 ->
  T_GeneralizeTel_19355 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2322 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3322 ->
  T_ChainState_3454 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3252
d_epochState_3556 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_epochState_3556 v4
du_epochState_3556 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3322 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3252
du_epochState_3556 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_epochState_3342
      (coe v0)
-- Ledger.Conway.Specification.Chain._.acnt
d_acnt_3566 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2478 ->
  T_GeneralizeTel_19355 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2322 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3322 ->
  T_ChainState_3454 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_172
d_acnt_3566 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_acnt_3566 v4
du_acnt_3566 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3322 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_172
du_acnt_3566 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_acnt_3264
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_epochState_3342
         (coe v0))
-- Ledger.Conway.Specification.Chain._.es
d_es_3568 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2478 ->
  T_GeneralizeTel_19355 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2322 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3322 ->
  T_ChainState_3454 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1168
d_es_3568 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_es_3568 v4
du_es_3568 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3322 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1168
du_es_3568 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_es_3270
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_epochState_3342
         (coe v0))
-- Ledger.Conway.Specification.Chain._.ls
d_ls_3572 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2478 ->
  T_GeneralizeTel_19355 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2322 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3322 ->
  T_ChainState_3454 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2914
d_ls_3572 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_ls_3572 v4
du_ls_3572 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3322 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2914
du_ls_3572 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_ls_3268
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_epochState_3342
         (coe v0))
-- Ledger.Conway.Specification.Chain._.pparams
d_pparams_3582 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2478 ->
  T_GeneralizeTel_19355 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2322 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3322 ->
  T_ChainState_3454 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pparams_3582 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_pparams_3582 v4
du_pparams_3582 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3322 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_pparams_3582 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pparams_1186
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_es_3270
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_epochState_3342
            (coe v0)))
-- Ledger.Conway.Specification.Chain._.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_3590 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2478 ->
  T_GeneralizeTel_19355 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2322 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3322 ->
  T_ChainState_3454 -> Integer
d_maxRefScriptSizePerBlock_3590 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_maxRefScriptSizePerBlock_3590 v5
du_maxRefScriptSizePerBlock_3590 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3322 ->
  Integer
du_maxRefScriptSizePerBlock_3590 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerBlock_390
      (coe
         MAlonzo.Code.Ledger.Prelude.du_'8739'_'8739'_94
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasCast'45'HashProtected_1082)
         (MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pparams_1186
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_es_3270
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_epochState_3342
                  (coe v0)))))
-- Ledger.Conway.Specification.Chain..generalizedField-ls'
d_'46'generalizedField'45'ls''_19353 ::
  T_GeneralizeTel_19355 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2914
d_'46'generalizedField'45'ls''_19353 v0
  = case coe v0 of
      C_mkGeneralizeTel_19357 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Chain.GeneralizeTel
d_GeneralizeTel_19355 a0 a1 = ()
newtype T_GeneralizeTel_19355
  = C_mkGeneralizeTel_19357 MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2914
