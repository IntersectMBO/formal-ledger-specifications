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

module MAlonzo.Code.Ledger.Conway.Specification.Rewards where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.FromNat
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Agda.Builtin.Maybe
import qualified MAlonzo.Code.Agda.Builtin.Reflection
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Builtin.Unit
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Algebra.Construct.NaturalChoice.Base
import qualified MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp
import qualified MAlonzo.Code.Axiom.Set
import qualified MAlonzo.Code.Axiom.Set.Map
import qualified MAlonzo.Code.Axiom.Set.Map.Dec
import qualified MAlonzo.Code.Axiom.Set.Rel
import qualified MAlonzo.Code.Class.CommutativeMonoid.Core
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Class.DecEq.Instances
import qualified MAlonzo.Code.Class.Decidable.Core
import qualified MAlonzo.Code.Class.Decidable.Instances
import qualified MAlonzo.Code.Class.Functor.Core
import qualified MAlonzo.Code.Class.Functor.Instances
import qualified MAlonzo.Code.Class.IsSet
import qualified MAlonzo.Code.Class.ToBool
import qualified MAlonzo.Code.Data.Integer.Base
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.Maybe.Base
import qualified MAlonzo.Code.Data.Maybe.Properties
import qualified MAlonzo.Code.Data.Nat.Base
import qualified MAlonzo.Code.Data.Nat.GCD
import qualified MAlonzo.Code.Data.Nat.Properties
import qualified MAlonzo.Code.Data.Product.Nary.NonDependent
import qualified MAlonzo.Code.Data.Rational.Base
import qualified MAlonzo.Code.Data.Rational.Literals
import qualified MAlonzo.Code.Data.Rational.Properties
import qualified MAlonzo.Code.Data.Refinement.Base
import qualified MAlonzo.Code.Ledger.Conway.Specification.Abstract
import qualified MAlonzo.Code.Ledger.Conway.Specification.Certs
import qualified MAlonzo.Code.Ledger.Conway.Specification.Ledger
import qualified MAlonzo.Code.Ledger.Conway.Specification.PParams
import qualified MAlonzo.Code.Ledger.Conway.Specification.Transaction
import qualified MAlonzo.Code.Ledger.Conway.Specification.Utxo
import qualified MAlonzo.Code.Ledger.Core.Specification.Address
import qualified MAlonzo.Code.Ledger.Core.Specification.Crypto
import qualified MAlonzo.Code.Ledger.Prelude
import qualified MAlonzo.Code.Ledger.Prelude.Base
import qualified MAlonzo.Code.Ledger.Prelude.Instances
import qualified MAlonzo.Code.Ledger.Prelude.Numeric.UnitInterval
import qualified MAlonzo.Code.Prelude
import qualified MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd
import qualified MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory
import qualified MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base
import qualified MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive

-- _.Constraint
d_Constraint_10 :: Integer -> ()
d_Constraint_10 = erased
-- _.fromNat
d_fromNat_12 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_fromNat_12 v0 ~v1 = du_fromNat_12 v0
du_fromNat_12 :: Integer -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_fromNat_12 v0
  = coe MAlonzo.Code.Data.Rational.Literals.d_fromℤ_6 (coe v0)
-- _.Credential
d_Credential_64 a0 = ()
-- _.DecEq-Credential
d_DecEq'45'Credential_104 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Credential_104 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1334
               (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1334
            (coe v0)))
-- _.THash
d_THash_380 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_THash_380 = erased
-- _.PParams
d_PParams_426 a0 = ()
-- _.TxOut
d_TxOut_590 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_TxOut_590 = erased
-- _.UTxO
d_UTxO_598 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_UTxO_598 = erased
-- _.PParams.Emax
d_Emax_1340 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  AgdaAny
d_Emax_1340 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Emax_396
      (coe v0)
-- _.PParams.a
d_a_1342 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer
d_a_1342 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a_368 (coe v0)
-- _.PParams.a0
d_a0_1344 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_1344 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a0_400 (coe v0)
-- _.PParams.b
d_b_1346 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer
d_b_1346 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_b_370 (coe v0)
-- _.PParams.ccMaxTermLength
d_ccMaxTermLength_1348 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer
d_ccMaxTermLength_1348 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMaxTermLength_412
      (coe v0)
-- _.PParams.ccMinSize
d_ccMinSize_1350 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer
d_ccMinSize_1350 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMinSize_410
      (coe v0)
-- _.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_1352 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer
d_coinsPerUTxOByte_1352 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_coinsPerUTxOByte_380
      (coe v0)
-- _.PParams.collateralPercentage
d_collateralPercentage_1354 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer
d_collateralPercentage_1354 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_collateralPercentage_402
      (coe v0)
-- _.PParams.costmdlsAssoc
d_costmdlsAssoc_1358 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_costmdlsAssoc_1358 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_costmdlsAssoc_404
      (coe v0)
-- _.PParams.drepActivity
d_drepActivity_1360 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  AgdaAny
d_drepActivity_1360 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepActivity_420
      (coe v0)
-- _.PParams.drepDeposit
d_drepDeposit_1362 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer
d_drepDeposit_1362 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepDeposit_418
      (coe v0)
-- _.PParams.drepThresholds
d_drepThresholds_1364 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_210
d_drepThresholds_1364 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepThresholds_408
      (coe v0)
-- _.PParams.govActionDeposit
d_govActionDeposit_1366 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer
d_govActionDeposit_1366 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionDeposit_416
      (coe v0)
-- _.PParams.govActionLifetime
d_govActionLifetime_1368 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer
d_govActionLifetime_1368 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionLifetime_414
      (coe v0)
-- _.PParams.keyDeposit
d_keyDeposit_1370 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer
d_keyDeposit_1370 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_372
      (coe v0)
-- _.PParams.maxBlockExUnits
d_maxBlockExUnits_1372 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  AgdaAny
d_maxBlockExUnits_1372 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockExUnits_360
      (coe v0)
-- _.PParams.maxBlockSize
d_maxBlockSize_1374 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer
d_maxBlockSize_1374 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockSize_352
      (coe v0)
-- _.PParams.maxCollateralInputs
d_maxCollateralInputs_1376 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer
d_maxCollateralInputs_1376 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxCollateralInputs_364
      (coe v0)
-- _.PParams.maxHeaderSize
d_maxHeaderSize_1378 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer
d_maxHeaderSize_1378 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxHeaderSize_356
      (coe v0)
-- _.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_1380 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer
d_maxRefScriptSizePerBlock_1380 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerBlock_388
      (coe v0)
-- _.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_1382 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer
d_maxRefScriptSizePerTx_1382 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerTx_386
      (coe v0)
-- _.PParams.maxTxExUnits
d_maxTxExUnits_1384 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  AgdaAny
d_maxTxExUnits_1384 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxExUnits_358
      (coe v0)
-- _.PParams.maxTxSize
d_maxTxSize_1386 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer
d_maxTxSize_1386 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxSize_354
      (coe v0)
-- _.PParams.maxValSize
d_maxValSize_1388 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer
d_maxValSize_1388 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxValSize_362
      (coe v0)
-- _.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_1390 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_1390 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_minFeeRefScriptCoinsPerByte_384
      (coe v0)
-- _.PParams.minUTxOValue
d_minUTxOValue_1392 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer
d_minUTxOValue_1392 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_minUTxOValue_394
      (coe v0)
-- _.PParams.monetaryExpansion
d_monetaryExpansion_1394 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_1394 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_monetaryExpansion_376
      (coe v0)
-- _.PParams.nopt
d_nopt_1396 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer
d_nopt_1396 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_nopt_398
      (coe v0)
-- _.PParams.poolDeposit
d_poolDeposit_1398 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer
d_poolDeposit_1398 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolDeposit_374
      (coe v0)
-- _.PParams.poolThresholds
d_poolThresholds_1400 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_254
d_poolThresholds_1400 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolThresholds_406
      (coe v0)
-- _.PParams.prices
d_prices_1402 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  AgdaAny
d_prices_1402 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_prices_382
      (coe v0)
-- _.PParams.pv
d_pv_1404 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1404 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_pv_366 (coe v0)
-- _.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_1406 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_1406 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_refScriptCostMultiplier_392
      (coe v0)
-- _.PParams.refScriptCostStride
d_refScriptCostStride_1408 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_1408 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_refScriptCostStride_390
      (coe v0)
-- _.PParams.treasuryCut
d_treasuryCut_1410 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_1410 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_treasuryCut_378
      (coe v0)
-- Ledger.Conway.Specification.Rewards._.DState
d_DState_1966 a0 a1 = ()
-- Ledger.Conway.Specification.Rewards._.HasPools
d_HasPools_2052 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Rewards._.HasStake
d_HasStake_2074 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Rewards._.HasStakeDelegs
d_HasStakeDelegs_2078 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Rewards._.PState
d_PState_2096 a0 a1 = ()
-- Ledger.Conway.Specification.Rewards._.Pools
d_Pools_2106 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2406 ->
  ()
d_Pools_2106 = erased
-- Ledger.Conway.Specification.Rewards._.PoolsOf
d_PoolsOf_2108 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPools_1192 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_PoolsOf_2108 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_PoolsOf_1200
      (coe v0)
