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
d_HasCast'45'HashProtected_252 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  () ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'HashProtected_252 ~v0
  = du_HasCast'45'HashProtected_252
du_HasCast'45'HashProtected_252 ::
  () ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'HashProtected_252 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasCast'45'HashProtected_1066
-- _.HasPParams
d_HasPParams_324 a0 a1 a2 = ()
-- _.PParamsOf
d_PParamsOf_464 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_422 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272
d_PParamsOf_464 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_PParamsOf_430
      (coe v0)
-- _.Tx
d_Tx_602 a0 = ()
-- _.HasPParams.PParamsOf
d_PParamsOf_1276 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_422 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272
d_PParamsOf_1276 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_PParamsOf_430
      (coe v0)
-- _.Tx.body
d_body_1886 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3534 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3354
d_body_1886 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3546
      (coe v0)
-- _.Tx.isValid
d_isValid_1888 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3534 ->
  Bool
d_isValid_1888 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_isValid_3552
      (coe v0)
-- _.Tx.txAD
d_txAD_1890 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3534 ->
  Maybe AgdaAny
d_txAD_1890 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txAD_3554
      (coe v0)
-- _.Tx.txsize
d_txsize_1892 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3534 ->
  Integer
d_txsize_1892 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txsize_3550
      (coe v0)
-- _.Tx.wits
d_wits_1894 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3534 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3512
d_wits_1894 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3548
      (coe v0)
-- Ledger.Conway.Specification.Chain._._⊢_⇀⦇_,BBODY⦈_
d__'8866'_'8640''10631'_'44'BBODY'10632'__1982 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Specification.Chain._.BBodyEnv
d_BBodyEnv_1986 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2462 ->
  ()
d_BBodyEnv_1986 = erased
-- Ledger.Conway.Specification.Chain._.BBodyState
d_BBodyState_1988 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2462 ->
  ()
d_BBodyState_1988 = erased
-- Ledger.Conway.Specification.Chain._.BHBody
d_BHBody_1990 a0 a1 = ()
-- Ledger.Conway.Specification.Chain._.BHeader
d_BHeader_1994 a0 a1 = ()
-- Ledger.Conway.Specification.Chain._.Block
d_Block_1998 a0 a1 = ()
-- Ledger.Conway.Specification.Chain._.incrBlocks
d_incrBlocks_2002 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2462 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_incrBlocks_2002 v0 ~v1 = du_incrBlocks_2002 v0
du_incrBlocks_2002 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_incrBlocks_2002 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.du_incrBlocks_2338
      (coe v0)
-- Ledger.Conway.Specification.Chain._.BHBody.bhash
d_bhash_2010 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_BHBody_2270 ->
  AgdaAny
d_bhash_2010 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bhash_2288
      (coe v0)
-- Ledger.Conway.Specification.Chain._.BHBody.bsize
d_bsize_2012 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_BHBody_2270 ->
  Integer
d_bsize_2012 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bsize_2284
      (coe v0)
-- Ledger.Conway.Specification.Chain._.BHBody.bvkcold
d_bvkcold_2014 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_BHBody_2270 ->
  AgdaAny
d_bvkcold_2014 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bvkcold_2282
      (coe v0)
-- Ledger.Conway.Specification.Chain._.BHBody.hBbsize
d_hBbsize_2016 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_BHBody_2270 ->
  Integer
d_hBbsize_2016 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_hBbsize_2290
      (coe v0)
-- Ledger.Conway.Specification.Chain._.BHBody.slot
d_slot_2018 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_BHBody_2270 ->
  AgdaAny
d_slot_2018 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_slot_2286
      (coe v0)
-- Ledger.Conway.Specification.Chain._.BHeader.bhbody
d_bhbody_2022 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_BHeader_2294 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_BHBody_2270
d_bhbody_2022 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bhbody_2300
      (coe v0)
-- Ledger.Conway.Specification.Chain._.BHeader.bhsig
d_bhsig_2024 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_BHeader_2294 ->
  AgdaAny
d_bhsig_2024 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bhsig_2302
      (coe v0)
-- Ledger.Conway.Specification.Chain._.Block.bBodyHash
d_bBodyHash_2028 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2306 ->
  AgdaAny
