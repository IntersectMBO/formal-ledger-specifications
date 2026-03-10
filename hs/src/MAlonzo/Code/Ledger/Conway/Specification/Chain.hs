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
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasCast'45'HashProtected_1100
-- _.HasPParams
d_HasPParams_326 a0 a1 a2 = ()
-- _.PParamsOf
d_PParamsOf_464 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_444 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294
d_PParamsOf_464 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_PParamsOf_452
      (coe v0)
-- _.Tx
d_Tx_606 a0 = ()
-- _.HasPParams.PParamsOf
d_PParamsOf_1302 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_444 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294
d_PParamsOf_1302 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_PParamsOf_452
      (coe v0)
-- _.Tx.body
d_body_1908 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3602 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3422
d_body_1908 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3614
      (coe v0)
-- _.Tx.isValid
d_isValid_1910 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3602 ->
  Bool
d_isValid_1910 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_isValid_3620
      (coe v0)
-- _.Tx.txAD
d_txAD_1912 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3602 ->
  Maybe AgdaAny
d_txAD_1912 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txAD_3622
      (coe v0)
-- _.Tx.txsize
d_txsize_1914 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3602 ->
  Integer
d_txsize_1914 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txsize_3618
      (coe v0)
-- _.Tx.wits
d_wits_1916 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3602 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3580
d_wits_1916 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3616
      (coe v0)
-- Ledger.Conway.Specification.Chain._._⊢_⇀⦇_,BBODY⦈_
d__'8866'_'8640''10631'_'44'BBODY'10632'__2016 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Specification.Chain._.BBodyEnv
d_BBodyEnv_2020 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2496 ->
  ()
d_BBodyEnv_2020 = erased
-- Ledger.Conway.Specification.Chain._.BBodyState
d_BBodyState_2022 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2496 ->
  ()
d_BBodyState_2022 = erased
-- Ledger.Conway.Specification.Chain._.BHBody
d_BHBody_2024 a0 a1 = ()
-- Ledger.Conway.Specification.Chain._.BHeader
d_BHeader_2028 a0 a1 = ()
-- Ledger.Conway.Specification.Chain._.Block
d_Block_2032 a0 a1 = ()
-- Ledger.Conway.Specification.Chain._.incrBlocks
d_incrBlocks_2036 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2496 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_incrBlocks_2036 v0 ~v1 = du_incrBlocks_2036 v0
du_incrBlocks_2036 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_incrBlocks_2036 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.du_incrBlocks_2372
      (coe v0)
-- Ledger.Conway.Specification.Chain._.BHBody.bhash
d_bhash_2044 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_BHBody_2304 ->
  AgdaAny
d_bhash_2044 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bhash_2322
      (coe v0)
-- Ledger.Conway.Specification.Chain._.BHBody.bsize
d_bsize_2046 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_BHBody_2304 ->
  Integer
d_bsize_2046 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bsize_2318
      (coe v0)
-- Ledger.Conway.Specification.Chain._.BHBody.bvkcold
d_bvkcold_2048 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_BHBody_2304 ->
  AgdaAny
d_bvkcold_2048 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bvkcold_2316
      (coe v0)
-- Ledger.Conway.Specification.Chain._.BHBody.hBbsize
d_hBbsize_2050 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_BHBody_2304 ->
  Integer
d_hBbsize_2050 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_hBbsize_2324
      (coe v0)
-- Ledger.Conway.Specification.Chain._.BHBody.slot
d_slot_2052 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_BHBody_2304 ->
  AgdaAny
d_slot_2052 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_slot_2320
      (coe v0)
-- Ledger.Conway.Specification.Chain._.BHeader.bhbody
d_bhbody_2056 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_BHeader_2328 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_BHBody_2304
d_bhbody_2056 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bhbody_2334
      (coe v0)
-- Ledger.Conway.Specification.Chain._.BHeader.bhsig
d_bhsig_2058 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_BHeader_2328 ->
  AgdaAny
d_bhsig_2058 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bhsig_2336
      (coe v0)
-- Ledger.Conway.Specification.Chain._.Block.bBodyHash
d_bBodyHash_2062 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2340 ->
  AgdaAny