-- Ledger.Conway.Specification.Rewards._.Rewards
d_Rewards_2114 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2406 ->
  ()
d_Rewards_2114 = erased
-- Ledger.Conway.Specification.Rewards._.Stake
d_Stake_2118 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2406 ->
  ()
d_Stake_2118 = erased
-- Ledger.Conway.Specification.Rewards._.StakeDelegs
d_StakeDelegs_2120 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2406 ->
  ()
d_StakeDelegs_2120 = erased
-- Ledger.Conway.Specification.Rewards._.StakeDelegsOf
d_StakeDelegsOf_2122 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasStakeDelegs_1256 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_StakeDelegsOf_2122 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_StakeDelegsOf_1264
      (coe v0)
-- Ledger.Conway.Specification.Rewards._.StakeOf
d_StakeOf_2124 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasStake_1240 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_StakeOf_2124 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_StakeOf_1248
      (coe v0)
-- Ledger.Conway.Specification.Rewards._.StakePoolParams
d_StakePoolParams_2126 a0 a1 = ()
-- Ledger.Conway.Specification.Rewards._.DState.rewards
d_rewards_2236 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1352 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_2236 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_rewards_1364
      (coe v0)
-- Ledger.Conway.Specification.Rewards._.DState.stakeDelegs
d_stakeDelegs_2238 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1352 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDelegs_2238 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_stakeDelegs_1362
      (coe v0)
-- Ledger.Conway.Specification.Rewards._.DState.voteDelegs
d_voteDelegs_2240 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1352 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voteDelegs_2240 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_voteDelegs_1360
      (coe v0)
-- Ledger.Conway.Specification.Rewards._.HasPools.PoolsOf
d_PoolsOf_2292 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPools_1192 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_PoolsOf_2292 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_PoolsOf_1200
      (coe v0)
-- Ledger.Conway.Specification.Rewards._.HasStake.StakeOf
d_StakeOf_2304 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasStake_1240 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_StakeOf_2304 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_StakeOf_1248
      (coe v0)
-- Ledger.Conway.Specification.Rewards._.HasStakeDelegs.StakeDelegsOf
d_StakeDelegsOf_2308 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasStakeDelegs_1256 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_StakeDelegsOf_2308 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_StakeDelegsOf_1264
      (coe v0)
-- Ledger.Conway.Specification.Rewards._.PState.fPools
d_fPools_2312 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1368 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_fPools_2312 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_fPools_1378
      (coe v0)
-- Ledger.Conway.Specification.Rewards._.PState.pools
d_pools_2314 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1368 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_2314 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pools_1376
      (coe v0)
-- Ledger.Conway.Specification.Rewards._.PState.retiring
d_retiring_2316 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1368 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_retiring_2316 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_retiring_1380
      (coe v0)
-- Ledger.Conway.Specification.Rewards._.StakePoolParams.cost
d_cost_2320 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1100 ->
  Integer
d_cost_2320 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_cost_1114 (coe v0)
-- Ledger.Conway.Specification.Rewards._.StakePoolParams.margin
d_margin_2322 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1100 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_margin_2322 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_margin_1116
      (coe v0)
-- Ledger.Conway.Specification.Rewards._.StakePoolParams.owners
d_owners_2324 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1100 ->
  [AgdaAny]
d_owners_2324 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_owners_1112
      (coe v0)
-- Ledger.Conway.Specification.Rewards._.StakePoolParams.pledge
d_pledge_2326 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1100 ->
  Integer
d_pledge_2326 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pledge_1118
      (coe v0)
-- Ledger.Conway.Specification.Rewards._.StakePoolParams.rewardAccount
d_rewardAccount_2328 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1100 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_rewardAccount_2328 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_rewardAccount_1120
      (coe v0)
-- Ledger.Conway.Specification.Rewards._.HasDState-LState
d_HasDState'45'LState_2346 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2406 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDState_1432
d_HasDState'45'LState_2346 ~v0 ~v1 = du_HasDState'45'LState_2346
du_HasDState'45'LState_2346 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDState_1432
du_HasDState'45'LState_2346
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasDState'45'LState_2888
-- Ledger.Conway.Specification.Rewards._.HasFees-LState
d_HasFees'45'LState_2352 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2406 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasFees_40
d_HasFees'45'LState_2352 ~v0 ~v1 = du_HasFees'45'LState_2352
du_HasFees'45'LState_2352 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasFees_40
du_HasFees'45'LState_2352
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasFees'45'LState_2896
-- Ledger.Conway.Specification.Rewards._.HasPState-LState
d_HasPState'45'LState_2364 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2406 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPState_1452
d_HasPState'45'LState_2364 ~v0 ~v1 = du_HasPState'45'LState_2364
du_HasPState'45'LState_2364 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPState_1452
du_HasPState'45'LState_2364
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasPState'45'LState_2890
-- Ledger.Conway.Specification.Rewards._.HasUTxO-LState
d_HasUTxO'45'LState_2368 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2406 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasUTxO_3274
d_HasUTxO'45'LState_2368 ~v0 ~v1 = du_HasUTxO'45'LState_2368
du_HasUTxO'45'LState_2368 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasUTxO_3274
du_HasUTxO'45'LState_2368
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasUTxO'45'LState_2876
-- Ledger.Conway.Specification.Rewards._.LState
d_LState_2382 a0 a1 = ()
-- Ledger.Conway.Specification.Rewards._.LState.certState
d_certState_2420 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2838 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1396
d_certState_2420 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_certState_2850
      (coe v0)
-- Ledger.Conway.Specification.Rewards._.LState.govSt
d_govSt_2422 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2838 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2422 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_govSt_2848
      (coe v0)
-- Ledger.Conway.Specification.Rewards._.LState.utxoSt
d_utxoSt_2424 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2838 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2402
d_utxoSt_2424 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_utxoSt_2846
      (coe v0)
-- Ledger.Conway.Specification.Rewards.nonZero-max-1
d_nonZero'45'max'45'1_2620 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2406 ->
  Integer -> MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_nonZero'45'max'45'1_2620 ~v0 ~v1 v2
  = du_nonZero'45'max'45'1_2620 v2
du_nonZero'45'max'45'1_2620 ::
  Integer -> MAlonzo.Code.Data.Nat.Base.T_NonZero_112
du_nonZero'45'max'45'1_2620 v0
  = coe seq (coe v0) (coe MAlonzo.Code.Data.Nat.Base.du_nonZero_124)
-- Ledger.Conway.Specification.Rewards.nonZero-1/n
d_nonZero'45'1'47'n_2628 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2406 ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_nonZero'45'1'47'n_2628 ~v0 v1 ~v2 = du_nonZero'45'1'47'n_2628 v1
du_nonZero'45'1'47'n_2628 ::
  Integer -> MAlonzo.Code.Data.Nat.Base.T_NonZero_112
du_nonZero'45'1'47'n_2628 v0
  = coe
      MAlonzo.Code.Data.Rational.Properties.du_pos'8658'nonZero_3004
      (coe
         MAlonzo.Code.Data.Rational.Base.du__'47'__156 (coe (1 :: Integer))
         (coe v0))
-- Ledger.Conway.Specification.Rewards.nonZero-1+max0-x
d_nonZero'45'1'43'max0'45'x_2636 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2406 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_nonZero'45'1'43'max0'45'x_2636 ~v0 ~v1 v2
  = du_nonZero'45'1'43'max0'45'x_2636 v2
du_nonZero'45'1'43'max0'45'x_2636 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
du_nonZero'45'1'43'max0'45'x_2636 v0
  = coe
      MAlonzo.Code.Data.Rational.Base.d_'62''45'nonZero_224
      (coe
         MAlonzo.Code.Data.Rational.Base.d__'43'__270
         (coe
            MAlonzo.Code.Data.Rational.Literals.d_fromℤ_6 (coe (1 :: Integer)))
         (coe
            MAlonzo.Code.Data.Rational.Base.d__'8852'__322
            (coe
               MAlonzo.Code.Data.Rational.Literals.d_fromℤ_6 (coe (0 :: Integer)))
            (coe v0)))
      (coe
         MAlonzo.Code.Data.Rational.Properties.d_'43''45'mono'45''60''45''8804'_4418
         (coe
            MAlonzo.Code.Data.Rational.Base.C_mkℚ_24
            (coe
               MAlonzo.Code.Data.Nat.Base.du__'47'__318 (coe (0 :: Integer))
               (coe
                  MAlonzo.Code.Data.Nat.GCD.d_gcd_152 (coe (0 :: Integer))
                  (coe (1 :: Integer))))
            (0 :: Integer))
         (coe
            MAlonzo.Code.Data.Rational.Literals.d_fromℤ_6 (coe (1 :: Integer)))
         (coe
            MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 (0 :: Integer)
            (0 :: Integer))
         (coe
            MAlonzo.Code.Data.Rational.Base.d__'8852'__322
            (coe
               MAlonzo.Code.Data.Rational.Literals.d_fromℤ_6 (coe (0 :: Integer)))
            (coe v0))
         (coe
            MAlonzo.Code.Data.Rational.Properties.du_positive'8315''185'_3986
            (coe
               MAlonzo.Code.Data.Rational.Literals.d_fromℤ_6
               (coe (1 :: Integer))))
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8804'x_2924
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
               (coe
                  MAlonzo.Code.Data.Rational.Properties.d_'8804''45'totalPreorder_3646))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_186
               (coe
                  MAlonzo.Code.Data.Rational.Properties.d_'8852''45'operator_5718))
            (coe
               MAlonzo.Code.Data.Rational.Literals.d_fromℤ_6 (coe (0 :: Integer)))
            (coe v0)))