d_bBodyHash_2028 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bBodyHash_2326
      (coe v0)
-- Ledger.Conway.Specification.Chain._.Block.bBodySize
d_bBodySize_2030 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2306 ->
  Integer
d_bBodySize_2030 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bBodySize_2324
      (coe v0)
-- Ledger.Conway.Specification.Chain._.Block.bheader
d_bheader_2032 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2306 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_BHeader_2294
d_bheader_2032 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bheader_2320
      (coe v0)
-- Ledger.Conway.Specification.Chain._.Block.ts
d_ts_2034 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2306 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3534]
d_ts_2034 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_ts_2322
      (coe v0)
-- Ledger.Conway.Specification.Chain._.Block.≡-bBodyHash
d_'8801''45'bBodyHash_2036 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2306 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8801''45'bBodyHash_2036 = erased
-- Ledger.Conway.Specification.Chain._.Block.≡-bBodySize
d_'8801''45'bBodySize_2038 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2306 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8801''45'bBodySize_2038 = erased
-- Ledger.Conway.Specification.Chain._.CertStateOf
d_CertStateOf_2078 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCertState_1528 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1432
d_CertStateOf_2078 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_CertStateOf_1536
      (coe v0)
-- Ledger.Conway.Specification.Chain._.DepositsOf
d_DepositsOf_2112 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_1172 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DepositsOf_2112 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DepositsOf_1180
      (coe v0)
-- Ledger.Conway.Specification.Chain._.HasCertState
d_HasCertState_2148 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Chain._.HasDeposits
d_HasDeposits_2164 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Chain._.HasRewards
d_HasRewards_2196 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Chain._.HasRewards-CertState
d_HasRewards'45'CertState_2200 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2462 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1256
d_HasRewards'45'CertState_2200 ~v0 ~v1
  = du_HasRewards'45'CertState_2200
du_HasRewards'45'CertState_2200 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1256
du_HasRewards'45'CertState_2200
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasRewards'45'CertState_1568
-- Ledger.Conway.Specification.Chain._.RewardsOf
d_RewardsOf_2246 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1256 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RewardsOf_2246 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_RewardsOf_1264
      (coe v0)
-- Ledger.Conway.Specification.Chain._.HasCertState.CertStateOf
d_CertStateOf_2402 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCertState_1528 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1432
d_CertStateOf_2402 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_CertStateOf_1536
      (coe v0)
-- Ledger.Conway.Specification.Chain._.HasDeposits.DepositsOf
d_DepositsOf_2410 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_1172 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DepositsOf_2410 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DepositsOf_1180
      (coe v0)
-- Ledger.Conway.Specification.Chain._.HasRewards.RewardsOf
d_RewardsOf_2430 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1256 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RewardsOf_2430 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_RewardsOf_1264
      (coe v0)
-- Ledger.Conway.Specification.Chain._.EnactStateOf
d_EnactStateOf_2486 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_HasEnactState_1180 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1152
d_EnactStateOf_2486 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_EnactStateOf_1188
      (coe v0)
-- Ledger.Conway.Specification.Chain._.HasEnactState
d_HasEnactState_2490 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Chain._.HasPParams-EnactState
d_HasPParams'45'EnactState_2494 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2462 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_422
d_HasPParams'45'EnactState_2494 ~v0 ~v1
  = du_HasPParams'45'EnactState_2494
du_HasPParams'45'EnactState_2494 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_422
du_HasPParams'45'EnactState_2494
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.du_HasPParams'45'EnactState_1196
-- Ledger.Conway.Specification.Chain._.HasEnactState.EnactStateOf
d_EnactStateOf_2544 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_HasEnactState_1180 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1152
d_EnactStateOf_2544 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_EnactStateOf_1188
      (coe v0)
-- Ledger.Conway.Specification.Chain._.EpochStateOf
d_EpochStateOf_2558 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasEpochState_3264 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3236
d_EpochStateOf_2558 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_EpochStateOf_3272
      (coe v0)
-- Ledger.Conway.Specification.Chain._.HasEnactState-EpochState
d_HasEnactState'45'EpochState_2578 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2462 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_HasEnactState_1180
d_HasEnactState'45'EpochState_2578 ~v0 ~v1
  = du_HasEnactState'45'EpochState_2578
