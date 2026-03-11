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
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasCast'45'HashProtected_1064
-- _.HasPParams
d_HasPParams_322 a0 a1 a2 = ()
-- _.PParamsOf
d_PParamsOf_460 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_422 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272
d_PParamsOf_460 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_PParamsOf_430
      (coe v0)
-- _.Tx
d_Tx_598 a0 = ()
-- _.HasPParams.PParamsOf
d_PParamsOf_1274 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_422 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272
d_PParamsOf_1274 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_PParamsOf_430
      (coe v0)
-- _.Tx.body
d_body_1880 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3530 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3350
d_body_1880 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3542
      (coe v0)
-- _.Tx.isValid
d_isValid_1882 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3530 ->
  Bool
d_isValid_1882 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_isValid_3548
      (coe v0)
-- _.Tx.txAD
d_txAD_1884 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3530 ->
  Maybe AgdaAny
d_txAD_1884 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txAD_3550
      (coe v0)
-- _.Tx.txsize
d_txsize_1886 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3530 ->
  Integer
d_txsize_1886 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txsize_3546
      (coe v0)
-- _.Tx.wits
d_wits_1888 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3530 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3508
d_wits_1888 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3544
      (coe v0)
-- Ledger.Conway.Specification.Chain._._⊢_⇀⦇_,BBODY⦈_
d__'8866'_'8640''10631'_'44'BBODY'10632'__1980 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Specification.Chain._.BBodyEnv
d_BBodyEnv_1984 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2460 ->
  ()
d_BBodyEnv_1984 = erased
-- Ledger.Conway.Specification.Chain._.BBodyState
d_BBodyState_1986 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2460 ->
  ()
d_BBodyState_1986 = erased
-- Ledger.Conway.Specification.Chain._.BHBody
d_BHBody_1988 a0 a1 = ()
-- Ledger.Conway.Specification.Chain._.BHeader
d_BHeader_1992 a0 a1 = ()
-- Ledger.Conway.Specification.Chain._.Block
d_Block_1996 a0 a1 = ()
-- Ledger.Conway.Specification.Chain._.incrBlocks
d_incrBlocks_2000 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2460 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_incrBlocks_2000 v0 ~v1 = du_incrBlocks_2000 v0
du_incrBlocks_2000 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_incrBlocks_2000 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.du_incrBlocks_2336
      (coe v0)
-- Ledger.Conway.Specification.Chain._.BHBody.bhash
d_bhash_2008 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_BHBody_2268 ->
  AgdaAny
d_bhash_2008 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bhash_2286
      (coe v0)
-- Ledger.Conway.Specification.Chain._.BHBody.bsize
d_bsize_2010 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_BHBody_2268 ->
  Integer
d_bsize_2010 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bsize_2282
      (coe v0)
-- Ledger.Conway.Specification.Chain._.BHBody.bvkcold
d_bvkcold_2012 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_BHBody_2268 ->
  AgdaAny
d_bvkcold_2012 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bvkcold_2280
      (coe v0)
-- Ledger.Conway.Specification.Chain._.BHBody.hBbsize
d_hBbsize_2014 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_BHBody_2268 ->
  Integer
d_hBbsize_2014 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_hBbsize_2288
      (coe v0)
-- Ledger.Conway.Specification.Chain._.BHBody.slot
d_slot_2016 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_BHBody_2268 ->
  AgdaAny
d_slot_2016 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_slot_2284
      (coe v0)
-- Ledger.Conway.Specification.Chain._.BHeader.bhbody
d_bhbody_2020 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_BHeader_2292 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_BHBody_2268
d_bhbody_2020 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bhbody_2298
      (coe v0)
-- Ledger.Conway.Specification.Chain._.BHeader.bhsig
d_bhsig_2022 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_BHeader_2292 ->
  AgdaAny
d_bhsig_2022 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bhsig_2300
      (coe v0)
-- Ledger.Conway.Specification.Chain._.Block.bBodyHash
d_bBodyHash_2026 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2304 ->
  AgdaAny
d_bBodyHash_2026 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bBodyHash_2324
      (coe v0)
-- Ledger.Conway.Specification.Chain._.Block.bBodySize
d_bBodySize_2028 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2304 ->
  Integer