-- Ledger.Conway.Specification.Rewards.maxPool
d_maxPool_2640 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2406 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 -> Integer
d_maxPool_2640 ~v0 ~v1 v2 v3 v4 v5 = du_maxPool_2640 v2 v3 v4 v5
du_maxPool_2640 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 -> Integer
du_maxPool_2640 v0 v1 v2 v3
  = coe du_rewardℕ_2674 (coe v0) (coe v1) (coe v2) (coe v3)
-- Ledger.Conway.Specification.Rewards._.a0
d_a0_2654 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2406 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_2654 ~v0 ~v1 v2 ~v3 ~v4 ~v5 = du_a0_2654 v2
du_a0_2654 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_a0_2654 v0
  = coe
      MAlonzo.Code.Data.Rational.Base.d__'8852'__322
      (coe
         MAlonzo.Code.Data.Rational.Literals.d_fromℤ_6 (coe (0 :: Integer)))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a0_400 (coe v0))
-- Ledger.Conway.Specification.Rewards._.1+a0
d_1'43'a0_2656 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2406 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_1'43'a0_2656 ~v0 ~v1 v2 ~v3 ~v4 ~v5 = du_1'43'a0_2656 v2
du_1'43'a0_2656 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_1'43'a0_2656 v0
  = coe
      MAlonzo.Code.Data.Rational.Base.d__'43'__270
      (coe
         MAlonzo.Code.Data.Rational.Literals.d_fromℤ_6 (coe (1 :: Integer)))
      (coe du_a0_2654 (coe v0))
-- Ledger.Conway.Specification.Rewards._.nopt
d_nopt_2658 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2406 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 -> Integer
d_nopt_2658 ~v0 ~v1 v2 ~v3 ~v4 ~v5 = du_nopt_2658 v2
du_nopt_2658 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer
du_nopt_2658 v0
  = coe
      MAlonzo.Code.Data.Nat.Base.d__'8852'__208 (coe (1 :: Integer))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.PParams.d_nopt_398
         (coe v0))
-- Ledger.Conway.Specification.Rewards._.z0
d_z0_2662 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2406 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_z0_2662 ~v0 ~v1 v2 ~v3 ~v4 ~v5 = du_z0_2662 v2
du_z0_2662 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_z0_2662 v0 v1
  = coe
      MAlonzo.Code.Data.Rational.Base.du__'47'__156 (coe (1 :: Integer))
      (coe du_nopt_2658 (coe v0))
-- Ledger.Conway.Specification.Rewards._.stake'
d_stake''_2664 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2406 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_stake''_2664 ~v0 ~v1 v2 ~v3 v4 ~v5 = du_stake''_2664 v2 v4
du_stake''_2664 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_stake''_2664 v0 v1
  = coe
      MAlonzo.Code.Data.Rational.Base.d__'8851'__332
      (coe
         MAlonzo.Code.Ledger.Prelude.Numeric.UnitInterval.d_fromUnitInterval_72
         (coe v1))
      (coe du_z0_2662 v0 erased)
-- Ledger.Conway.Specification.Rewards._.pledge'
d_pledge''_2666 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2406 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_pledge''_2666 ~v0 ~v1 v2 ~v3 ~v4 v5 = du_pledge''_2666 v2 v5
du_pledge''_2666 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_pledge''_2666 v0 v1
  = coe
      MAlonzo.Code.Data.Rational.Base.d__'8851'__332
      (coe
         MAlonzo.Code.Ledger.Prelude.Numeric.UnitInterval.d_fromUnitInterval_72
         (coe v1))
      (coe du_z0_2662 v0 erased)
-- Ledger.Conway.Specification.Rewards._.rewardℚ
d_rewardℚ_2672 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2406 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_rewardℚ_2672 ~v0 ~v1 v2 v3 v4 v5 = du_rewardℚ_2672 v2 v3 v4 v5
du_rewardℚ_2672 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_rewardℚ_2672 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.Rational.Base.d__'42'__276
      (coe
         MAlonzo.Code.Data.Rational.Base.du__'247'__312
         (coe MAlonzo.Code.Data.Rational.Literals.d_fromℤ_6 (coe v1))
         (coe du_1'43'a0_2656 (coe v0)))
      (coe
         MAlonzo.Code.Data.Rational.Base.d__'43'__270
         (coe du_stake''_2664 (coe v0) (coe v2))
         (coe
            MAlonzo.Code.Data.Rational.Base.du__'247'__312
            (coe
               MAlonzo.Code.Data.Rational.Base.d__'42'__276
               (coe
                  MAlonzo.Code.Data.Rational.Base.d__'42'__276
                  (coe du_pledge''_2666 (coe v0) (coe v3)) (coe du_a0_2654 (coe v0)))
               (coe
                  MAlonzo.Code.Data.Rational.Base.d__'45'__282
                  (coe du_stake''_2664 (coe v0) (coe v2))
                  (coe
                     MAlonzo.Code.Data.Rational.Base.du__'247'__312
                     (coe
                        MAlonzo.Code.Data.Rational.Base.d__'42'__276
                        (coe du_pledge''_2666 (coe v0) (coe v3))
                        (coe
                           MAlonzo.Code.Data.Rational.Base.d__'45'__282
                           (coe du_z0_2662 v0 erased)
                           (coe du_stake''_2664 (coe v0) (coe v2))))
                     (coe du_z0_2662 v0 erased))))
            (coe du_z0_2662 v0 erased)))
-- Ledger.Conway.Specification.Rewards._.rewardℕ
d_rewardℕ_2674 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2406 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 -> Integer
d_rewardℕ_2674 ~v0 ~v1 v2 v3 v4 v5 = du_rewardℕ_2674 v2 v3 v4 v5
du_rewardℕ_2674 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 -> Integer
du_rewardℕ_2674 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Prelude.d_posPart_58
      (coe
         MAlonzo.Code.Data.Rational.Base.d_floor_346
         (coe du_rewardℚ_2672 (coe v0) (coe v1) (coe v2) (coe v3)))
-- Ledger.Conway.Specification.Rewards.mkApparentPerformance
d_mkApparentPerformance_2676 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2406 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  Integer -> Integer -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_mkApparentPerformance_2676 ~v0 ~v1 v2 v3 v4
  = du_mkApparentPerformance_2676 v2 v3 v4
du_mkApparentPerformance_2676 ::
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  Integer -> Integer -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_mkApparentPerformance_2676 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Prelude.d__'247''8320'__54
      (coe du_ratioBlocks_2692 (coe v1) (coe v2))
      (coe
         MAlonzo.Code.Ledger.Prelude.Numeric.UnitInterval.d_fromUnitInterval_72
         (coe v0))
-- Ledger.Conway.Specification.Rewards._.ratioBlocks
d_ratioBlocks_2692 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2406 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_ratioBlocks_2692 ~v0 ~v1 ~v2 v3 v4 ~v5
  = du_ratioBlocks_2692 v3 v4
du_ratioBlocks_2692 ::
  Integer -> Integer -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_ratioBlocks_2692 v0 v1
  = coe
      MAlonzo.Code.Data.Rational.Base.du__'47'__156 (coe v0)
      (coe
         MAlonzo.Code.Data.Nat.Base.d__'8852'__208 (coe (1 :: Integer))
         (coe v1))
-- Ledger.Conway.Specification.Rewards.rewardOwners
d_rewardOwners_2694 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2406 ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1100 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 -> Integer
d_rewardOwners_2694 ~v0 ~v1 v2 v3 v4 v5
  = du_rewardOwners_2694 v2 v3 v4 v5