du_HasEnactState'45'EpochState_2578 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_HasEnactState_1180
du_HasEnactState'45'EpochState_2578
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasEnactState'45'EpochState_3286
-- Ledger.Conway.Specification.Chain._.HasEpochState
d_HasEpochState_2582 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Chain._.HasEpochState-NewEpochState
d_HasEpochState'45'NewEpochState_2586 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2462 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasEpochState_3264
d_HasEpochState'45'NewEpochState_2586 ~v0 ~v1
  = du_HasEpochState'45'NewEpochState_2586
du_HasEpochState'45'NewEpochState_2586 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasEpochState_3264
du_HasEpochState'45'NewEpochState_2586
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasEpochState'45'NewEpochState_3376
-- Ledger.Conway.Specification.Chain._.HasLState-EpochState
d_HasLState'45'EpochState_2592 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2462 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_HasLState_2924
d_HasLState'45'EpochState_2592 ~v0 ~v1
  = du_HasLState'45'EpochState_2592
du_HasLState'45'EpochState_2592 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_HasLState_2924
du_HasLState'45'EpochState_2592
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasLState'45'EpochState_3282
-- Ledger.Conway.Specification.Chain._.HasLastEpoch
d_HasLastEpoch_2596 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Chain._.HasLastEpoch-NewEpochState
d_HasLastEpoch'45'NewEpochState_2600 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2462 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasLastEpoch_3358
d_HasLastEpoch'45'NewEpochState_2600 ~v0 ~v1
  = du_HasLastEpoch'45'NewEpochState_2600
du_HasLastEpoch'45'NewEpochState_2600 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasLastEpoch_3358
du_HasLastEpoch'45'NewEpochState_2600
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasLastEpoch'45'NewEpochState_3374
-- Ledger.Conway.Specification.Chain._.HasNewEpochState
d_HasNewEpochState_2602 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Chain._.LastEpochOf
d_LastEpochOf_2626 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasLastEpoch_3358 ->
  AgdaAny -> AgdaAny
d_LastEpochOf_2626 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_LastEpochOf_3366
      (coe v0)
-- Ledger.Conway.Specification.Chain._.NewEpochState
d_NewEpochState_2634 a0 a1 = ()
-- Ledger.Conway.Specification.Chain._.NewEpochStateOf
d_NewEpochStateOf_2638 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasNewEpochState_3338 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3306
d_NewEpochStateOf_2638 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_NewEpochStateOf_3346
      (coe v0)
-- Ledger.Conway.Specification.Chain._.HasEpochState.EpochStateOf
d_EpochStateOf_2722 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasEpochState_3264 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3236
d_EpochStateOf_2722 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_EpochStateOf_3272
      (coe v0)
-- Ledger.Conway.Specification.Chain._.HasLastEpoch.LastEpochOf
d_LastEpochOf_2726 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasLastEpoch_3358 ->
  AgdaAny -> AgdaAny
d_LastEpochOf_2726 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_LastEpochOf_3366
      (coe v0)
-- Ledger.Conway.Specification.Chain._.HasNewEpochState.NewEpochStateOf
d_NewEpochStateOf_2730 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasNewEpochState_3338 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3306
d_NewEpochStateOf_2730 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_NewEpochStateOf_3346
      (coe v0)
-- Ledger.Conway.Specification.Chain._.NewEpochState.bcur
d_bcur_2734 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3306 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_bcur_2734 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_bcur_3324 (coe v0)
-- Ledger.Conway.Specification.Chain._.NewEpochState.bprev
d_bprev_2736 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3306 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_bprev_2736 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_bprev_3322
      (coe v0)
-- Ledger.Conway.Specification.Chain._.NewEpochState.epochState
d_epochState_2738 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3306 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3236
d_epochState_2738 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_epochState_3326
      (coe v0)
-- Ledger.Conway.Specification.Chain._.NewEpochState.lastEpoch
d_lastEpoch_2740 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3306 ->
  AgdaAny
d_lastEpoch_2740 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_lastEpoch_3320
      (coe v0)