d_bBodySize_2028 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bBodySize_2322
      (coe v0)
-- Ledger.Conway.Specification.Chain._.Block.bheader
d_bheader_2030 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2304 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_BHeader_2292
d_bheader_2030 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bheader_2318
      (coe v0)
-- Ledger.Conway.Specification.Chain._.Block.ts
d_ts_2032 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2304 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3530]
d_ts_2032 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_ts_2320
      (coe v0)
-- Ledger.Conway.Specification.Chain._.Block.≡-bBodyHash
d_'8801''45'bBodyHash_2034 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2304 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8801''45'bBodyHash_2034 = erased
-- Ledger.Conway.Specification.Chain._.Block.≡-bBodySize
d_'8801''45'bBodySize_2036 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2304 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8801''45'bBodySize_2036 = erased
-- Ledger.Conway.Specification.Chain._.CertStateOf
d_CertStateOf_2076 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCertState_1526 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1430
d_CertStateOf_2076 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_CertStateOf_1534
      (coe v0)
-- Ledger.Conway.Specification.Chain._.DepositsOf
d_DepositsOf_2110 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_1170 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DepositsOf_2110 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DepositsOf_1178
      (coe v0)
-- Ledger.Conway.Specification.Chain._.HasCertState
d_HasCertState_2146 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Chain._.HasDeposits
d_HasDeposits_2162 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Chain._.HasRewards
d_HasRewards_2194 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Chain._.HasRewards-CertState
d_HasRewards'45'CertState_2198 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2460 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1254
d_HasRewards'45'CertState_2198 ~v0 ~v1
  = du_HasRewards'45'CertState_2198
du_HasRewards'45'CertState_2198 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1254
du_HasRewards'45'CertState_2198
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasRewards'45'CertState_1566
-- Ledger.Conway.Specification.Chain._.RewardsOf
d_RewardsOf_2244 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1254 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RewardsOf_2244 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_RewardsOf_1262
      (coe v0)
-- Ledger.Conway.Specification.Chain._.HasCertState.CertStateOf
d_CertStateOf_2400 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCertState_1526 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1430
d_CertStateOf_2400 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_CertStateOf_1534
      (coe v0)
-- Ledger.Conway.Specification.Chain._.HasDeposits.DepositsOf
d_DepositsOf_2408 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_1170 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DepositsOf_2408 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DepositsOf_1178
      (coe v0)
-- Ledger.Conway.Specification.Chain._.HasRewards.RewardsOf
d_RewardsOf_2428 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1254 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RewardsOf_2428 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_RewardsOf_1262
      (coe v0)
-- Ledger.Conway.Specification.Chain._.EnactStateOf
d_EnactStateOf_2484 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_HasEnactState_1178 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1150
d_EnactStateOf_2484 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_EnactStateOf_1186
      (coe v0)
-- Ledger.Conway.Specification.Chain._.HasEnactState
d_HasEnactState_2488 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Chain._.HasPParams-EnactState
d_HasPParams'45'EnactState_2492 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2460 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_422
d_HasPParams'45'EnactState_2492 ~v0 ~v1
  = du_HasPParams'45'EnactState_2492
du_HasPParams'45'EnactState_2492 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_422
du_HasPParams'45'EnactState_2492
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.du_HasPParams'45'EnactState_1194
-- Ledger.Conway.Specification.Chain._.HasEnactState.EnactStateOf
d_EnactStateOf_2542 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_HasEnactState_1178 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1150
d_EnactStateOf_2542 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_EnactStateOf_1186
      (coe v0)
-- Ledger.Conway.Specification.Chain._.EpochStateOf
d_EpochStateOf_2556 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasEpochState_3262 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3234
d_EpochStateOf_2556 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_EpochStateOf_3270
      (coe v0)
-- Ledger.Conway.Specification.Chain._.HasEnactState-EpochState
d_HasEnactState'45'EpochState_2576 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2460 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_HasEnactState_1178
d_HasEnactState'45'EpochState_2576 ~v0 ~v1
  = du_HasEnactState'45'EpochState_2576