du_rewardOwners_2694 ::
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1100 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 -> Integer
du_rewardOwners_2694 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Class.ToBool.du_if_then_else__38
      (coe MAlonzo.Code.Class.ToBool.du_ToBool'45''8263'_106) erased
      (coe
         MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_34 v0
         (coe du_cost_2710 (coe v1)))
      (coe (\ v4 -> v0))
      (coe
         (\ v4 ->
            addInt
              (coe du_cost_2710 (coe v1))
              (coe
                 MAlonzo.Code.Prelude.d_posPart_58
                 (coe
                    MAlonzo.Code.Data.Rational.Base.d_floor_346
                    (coe
                       MAlonzo.Code.Data.Rational.Base.d__'42'__276
                       (coe
                          MAlonzo.Code.Data.Rational.Base.d__'45'__282
                          (coe MAlonzo.Code.Data.Rational.Literals.d_fromℤ_6 (coe v0))
                          (coe
                             MAlonzo.Code.Data.Rational.Literals.d_fromℤ_6
                             (coe du_cost_2710 (coe v1))))
                       (coe
                          MAlonzo.Code.Data.Rational.Base.d__'43'__270
                          (coe du_margin_2712 (coe v1))
                          (coe
                             MAlonzo.Code.Data.Rational.Base.d__'42'__276
                             (coe
                                MAlonzo.Code.Data.Rational.Base.d__'45'__282
                                (coe
                                   MAlonzo.Code.Agda.Builtin.FromNat.d_fromNat_30
                                   MAlonzo.Code.Prelude.d_Number'45'ℚ_36 (1 :: Integer)
                                   (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                (coe du_margin_2712 (coe v1)))
                             (coe du_ratioStake_2708 (coe v2) (coe v3)))))))))
-- Ledger.Conway.Specification.Rewards._.ratioStake
d_ratioStake_2708 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2406 ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1100 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_ratioStake_2708 ~v0 ~v1 ~v2 ~v3 v4 v5 = du_ratioStake_2708 v4 v5
du_ratioStake_2708 ::
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_ratioStake_2708 v0 v1
  = coe
      MAlonzo.Code.Ledger.Prelude.d__'247''8320'__54
      (coe
         MAlonzo.Code.Ledger.Prelude.Numeric.UnitInterval.d_fromUnitInterval_72
         (coe v0))
      (coe
         MAlonzo.Code.Ledger.Prelude.Numeric.UnitInterval.d_fromUnitInterval_72
         (coe v1))
-- Ledger.Conway.Specification.Rewards._.cost
d_cost_2710 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2406 ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1100 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 -> Integer
d_cost_2710 ~v0 ~v1 ~v2 v3 ~v4 ~v5 = du_cost_2710 v3
du_cost_2710 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1100 ->
  Integer
du_cost_2710 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_cost_1114 (coe v0)
-- Ledger.Conway.Specification.Rewards._.margin
d_margin_2712 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2406 ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1100 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_margin_2712 ~v0 ~v1 ~v2 v3 ~v4 ~v5 = du_margin_2712 v3
du_margin_2712 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1100 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_margin_2712 v0
  = coe
      MAlonzo.Code.Ledger.Prelude.Numeric.UnitInterval.d_fromUnitInterval_72
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Certs.d_margin_1116
         (coe v0))
-- Ledger.Conway.Specification.Rewards.rewardMember
d_rewardMember_2714 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2406 ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1100 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 -> Integer
d_rewardMember_2714 ~v0 ~v1 v2 v3 v4 v5
  = du_rewardMember_2714 v2 v3 v4 v5
du_rewardMember_2714 ::
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1100 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 -> Integer
du_rewardMember_2714 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Class.ToBool.du_if_then_else__38
      (coe MAlonzo.Code.Class.ToBool.du_ToBool'45''8263'_106) erased
      (coe
         MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_34 v0
         (coe du_cost_2730 (coe v1)))
      (coe
         (\ v4 ->
            coe
              MAlonzo.Code.Agda.Builtin.FromNat.d_fromNat_30
              MAlonzo.Code.Prelude.d_Number'45'ℕ_32 (0 :: Integer)
              (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
      (coe
         (\ v4 ->
            MAlonzo.Code.Prelude.d_posPart_58
              (coe
                 MAlonzo.Code.Data.Rational.Base.d_floor_346
                 (coe
                    MAlonzo.Code.Data.Rational.Base.d__'42'__276
                    (coe
                       MAlonzo.Code.Data.Rational.Base.d__'45'__282
                       (coe MAlonzo.Code.Data.Rational.Literals.d_fromℤ_6 (coe v0))
                       (coe
                          MAlonzo.Code.Data.Rational.Literals.d_fromℤ_6
                          (coe du_cost_2730 (coe v1))))
                    (coe
                       MAlonzo.Code.Data.Rational.Base.d__'42'__276
                       (coe
                          MAlonzo.Code.Data.Rational.Base.d__'45'__282
                          (coe
                             MAlonzo.Code.Agda.Builtin.FromNat.d_fromNat_30
                             MAlonzo.Code.Prelude.d_Number'45'ℚ_36 (1 :: Integer)
                             (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                          (coe du_margin_2732 (coe v1)))
                       (coe du_ratioStake_2728 (coe v2) (coe v3)))))))
-- Ledger.Conway.Specification.Rewards._.ratioStake
d_ratioStake_2728 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2406 ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1100 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_ratioStake_2728 ~v0 ~v1 ~v2 ~v3 v4 v5 = du_ratioStake_2728 v4 v5
du_ratioStake_2728 ::
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_ratioStake_2728 v0 v1
  = coe
      MAlonzo.Code.Ledger.Prelude.d__'247''8320'__54
      (coe
         MAlonzo.Code.Ledger.Prelude.Numeric.UnitInterval.d_fromUnitInterval_72
         (coe v0))
      (coe
         MAlonzo.Code.Ledger.Prelude.Numeric.UnitInterval.d_fromUnitInterval_72
         (coe v1))
-- Ledger.Conway.Specification.Rewards._.cost
d_cost_2730 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2406 ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1100 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 -> Integer
d_cost_2730 ~v0 ~v1 ~v2 v3 ~v4 ~v5 = du_cost_2730 v3
du_cost_2730 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1100 ->
  Integer
du_cost_2730 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_cost_1114 (coe v0)
-- Ledger.Conway.Specification.Rewards._.margin
d_margin_2732 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2406 ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1100 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_margin_2732 ~v0 ~v1 ~v2 v3 ~v4 ~v5 = du_margin_2732 v3
du_margin_2732 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1100 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_margin_2732 v0
  = coe
      MAlonzo.Code.Ledger.Prelude.Numeric.UnitInterval.d_fromUnitInterval_72
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Certs.d_margin_1116
         (coe v0))
-- Ledger.Conway.Specification.Rewards.rewardOnePool
d_rewardOnePool_2734 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2406 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1100 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewardOnePool_2734 v0 ~v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
  = du_rewardOnePool_2734 v0 v2 v3 v4 v5 v6 v7 v8 v9 v10
du_rewardOnePool_2734 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1100 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_rewardOnePool_2734 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9
  = coe
      MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__582
      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
         (coe
            MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1334
                  (coe v0))))
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1334
               (coe v0))))
      (coe
         du_memberRewards_2778 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
         (coe v5) (coe v6) (coe v7) (coe v8) (coe v9))
      (coe
         du_ownersRewards_2782 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
         (coe v5) (coe v6) (coe v7) (coe v8) (coe v9))
-- Ledger.Conway.Specification.Rewards._.mkRelativeStake
d_mkRelativeStake_2758 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2406 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1100 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  Integer ->
  Integer -> MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_mkRelativeStake_2758 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 v10
                       v11
  = du_mkRelativeStake_2758 v10 v11
du_mkRelativeStake_2758 ::
  Integer ->
  Integer -> MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
du_mkRelativeStake_2758 v0 v1
  = coe
      MAlonzo.Code.Ledger.Prelude.Numeric.UnitInterval.d_clamp_118
      (coe
         MAlonzo.Code.Ledger.Prelude.d__'47''8320'__46 (coe v1) (coe v0))
-- Ledger.Conway.Specification.Rewards._.owners
d_owners_2762 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2406 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1100 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  Integer ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_owners_2762 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 ~v7 ~v8 ~v9 ~v10
  = du_owners_2762 v6
du_owners_2762 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1100 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
du_owners_2762 v0
  = coe
      MAlonzo.Code.Axiom.Set.du_map_426
      (MAlonzo.Code.Axiom.Set.d_th_1516
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Address.C_KeyHashObj_22)
      (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_owners_1112
         (coe v0))
-- Ledger.Conway.Specification.Rewards._.ownerStake
d_ownerStake_2764 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2406 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1100 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  Integer -> Integer
d_ownerStake_2764 v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 ~v8 ~v9 ~v10
  = du_ownerStake_2764 v0 v6 v7
du_ownerStake_2764 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1100 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_ownerStake_2764 v0 v1 v2
  = coe
      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1446
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1334
                  (coe v0))))
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1334
               (coe v0))))
      (coe
         MAlonzo.Code.Class.DecEq.Core.C_constructor_32
         (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2796))
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
         (coe
            MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
      (coe (\ v3 -> v3))
      (coe
         MAlonzo.Code.Axiom.Set.Map.du__'8739'__1626
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1516
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe
            MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
            erased
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                  (coe
                     MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1334
                        (coe v0))))
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1334
                     (coe v0)))))
         (coe v2) (coe du_owners_2762 (coe v1)))
-- Ledger.Conway.Specification.Rewards._.pledge
d_pledge_2766 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2406 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1100 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  Integer -> Integer
d_pledge_2766 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 ~v7 ~v8 ~v9 ~v10
  = du_pledge_2766 v6
du_pledge_2766 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1100 ->
  Integer
du_pledge_2766 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pledge_1118
      (coe v0)
-- Ledger.Conway.Specification.Rewards._.maxP
d_maxP_2768 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2406 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1100 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  Integer -> Integer
d_maxP_2768 v0 ~v1 v2 v3 ~v4 ~v5 v6 v7 v8 ~v9 v10
  = du_maxP_2768 v0 v2 v3 v6 v7 v8 v10