-- Ledger.Conway.Specification.Chain._.NewEpochState.pd
d_pd_2742 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3306 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pd_2742 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_pd_3330 (coe v0)
-- Ledger.Conway.Specification.Chain._.NewEpochState.ru
d_ru_2744 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3306 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2962
d_ru_2744 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_ru_3328 (coe v0)
-- Ledger.Conway.Specification.Chain._.HasCertState-LState
d_HasCertState'45'LState_2952 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2462 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCertState_1528
d_HasCertState'45'LState_2952 ~v0 ~v1
  = du_HasCertState'45'LState_2952
du_HasCertState'45'LState_2952 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCertState_1528
du_HasCertState'45'LState_2952
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasCertState'45'LState_2946
-- Ledger.Conway.Specification.Chain._.HasLState
d_HasLState_2968 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Chain._.HasUTxOState-LState
d_HasUTxOState'45'LState_2980 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2462 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_HasUTxOState_2482
d_HasUTxOState'45'LState_2980 ~v0 ~v1
  = du_HasUTxOState'45'LState_2980
du_HasUTxOState'45'LState_2980 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_HasUTxOState_2482
du_HasUTxOState'45'LState_2980
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasUTxOState'45'LState_2940
-- Ledger.Conway.Specification.Chain._.LState
d_LState_2992 a0 a1 = ()
-- Ledger.Conway.Specification.Chain._.LStateOf
d_LStateOf_2996 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_HasLState_2924 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2904
d_LStateOf_2996 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_LStateOf_2932
      (coe v0)
-- Ledger.Conway.Specification.Chain._.HasLState.LStateOf
d_LStateOf_3014 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_HasLState_2924 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2904
d_LStateOf_3014 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_LStateOf_2932
      (coe v0)
-- Ledger.Conway.Specification.Chain._.LState.certState
d_certState_3030 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2904 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1432
d_certState_3030 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_certState_2916
      (coe v0)
-- Ledger.Conway.Specification.Chain._.LState.govSt
d_govSt_3032 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2904 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_3032 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_govSt_2914
      (coe v0)
-- Ledger.Conway.Specification.Chain._.LState.utxoSt
d_utxoSt_3034 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2904 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2458
d_utxoSt_3034 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_utxoSt_2912
      (coe v0)
-- Ledger.Conway.Specification.Chain._._⊢_⇀⦇_,TICK⦈_
d__'8866'_'8640''10631'_'44'TICK'10632'__3222 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Specification.Chain._.HasDeposits-UTxOState
d_HasDeposits'45'UTxOState_3264 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2462 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_1172
d_HasDeposits'45'UTxOState_3264 ~v0 ~v1
  = du_HasDeposits'45'UTxOState_3264
du_HasDeposits'45'UTxOState_3264 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_1172
du_HasDeposits'45'UTxOState_3264
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_HasDeposits'45'UTxOState_2504
-- Ledger.Conway.Specification.Chain._.HasUTxOState
d_HasUTxOState_3274 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Chain._.UTxOStateOf
d_UTxOStateOf_3298 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_HasUTxOState_2482 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2458
d_UTxOStateOf_3298 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_UTxOStateOf_2490
      (coe v0)
-- Ledger.Conway.Specification.Chain._.HasUTxOState.UTxOStateOf
d_UTxOStateOf_3388 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_HasUTxOState_2482 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2458
d_UTxOStateOf_3388 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_UTxOStateOf_2490
      (coe v0)
-- Ledger.Conway.Specification.Chain.ChainState
d_ChainState_3438 a0 a1 = ()
newtype T_ChainState_3438
  = C_constructor_3444 MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3306
-- Ledger.Conway.Specification.Chain.ChainState.newEpochState
d_newEpochState_3442 ::
  T_ChainState_3438 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3306
d_newEpochState_3442 v0
  = case coe v0 of
      C_constructor_3444 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Chain.HasNewEpochState-ChainState
d_HasNewEpochState'45'ChainState_3446 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2462 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasNewEpochState_3338
d_HasNewEpochState'45'ChainState_3446 ~v0 ~v1
  = du_HasNewEpochState'45'ChainState_3446
du_HasNewEpochState'45'ChainState_3446 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasNewEpochState_3338
du_HasNewEpochState'45'ChainState_3446
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.C_constructor_3348
      (coe (\ v0 -> d_newEpochState_3442 (coe v0)))