d_bBodyHash_2062 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bBodyHash_2360
      (coe v0)
-- Ledger.Conway.Specification.Chain._.Block.bBodySize
d_bBodySize_2064 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2340 ->
  Integer
d_bBodySize_2064 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bBodySize_2358
      (coe v0)
-- Ledger.Conway.Specification.Chain._.Block.bheader
d_bheader_2066 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2340 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_BHeader_2328
d_bheader_2066 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bheader_2354
      (coe v0)
-- Ledger.Conway.Specification.Chain._.Block.ts
d_ts_2068 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2340 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3602]
d_ts_2068 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_ts_2356
      (coe v0)
-- Ledger.Conway.Specification.Chain._.Block.≡-bBodyHash
d_'8801''45'bBodyHash_2070 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2340 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8801''45'bBodyHash_2070 = erased
-- Ledger.Conway.Specification.Chain._.Block.≡-bBodySize
d_'8801''45'bBodySize_2072 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2340 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8801''45'bBodySize_2072 = erased
-- Ledger.Conway.Specification.Chain._.CertStateOf
d_CertStateOf_2112 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCertState_1562 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1466
d_CertStateOf_2112 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_CertStateOf_1570
      (coe v0)
-- Ledger.Conway.Specification.Chain._.DepositsOf
d_DepositsOf_2146 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_1206 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DepositsOf_2146 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DepositsOf_1214
      (coe v0)
-- Ledger.Conway.Specification.Chain._.HasCertState
d_HasCertState_2182 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Chain._.HasDeposits
d_HasDeposits_2198 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Chain._.HasRewards
d_HasRewards_2230 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Chain._.HasRewards-CertState
d_HasRewards'45'CertState_2234 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2496 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1290
d_HasRewards'45'CertState_2234 ~v0 ~v1
  = du_HasRewards'45'CertState_2234
du_HasRewards'45'CertState_2234 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1290
du_HasRewards'45'CertState_2234
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasRewards'45'CertState_1602
-- Ledger.Conway.Specification.Chain._.RewardsOf
d_RewardsOf_2280 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1290 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RewardsOf_2280 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_RewardsOf_1298
      (coe v0)
-- Ledger.Conway.Specification.Chain._.HasCertState.CertStateOf
d_CertStateOf_2436 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCertState_1562 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1466
d_CertStateOf_2436 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_CertStateOf_1570
      (coe v0)
-- Ledger.Conway.Specification.Chain._.HasDeposits.DepositsOf
d_DepositsOf_2444 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_1206 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DepositsOf_2444 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DepositsOf_1214
      (coe v0)
-- Ledger.Conway.Specification.Chain._.HasRewards.RewardsOf
d_RewardsOf_2464 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1290 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RewardsOf_2464 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_RewardsOf_1298
      (coe v0)
-- Ledger.Conway.Specification.Chain._.EnactStateOf
d_EnactStateOf_2520 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_HasEnactState_1214 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1186
d_EnactStateOf_2520 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_EnactStateOf_1222
      (coe v0)
-- Ledger.Conway.Specification.Chain._.HasEnactState
d_HasEnactState_2524 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Chain._.HasPParams-EnactState
d_HasPParams'45'EnactState_2528 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2496 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_444
d_HasPParams'45'EnactState_2528 ~v0 ~v1
  = du_HasPParams'45'EnactState_2528
du_HasPParams'45'EnactState_2528 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_444
du_HasPParams'45'EnactState_2528
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.du_HasPParams'45'EnactState_1230
-- Ledger.Conway.Specification.Chain._.HasEnactState.EnactStateOf
d_EnactStateOf_2578 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_HasEnactState_1214 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1186
d_EnactStateOf_2578 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_EnactStateOf_1222
      (coe v0)
-- Ledger.Conway.Specification.Chain._.EpochStateOf
d_EpochStateOf_2592 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasEpochState_3298 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3270
d_EpochStateOf_2592 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_EpochStateOf_3306
      (coe v0)
-- Ledger.Conway.Specification.Chain._.HasEnactState-EpochState
d_HasEnactState'45'EpochState_2612 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2496 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_HasEnactState_1214
d_HasEnactState'45'EpochState_2612 ~v0 ~v1
  = du_HasEnactState'45'EpochState_2612