du_maxP_2768 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1100 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  Integer -> Integer
du_maxP_2768 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Class.ToBool.du_if_then_else__38
      (coe MAlonzo.Code.Class.ToBool.du_ToBool'45''8263'_106) erased
      (coe
         MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_34
         (coe du_pledge_2766 (coe v3))
         (coe du_ownerStake_2764 (coe v0) (coe v3) (coe v4)))
      (coe
         (\ v7 ->
            coe
              du_maxPool_2640 (coe v1) (coe v2) (coe v5)
              (coe
                 du_mkRelativeStake_2758 (coe v6) (coe du_pledge_2766 (coe v3)))))
      (coe
         (\ v7 ->
            coe
              MAlonzo.Code.Agda.Builtin.FromNat.d_fromNat_30
              MAlonzo.Code.Prelude.d_Number'45'ℕ_32 (0 :: Integer)
              (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
-- Ledger.Conway.Specification.Rewards._.poolReward
d_poolReward_2770 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2406 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1100 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  Integer -> Integer
d_poolReward_2770 v0 ~v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
  = du_poolReward_2770 v0 v2 v3 v4 v5 v6 v7 v8 v9 v10
du_poolReward_2770 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1100 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  Integer -> Integer
du_poolReward_2770 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9
  = coe
      MAlonzo.Code.Prelude.d_posPart_58
      (coe
         MAlonzo.Code.Data.Rational.Base.d_floor_346
         (coe
            MAlonzo.Code.Data.Rational.Base.d__'42'__276
            (coe du_mkApparentPerformance_2676 (coe v8) (coe v3) (coe v4))
            (coe
               MAlonzo.Code.Data.Rational.Literals.d_fromℤ_6
               (coe
                  du_maxP_2768 (coe v0) (coe v1) (coe v2) (coe v5) (coe v6) (coe v7)
                  (coe v9)))))
-- Ledger.Conway.Specification.Rewards._.stakeMap[_]
d_stakeMap'91'_'93'_2774 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2406 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1100 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  Integer ->
  (Integer ->
   MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1100 ->
   MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
   MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 -> Integer) ->
  Integer ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 -> Integer
d_stakeMap'91'_'93'_2774 v0 ~v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
  = du_stakeMap'91'_'93'_2774 v0 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
du_stakeMap'91'_'93'_2774 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1100 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  Integer ->
  (Integer ->
   MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1100 ->
   MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
   MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 -> Integer) ->
  Integer ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 -> Integer
du_stakeMap'91'_'93'_2774 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
  = coe
      v10
      (coe
         du_poolReward_2770 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
         (coe v5) (coe v6) (coe v7) (coe v8) (coe v9))
      v5 (coe du_mkRelativeStake_2758 (coe v9) (coe v11))
-- Ledger.Conway.Specification.Rewards._.memberRewards
d_memberRewards_2778 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2406 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1100 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_memberRewards_2778 v0 ~v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
  = du_memberRewards_2778 v0 v2 v3 v4 v5 v6 v7 v8 v9 v10
du_memberRewards_2778 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1100 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_memberRewards_2778 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_mapValues_976
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1516
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe
         (\ v10 ->
            coe
              du_stakeMap'91'_'93'_2774 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9
              (coe du_rewardMember_2714) v10 v7))
      (coe
         MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1634
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1516
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe
            MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
            erased
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                  (coe
                     MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1334
                        (coe v0))))
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1334
                     (coe v0)))))
         (coe v6) (coe du_owners_2762 (coe v5)))
-- Ledger.Conway.Specification.Rewards._.ownersRewards
d_ownersRewards_2782 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2406 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1100 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ownersRewards_2782 v0 ~v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
  = du_ownersRewards_2782 v0 v2 v3 v4 v5 v6 v7 v8 v9 v10
du_ownersRewards_2782 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1100 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_ownersRewards_2782 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_844
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1516
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Certs.d_rewardAccount_1120
            (coe v5))
         (coe
            du_stakeMap'91'_'93'_2774 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9
            (coe du_rewardOwners_2694)
            (coe du_ownerStake_2764 (coe v0) (coe v5) (coe v6)) v7))
-- Ledger.Conway.Specification.Rewards.poolStake
d_poolStake_2784 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2406 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_poolStake_2784 v0 ~v1 v2 v3 v4 = du_poolStake_2784 v0 v2 v3 v4
du_poolStake_2784 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_poolStake_2784 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Map.du__'8739'__1626
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1516
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
         erased
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1334
                     (coe v0))))
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1334
                  (coe v0)))))
      (coe v3)
      (coe
         MAlonzo.Code.Class.IsSet.du_dom_586
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1516
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
         (coe
            MAlonzo.Code.Axiom.Set.Map.du__'8739''94'__2100
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1516
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe
               MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
               erased
               (MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                  (coe
                     MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1334
                        (coe v0)))))
            (coe v2)
            (coe
               MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_480
               (MAlonzo.Code.Axiom.Set.d_th_1516
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
               erased v1)))
-- Ledger.Conway.Specification.Rewards.BlocksMade
d_BlocksMade_2792 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2406 ->
  ()
d_BlocksMade_2792 = erased
-- Ledger.Conway.Specification.Rewards.uncurryᵐ
d_uncurry'7504'_2804 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2406 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_uncurry'7504'_2804 ~v0 ~v1 ~v2 ~v3 ~v4 v5 v6 v7
  = du_uncurry'7504'_2804 v5 v6 v7
du_uncurry'7504'_2804 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_uncurry'7504'_2804 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_mapFromPartialFun_1540
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1516
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe du_lookup''_2818 (coe v0) (coe v1) (coe v2))
      (coe du_domain''_2830 (coe v2))
-- Ledger.Conway.Specification.Rewards._.lookup'
d_lookup''_2818 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2406 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe AgdaAny
d_lookup''_2818 ~v0 ~v1 ~v2 ~v3 ~v4 v5 v6 v7 v8
  = du_lookup''_2818 v5 v6 v7 v8
du_lookup''_2818 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe AgdaAny
du_lookup''_2818 v0 v1 v2 v3
  = case coe v3 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v4 v5
        -> coe
             MAlonzo.Code.Data.Maybe.Base.du__'62''62''61'__72
             (coe
                MAlonzo.Code.Axiom.Set.Map.du_lookup'7504''63'_2048
                (coe
                   MAlonzo.Code.Axiom.Set.d_th_1516
                   (coe
                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                (coe v2) (coe v4)
                (coe
                   MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__102
                   (coe
                      MAlonzo.Code.Axiom.Set.d__'8712''63'__1650
                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                      erased v0)
                   (coe v4)
                   (let v6
                          = MAlonzo.Code.Axiom.Set.d_th_1516
                              (coe
                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8) in
                    coe
                      (coe
                         MAlonzo.Code.Axiom.Set.Rel.du_dom_354 v6
                         (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_570 (coe v2))))))
             (coe
                (\ v6 ->
                   coe
                     MAlonzo.Code.Axiom.Set.Map.du_lookup'7504''63'_2048
                     (coe
                        MAlonzo.Code.Axiom.Set.d_th_1516
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                     (coe v6) (coe v5)
                     (coe
                        MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__102
                        (coe
                           MAlonzo.Code.Axiom.Set.d__'8712''63'__1650
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                           erased v1)
                        (coe v5)
                        (let v7
                               = MAlonzo.Code.Axiom.Set.d_th_1516
                                   (coe
                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8) in
                         coe
                           (coe
                              MAlonzo.Code.Axiom.Set.Rel.du_dom_354 v7
                              (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_570 (coe v6)))))))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Rewards._.joinˢ
d_join'738'_2828 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2406 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  () -> [[AgdaAny]] -> [AgdaAny]
d_join'738'_2828 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8
  = du_join'738'_2828
du_join'738'_2828 :: [[AgdaAny]] -> [AgdaAny]
du_join'738'_2828
  = coe
      MAlonzo.Code.Axiom.Set.du_concatMap'738'_536
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1516
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe (\ v0 -> v0))
-- Ledger.Conway.Specification.Rewards._.domain'
d_domain''_2830 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2406 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_domain''_2830 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_domain''_2830 v7
du_domain''_2830 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_domain''_2830 v0
  = coe
      du_join'738'_2828
      (coe
         MAlonzo.Code.Class.IsSet.du_range_588
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1516
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
         (coe
            MAlonzo.Code.Axiom.Set.Map.du_mapWithKey_1406
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1516
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe
               (\ v1 v2 ->
                  coe
                    MAlonzo.Code.Class.IsSet.du_range_588
                    (coe
                       MAlonzo.Code.Axiom.Set.d_th_1516
                       (coe
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                    (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                    (coe
                       MAlonzo.Code.Axiom.Set.Map.du_mapWithKey_1406
                       (coe
                          MAlonzo.Code.Axiom.Set.d_th_1516
                          (coe
                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                       (coe
                          (\ v3 v4 ->
                             coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v1) (coe v3)))
                       (coe v2))))
            (coe v0)))
-- Ledger.Conway.Specification.Rewards.reward
d_reward_2840 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2406 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_reward_2840 v0 ~v1 v2 v3 v4 v5 v6 v7 v8
  = du_reward_2840 v0 v2 v3 v4 v5 v6 v7 v8
du_reward_2840 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_reward_2840 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      du_rewards_2902 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
      (coe v5) (coe v6) (coe v7)
-- Ledger.Conway.Specification.Rewards._.active
d_active_2860 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2406 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer -> Integer
d_active_2860 v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 ~v7 ~v8
  = du_active_2860 v0 v6
du_active_2860 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_active_2860 v0 v1
  = coe
      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1446
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1334
                  (coe v0))))
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1334
               (coe v0))))
      (coe
         MAlonzo.Code.Class.DecEq.Core.C_constructor_32
         (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2796))
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
         (coe
            MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
      (coe (\ v2 -> v2)) (coe v1)
-- Ledger.Conway.Specification.Rewards._.Σ_/total
d_Σ_'47'total_2864 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2406 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_Σ_'47'total_2864 v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8 v9
  = du_Σ_'47'total_2864 v0 v8 v9
du_Σ_'47'total_2864 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
du_Σ_'47'total_2864 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Prelude.Numeric.UnitInterval.d_clamp_118
      (coe
         MAlonzo.Code.Ledger.Prelude.d__'47''8320'__46
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1446
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                  (coe
                     MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1334
                        (coe v0))))
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1334
                     (coe v0))))
            (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
            (coe
               MAlonzo.Code.Ledger.Prelude.Instances.d_CommMonoid'45'ℕ'45''43'_6)
            (coe (\ v3 -> v3)) (coe v2))
         (coe v1))
