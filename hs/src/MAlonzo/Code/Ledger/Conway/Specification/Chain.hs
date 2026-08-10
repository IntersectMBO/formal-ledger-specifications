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
d_HasCast'45'HashProtected_256 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  () ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'HashProtected_256 ~v0
  = du_HasCast'45'HashProtected_256
du_HasCast'45'HashProtected_256 ::
  () ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'HashProtected_256 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasCast'45'HashProtected_1090
-- _.HasPParams
d_HasPParams_334 a0 a1 a2 = ()
-- _.PParamsOf
d_PParamsOf_482 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_436 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286
d_PParamsOf_482 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_PParamsOf_444
      (coe v0)
-- _.Tx
d_Tx_620 a0 = ()
-- _.HasPParams.PParamsOf
d_PParamsOf_1302 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_436 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286
d_PParamsOf_1302 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_PParamsOf_444
      (coe v0)
-- _.Tx.body
d_body_1938 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3626 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3426
d_body_1938 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3638
      (coe v0)
-- _.Tx.isValid
d_isValid_1940 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3626 ->
  Bool
d_isValid_1940 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_isValid_3644
      (coe v0)
-- _.Tx.txAD
d_txAD_1942 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3626 ->
  Maybe AgdaAny
d_txAD_1942 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txAD_3646
      (coe v0)
-- _.Tx.txsize
d_txsize_1944 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3626 ->
  Integer
d_txsize_1944 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txsize_3642
      (coe v0)
-- _.Tx.wits
d_wits_1946 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3626 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3604
d_wits_1946 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3640
      (coe v0)
-- Ledger.Conway.Specification.Chain._._⊢_⇀⦇_,BBODY⦈_
d__'8866'_'8640''10631'_'44'BBODY'10632'__2032 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Specification.Chain._.BBodyEnv
d_BBodyEnv_2036 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2506 ->
  ()
d_BBodyEnv_2036 = erased
-- Ledger.Conway.Specification.Chain._.BBodyState
d_BBodyState_2038 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2506 ->
  ()
d_BBodyState_2038 = erased
-- Ledger.Conway.Specification.Chain._.BHBody
d_BHBody_2040 a0 a1 = ()
-- Ledger.Conway.Specification.Chain._.BHeader
d_BHeader_2044 a0 a1 = ()
-- Ledger.Conway.Specification.Chain._.Block
d_Block_2048 a0 a1 = ()
-- Ledger.Conway.Specification.Chain._.incrBlocks
d_incrBlocks_2052 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2506 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_incrBlocks_2052 v0 ~v1 = du_incrBlocks_2052 v0
du_incrBlocks_2052 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_incrBlocks_2052 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.du_incrBlocks_2388
      (coe v0)
-- Ledger.Conway.Specification.Chain._.BHBody.bhash
d_bhash_2060 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_BHBody_2320 ->
  AgdaAny
d_bhash_2060 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bhash_2338
      (coe v0)
-- Ledger.Conway.Specification.Chain._.BHBody.bsize
d_bsize_2062 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_BHBody_2320 ->
  Integer
d_bsize_2062 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bsize_2334
      (coe v0)
-- Ledger.Conway.Specification.Chain._.BHBody.bvkcold
d_bvkcold_2064 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_BHBody_2320 ->
  AgdaAny
d_bvkcold_2064 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bvkcold_2332
      (coe v0)
-- Ledger.Conway.Specification.Chain._.BHBody.hBbsize
d_hBbsize_2066 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_BHBody_2320 ->
  Integer
d_hBbsize_2066 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_hBbsize_2340
      (coe v0)
-- Ledger.Conway.Specification.Chain._.BHBody.slot
d_slot_2068 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_BHBody_2320 ->
  AgdaAny
d_slot_2068 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_slot_2336
      (coe v0)
-- Ledger.Conway.Specification.Chain._.BHeader.bhbody
d_bhbody_2072 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_BHeader_2344 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_BHBody_2320
d_bhbody_2072 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bhbody_2350
      (coe v0)
-- Ledger.Conway.Specification.Chain._.BHeader.bhsig
d_bhsig_2074 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_BHeader_2344 ->
  AgdaAny
d_bhsig_2074 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bhsig_2352
      (coe v0)