du_HasEnactState'45'EpochState_2612 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_HasEnactState_1214
du_HasEnactState'45'EpochState_2612
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasEnactState'45'EpochState_3320
-- Ledger.Conway.Specification.Chain._.HasEpochState
d_HasEpochState_2616 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Chain._.HasEpochState-NewEpochState
d_HasEpochState'45'NewEpochState_2620 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2496 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasEpochState_3298
d_HasEpochState'45'NewEpochState_2620 ~v0 ~v1
  = du_HasEpochState'45'NewEpochState_2620
du_HasEpochState'45'NewEpochState_2620 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasEpochState_3298
du_HasEpochState'45'NewEpochState_2620
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasEpochState'45'NewEpochState_3410
-- Ledger.Conway.Specification.Chain._.HasLState-EpochState
d_HasLState'45'EpochState_2626 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2496 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_HasLState_2958
d_HasLState'45'EpochState_2626 ~v0 ~v1
  = du_HasLState'45'EpochState_2626
du_HasLState'45'EpochState_2626 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_HasLState_2958
du_HasLState'45'EpochState_2626
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasLState'45'EpochState_3316
-- Ledger.Conway.Specification.Chain._.HasLastEpoch
d_HasLastEpoch_2630 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Chain._.HasLastEpoch-NewEpochState
d_HasLastEpoch'45'NewEpochState_2634 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2496 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasLastEpoch_3392
d_HasLastEpoch'45'NewEpochState_2634 ~v0 ~v1
  = du_HasLastEpoch'45'NewEpochState_2634
du_HasLastEpoch'45'NewEpochState_2634 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasLastEpoch_3392
du_HasLastEpoch'45'NewEpochState_2634
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasLastEpoch'45'NewEpochState_3408
-- Ledger.Conway.Specification.Chain._.HasNewEpochState
d_HasNewEpochState_2636 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Chain._.LastEpochOf
d_LastEpochOf_2660 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasLastEpoch_3392 ->
  AgdaAny -> AgdaAny
d_LastEpochOf_2660 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_LastEpochOf_3400
      (coe v0)
-- Ledger.Conway.Specification.Chain._.NewEpochState
d_NewEpochState_2668 a0 a1 = ()
-- Ledger.Conway.Specification.Chain._.NewEpochStateOf
d_NewEpochStateOf_2672 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasNewEpochState_3372 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3340
d_NewEpochStateOf_2672 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_NewEpochStateOf_3380
      (coe v0)
-- Ledger.Conway.Specification.Chain._.HasEpochState.EpochStateOf
d_EpochStateOf_2756 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasEpochState_3298 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3270
d_EpochStateOf_2756 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_EpochStateOf_3306
      (coe v0)
-- Ledger.Conway.Specification.Chain._.HasLastEpoch.LastEpochOf
d_LastEpochOf_2760 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasLastEpoch_3392 ->
  AgdaAny -> AgdaAny
d_LastEpochOf_2760 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_LastEpochOf_3400
      (coe v0)
-- Ledger.Conway.Specification.Chain._.HasNewEpochState.NewEpochStateOf
d_NewEpochStateOf_2764 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasNewEpochState_3372 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3340
d_NewEpochStateOf_2764 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_NewEpochStateOf_3380
      (coe v0)
-- Ledger.Conway.Specification.Chain._.NewEpochState.bcur
d_bcur_2768 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3340 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_bcur_2768 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_bcur_3358 (coe v0)
-- Ledger.Conway.Specification.Chain._.NewEpochState.bprev
d_bprev_2770 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3340 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_bprev_2770 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_bprev_3356
      (coe v0)
-- Ledger.Conway.Specification.Chain._.NewEpochState.epochState
d_epochState_2772 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3340 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3270
d_epochState_2772 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_epochState_3360
      (coe v0)
-- Ledger.Conway.Specification.Chain._.NewEpochState.lastEpoch
d_lastEpoch_2774 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3340 ->
  AgdaAny
d_lastEpoch_2774 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_lastEpoch_3354
      (coe v0)