-- Ledger.Conway.Specification.Chain.HasLastEpoch-ChainState
d_HasLastEpoch'45'ChainState_3448 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2462 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasLastEpoch_3358
d_HasLastEpoch'45'ChainState_3448 ~v0 ~v1
  = du_HasLastEpoch'45'ChainState_3448
du_HasLastEpoch'45'ChainState_3448 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasLastEpoch_3358
du_HasLastEpoch'45'ChainState_3448
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.C_constructor_3368
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_LastEpochOf_3366
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasLastEpoch'45'NewEpochState_3374)
              (d_newEpochState_3442 (coe v0))))
-- Ledger.Conway.Specification.Chain.HasEpochState-ChainState
d_HasEpochState'45'ChainState_3450 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2462 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasEpochState_3264
d_HasEpochState'45'ChainState_3450 ~v0 ~v1
  = du_HasEpochState'45'ChainState_3450
du_HasEpochState'45'ChainState_3450 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasEpochState_3264
du_HasEpochState'45'ChainState_3450
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.C_constructor_3274
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_EpochStateOf_3272
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasEpochState'45'NewEpochState_3376)
              (d_newEpochState_3442 (coe v0))))
-- Ledger.Conway.Specification.Chain.HasEnactState-ChainState
d_HasEnactState'45'ChainState_3452 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2462 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_HasEnactState_1180
d_HasEnactState'45'ChainState_3452 ~v0 ~v1
  = du_HasEnactState'45'ChainState_3452
du_HasEnactState'45'ChainState_3452 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_HasEnactState_1180
du_HasEnactState'45'ChainState_3452
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.C_constructor_1190
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Enact.d_EnactStateOf_1188
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasEnactState'45'EpochState_3286)
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_EpochStateOf_3272
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasEpochState'45'NewEpochState_3376)
                 (d_newEpochState_3442 (coe v0)))))
-- Ledger.Conway.Specification.Chain.HasLState-ChainState
d_HasLState'45'ChainState_3454 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2462 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_HasLState_2924
d_HasLState'45'ChainState_3454 ~v0 ~v1
  = du_HasLState'45'ChainState_3454
du_HasLState'45'ChainState_3454 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_HasLState_2924
du_HasLState'45'ChainState_3454
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.C_constructor_2934
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_LStateOf_2932
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasLState'45'EpochState_3282)
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_EpochStateOf_3272
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasEpochState'45'NewEpochState_3376)
                 (d_newEpochState_3442 (coe v0)))))
-- Ledger.Conway.Specification.Chain.HasUTxOState-ChainState
d_HasUTxOState'45'ChainState_3456 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2462 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_HasUTxOState_2482
d_HasUTxOState'45'ChainState_3456 ~v0 ~v1
  = du_HasUTxOState'45'ChainState_3456
du_HasUTxOState'45'ChainState_3456 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_HasUTxOState_2482
du_HasUTxOState'45'ChainState_3456
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.C_constructor_2492
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_UTxOStateOf_2490
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasUTxOState'45'LState_2940)
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_LStateOf_2932
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasLState'45'EpochState_3282)
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_EpochStateOf_3272
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasEpochState'45'NewEpochState_3376)
                    (d_newEpochState_3442 (coe v0))))))
-- Ledger.Conway.Specification.Chain.HasCertState-ChainState
d_HasCertState'45'ChainState_3458 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2462 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCertState_1528
d_HasCertState'45'ChainState_3458 ~v0 ~v1
  = du_HasCertState'45'ChainState_3458
du_HasCertState'45'ChainState_3458 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCertState_1528
du_HasCertState'45'ChainState_3458
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_constructor_1538
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Certs.d_CertStateOf_1536
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasCertState'45'LState_2946)
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_LStateOf_2932
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasLState'45'EpochState_3282)
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_EpochStateOf_3272
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasEpochState'45'NewEpochState_3376)
                    (d_newEpochState_3442 (coe v0))))))
-- Ledger.Conway.Specification.Chain.HasDeposits-ChainState
d_HasDeposits'45'ChainState_3460 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2462 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_1172
d_HasDeposits'45'ChainState_3460 ~v0 ~v1
  = du_HasDeposits'45'ChainState_3460