-- Ledger.Conway.Specification.Chain._.Block.bBodyHash
d_bBodyHash_2078 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2356 ->
  AgdaAny
d_bBodyHash_2078 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bBodyHash_2376
      (coe v0)
-- Ledger.Conway.Specification.Chain._.Block.bBodySize
d_bBodySize_2080 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2356 ->
  Integer
d_bBodySize_2080 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bBodySize_2374
      (coe v0)
-- Ledger.Conway.Specification.Chain._.Block.bheader
d_bheader_2082 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2356 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_BHeader_2344
d_bheader_2082 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bheader_2370
      (coe v0)
-- Ledger.Conway.Specification.Chain._.Block.ts
d_ts_2084 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2356 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3626]
d_ts_2084 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_ts_2372
      (coe v0)
-- Ledger.Conway.Specification.Chain._.Block.≡-bBodyHash
d_'8801''45'bBodyHash_2086 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2356 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8801''45'bBodyHash_2086 = erased
-- Ledger.Conway.Specification.Chain._.Block.≡-bBodySize
d_'8801''45'bBodySize_2088 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2356 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8801''45'bBodySize_2088 = erased
-- Ledger.Conway.Specification.Chain._.CertStateOf
d_CertStateOf_2124 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCertState_1552 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1456
d_CertStateOf_2124 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_CertStateOf_1560
      (coe v0)
-- Ledger.Conway.Specification.Chain._.DepositsOf
d_DepositsOf_2158 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_1196 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DepositsOf_2158 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DepositsOf_1204
      (coe v0)
-- Ledger.Conway.Specification.Chain._.HasCertState
d_HasCertState_2194 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Chain._.HasDeposits
d_HasDeposits_2210 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Chain._.HasRewards
d_HasRewards_2242 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Chain._.HasRewards-CertState
d_HasRewards'45'CertState_2246 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2506 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1280
d_HasRewards'45'CertState_2246 ~v0 ~v1
  = du_HasRewards'45'CertState_2246
du_HasRewards'45'CertState_2246 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1280
du_HasRewards'45'CertState_2246
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasRewards'45'CertState_1592
-- Ledger.Conway.Specification.Chain._.RewardsOf
d_RewardsOf_2292 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1280 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RewardsOf_2292 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_RewardsOf_1288
      (coe v0)
-- Ledger.Conway.Specification.Chain._.HasCertState.CertStateOf
d_CertStateOf_2444 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCertState_1552 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1456
d_CertStateOf_2444 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_CertStateOf_1560
      (coe v0)
-- Ledger.Conway.Specification.Chain._.HasDeposits.DepositsOf
d_DepositsOf_2452 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_1196 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DepositsOf_2452 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DepositsOf_1204
      (coe v0)
-- Ledger.Conway.Specification.Chain._.HasRewards.RewardsOf
d_RewardsOf_2472 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1280 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RewardsOf_2472 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_RewardsOf_1288
      (coe v0)
-- Ledger.Conway.Specification.Chain._.EnactStateOf
d_EnactStateOf_2528 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_HasEnactState_1204 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1176
d_EnactStateOf_2528 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_EnactStateOf_1212
      (coe v0)
-- Ledger.Conway.Specification.Chain._.HasEnactState
d_HasEnactState_2532 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Chain._.HasPParams-EnactState
d_HasPParams'45'EnactState_2536 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2506 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_436
d_HasPParams'45'EnactState_2536 ~v0 ~v1
  = du_HasPParams'45'EnactState_2536
du_HasPParams'45'EnactState_2536 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_436
du_HasPParams'45'EnactState_2536
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.du_HasPParams'45'EnactState_1220
-- Ledger.Conway.Specification.Chain._.HasEnactState.EnactStateOf
d_EnactStateOf_2586 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_HasEnactState_1204 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1176
d_EnactStateOf_2586 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_EnactStateOf_1212
      (coe v0)
-- Ledger.Conway.Specification.Chain._.EpochStateOf
d_EpochStateOf_2600 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasEpochState_3310 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3282
d_EpochStateOf_2600 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_EpochStateOf_3318
      (coe v0)