-- Ledger.Conway.Specification.Rewards._.Σ_/active
d_Σ_'47'active_2870 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2406 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_Σ_'47'active_2870 v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 ~v7 ~v8 v9
  = du_Σ_'47'active_2870 v0 v6 v9
du_Σ_'47'active_2870 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
du_Σ_'47'active_2870 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Prelude.Numeric.UnitInterval.d_clamp_118
      (coe
         MAlonzo.Code.Ledger.Prelude.d__'47''8320'__46
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1446
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                  (coe
                     MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1334
                        (coe v0))))
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1334
                     (coe v0))))
            (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
            (coe
               MAlonzo.Code.Ledger.Prelude.Instances.d_CommMonoid'45'ℕ'45''43'_6)
            (coe (\ v3 -> v3)) (coe v2))
         (coe du_active_2860 (coe v0) (coe v1)))
-- Ledger.Conway.Specification.Rewards._.N
d_N_2876 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2406 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer -> Integer
d_N_2876 v0 ~v1 ~v2 v3 ~v4 ~v5 ~v6 ~v7 ~v8 = du_N_2876 v0 v3
du_N_2876 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_N_2876 v0 v1
  = coe
      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1446
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1334
               (coe v0))))
      (coe
         MAlonzo.Code.Class.DecEq.Core.C_constructor_32
         (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2796))
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
         (coe
            MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
      (coe (\ v2 -> v2)) (coe v1)
-- Ledger.Conway.Specification.Rewards._.mkPoolData
d_mkPoolData_2880 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2406 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1100 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_mkPoolData_2880 v0 ~v1 ~v2 v3 ~v4 ~v5 v6 v7 ~v8 v9 v10
  = du_mkPoolData_2880 v0 v3 v6 v7 v9 v10
du_mkPoolData_2880 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1100 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_mkPoolData_2880 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Class.Functor.Core.du_fmap_22
      MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6 () erased
      () erased
      (\ v6 ->
         coe
           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v6)
           (coe
              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v5)
              (coe du_poolStake_2784 (coe v0) (coe v4) (coe v3) (coe v2))))
      (coe
         MAlonzo.Code.Axiom.Set.Map.du_lookup'7504''63'_2048
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1516
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe v1) (coe v4)
         (coe
            MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1720
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1334
                     (coe v0))))
            (coe v4)
            (let v6
                   = MAlonzo.Code.Axiom.Set.d_th_1516
                       (coe
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8) in
             coe
               (coe
                  MAlonzo.Code.Axiom.Set.Rel.du_dom_354 v6
                  (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_570 (coe v1))))))
-- Ledger.Conway.Specification.Rewards._.pdata
d_pdata_2888 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2406 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pdata_2888 v0 ~v1 ~v2 v3 ~v4 v5 v6 v7 ~v8
  = du_pdata_2888 v0 v3 v5 v6 v7
du_pdata_2888 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_pdata_2888 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_mapMaybeWithKey'7504'_1532
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1516
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe du_mkPoolData_2880 (coe v0) (coe v1) (coe v3) (coe v4))
      (coe v2)
-- Ledger.Conway.Specification.Rewards._.f
d_f_2890 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2406 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_f_2890 v0 ~v1 v2 v3 v4 ~v5 v6 ~v7 v8 v9
  = du_f_2890 v0 v2 v3 v4 v6 v8 v9
du_f_2890 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_f_2890 v0 v1 v2 v3 v4 v5 v6
  = coe
      du_rewardOnePool_2734 (coe v0) (coe v1) (coe v3)
      (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6))
      (coe du_N_2876 (coe v0) (coe v2))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
         (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v6)))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
         (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v6)))
      (coe
         du_Σ_'47'total_2864 (coe v0) (coe v5)
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
            (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v6))))
      (coe
         du_Σ_'47'active_2870 (coe v0) (coe v4)
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
            (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v6))))
      (coe v5)
-- Ledger.Conway.Specification.Rewards._.results
d_results_2900 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2406 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_results_2900 v0 ~v1 v2 v3 v4 v5 v6 v7 v8
  = du_results_2900 v0 v2 v3 v4 v5 v6 v7 v8
du_results_2900 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_results_2900 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      du_uncurry'7504'_2804
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1334
               (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1334
                  (coe v0))))
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1334
               (coe v0))))
      (coe
         MAlonzo.Code.Axiom.Set.Map.du_mapValues_976
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1516
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe
            du_f_2890 (coe v0) (coe v1) (coe v2) (coe v3) (coe v5) (coe v7))
         (coe du_pdata_2888 (coe v0) (coe v2) (coe v4) (coe v5) (coe v6)))
-- Ledger.Conway.Specification.Rewards._.rewards
d_rewards_2902 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2406 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_2902 v0 ~v1 v2 v3 v4 v5 v6 v7 v8
  = du_rewards_2902 v0 v2 v3 v4 v5 v6 v7 v8
du_rewards_2902 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_rewards_2902 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_aggregateBy_1488
      (coe
         MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_182
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1334
                  (coe v0))))
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1334
                     (coe v0))))
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1334
                  (coe v0)))))
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
         (coe
            MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1334
                  (coe v0))))
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1334
               (coe v0))))
      (coe
         MAlonzo.Code.Class.DecEq.Core.C_constructor_32
         (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2796))
      (coe
         MAlonzo.Code.Axiom.Set.du_map_426
         (MAlonzo.Code.Axiom.Set.d_th_1516
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (\ v8 ->
            coe
              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v8)
              (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v8)))
         (coe
            MAlonzo.Code.Class.IsSet.du_dom_586
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1516
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
            (coe
               du_results_2900 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
               (coe v5) (coe v6) (coe v7))))
      (coe
         du_results_2900 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
         (coe v5) (coe v6) (coe v7))
-- Ledger.Conway.Specification.Rewards.RewardUpdate
d_RewardUpdate_2910 a0 a1 = ()
data T_RewardUpdate_2910
  = C_constructor_2944 Integer Integer Integer
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                       MAlonzo.Code.Data.Integer.Base.T__'8804'__26
                       MAlonzo.Code.Data.Integer.Base.T__'8804'__26
-- Ledger.Conway.Specification.Rewards.RewardUpdate.Δt
d_Δt_2928 :: T_RewardUpdate_2910 -> Integer
d_Δt_2928 v0
  = case coe v0 of
      C_constructor_2944 v1 v2 v3 v4 v6 v7 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Rewards.RewardUpdate.Δr
d_Δr_2930 :: T_RewardUpdate_2910 -> Integer
d_Δr_2930 v0
  = case coe v0 of
      C_constructor_2944 v1 v2 v3 v4 v6 v7 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Rewards.RewardUpdate.Δf
d_Δf_2932 :: T_RewardUpdate_2910 -> Integer
d_Δf_2932 v0
  = case coe v0 of
      C_constructor_2944 v1 v2 v3 v4 v6 v7 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Rewards.RewardUpdate.rs
d_rs_2934 ::
  T_RewardUpdate_2910 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rs_2934 v0
  = case coe v0 of
      C_constructor_2944 v1 v2 v3 v4 v6 v7 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Rewards.RewardUpdate.flowConservation
d_flowConservation_2938 ::
  T_RewardUpdate_2910 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_flowConservation_2938 = erased
-- Ledger.Conway.Specification.Rewards.RewardUpdate.Δt-nonnegative
d_Δt'45'nonnegative_2940 ::
  T_RewardUpdate_2910 -> MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_Δt'45'nonnegative_2940 v0
  = case coe v0 of
      C_constructor_2944 v1 v2 v3 v4 v6 v7 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Rewards.RewardUpdate.Δf-nonpositive
d_Δf'45'nonpositive_2942 ::
  T_RewardUpdate_2910 -> MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_Δf'45'nonpositive_2942 v0
  = case coe v0 of
      C_constructor_2944 v1 v2 v3 v4 v6 v7 -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Rewards.Snapshot