du_HasEnactState'45'EpochState_2576 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_HasEnactState_1178
du_HasEnactState'45'EpochState_2576
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasEnactState'45'EpochState_3284
-- Ledger.Conway.Specification.Chain._.HasEpochState
d_HasEpochState_2580 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Chain._.HasEpochState-NewEpochState
d_HasEpochState'45'NewEpochState_2584 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2460 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasEpochState_3262
d_HasEpochState'45'NewEpochState_2584 ~v0 ~v1
  = du_HasEpochState'45'NewEpochState_2584
du_HasEpochState'45'NewEpochState_2584 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasEpochState_3262
du_HasEpochState'45'NewEpochState_2584
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasEpochState'45'NewEpochState_3374
-- Ledger.Conway.Specification.Chain._.HasLState-EpochState
d_HasLState'45'EpochState_2590 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2460 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_HasLState_2922
d_HasLState'45'EpochState_2590 ~v0 ~v1
  = du_HasLState'45'EpochState_2590
du_HasLState'45'EpochState_2590 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_HasLState_2922
du_HasLState'45'EpochState_2590
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasLState'45'EpochState_3280
-- Ledger.Conway.Specification.Chain._.HasLastEpoch
d_HasLastEpoch_2594 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Chain._.HasLastEpoch-NewEpochState
d_HasLastEpoch'45'NewEpochState_2598 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2460 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasLastEpoch_3356
d_HasLastEpoch'45'NewEpochState_2598 ~v0 ~v1
  = du_HasLastEpoch'45'NewEpochState_2598
du_HasLastEpoch'45'NewEpochState_2598 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasLastEpoch_3356
du_HasLastEpoch'45'NewEpochState_2598
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasLastEpoch'45'NewEpochState_3372
-- Ledger.Conway.Specification.Chain._.HasNewEpochState
d_HasNewEpochState_2600 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Chain._.LastEpochOf
d_LastEpochOf_2624 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasLastEpoch_3356 ->
  AgdaAny -> AgdaAny
d_LastEpochOf_2624 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_LastEpochOf_3364
      (coe v0)
-- Ledger.Conway.Specification.Chain._.NewEpochState
d_NewEpochState_2632 a0 a1 = ()
-- Ledger.Conway.Specification.Chain._.NewEpochStateOf
d_NewEpochStateOf_2636 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasNewEpochState_3336 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3304
d_NewEpochStateOf_2636 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_NewEpochStateOf_3344
      (coe v0)
-- Ledger.Conway.Specification.Chain._.HasEpochState.EpochStateOf
d_EpochStateOf_2720 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasEpochState_3262 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3234
d_EpochStateOf_2720 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_EpochStateOf_3270
      (coe v0)
-- Ledger.Conway.Specification.Chain._.HasLastEpoch.LastEpochOf
d_LastEpochOf_2724 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasLastEpoch_3356 ->
  AgdaAny -> AgdaAny
d_LastEpochOf_2724 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_LastEpochOf_3364
      (coe v0)
-- Ledger.Conway.Specification.Chain._.HasNewEpochState.NewEpochStateOf
d_NewEpochStateOf_2728 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasNewEpochState_3336 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3304
d_NewEpochStateOf_2728 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_NewEpochStateOf_3344
      (coe v0)
-- Ledger.Conway.Specification.Chain._.NewEpochState.bcur
d_bcur_2732 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3304 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_bcur_2732 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_bcur_3322 (coe v0)
-- Ledger.Conway.Specification.Chain._.NewEpochState.bprev
d_bprev_2734 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3304 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_bprev_2734 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_bprev_3320
      (coe v0)
-- Ledger.Conway.Specification.Chain._.NewEpochState.epochState
d_epochState_2736 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3304 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3234
d_epochState_2736 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_epochState_3324
      (coe v0)
-- Ledger.Conway.Specification.Chain._.NewEpochState.lastEpoch
d_lastEpoch_2738 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3304 ->
  AgdaAny
d_lastEpoch_2738 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_lastEpoch_3318
      (coe v0)