-- Ledger.Conway.Specification.Chain._.HasEnactState-EpochState
d_HasEnactState'45'EpochState_2620 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2506 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_HasEnactState_1204
d_HasEnactState'45'EpochState_2620 ~v0 ~v1
  = du_HasEnactState'45'EpochState_2620
du_HasEnactState'45'EpochState_2620 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_HasEnactState_1204
du_HasEnactState'45'EpochState_2620
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasEnactState'45'EpochState_3332
-- Ledger.Conway.Specification.Chain._.HasEpochState
d_HasEpochState_2624 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Chain._.HasEpochState-NewEpochState
d_HasEpochState'45'NewEpochState_2628 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2506 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasEpochState_3310
d_HasEpochState'45'NewEpochState_2628 ~v0 ~v1
  = du_HasEpochState'45'NewEpochState_2628
du_HasEpochState'45'NewEpochState_2628 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasEpochState_3310
du_HasEpochState'45'NewEpochState_2628
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasEpochState'45'NewEpochState_3424
-- Ledger.Conway.Specification.Chain._.HasLState-EpochState
d_HasLState'45'EpochState_2634 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2506 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_HasLState_2980
d_HasLState'45'EpochState_2634 ~v0 ~v1
  = du_HasLState'45'EpochState_2634
du_HasLState'45'EpochState_2634 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_HasLState_2980
du_HasLState'45'EpochState_2634
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasLState'45'EpochState_3328
-- Ledger.Conway.Specification.Chain._.HasLastEpoch
d_HasLastEpoch_2638 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Chain._.HasLastEpoch-NewEpochState
d_HasLastEpoch'45'NewEpochState_2642 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2506 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasLastEpoch_3406
d_HasLastEpoch'45'NewEpochState_2642 ~v0 ~v1
  = du_HasLastEpoch'45'NewEpochState_2642
du_HasLastEpoch'45'NewEpochState_2642 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasLastEpoch_3406
du_HasLastEpoch'45'NewEpochState_2642
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasLastEpoch'45'NewEpochState_3422
-- Ledger.Conway.Specification.Chain._.HasNewEpochState
d_HasNewEpochState_2644 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Chain._.LastEpochOf
d_LastEpochOf_2670 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasLastEpoch_3406 ->
  AgdaAny -> AgdaAny
d_LastEpochOf_2670 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_LastEpochOf_3414
      (coe v0)
-- Ledger.Conway.Specification.Chain._.NewEpochState
d_NewEpochState_2678 a0 a1 = ()
-- Ledger.Conway.Specification.Chain._.NewEpochStateOf
d_NewEpochStateOf_2682 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasNewEpochState_3386 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3354
d_NewEpochStateOf_2682 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_NewEpochStateOf_3394
      (coe v0)
-- Ledger.Conway.Specification.Chain._.HasEpochState.EpochStateOf
d_EpochStateOf_2766 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasEpochState_3310 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3282
d_EpochStateOf_2766 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_EpochStateOf_3318
      (coe v0)
-- Ledger.Conway.Specification.Chain._.HasLastEpoch.LastEpochOf
d_LastEpochOf_2770 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasLastEpoch_3406 ->
  AgdaAny -> AgdaAny
d_LastEpochOf_2770 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_LastEpochOf_3414
      (coe v0)
-- Ledger.Conway.Specification.Chain._.HasNewEpochState.NewEpochStateOf
d_NewEpochStateOf_2774 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasNewEpochState_3386 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3354
d_NewEpochStateOf_2774 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_NewEpochStateOf_3394
      (coe v0)
-- Ledger.Conway.Specification.Chain._.NewEpochState.bcur
d_bcur_2778 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3354 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_bcur_2778 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_bcur_3372 (coe v0)
-- Ledger.Conway.Specification.Chain._.NewEpochState.bprev
d_bprev_2780 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3354 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_bprev_2780 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_bprev_3370
      (coe v0)
-- Ledger.Conway.Specification.Chain._.NewEpochState.epochState
d_epochState_2782 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3354 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3282
d_epochState_2782 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_epochState_3374
      (coe v0)
-- Ledger.Conway.Specification.Chain._.NewEpochState.lastEpoch
d_lastEpoch_2784 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3354 ->
  AgdaAny
d_lastEpoch_2784 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_lastEpoch_3368
      (coe v0)