d_Snapshot_2946 a0 a1 = ()
data T_Snapshot_2946
  = C_constructor_2960 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Specification.Rewards.Snapshot.stake
d_stake_2954 ::
  T_Snapshot_2946 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stake_2954 v0
  = case coe v0 of
      C_constructor_2960 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Rewards.Snapshot.delegations
d_delegations_2956 ::
  T_Snapshot_2946 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_delegations_2956 v0
  = case coe v0 of
      C_constructor_2960 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Rewards.Snapshot.pools
d_pools_2958 ::
  T_Snapshot_2946 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_2958 v0
  = case coe v0 of
      C_constructor_2960 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Rewards.HasStake-Snapshot
d_HasStake'45'Snapshot_2962 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2406 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasStake_1240
d_HasStake'45'Snapshot_2962 ~v0 ~v1 = du_HasStake'45'Snapshot_2962
du_HasStake'45'Snapshot_2962 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasStake_1240
du_HasStake'45'Snapshot_2962
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_constructor_1250
      (coe (\ v0 -> d_stake_2954 (coe v0)))
-- Ledger.Conway.Specification.Rewards.HasStakeDelegs-Snapshot
d_HasStakeDelegs'45'Snapshot_2964 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2406 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasStakeDelegs_1256
d_HasStakeDelegs'45'Snapshot_2964 ~v0 ~v1
  = du_HasStakeDelegs'45'Snapshot_2964
du_HasStakeDelegs'45'Snapshot_2964 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasStakeDelegs_1256
du_HasStakeDelegs'45'Snapshot_2964
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_constructor_1266
      (coe (\ v0 -> d_delegations_2956 (coe v0)))
-- Ledger.Conway.Specification.Rewards.HasPools-Snapshot
d_HasPools'45'Snapshot_2966 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2406 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPools_1192
d_HasPools'45'Snapshot_2966 ~v0 ~v1 = du_HasPools'45'Snapshot_2966
du_HasPools'45'Snapshot_2966 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPools_1192
du_HasPools'45'Snapshot_2966
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_constructor_1202
      (coe (\ v0 -> d_pools_2958 (coe v0)))