-- Ledger.Conway.Specification.Chain._.NewEpochState.pd
d_pd_2740 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3304 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pd_2740 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_pd_3328 (coe v0)
-- Ledger.Conway.Specification.Chain._.NewEpochState.ru
d_ru_2742 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3304 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2960
d_ru_2742 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_ru_3326 (coe v0)
-- Ledger.Conway.Specification.Chain._.HasCertState-LState
d_HasCertState'45'LState_2950 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2460 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCertState_1526
d_HasCertState'45'LState_2950 ~v0 ~v1
  = du_HasCertState'45'LState_2950
du_HasCertState'45'LState_2950 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCertState_1526
du_HasCertState'45'LState_2950
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasCertState'45'LState_2944
-- Ledger.Conway.Specification.Chain._.HasLState
d_HasLState_2966 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Chain._.HasUTxOState-LState
d_HasUTxOState'45'LState_2978 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2460 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_HasUTxOState_2480
d_HasUTxOState'45'LState_2978 ~v0 ~v1
  = du_HasUTxOState'45'LState_2978
du_HasUTxOState'45'LState_2978 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_HasUTxOState_2480
du_HasUTxOState'45'LState_2978
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasUTxOState'45'LState_2938
-- Ledger.Conway.Specification.Chain._.LState
d_LState_2990 a0 a1 = ()
-- Ledger.Conway.Specification.Chain._.LStateOf
d_LStateOf_2994 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_HasLState_2922 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2902
d_LStateOf_2994 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_LStateOf_2930
      (coe v0)
-- Ledger.Conway.Specification.Chain._.HasLState.LStateOf
d_LStateOf_3012 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_HasLState_2922 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2902
d_LStateOf_3012 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_LStateOf_2930
      (coe v0)
-- Ledger.Conway.Specification.Chain._.LState.certState
d_certState_3028 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2902 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1430
d_certState_3028 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_certState_2914
      (coe v0)
-- Ledger.Conway.Specification.Chain._.LState.govSt
d_govSt_3030 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2902 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_3030 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_govSt_2912
      (coe v0)
-- Ledger.Conway.Specification.Chain._.LState.utxoSt
d_utxoSt_3032 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2902 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2456
d_utxoSt_3032 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_utxoSt_2910
      (coe v0)
-- Ledger.Conway.Specification.Chain._._⊢_⇀⦇_,TICK⦈_
d__'8866'_'8640''10631'_'44'TICK'10632'__3220 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Specification.Chain._.HasDeposits-UTxOState
d_HasDeposits'45'UTxOState_3262 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2460 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_1170
d_HasDeposits'45'UTxOState_3262 ~v0 ~v1
  = du_HasDeposits'45'UTxOState_3262
du_HasDeposits'45'UTxOState_3262 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_1170
du_HasDeposits'45'UTxOState_3262
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_HasDeposits'45'UTxOState_2502
-- Ledger.Conway.Specification.Chain._.HasUTxOState
d_HasUTxOState_3272 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Chain._.UTxOStateOf
d_UTxOStateOf_3296 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_HasUTxOState_2480 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2456
d_UTxOStateOf_3296 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_UTxOStateOf_2488
      (coe v0)
-- Ledger.Conway.Specification.Chain._.HasUTxOState.UTxOStateOf
d_UTxOStateOf_3386 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_HasUTxOState_2480 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2456
d_UTxOStateOf_3386 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_UTxOStateOf_2488
      (coe v0)
-- Ledger.Conway.Specification.Chain.ChainState
d_ChainState_3436 a0 a1 = ()
newtype T_ChainState_3436
  = C_constructor_3442 MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3304
-- Ledger.Conway.Specification.Chain.ChainState.newEpochState
d_newEpochState_3440 ::
  T_ChainState_3436 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3304
d_newEpochState_3440 v0
  = case coe v0 of
      C_constructor_3442 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Chain.HasNewEpochState-ChainState
d_HasNewEpochState'45'ChainState_3444 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2460 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasNewEpochState_3336
d_HasNewEpochState'45'ChainState_3444 ~v0 ~v1
  = du_HasNewEpochState'45'ChainState_3444
du_HasNewEpochState'45'ChainState_3444 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasNewEpochState_3336
du_HasNewEpochState'45'ChainState_3444
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.C_constructor_3346
      (coe (\ v0 -> d_newEpochState_3440 (coe v0)))