-- Ledger.Conway.Specification.Chain._.NewEpochState.pd
d_pd_2776 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3340 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pd_2776 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_pd_3364 (coe v0)
-- Ledger.Conway.Specification.Chain._.NewEpochState.ru
d_ru_2778 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3340 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2996
d_ru_2778 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_ru_3362 (coe v0)
-- Ledger.Conway.Specification.Chain._.HasCertState-LState
d_HasCertState'45'LState_2986 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2496 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCertState_1562
d_HasCertState'45'LState_2986 ~v0 ~v1
  = du_HasCertState'45'LState_2986
du_HasCertState'45'LState_2986 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCertState_1562
du_HasCertState'45'LState_2986
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasCertState'45'LState_2980
-- Ledger.Conway.Specification.Chain._.HasLState
d_HasLState_3002 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Chain._.HasUTxOState-LState
d_HasUTxOState'45'LState_3014 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2496 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_HasUTxOState_2516
d_HasUTxOState'45'LState_3014 ~v0 ~v1
  = du_HasUTxOState'45'LState_3014
du_HasUTxOState'45'LState_3014 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_HasUTxOState_2516
du_HasUTxOState'45'LState_3014
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasUTxOState'45'LState_2974
-- Ledger.Conway.Specification.Chain._.LState
d_LState_3026 a0 a1 = ()
-- Ledger.Conway.Specification.Chain._.LStateOf
d_LStateOf_3030 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_HasLState_2958 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2938
d_LStateOf_3030 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_LStateOf_2966
      (coe v0)
-- Ledger.Conway.Specification.Chain._.HasLState.LStateOf
d_LStateOf_3048 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_HasLState_2958 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2938
d_LStateOf_3048 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_LStateOf_2966
      (coe v0)
-- Ledger.Conway.Specification.Chain._.LState.certState
d_certState_3064 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2938 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1466
d_certState_3064 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_certState_2950
      (coe v0)
-- Ledger.Conway.Specification.Chain._.LState.govSt
d_govSt_3066 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2938 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_3066 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_govSt_2948
      (coe v0)
-- Ledger.Conway.Specification.Chain._.LState.utxoSt
d_utxoSt_3068 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2938 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2492
d_utxoSt_3068 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_utxoSt_2946
      (coe v0)
-- Ledger.Conway.Specification.Chain._._⊢_⇀⦇_,TICK⦈_
d__'8866'_'8640''10631'_'44'TICK'10632'__3256 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Specification.Chain._.HasDeposits-UTxOState
d_HasDeposits'45'UTxOState_3298 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2496 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_1206
d_HasDeposits'45'UTxOState_3298 ~v0 ~v1
  = du_HasDeposits'45'UTxOState_3298
du_HasDeposits'45'UTxOState_3298 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_1206
du_HasDeposits'45'UTxOState_3298
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_HasDeposits'45'UTxOState_2538
-- Ledger.Conway.Specification.Chain._.HasUTxOState
d_HasUTxOState_3308 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Chain._.UTxOStateOf
d_UTxOStateOf_3332 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_HasUTxOState_2516 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2492
d_UTxOStateOf_3332 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_UTxOStateOf_2524
      (coe v0)
-- Ledger.Conway.Specification.Chain._.HasUTxOState.UTxOStateOf
d_UTxOStateOf_3422 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_HasUTxOState_2516 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2492
d_UTxOStateOf_3422 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_UTxOStateOf_2524
      (coe v0)
-- Ledger.Conway.Specification.Chain.ChainState
d_ChainState_3472 a0 a1 = ()
newtype T_ChainState_3472
  = C_constructor_3478 MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3340
-- Ledger.Conway.Specification.Chain.ChainState.newEpochState
d_newEpochState_3476 ::
  T_ChainState_3472 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3340
d_newEpochState_3476 v0
  = case coe v0 of
      C_constructor_3478 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Chain.HasNewEpochState-ChainState
d_HasNewEpochState'45'ChainState_3480 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2496 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasNewEpochState_3372
d_HasNewEpochState'45'ChainState_3480 ~v0 ~v1
  = du_HasNewEpochState'45'ChainState_3480