-- Ledger.Conway.Specification.Rewards.HasCast-Snapshot
d_HasCast'45'Snapshot_2968 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2406 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'Snapshot_2968 ~v0 ~v1 = du_HasCast'45'Snapshot_2968
du_HasCast'45'Snapshot_2968 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'Snapshot_2968
  = coe
      MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.C_constructor_30
      (coe
         MAlonzo.Code.Data.Product.Nary.NonDependent.du_uncurry'8345'_170
         (coe
            MAlonzo.Code.Data.List.Base.du_length_268
            (coe
               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
               (coe
                  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive.d_getCodPi_8
                  (coe
                     MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202
                     (coe
                        MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                           (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                           (coe
                              MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                              (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                              (coe MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                           (coe
                              (MAlonzo.RTE.QName
                                 (2946 :: Integer) (11784521472326443595 :: Integer)
                                 "Ledger.Conway.Specification.Rewards.Snapshot"
                                 (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                     (coe
                        MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                        (coe ("r" :: Data.Text.Text))
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                           (coe
                              (MAlonzo.RTE.QName
                                 (2118 :: Integer) (11784521472326443595 :: Integer)
                                 "Ledger.Conway.Specification.Rewards._.Stake"
                                 (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
               (coe
                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                  (coe
                     MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive.d_getCodPi_8
                     (coe
                        MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                           (coe
                              MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                              (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                 (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                 (coe MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                           (coe
                              MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                              (coe
                                 (MAlonzo.RTE.QName
                                    (2946 :: Integer) (11784521472326443595 :: Integer)
                                    "Ledger.Conway.Specification.Rewards.Snapshot"
                                    (MAlonzo.RTE.Fixity
                                       MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                              (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                           (coe ("r" :: Data.Text.Text))
                           (coe
                              MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                              (coe
                                 (MAlonzo.RTE.QName
                                    (2120 :: Integer) (11784521472326443595 :: Integer)
                                    "Ledger.Conway.Specification.Rewards._.StakeDelegs"
                                    (MAlonzo.RTE.Fixity
                                       MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                              (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                  (coe
                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                     (coe
                        MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive.d_getCodPi_8
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202
                           (coe
                              MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                 (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                    (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                    (coe MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                 (coe
                                    (MAlonzo.RTE.QName
                                       (2946 :: Integer) (11784521472326443595 :: Integer)
                                       "Ledger.Conway.Specification.Rewards.Snapshot"
                                       (MAlonzo.RTE.Fixity
                                          MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                           (coe
                              MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                              (coe ("r" :: Data.Text.Text))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                 (coe
                                    (MAlonzo.RTE.QName
                                       (2106 :: Integer) (11784521472326443595 :: Integer)
                                       "Ledger.Conway.Specification.Rewards._.Pools"
                                       (MAlonzo.RTE.Fixity
                                          MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                     (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
         (coe C_constructor_2960))
-- Ledger.Conway.Specification.Rewards.getStakeCred
d_getStakeCred_2970 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2406 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_getStakeCred_2970 ~v0 ~v1 v2 = du_getStakeCred_2970 v2
du_getStakeCred_2970 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
du_getStakeCred_2970 v0
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v1 v2
        -> case coe v2 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v3 v4
               -> coe
                    seq (coe v4)
                    (coe
                       MAlonzo.Code.Ledger.Core.Specification.Address.du_stakeCred_190
                       (coe v1))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Rewards.stakeDistr
d_stakeDistr_2974 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2406 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1352 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1368 ->
  T_Snapshot_2946
d_stakeDistr_2974 v0 ~v1 v2 v3 v4 = du_stakeDistr_2974 v0 v2 v3 v4
du_stakeDistr_2974 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1352 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1368 ->
  T_Snapshot_2946
du_stakeDistr_2974 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_72
      (coe
         MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.C_constructor_30
         (coe
            MAlonzo.Code.Data.Product.Nary.NonDependent.du_uncurry'8345'_170
            (coe
               MAlonzo.Code.Data.List.Base.du_length_268
               (coe
                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                  (coe
                     MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive.d_getCodPi_8
                     (coe
                        MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                           (coe
                              MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                              (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                 (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                 (coe MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                           (coe
                              MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                              (coe
                                 (MAlonzo.RTE.QName
                                    (2946 :: Integer) (11784521472326443595 :: Integer)
                                    "Ledger.Conway.Specification.Rewards.Snapshot"
                                    (MAlonzo.RTE.Fixity
                                       MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                              (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                           (coe ("r" :: Data.Text.Text))
                           (coe
                              MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                              (coe
                                 (MAlonzo.RTE.QName
                                    (2118 :: Integer) (11784521472326443595 :: Integer)
                                    "Ledger.Conway.Specification.Rewards._.Stake"
                                    (MAlonzo.RTE.Fixity
                                       MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                              (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                  (coe
                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                     (coe
                        MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive.d_getCodPi_8
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202
                           (coe
                              MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                 (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                    (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                    (coe MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                 (coe
                                    (MAlonzo.RTE.QName
                                       (2946 :: Integer) (11784521472326443595 :: Integer)
                                       "Ledger.Conway.Specification.Rewards.Snapshot"
                                       (MAlonzo.RTE.Fixity
                                          MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                           (coe
                              MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                              (coe ("r" :: Data.Text.Text))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                 (coe
                                    (MAlonzo.RTE.QName
                                       (2120 :: Integer) (11784521472326443595 :: Integer)
                                       "Ledger.Conway.Specification.Rewards._.StakeDelegs"
                                       (MAlonzo.RTE.Fixity
                                          MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                     (coe
                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                        (coe
                           MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive.d_getCodPi_8
                           (coe
                              MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                    (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                       (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                    (coe
                                       (MAlonzo.RTE.QName
                                          (2946 :: Integer) (11784521472326443595 :: Integer)
                                          "Ledger.Conway.Specification.Rewards.Snapshot"
                                          (MAlonzo.RTE.Fixity
                                             MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                    (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                                 (coe ("r" :: Data.Text.Text))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                    (coe
                                       (MAlonzo.RTE.QName
                                          (2106 :: Integer) (11784521472326443595 :: Integer)
                                          "Ledger.Conway.Specification.Rewards._.Pools"
                                          (MAlonzo.RTE.Fixity
                                             MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                    (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                        (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
            (coe C_constructor_2960)))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe du_activeStake_2998 (coe v0) (coe v1) (coe v2) (coe v3))
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Certs.d_stakeDelegs_1362
               (coe v2))
            (coe du_pools_2986 (coe v3))))
-- Ledger.Conway.Specification.Rewards._.pools
d_pools_2986 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2406 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1352 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1368 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_2986 ~v0 ~v1 ~v2 ~v3 v4 = du_pools_2986 v4
du_pools_2986 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1368 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_pools_2986 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pools_1376
      (coe v0)
-- Ledger.Conway.Specification.Rewards._.utxoBalance
d_utxoBalance_2988 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2406 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1352 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1368 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Integer
d_utxoBalance_2988 v0 ~v1 v2 ~v3 ~v4 v5
  = du_utxoBalance_2988 v0 v2 v5
du_utxoBalance_2988 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Integer
du_utxoBalance_2988 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_cbalance_2478
      (coe v0)
      (coe
         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du__'8739''94'''__1440
         (coe v1)
         (coe
            (\ v3 ->
               coe
                 MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__102
                 (coe
                    MAlonzo.Code.Data.Maybe.Properties.du_'8801''45'dec_24
                    (coe
                       MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                       (coe
                          MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                          (coe
                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                             (coe
                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                (coe
                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1334
                                   (coe v0))))
                          (coe
                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                             (coe
                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1334
                                (coe v0))))))
                 (coe du_getStakeCred_2970 (coe v3))
                 (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v2)))))
-- Ledger.Conway.Specification.Rewards._.activeDelegs
d_activeDelegs_2994 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2406 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1352 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1368 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_activeDelegs_2994 v0 ~v1 ~v2 v3 v4
  = du_activeDelegs_2994 v0 v3 v4
du_activeDelegs_2994 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1352 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1368 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_activeDelegs_2994 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Map.du__'8739''94'__2100
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1516
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
         erased
         (MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1334
                  (coe v0)))))
      (coe
         MAlonzo.Code.Axiom.Set.Map.du__'8739'__1626
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1516
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe
            MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
            erased
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                  (coe
                     MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1334
                        (coe v0))))
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1334
                     (coe v0)))))
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Certs.d_stakeDelegs_1362
            (coe v1))
         (coe
            MAlonzo.Code.Class.IsSet.du_dom_586
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1516
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Certs.d_rewards_1364
               (coe v1))))
      (coe
         MAlonzo.Code.Class.IsSet.du_dom_586
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1516
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
         (coe du_pools_2986 (coe v2)))
-- Ledger.Conway.Specification.Rewards._.activeRewards
d_activeRewards_2996 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2406 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1352 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1368 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_activeRewards_2996 v0 ~v1 ~v2 v3 v4
  = du_activeRewards_2996 v0 v3 v4
du_activeRewards_2996 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1352 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1368 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_activeRewards_2996 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Map.du__'8739'__1626
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1516
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
         erased
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1334
                     (coe v0))))
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1334
                  (coe v0)))))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Certs.d_rewards_1364
         (coe v1))
      (coe
         MAlonzo.Code.Class.IsSet.du_dom_586
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1516
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
         (coe du_activeDelegs_2994 (coe v0) (coe v1) (coe v2)))
-- Ledger.Conway.Specification.Rewards._.activeStake
d_activeStake_2998 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2406 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1352 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1368 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_activeStake_2998 v0 ~v1 v2 v3 v4
  = du_activeStake_2998 v0 v2 v3 v4
du_activeStake_2998 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1352 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1368 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_activeStake_2998 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_mapWithKey_1406
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1516
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe
         (\ v4 ->
            addInt (coe du_utxoBalance_2988 (coe v0) (coe v1) (coe v4))))
      (coe du_activeRewards_2996 (coe v0) (coe v2) (coe v3))
-- Ledger.Conway.Specification.Rewards.Snapshots
d_Snapshots_3004 a0 a1 = ()
data T_Snapshots_3004
  = C_constructor_3022 T_Snapshot_2946 T_Snapshot_2946
                       T_Snapshot_2946 Integer
-- Ledger.Conway.Specification.Rewards.Snapshots.mark
d_mark_3014 :: T_Snapshots_3004 -> T_Snapshot_2946
d_mark_3014 v0
  = case coe v0 of
      C_constructor_3022 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Rewards.Snapshots.set
d_set_3016 :: T_Snapshots_3004 -> T_Snapshot_2946
d_set_3016 v0
  = case coe v0 of
      C_constructor_3022 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Rewards.Snapshots.go
d_go_3018 :: T_Snapshots_3004 -> T_Snapshot_2946
d_go_3018 v0
  = case coe v0 of
      C_constructor_3022 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Rewards.Snapshots.feeSS
d_feeSS_3020 :: T_Snapshots_3004 -> Integer
d_feeSS_3020 v0
  = case coe v0 of
      C_constructor_3022 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Rewards.HasSnapshots
d_HasSnapshots_3028 a0 a1 a2 a3 = ()
newtype T_HasSnapshots_3028
  = C_constructor_3038 (AgdaAny -> T_Snapshots_3004)
-- Ledger.Conway.Specification.Rewards.HasSnapshots.SnapshotsOf
d_SnapshotsOf_3036 ::
  T_HasSnapshots_3028 -> AgdaAny -> T_Snapshots_3004
d_SnapshotsOf_3036 v0
  = case coe v0 of
      C_constructor_3038 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Rewards._.SnapshotsOf
d_SnapshotsOf_3042 ::
  T_HasSnapshots_3028 -> AgdaAny -> T_Snapshots_3004
d_SnapshotsOf_3042 v0 = coe d_SnapshotsOf_3036 (coe v0)
-- Ledger.Conway.Specification.Rewards.HasFees-Snapshots
d_HasFees'45'Snapshots_3044 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2406 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasFees_40
d_HasFees'45'Snapshots_3044 ~v0 ~v1 = du_HasFees'45'Snapshots_3044
du_HasFees'45'Snapshots_3044 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasFees_40
du_HasFees'45'Snapshots_3044
  = coe
      MAlonzo.Code.Ledger.Prelude.Base.C_constructor_50
      (coe (\ v0 -> d_feeSS_3020 (coe v0)))
-- Ledger.Conway.Specification.Rewards.HasCast-Snapshots
d_HasCast'45'Snapshots_3046 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2406 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'Snapshots_3046 ~v0 ~v1 = du_HasCast'45'Snapshots_3046
du_HasCast'45'Snapshots_3046 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'Snapshots_3046
  = coe
      MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.C_constructor_30
      (coe
         MAlonzo.Code.Data.Product.Nary.NonDependent.du_uncurry'8345'_170
         (coe
            MAlonzo.Code.Data.List.Base.du_length_268
            (coe
               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
               (coe
                  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive.d_getCodPi_8
                  (coe
                     MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202
                     (coe
                        MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                           (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                           (coe
                              MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                              (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                              (coe MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                           (coe
                              (MAlonzo.RTE.QName
                                 (3004 :: Integer) (11784521472326443595 :: Integer)
                                 "Ledger.Conway.Specification.Rewards.Snapshots"
                                 (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                     (coe
                        MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                        (coe ("r" :: Data.Text.Text))
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                           (coe
                              (MAlonzo.RTE.QName
                                 (2946 :: Integer) (11784521472326443595 :: Integer)
                                 "Ledger.Conway.Specification.Rewards.Snapshot"
                                 (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
               (coe
                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                  (coe
                     MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive.d_getCodPi_8
                     (coe
                        MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                           (coe
                              MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                              (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                 (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                 (coe MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                           (coe
                              MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                              (coe
                                 (MAlonzo.RTE.QName
                                    (3004 :: Integer) (11784521472326443595 :: Integer)
                                    "Ledger.Conway.Specification.Rewards.Snapshots"
                                    (MAlonzo.RTE.Fixity
                                       MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                              (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                           (coe ("r" :: Data.Text.Text))
                           (coe
                              MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                              (coe
                                 (MAlonzo.RTE.QName
                                    (2946 :: Integer) (11784521472326443595 :: Integer)
                                    "Ledger.Conway.Specification.Rewards.Snapshot"
                                    (MAlonzo.RTE.Fixity
                                       MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                              (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                  (coe
                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                     (coe
                        MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive.d_getCodPi_8
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202
                           (coe
                              MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                 (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                    (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                    (coe MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                 (coe
                                    (MAlonzo.RTE.QName
                                       (3004 :: Integer) (11784521472326443595 :: Integer)
                                       "Ledger.Conway.Specification.Rewards.Snapshots"
                                       (MAlonzo.RTE.Fixity
                                          MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                           (coe
                              MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                              (coe ("r" :: Data.Text.Text))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                 (coe
                                    (MAlonzo.RTE.QName
                                       (2946 :: Integer) (11784521472326443595 :: Integer)
                                       "Ledger.Conway.Specification.Rewards.Snapshot"
                                       (MAlonzo.RTE.Fixity
                                          MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                     (coe
                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                        (coe
                           MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive.d_getCodPi_8
                           (coe
                              MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                    (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                       (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                    (coe
                                       (MAlonzo.RTE.QName
                                          (3004 :: Integer) (11784521472326443595 :: Integer)
                                          "Ledger.Conway.Specification.Rewards.Snapshots"
                                          (MAlonzo.RTE.Fixity
                                             MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                    (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                                 (coe ("r" :: Data.Text.Text))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                    (coe
                                       (MAlonzo.RTE.QName
                                          (10 :: Integer) (14798748958053396954 :: Integer)
                                          "Ledger.Prelude.Base.Fees"
                                          (MAlonzo.RTE.Fixity
                                             MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                    (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                        (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))
         (coe C_constructor_3022))
-- Ledger.Conway.Specification.Rewards._⊢_⇀⦇_,SNAP⦈_
d__'8866'_'8640''10631'_'44'SNAP'10632'__3058 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'SNAP'10632'__3058 = C_SNAP_3062