du_HasDeposits'45'ChainState_3460 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_1172
du_HasDeposits'45'ChainState_3460
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_constructor_1182
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DepositsOf_1180
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_HasDeposits'45'UTxOState_2504)
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_UTxOStateOf_2490
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasUTxOState'45'LState_2940)
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_LStateOf_2932
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasLState'45'EpochState_3282)
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_EpochStateOf_3272
                       (coe
                          MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasEpochState'45'NewEpochState_3376)
                       (d_newEpochState_3442 (coe v0)))))))
-- Ledger.Conway.Specification.Chain.HasRewards-ChainState
d_HasRewards'45'ChainState_3462 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2462 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1256
d_HasRewards'45'ChainState_3462 ~v0 ~v1
  = du_HasRewards'45'ChainState_3462
du_HasRewards'45'ChainState_3462 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1256
du_HasRewards'45'ChainState_3462
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_constructor_1266
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Certs.d_RewardsOf_1264
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasRewards'45'CertState_1568)
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Certs.d_CertStateOf_1536
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasCertState'45'LState_2946)
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_LStateOf_2932
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasLState'45'EpochState_3282)
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_EpochStateOf_3272
                       (coe
                          MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasEpochState'45'NewEpochState_3376)
                       (d_newEpochState_3442 (coe v0)))))))
-- Ledger.Conway.Specification.Chain.HasPParams-ChainState
d_HasPParams'45'ChainState_3464 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2462 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_422
d_HasPParams'45'ChainState_3464 ~v0 ~v1
  = du_HasPParams'45'ChainState_3464
du_HasPParams'45'ChainState_3464 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_422
du_HasPParams'45'ChainState_3464
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.C_constructor_432
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.PParams.d_PParamsOf_430
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Enact.du_HasPParams'45'EnactState_1196)
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Enact.d_EnactStateOf_1188
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasEnactState'45'EpochState_3286)
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_EpochStateOf_3272
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasEpochState'45'NewEpochState_3376)
                    (d_newEpochState_3442 (coe v0))))))
-- Ledger.Conway.Specification.Chain.totalRefScriptsSize
d_totalRefScriptsSize_3466 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2462 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2904 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3534] ->
  Integer
d_totalRefScriptsSize_3466 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.Nat.ListAction.d_sum_6
      (coe
         MAlonzo.Code.Class.Functor.Core.du_fmap_22
         MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
         () erased
         (MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_refScriptsSize_2538
            (coe v0) (coe v1)
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2468
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_utxoSt_2912
                  (coe v2))))
         v3)
-- Ledger.Conway.Specification.Chain._⊢_⇀⦇_,CHAIN⦈_
d__'8866'_'8640''10631'_'44'CHAIN'10632'__3488 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'CHAIN'10632'__3488
  = C_CHAIN_3578 MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3306
                 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Specification.Chain._.newEpochState
d_newEpochState_3500 ::
  T_ChainState_3438 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3306
d_newEpochState_3500 v0 = coe d_newEpochState_3442 (coe v0)
-- Ledger.Conway.Specification.Chain._.bheader
d_bheader_3508 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2462 ->
  T_GeneralizeTel_19307 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2306 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3306 ->
  T_ChainState_3438 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_BHeader_2294
d_bheader_3508 ~v0 ~v1 ~v2 v3 ~v4 ~v5 = du_bheader_3508 v3
du_bheader_3508 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2306 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_BHeader_2294
du_bheader_3508 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bheader_2320
      (coe v0)
-- Ledger.Conway.Specification.Chain._.ts
d_ts_3510 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2462 ->
  T_GeneralizeTel_19307 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2306 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3306 ->
  T_ChainState_3438 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3534]
d_ts_3510 ~v0 ~v1 ~v2 v3 ~v4 ~v5 = du_ts_3510 v3
du_ts_3510 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2306 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3534]
du_ts_3510 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_ts_2322
      (coe v0)
-- Ledger.Conway.Specification.Chain._.bhbody
d_bhbody_3518 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2462 ->
  T_GeneralizeTel_19307 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2306 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3306 ->
  T_ChainState_3438 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_BHBody_2270