du_HasNewEpochState'45'ChainState_3480 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasNewEpochState_3372
du_HasNewEpochState'45'ChainState_3480
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.C_constructor_3382
      (coe (\ v0 -> d_newEpochState_3476 (coe v0)))
-- Ledger.Conway.Specification.Chain.HasLastEpoch-ChainState
d_HasLastEpoch'45'ChainState_3482 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2496 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasLastEpoch_3392
d_HasLastEpoch'45'ChainState_3482 ~v0 ~v1
  = du_HasLastEpoch'45'ChainState_3482
du_HasLastEpoch'45'ChainState_3482 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasLastEpoch_3392
du_HasLastEpoch'45'ChainState_3482
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.C_constructor_3402
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_LastEpochOf_3400
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasLastEpoch'45'NewEpochState_3408)
              (d_newEpochState_3476 (coe v0))))
-- Ledger.Conway.Specification.Chain.HasEpochState-ChainState
d_HasEpochState'45'ChainState_3484 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2496 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasEpochState_3298
d_HasEpochState'45'ChainState_3484 ~v0 ~v1
  = du_HasEpochState'45'ChainState_3484
du_HasEpochState'45'ChainState_3484 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasEpochState_3298
du_HasEpochState'45'ChainState_3484
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.C_constructor_3308
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_EpochStateOf_3306
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasEpochState'45'NewEpochState_3410)
              (d_newEpochState_3476 (coe v0))))
-- Ledger.Conway.Specification.Chain.HasEnactState-ChainState
d_HasEnactState'45'ChainState_3486 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2496 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_HasEnactState_1214
d_HasEnactState'45'ChainState_3486 ~v0 ~v1
  = du_HasEnactState'45'ChainState_3486
du_HasEnactState'45'ChainState_3486 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_HasEnactState_1214
du_HasEnactState'45'ChainState_3486
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.C_constructor_1224
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Enact.d_EnactStateOf_1222
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasEnactState'45'EpochState_3320)
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_EpochStateOf_3306
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasEpochState'45'NewEpochState_3410)
                 (d_newEpochState_3476 (coe v0)))))
-- Ledger.Conway.Specification.Chain.HasLState-ChainState
d_HasLState'45'ChainState_3488 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2496 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_HasLState_2958
d_HasLState'45'ChainState_3488 ~v0 ~v1
  = du_HasLState'45'ChainState_3488
du_HasLState'45'ChainState_3488 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_HasLState_2958
du_HasLState'45'ChainState_3488
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.C_constructor_2968
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_LStateOf_2966
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasLState'45'EpochState_3316)
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_EpochStateOf_3306
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasEpochState'45'NewEpochState_3410)
                 (d_newEpochState_3476 (coe v0)))))
-- Ledger.Conway.Specification.Chain.HasUTxOState-ChainState
d_HasUTxOState'45'ChainState_3490 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2496 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_HasUTxOState_2516
d_HasUTxOState'45'ChainState_3490 ~v0 ~v1
  = du_HasUTxOState'45'ChainState_3490
du_HasUTxOState'45'ChainState_3490 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_HasUTxOState_2516
du_HasUTxOState'45'ChainState_3490
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.C_constructor_2526
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_UTxOStateOf_2524
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasUTxOState'45'LState_2974)
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_LStateOf_2966
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasLState'45'EpochState_3316)
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_EpochStateOf_3306
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasEpochState'45'NewEpochState_3410)
                    (d_newEpochState_3476 (coe v0))))))
-- Ledger.Conway.Specification.Chain.HasCertState-ChainState
d_HasCertState'45'ChainState_3492 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2496 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCertState_1562
d_HasCertState'45'ChainState_3492 ~v0 ~v1
  = du_HasCertState'45'ChainState_3492
du_HasCertState'45'ChainState_3492 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCertState_1562
du_HasCertState'45'ChainState_3492
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_constructor_1572
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Certs.d_CertStateOf_1570
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasCertState'45'LState_2980)
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_LStateOf_2966
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasLState'45'EpochState_3316)
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_EpochStateOf_3306
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasEpochState'45'NewEpochState_3410)
                    (d_newEpochState_3476 (coe v0))))))