-- Ledger.Conway.Specification.Chain._.NewEpochState.pd
d_pd_2786 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3354 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pd_2786 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_pd_3378 (coe v0)
-- Ledger.Conway.Specification.Chain._.NewEpochState.ru
d_ru_2788 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3354 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_3006
d_ru_2788 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_ru_3376 (coe v0)
-- Ledger.Conway.Specification.Chain._.HasCertState-LState
d_HasCertState'45'LState_2996 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2506 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCertState_1552
d_HasCertState'45'LState_2996 ~v0 ~v1
  = du_HasCertState'45'LState_2996
du_HasCertState'45'LState_2996 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCertState_1552
du_HasCertState'45'LState_2996
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasCertState'45'LState_3002
-- Ledger.Conway.Specification.Chain._.HasLState
d_HasLState_3012 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Chain._.HasUTxOState-LState
d_HasUTxOState'45'LState_3024 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2506 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_HasUTxOState_2524
d_HasUTxOState'45'LState_3024 ~v0 ~v1
  = du_HasUTxOState'45'LState_3024
du_HasUTxOState'45'LState_3024 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_HasUTxOState_2524
du_HasUTxOState'45'LState_3024
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasUTxOState'45'LState_2996
-- Ledger.Conway.Specification.Chain._.LState
d_LState_3036 a0 a1 = ()
-- Ledger.Conway.Specification.Chain._.LStateOf
d_LStateOf_3040 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_HasLState_2980 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2960
d_LStateOf_3040 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_LStateOf_2988
      (coe v0)
-- Ledger.Conway.Specification.Chain._.HasLState.LStateOf
d_LStateOf_3058 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_HasLState_2980 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2960
d_LStateOf_3058 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_LStateOf_2988
      (coe v0)
-- Ledger.Conway.Specification.Chain._.LState.certState
d_certState_3074 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2960 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1456
d_certState_3074 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_certState_2972
      (coe v0)
-- Ledger.Conway.Specification.Chain._.LState.govSt
d_govSt_3076 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2960 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_3076 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_govSt_2970
      (coe v0)
-- Ledger.Conway.Specification.Chain._.LState.utxoSt
d_utxoSt_3078 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2960 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2500
d_utxoSt_3078 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_utxoSt_2968
      (coe v0)
-- Ledger.Conway.Specification.Chain._._⊢_⇀⦇_,TICK⦈_
d__'8866'_'8640''10631'_'44'TICK'10632'__3266 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Specification.Chain._.HasDeposits-UTxOState
d_HasDeposits'45'UTxOState_3308 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2506 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_1196
d_HasDeposits'45'UTxOState_3308 ~v0 ~v1
  = du_HasDeposits'45'UTxOState_3308
du_HasDeposits'45'UTxOState_3308 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_1196
du_HasDeposits'45'UTxOState_3308
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_HasDeposits'45'UTxOState_2546
-- Ledger.Conway.Specification.Chain._.HasUTxOState
d_HasUTxOState_3318 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Chain._.UTxOStateOf
d_UTxOStateOf_3342 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_HasUTxOState_2524 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2500
d_UTxOStateOf_3342 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_UTxOStateOf_2532
      (coe v0)
-- Ledger.Conway.Specification.Chain._.HasUTxOState.UTxOStateOf
d_UTxOStateOf_3432 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_HasUTxOState_2524 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2500
d_UTxOStateOf_3432 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_UTxOStateOf_2532
      (coe v0)
-- Ledger.Conway.Specification.Chain.ChainState
d_ChainState_3482 a0 a1 = ()
newtype T_ChainState_3482
  = C_constructor_3488 MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3354
-- Ledger.Conway.Specification.Chain.ChainState.newEpochState
d_newEpochState_3486 ::
  T_ChainState_3482 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3354
d_newEpochState_3486 v0
  = case coe v0 of
      C_constructor_3488 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Chain.HasNewEpochState-ChainState
d_HasNewEpochState'45'ChainState_3490 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2506 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasNewEpochState_3386
d_HasNewEpochState'45'ChainState_3490 ~v0 ~v1
  = du_HasNewEpochState'45'ChainState_3490
du_HasNewEpochState'45'ChainState_3490 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasNewEpochState_3386
du_HasNewEpochState'45'ChainState_3490
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.C_constructor_3396
      (coe (\ v0 -> d_newEpochState_3486 (coe v0)))