-- Ledger.Conway.Specification.Chain.HasLastEpoch-ChainState
d_HasLastEpoch'45'ChainState_3446 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2460 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasLastEpoch_3356
d_HasLastEpoch'45'ChainState_3446 ~v0 ~v1
  = du_HasLastEpoch'45'ChainState_3446
du_HasLastEpoch'45'ChainState_3446 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasLastEpoch_3356
du_HasLastEpoch'45'ChainState_3446
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.C_constructor_3366
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_LastEpochOf_3364
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasLastEpoch'45'NewEpochState_3372)
              (d_newEpochState_3440 (coe v0))))
-- Ledger.Conway.Specification.Chain.HasEpochState-ChainState
d_HasEpochState'45'ChainState_3448 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2460 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasEpochState_3262
d_HasEpochState'45'ChainState_3448 ~v0 ~v1
  = du_HasEpochState'45'ChainState_3448
du_HasEpochState'45'ChainState_3448 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasEpochState_3262
du_HasEpochState'45'ChainState_3448
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.C_constructor_3272
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_EpochStateOf_3270
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasEpochState'45'NewEpochState_3374)
              (d_newEpochState_3440 (coe v0))))
-- Ledger.Conway.Specification.Chain.HasEnactState-ChainState
d_HasEnactState'45'ChainState_3450 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2460 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_HasEnactState_1178
d_HasEnactState'45'ChainState_3450 ~v0 ~v1
  = du_HasEnactState'45'ChainState_3450
du_HasEnactState'45'ChainState_3450 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_HasEnactState_1178
du_HasEnactState'45'ChainState_3450
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.C_constructor_1188
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Enact.d_EnactStateOf_1186
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasEnactState'45'EpochState_3284)
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_EpochStateOf_3270
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasEpochState'45'NewEpochState_3374)
                 (d_newEpochState_3440 (coe v0)))))
-- Ledger.Conway.Specification.Chain.HasLState-ChainState
d_HasLState'45'ChainState_3452 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2460 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_HasLState_2922
d_HasLState'45'ChainState_3452 ~v0 ~v1
  = du_HasLState'45'ChainState_3452
du_HasLState'45'ChainState_3452 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_HasLState_2922
du_HasLState'45'ChainState_3452
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.C_constructor_2932
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_LStateOf_2930
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasLState'45'EpochState_3280)
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_EpochStateOf_3270
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasEpochState'45'NewEpochState_3374)
                 (d_newEpochState_3440 (coe v0)))))
-- Ledger.Conway.Specification.Chain.HasUTxOState-ChainState
d_HasUTxOState'45'ChainState_3454 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2460 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_HasUTxOState_2480
d_HasUTxOState'45'ChainState_3454 ~v0 ~v1
  = du_HasUTxOState'45'ChainState_3454
du_HasUTxOState'45'ChainState_3454 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_HasUTxOState_2480
du_HasUTxOState'45'ChainState_3454
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.C_constructor_2490
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_UTxOStateOf_2488
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasUTxOState'45'LState_2938)
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_LStateOf_2930
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasLState'45'EpochState_3280)
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_EpochStateOf_3270
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasEpochState'45'NewEpochState_3374)
                    (d_newEpochState_3440 (coe v0))))))
-- Ledger.Conway.Specification.Chain.HasCertState-ChainState
d_HasCertState'45'ChainState_3456 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2460 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCertState_1526
d_HasCertState'45'ChainState_3456 ~v0 ~v1
  = du_HasCertState'45'ChainState_3456
du_HasCertState'45'ChainState_3456 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCertState_1526
du_HasCertState'45'ChainState_3456
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_constructor_1536
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Certs.d_CertStateOf_1534
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasCertState'45'LState_2944)
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_LStateOf_2930
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasLState'45'EpochState_3280)
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_EpochStateOf_3270
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasEpochState'45'NewEpochState_3374)
                    (d_newEpochState_3440 (coe v0))))))
-- Ledger.Conway.Specification.Chain.HasDeposits-ChainState
d_HasDeposits'45'ChainState_3458 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2460 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_1170
d_HasDeposits'45'ChainState_3458 ~v0 ~v1
  = du_HasDeposits'45'ChainState_3458