-- Ledger.Conway.Specification.Chain.HasDeposits-ChainState
d_HasDeposits'45'ChainState_3494 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2496 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_1206
d_HasDeposits'45'ChainState_3494 ~v0 ~v1
  = du_HasDeposits'45'ChainState_3494
du_HasDeposits'45'ChainState_3494 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_1206
du_HasDeposits'45'ChainState_3494
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_constructor_1216
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DepositsOf_1214
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_HasDeposits'45'UTxOState_2538)
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_UTxOStateOf_2524
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasUTxOState'45'LState_2974)
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_LStateOf_2966
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasLState'45'EpochState_3316)
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_EpochStateOf_3306
                       (coe
                          MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasEpochState'45'NewEpochState_3410)
                       (d_newEpochState_3476 (coe v0)))))))
-- Ledger.Conway.Specification.Chain.HasRewards-ChainState
d_HasRewards'45'ChainState_3496 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2496 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1290
d_HasRewards'45'ChainState_3496 ~v0 ~v1
  = du_HasRewards'45'ChainState_3496
du_HasRewards'45'ChainState_3496 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1290
du_HasRewards'45'ChainState_3496
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
                    MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasCertState'45'LState_2980)
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_LStateOf_2966
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasLState'45'EpochState_3316)
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_EpochStateOf_3306
                       (coe
                          MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasEpochState'45'NewEpochState_3410)
                       (d_newEpochState_3476 (coe v0)))))))
-- Ledger.Conway.Specification.Chain.HasPParams-ChainState
d_HasPParams'45'ChainState_3498 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2496 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_444
d_HasPParams'45'ChainState_3498 ~v0 ~v1
  = du_HasPParams'45'ChainState_3498
du_HasPParams'45'ChainState_3498 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_444
du_HasPParams'45'ChainState_3498
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.C_constructor_454
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.PParams.d_PParamsOf_452
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Enact.du_HasPParams'45'EnactState_1230)
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Enact.d_EnactStateOf_1222
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasEnactState'45'EpochState_3320)
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_EpochStateOf_3306
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasEpochState'45'NewEpochState_3410)
                    (d_newEpochState_3476 (coe v0))))))
-- Ledger.Conway.Specification.Chain.totalRefScriptsSize
d_totalRefScriptsSize_3500 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2496 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2938 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3602] ->
  Integer
d_totalRefScriptsSize_3500 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.Nat.ListAction.d_sum_6
      (coe
         MAlonzo.Code.Class.Functor.Core.du_fmap_22
         MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
         () erased
         (MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_refScriptsSize_2572
            (coe v0) (coe v1)
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2502
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_utxoSt_2946
                  (coe v2))))
         v3)
-- Ledger.Conway.Specification.Chain._⊢_⇀⦇_,CHAIN⦈_
d__'8866'_'8640''10631'_'44'CHAIN'10632'__3522 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'CHAIN'10632'__3522
  = C_CHAIN_3612 MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3340
                 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Specification.Chain._.newEpochState
d_newEpochState_3534 ::
  T_ChainState_3472 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3340
d_newEpochState_3534 v0 = coe d_newEpochState_3476 (coe v0)
-- Ledger.Conway.Specification.Chain._.bheader
d_bheader_3542 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2496 ->
  T_GeneralizeTel_19453 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2340 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3340 ->
  T_ChainState_3472 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_BHeader_2328
d_bheader_3542 ~v0 ~v1 ~v2 v3 ~v4 ~v5 = du_bheader_3542 v3
du_bheader_3542 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2340 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_BHeader_2328
du_bheader_3542 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bheader_2354
      (coe v0)
-- Ledger.Conway.Specification.Chain._.ts
d_ts_3544 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2496 ->
  T_GeneralizeTel_19453 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2340 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3340 ->
  T_ChainState_3472 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3602]
d_ts_3544 ~v0 ~v1 ~v2 v3 ~v4 ~v5 = du_ts_3544 v3
du_ts_3544 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2340 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3602]
du_ts_3544 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_ts_2356
      (coe v0)
-- Ledger.Conway.Specification.Chain._.bhbody
d_bhbody_3552 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2496 ->
  T_GeneralizeTel_19453 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2340 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3340 ->
  T_ChainState_3472 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_BHBody_2304