-- Ledger.Conway.Specification.Chain.HasLastEpoch-ChainState
d_HasLastEpoch'45'ChainState_3492 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2506 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasLastEpoch_3406
d_HasLastEpoch'45'ChainState_3492 ~v0 ~v1
  = du_HasLastEpoch'45'ChainState_3492
du_HasLastEpoch'45'ChainState_3492 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasLastEpoch_3406
du_HasLastEpoch'45'ChainState_3492
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.C_constructor_3416
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_LastEpochOf_3414
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasLastEpoch'45'NewEpochState_3422)
              (d_newEpochState_3486 (coe v0))))
-- Ledger.Conway.Specification.Chain.HasEpochState-ChainState
d_HasEpochState'45'ChainState_3494 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2506 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasEpochState_3310
d_HasEpochState'45'ChainState_3494 ~v0 ~v1
  = du_HasEpochState'45'ChainState_3494
du_HasEpochState'45'ChainState_3494 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasEpochState_3310
du_HasEpochState'45'ChainState_3494
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.C_constructor_3320
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_EpochStateOf_3318
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasEpochState'45'NewEpochState_3424)
              (d_newEpochState_3486 (coe v0))))
-- Ledger.Conway.Specification.Chain.HasEnactState-ChainState
d_HasEnactState'45'ChainState_3496 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2506 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_HasEnactState_1204
d_HasEnactState'45'ChainState_3496 ~v0 ~v1
  = du_HasEnactState'45'ChainState_3496
du_HasEnactState'45'ChainState_3496 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_HasEnactState_1204
du_HasEnactState'45'ChainState_3496
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.C_constructor_1214
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Enact.d_EnactStateOf_1212
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasEnactState'45'EpochState_3332)
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_EpochStateOf_3318
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasEpochState'45'NewEpochState_3424)
                 (d_newEpochState_3486 (coe v0)))))
-- Ledger.Conway.Specification.Chain.HasLState-ChainState
d_HasLState'45'ChainState_3498 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2506 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_HasLState_2980
d_HasLState'45'ChainState_3498 ~v0 ~v1
  = du_HasLState'45'ChainState_3498
du_HasLState'45'ChainState_3498 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_HasLState_2980
du_HasLState'45'ChainState_3498
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.C_constructor_2990
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_LStateOf_2988
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasLState'45'EpochState_3328)
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_EpochStateOf_3318
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasEpochState'45'NewEpochState_3424)
                 (d_newEpochState_3486 (coe v0)))))
-- Ledger.Conway.Specification.Chain.HasUTxOState-ChainState
d_HasUTxOState'45'ChainState_3500 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2506 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_HasUTxOState_2524
d_HasUTxOState'45'ChainState_3500 ~v0 ~v1
  = du_HasUTxOState'45'ChainState_3500
du_HasUTxOState'45'ChainState_3500 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_HasUTxOState_2524
du_HasUTxOState'45'ChainState_3500
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.C_constructor_2534
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_UTxOStateOf_2532
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasUTxOState'45'LState_2996)
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_LStateOf_2988
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasLState'45'EpochState_3328)
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_EpochStateOf_3318
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasEpochState'45'NewEpochState_3424)
                    (d_newEpochState_3486 (coe v0))))))
-- Ledger.Conway.Specification.Chain.HasCertState-ChainState
d_HasCertState'45'ChainState_3502 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2506 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCertState_1552
d_HasCertState'45'ChainState_3502 ~v0 ~v1
  = du_HasCertState'45'ChainState_3502
du_HasCertState'45'ChainState_3502 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCertState_1552
du_HasCertState'45'ChainState_3502
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_constructor_1562
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Certs.d_CertStateOf_1560
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasCertState'45'LState_3002)
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_LStateOf_2988
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasLState'45'EpochState_3328)
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_EpochStateOf_3318
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasEpochState'45'NewEpochState_3424)
                    (d_newEpochState_3486 (coe v0))))))
-- Ledger.Conway.Specification.Chain.HasDeposits-ChainState
d_HasDeposits'45'ChainState_3504 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2506 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_1196
d_HasDeposits'45'ChainState_3504 ~v0 ~v1
  = du_HasDeposits'45'ChainState_3504