du_HasDeposits'45'ChainState_3458 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_1170
du_HasDeposits'45'ChainState_3458
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_constructor_1180
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DepositsOf_1178
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_HasDeposits'45'UTxOState_2502)
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_UTxOStateOf_2488
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasUTxOState'45'LState_2938)
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_LStateOf_2930
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasLState'45'EpochState_3280)
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_EpochStateOf_3270
                       (coe
                          MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasEpochState'45'NewEpochState_3374)
                       (d_newEpochState_3440 (coe v0)))))))
-- Ledger.Conway.Specification.Chain.HasRewards-ChainState
d_HasRewards'45'ChainState_3460 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2460 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1254
d_HasRewards'45'ChainState_3460 ~v0 ~v1
  = du_HasRewards'45'ChainState_3460
du_HasRewards'45'ChainState_3460 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1254
du_HasRewards'45'ChainState_3460
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_constructor_1264
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Certs.d_RewardsOf_1262
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasRewards'45'CertState_1566)
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Certs.d_CertStateOf_1534
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasCertState'45'LState_2944)
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_LStateOf_2930
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasLState'45'EpochState_3280)
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_EpochStateOf_3270
                       (coe
                          MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasEpochState'45'NewEpochState_3374)
                       (d_newEpochState_3440 (coe v0)))))))
-- Ledger.Conway.Specification.Chain.HasPParams-ChainState
d_HasPParams'45'ChainState_3462 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2460 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_422
d_HasPParams'45'ChainState_3462 ~v0 ~v1
  = du_HasPParams'45'ChainState_3462
du_HasPParams'45'ChainState_3462 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_422
du_HasPParams'45'ChainState_3462
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.C_constructor_432
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.PParams.d_PParamsOf_430
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Enact.du_HasPParams'45'EnactState_1194)
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Enact.d_EnactStateOf_1186
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasEnactState'45'EpochState_3284)
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_EpochStateOf_3270
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasEpochState'45'NewEpochState_3374)
                    (d_newEpochState_3440 (coe v0))))))
-- Ledger.Conway.Specification.Chain.totalRefScriptsSize
d_totalRefScriptsSize_3464 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2460 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2902 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3530] ->
  Integer
d_totalRefScriptsSize_3464 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.Nat.ListAction.d_sum_6
      (coe
         MAlonzo.Code.Class.Functor.Core.du_fmap_22
         MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
         () erased
         (MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_refScriptsSize_2536
            (coe v0) (coe v1)
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2466
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_utxoSt_2910
                  (coe v2))))
         v3)
-- Ledger.Conway.Specification.Chain._⊢_⇀⦇_,CHAIN⦈_
d__'8866'_'8640''10631'_'44'CHAIN'10632'__3486 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'CHAIN'10632'__3486
  = C_CHAIN_3576 MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3304
                 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Specification.Chain._.newEpochState
d_newEpochState_3498 ::
  T_ChainState_3436 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3304
d_newEpochState_3498 v0 = coe d_newEpochState_3440 (coe v0)
-- Ledger.Conway.Specification.Chain._.bheader
d_bheader_3506 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2460 ->
  T_GeneralizeTel_19305 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2304 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3304 ->
  T_ChainState_3436 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_BHeader_2292
d_bheader_3506 ~v0 ~v1 ~v2 v3 ~v4 ~v5 = du_bheader_3506 v3
du_bheader_3506 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2304 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_BHeader_2292
du_bheader_3506 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bheader_2318
      (coe v0)
-- Ledger.Conway.Specification.Chain._.ts
d_ts_3508 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2460 ->
  T_GeneralizeTel_19305 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2304 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3304 ->
  T_ChainState_3436 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3530]
d_ts_3508 ~v0 ~v1 ~v2 v3 ~v4 ~v5 = du_ts_3508 v3
du_ts_3508 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2304 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3530]
du_ts_3508 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_ts_2320
      (coe v0)
-- Ledger.Conway.Specification.Chain._.bhbody
d_bhbody_3516 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2460 ->
  T_GeneralizeTel_19305 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2304 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3304 ->
  T_ChainState_3436 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_BHBody_2268