d_bhbody_3518 ~v0 ~v1 ~v2 v3 ~v4 ~v5 = du_bhbody_3518 v3
du_bhbody_3518 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2306 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_BHBody_2270
du_bhbody_3518 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bhbody_2300
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bheader_2320
         (coe v0))
-- Ledger.Conway.Specification.Chain._.slot
d_slot_3532 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2462 ->
  T_GeneralizeTel_19307 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2306 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3306 ->
  T_ChainState_3438 -> AgdaAny
d_slot_3532 ~v0 ~v1 ~v2 v3 ~v4 ~v5 = du_slot_3532 v3
du_slot_3532 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2306 ->
  AgdaAny
du_slot_3532 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_slot_2286
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bhbody_2300
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bheader_2320
            (coe v0)))
-- Ledger.Conway.Specification.Chain._.bcur
d_bcur_3536 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2462 ->
  T_GeneralizeTel_19307 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2306 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3306 ->
  T_ChainState_3438 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_bcur_3536 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_bcur_3536 v4
du_bcur_3536 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3306 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_bcur_3536 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_bcur_3324 (coe v0)
-- Ledger.Conway.Specification.Chain._.epochState
d_epochState_3540 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2462 ->
  T_GeneralizeTel_19307 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2306 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3306 ->
  T_ChainState_3438 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3236
d_epochState_3540 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_epochState_3540 v4
du_epochState_3540 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3306 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3236
du_epochState_3540 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_epochState_3326
      (coe v0)
-- Ledger.Conway.Specification.Chain._.acnt
d_acnt_3550 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2462 ->
  T_GeneralizeTel_19307 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2306 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3306 ->
  T_ChainState_3438 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_172
d_acnt_3550 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_acnt_3550 v4
du_acnt_3550 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3306 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_172
du_acnt_3550 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_acnt_3248
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_epochState_3326
         (coe v0))
-- Ledger.Conway.Specification.Chain._.es
d_es_3552 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2462 ->
  T_GeneralizeTel_19307 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2306 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3306 ->
  T_ChainState_3438 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1152
d_es_3552 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_es_3552 v4
du_es_3552 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3306 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1152
du_es_3552 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_es_3254
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_epochState_3326
         (coe v0))
-- Ledger.Conway.Specification.Chain._.ls
d_ls_3556 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2462 ->
  T_GeneralizeTel_19307 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2306 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3306 ->
  T_ChainState_3438 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2904
d_ls_3556 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_ls_3556 v4
du_ls_3556 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3306 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2904
du_ls_3556 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_ls_3252
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_epochState_3326
         (coe v0))
-- Ledger.Conway.Specification.Chain._.pparams
d_pparams_3566 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2462 ->
  T_GeneralizeTel_19307 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2306 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3306 ->
  T_ChainState_3438 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pparams_3566 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_pparams_3566 v4
du_pparams_3566 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3306 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_pparams_3566 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pparams_1170
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_es_3254
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_epochState_3326
            (coe v0)))
-- Ledger.Conway.Specification.Chain._.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_3574 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2462 ->
  T_GeneralizeTel_19307 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2306 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3306 ->
  T_ChainState_3438 -> Integer
d_maxRefScriptSizePerBlock_3574 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_maxRefScriptSizePerBlock_3574 v5
du_maxRefScriptSizePerBlock_3574 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3306 ->
  Integer
du_maxRefScriptSizePerBlock_3574 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerBlock_380
      (coe
         MAlonzo.Code.Ledger.Prelude.du_'8739'_'8739'_94
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasCast'45'HashProtected_1066)
         (MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pparams_1170
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_es_3254
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_epochState_3326
                  (coe v0)))))
-- Ledger.Conway.Specification.Chain..generalizedField-ls'
d_'46'generalizedField'45'ls''_19305 ::
  T_GeneralizeTel_19307 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2904
d_'46'generalizedField'45'ls''_19305 v0
  = case coe v0 of
      C_mkGeneralizeTel_19309 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Chain.GeneralizeTel
d_GeneralizeTel_19307 a0 a1 = ()
newtype T_GeneralizeTel_19307
  = C_mkGeneralizeTel_19309 MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2904