du_HasDeposits'45'ChainState_3504 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_1196
du_HasDeposits'45'ChainState_3504
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_constructor_1206
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DepositsOf_1204
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_HasDeposits'45'UTxOState_2546)
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_UTxOStateOf_2532
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasUTxOState'45'LState_2996)
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_LStateOf_2988
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasLState'45'EpochState_3328)
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_EpochStateOf_3318
                       (coe
                          MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasEpochState'45'NewEpochState_3424)
                       (d_newEpochState_3486 (coe v0)))))))
-- Ledger.Conway.Specification.Chain.HasRewards-ChainState
d_HasRewards'45'ChainState_3506 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2506 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1280
d_HasRewards'45'ChainState_3506 ~v0 ~v1
  = du_HasRewards'45'ChainState_3506
du_HasRewards'45'ChainState_3506 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1280
du_HasRewards'45'ChainState_3506
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
                    MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasCertState'45'LState_3002)
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_LStateOf_2988
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasLState'45'EpochState_3328)
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_EpochStateOf_3318
                       (coe
                          MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasEpochState'45'NewEpochState_3424)
                       (d_newEpochState_3486 (coe v0)))))))
-- Ledger.Conway.Specification.Chain.HasPParams-ChainState
d_HasPParams'45'ChainState_3508 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2506 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_436
d_HasPParams'45'ChainState_3508 ~v0 ~v1
  = du_HasPParams'45'ChainState_3508
du_HasPParams'45'ChainState_3508 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_436
du_HasPParams'45'ChainState_3508
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
                    MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasEnactState'45'EpochState_3332)
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_EpochStateOf_3318
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasEpochState'45'NewEpochState_3424)
                    (d_newEpochState_3486 (coe v0))))))
-- Ledger.Conway.Specification.Chain.totalRefScriptsSize
d_totalRefScriptsSize_3510 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2506 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2960 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3626] ->
  Integer
d_totalRefScriptsSize_3510 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.Nat.ListAction.d_sum_6
      (coe
         MAlonzo.Code.Class.Functor.Core.du_fmap_22
         MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
         () erased
         (MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_refScriptsSize_2580
            (coe v0) (coe v1)
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2510
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_utxoSt_2968
                  (coe v2))))
         v3)
-- Ledger.Conway.Specification.Chain._⊢_⇀⦇_,CHAIN⦈_
d__'8866'_'8640''10631'_'44'CHAIN'10632'__3532 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'CHAIN'10632'__3532
  = C_CHAIN_3622 MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3354
                 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Specification.Chain._.newEpochState
d_newEpochState_3544 ::
  T_ChainState_3482 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3354
d_newEpochState_3544 v0 = coe d_newEpochState_3486 (coe v0)
-- Ledger.Conway.Specification.Chain._.bheader
d_bheader_3552 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2506 ->
  T_GeneralizeTel_19425 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2356 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3354 ->
  T_ChainState_3482 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_BHeader_2344
d_bheader_3552 ~v0 ~v1 ~v2 v3 ~v4 ~v5 = du_bheader_3552 v3
du_bheader_3552 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2356 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_BHeader_2344
du_bheader_3552 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bheader_2370
      (coe v0)
-- Ledger.Conway.Specification.Chain._.ts
d_ts_3554 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2506 ->
  T_GeneralizeTel_19425 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2356 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3354 ->
  T_ChainState_3482 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3626]
d_ts_3554 ~v0 ~v1 ~v2 v3 ~v4 ~v5 = du_ts_3554 v3
du_ts_3554 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2356 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3626]
du_ts_3554 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_ts_2372
      (coe v0)
-- Ledger.Conway.Specification.Chain._.bhbody
d_bhbody_3562 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2506 ->
  T_GeneralizeTel_19425 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2356 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3354 ->
  T_ChainState_3482 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_BHBody_2320
d_bhbody_3562 ~v0 ~v1 ~v2 v3 ~v4 ~v5 = du_bhbody_3562 v3
du_bhbody_3562 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2356 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_BHBody_2320
du_bhbody_3562 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bhbody_2350
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bheader_2370
         (coe v0))