d_bhbody_3552 ~v0 ~v1 ~v2 v3 ~v4 ~v5 = du_bhbody_3552 v3
du_bhbody_3552 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2340 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_BHBody_2304
du_bhbody_3552 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bhbody_2334
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bheader_2354
         (coe v0))
-- Ledger.Conway.Specification.Chain._.slot
d_slot_3566 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2496 ->
  T_GeneralizeTel_19453 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2340 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3340 ->
  T_ChainState_3472 -> AgdaAny
d_slot_3566 ~v0 ~v1 ~v2 v3 ~v4 ~v5 = du_slot_3566 v3
du_slot_3566 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2340 ->
  AgdaAny
du_slot_3566 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_slot_2320
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bhbody_2334
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bheader_2354
            (coe v0)))
-- Ledger.Conway.Specification.Chain._.bcur
d_bcur_3570 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2496 ->
  T_GeneralizeTel_19453 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2340 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3340 ->
  T_ChainState_3472 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_bcur_3570 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_bcur_3570 v4
du_bcur_3570 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3340 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_bcur_3570 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_bcur_3358 (coe v0)
-- Ledger.Conway.Specification.Chain._.epochState
d_epochState_3574 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2496 ->
  T_GeneralizeTel_19453 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2340 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3340 ->
  T_ChainState_3472 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3270
d_epochState_3574 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_epochState_3574 v4
du_epochState_3574 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3340 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3270
du_epochState_3574 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_epochState_3360
      (coe v0)
-- Ledger.Conway.Specification.Chain._.acnt
d_acnt_3584 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2496 ->
  T_GeneralizeTel_19453 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2340 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3340 ->
  T_ChainState_3472 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_172
d_acnt_3584 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_acnt_3584 v4
du_acnt_3584 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3340 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_172
du_acnt_3584 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_acnt_3282
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_epochState_3360
         (coe v0))
-- Ledger.Conway.Specification.Chain._.es
d_es_3586 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2496 ->
  T_GeneralizeTel_19453 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2340 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3340 ->
  T_ChainState_3472 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1186
d_es_3586 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_es_3586 v4
du_es_3586 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3340 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1186
du_es_3586 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_es_3288
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_epochState_3360
         (coe v0))
-- Ledger.Conway.Specification.Chain._.ls
d_ls_3590 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2496 ->
  T_GeneralizeTel_19453 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2340 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3340 ->
  T_ChainState_3472 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2938
d_ls_3590 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_ls_3590 v4
du_ls_3590 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3340 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2938
du_ls_3590 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_ls_3286
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_epochState_3360
         (coe v0))
-- Ledger.Conway.Specification.Chain._.pparams
d_pparams_3600 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2496 ->
  T_GeneralizeTel_19453 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2340 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3340 ->
  T_ChainState_3472 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pparams_3600 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_pparams_3600 v4
du_pparams_3600 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3340 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_pparams_3600 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pparams_1204
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_es_3288
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_epochState_3360
            (coe v0)))
-- Ledger.Conway.Specification.Chain._.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_3608 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2496 ->
  T_GeneralizeTel_19453 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2340 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3340 ->
  T_ChainState_3472 -> Integer
d_maxRefScriptSizePerBlock_3608 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_maxRefScriptSizePerBlock_3608 v5
du_maxRefScriptSizePerBlock_3608 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3340 ->
  Integer
du_maxRefScriptSizePerBlock_3608 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerBlock_402
      (coe
         MAlonzo.Code.Ledger.Prelude.du_'8739'_'8739'_94
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasCast'45'HashProtected_1100)
         (MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pparams_1204
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_es_3288
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_epochState_3360
                  (coe v0)))))
-- Ledger.Conway.Specification.Chain..generalizedField-ls'
d_'46'generalizedField'45'ls''_19451 ::
  T_GeneralizeTel_19453 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2938
d_'46'generalizedField'45'ls''_19451 v0
  = case coe v0 of
      C_mkGeneralizeTel_19455 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Chain.GeneralizeTel
d_GeneralizeTel_19453 a0 a1 = ()
newtype T_GeneralizeTel_19453
  = C_mkGeneralizeTel_19455 MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2938