d_bhbody_3516 ~v0 ~v1 ~v2 v3 ~v4 ~v5 = du_bhbody_3516 v3
du_bhbody_3516 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2304 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_BHBody_2268
du_bhbody_3516 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bhbody_2298
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bheader_2318
         (coe v0))
-- Ledger.Conway.Specification.Chain._.slot
d_slot_3530 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2460 ->
  T_GeneralizeTel_19305 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2304 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3304 ->
  T_ChainState_3436 -> AgdaAny
d_slot_3530 ~v0 ~v1 ~v2 v3 ~v4 ~v5 = du_slot_3530 v3
du_slot_3530 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2304 ->
  AgdaAny
du_slot_3530 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_slot_2284
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bhbody_2298
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bheader_2318
            (coe v0)))
-- Ledger.Conway.Specification.Chain._.bcur
d_bcur_3534 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2460 ->
  T_GeneralizeTel_19305 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2304 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3304 ->
  T_ChainState_3436 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_bcur_3534 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_bcur_3534 v4
du_bcur_3534 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3304 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_bcur_3534 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_bcur_3322 (coe v0)
-- Ledger.Conway.Specification.Chain._.epochState
d_epochState_3538 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2460 ->
  T_GeneralizeTel_19305 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2304 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3304 ->
  T_ChainState_3436 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3234
d_epochState_3538 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_epochState_3538 v4
du_epochState_3538 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3304 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3234
du_epochState_3538 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_epochState_3324
      (coe v0)
-- Ledger.Conway.Specification.Chain._.acnt
d_acnt_3548 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2460 ->
  T_GeneralizeTel_19305 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2304 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3304 ->
  T_ChainState_3436 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_172
d_acnt_3548 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_acnt_3548 v4
du_acnt_3548 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3304 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_172
du_acnt_3548 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_acnt_3246
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_epochState_3324
         (coe v0))
-- Ledger.Conway.Specification.Chain._.es
d_es_3550 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2460 ->
  T_GeneralizeTel_19305 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2304 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3304 ->
  T_ChainState_3436 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1150
d_es_3550 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_es_3550 v4
du_es_3550 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3304 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1150
du_es_3550 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_es_3252
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_epochState_3324
         (coe v0))
-- Ledger.Conway.Specification.Chain._.ls
d_ls_3554 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2460 ->
  T_GeneralizeTel_19305 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2304 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3304 ->
  T_ChainState_3436 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2902
d_ls_3554 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_ls_3554 v4
du_ls_3554 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3304 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2902
du_ls_3554 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_ls_3250
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_epochState_3324
         (coe v0))
-- Ledger.Conway.Specification.Chain._.pparams
d_pparams_3564 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2460 ->
  T_GeneralizeTel_19305 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2304 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3304 ->
  T_ChainState_3436 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pparams_3564 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_pparams_3564 v4
du_pparams_3564 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3304 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_pparams_3564 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pparams_1168
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_es_3252
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_epochState_3324
            (coe v0)))
-- Ledger.Conway.Specification.Chain._.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_3572 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2460 ->
  T_GeneralizeTel_19305 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2304 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3304 ->
  T_ChainState_3436 -> Integer
d_maxRefScriptSizePerBlock_3572 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_maxRefScriptSizePerBlock_3572 v5
du_maxRefScriptSizePerBlock_3572 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3304 ->
  Integer
du_maxRefScriptSizePerBlock_3572 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerBlock_380
      (coe
         MAlonzo.Code.Ledger.Prelude.du_'8739'_'8739'_94
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasCast'45'HashProtected_1064)
         (MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pparams_1168
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_es_3252
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_epochState_3324
                  (coe v0)))))
-- Ledger.Conway.Specification.Chain..generalizedField-ls'
d_'46'generalizedField'45'ls''_19303 ::
  T_GeneralizeTel_19305 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2902
d_'46'generalizedField'45'ls''_19303 v0
  = case coe v0 of
      C_mkGeneralizeTel_19307 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Chain.GeneralizeTel
d_GeneralizeTel_19305 a0 a1 = ()
newtype T_GeneralizeTel_19305
  = C_mkGeneralizeTel_19307 MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2902