-- Ledger.Conway.Specification.Chain._.slot
d_slot_3576 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2506 ->
  T_GeneralizeTel_19425 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2356 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3354 ->
  T_ChainState_3482 -> AgdaAny
d_slot_3576 ~v0 ~v1 ~v2 v3 ~v4 ~v5 = du_slot_3576 v3
du_slot_3576 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2356 ->
  AgdaAny
du_slot_3576 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_slot_2336
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bhbody_2350
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bheader_2370
            (coe v0)))
-- Ledger.Conway.Specification.Chain._.bcur
d_bcur_3580 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2506 ->
  T_GeneralizeTel_19425 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2356 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3354 ->
  T_ChainState_3482 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_bcur_3580 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_bcur_3580 v4
du_bcur_3580 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3354 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_bcur_3580 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_bcur_3372 (coe v0)
-- Ledger.Conway.Specification.Chain._.epochState
d_epochState_3584 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2506 ->
  T_GeneralizeTel_19425 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2356 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3354 ->
  T_ChainState_3482 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3282
d_epochState_3584 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_epochState_3584 v4
du_epochState_3584 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3354 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3282
du_epochState_3584 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_epochState_3374
      (coe v0)
-- Ledger.Conway.Specification.Chain._.acnt
d_acnt_3594 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2506 ->
  T_GeneralizeTel_19425 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2356 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3354 ->
  T_ChainState_3482 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_188
d_acnt_3594 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_acnt_3594 v4
du_acnt_3594 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3354 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_188
du_acnt_3594 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_acnt_3294
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_epochState_3374
         (coe v0))
-- Ledger.Conway.Specification.Chain._.es
d_es_3596 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2506 ->
  T_GeneralizeTel_19425 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2356 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3354 ->
  T_ChainState_3482 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1176
d_es_3596 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_es_3596 v4
du_es_3596 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3354 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1176
du_es_3596 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_es_3300
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_epochState_3374
         (coe v0))
-- Ledger.Conway.Specification.Chain._.ls
d_ls_3600 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2506 ->
  T_GeneralizeTel_19425 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2356 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3354 ->
  T_ChainState_3482 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2960
d_ls_3600 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_ls_3600 v4
du_ls_3600 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3354 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2960
du_ls_3600 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_ls_3298
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_epochState_3374
         (coe v0))
-- Ledger.Conway.Specification.Chain._.pparams
d_pparams_3610 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2506 ->
  T_GeneralizeTel_19425 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2356 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3354 ->
  T_ChainState_3482 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pparams_3610 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_pparams_3610 v4
du_pparams_3610 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3354 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_pparams_3610 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pparams_1194
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_es_3300
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_epochState_3374
            (coe v0)))
-- Ledger.Conway.Specification.Chain._.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_3618 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2506 ->
  T_GeneralizeTel_19425 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2356 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3354 ->
  T_ChainState_3482 -> Integer
d_maxRefScriptSizePerBlock_3618 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_maxRefScriptSizePerBlock_3618 v5
du_maxRefScriptSizePerBlock_3618 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3354 ->
  Integer
du_maxRefScriptSizePerBlock_3618 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerBlock_394
      (coe
         MAlonzo.Code.Ledger.Prelude.du_'8739'_'8739'_70
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasCast'45'HashProtected_1090)
         (MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pparams_1194
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_es_3300
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_epochState_3374
                  (coe v0)))))
-- Ledger.Conway.Specification.Chain._⊢_⇀⦇_,CHAINS⦈_
d__'8866'_'8640''10631'_'44'CHAINS'10632'__3624 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2506 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  T_ChainState_3482 ->
  [MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2356] ->
  T_ChainState_3482 -> ()
d__'8866'_'8640''10631'_'44'CHAINS'10632'__3624 = erased
-- Ledger.Conway.Specification.Chain..generalizedField-ls'
d_'46'generalizedField'45'ls''_19423 ::
  T_GeneralizeTel_19425 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2960
d_'46'generalizedField'45'ls''_19423 v0
  = case coe v0 of
      C_mkGeneralizeTel_19427 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Chain.GeneralizeTel
d_GeneralizeTel_19425 a0 a1 = ()
newtype T_GeneralizeTel_19425
  = C_mkGeneralizeTel_19427 MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2960
