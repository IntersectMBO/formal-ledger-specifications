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

module MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards where

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
import qualified MAlonzo.Code.Ledger.Core.Specification.Address
import qualified MAlonzo.Code.Ledger.Core.Specification.Crypto
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Certs
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.PParams
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo
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
d_Credential_90 a0 = ()
-- _.DecEq-Credential
d_DecEq'45'Credential_142 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Credential_142 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
               (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
            (coe v0)))
-- _.THash
d_THash_668 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_THash_668 = erased
-- _.PParams
d_PParams_728 a0 = ()
-- _.TxOut
d_TxOut_930 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_TxOut_930 = erased
-- _.UTxO
d_UTxO_940 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_UTxO_940 = erased
-- _.PParams.Emax
d_Emax_1978 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  AgdaAny
d_Emax_1978 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_Emax_428
      (coe v0)
-- _.PParams.a
d_a_1980 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_a_1980 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_a_400 (coe v0)
-- _.PParams.a0
d_a0_1982 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_1982 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_a0_432
      (coe v0)
-- _.PParams.b
d_b_1984 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_b_1984 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_b_402 (coe v0)
-- _.PParams.ccMaxTermLength
d_ccMaxTermLength_1986 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_ccMaxTermLength_1986 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ccMaxTermLength_444
      (coe v0)
-- _.PParams.ccMinSize
d_ccMinSize_1988 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_ccMinSize_1988 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ccMinSize_442
      (coe v0)
-- _.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_1990 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_coinsPerUTxOByte_1990 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_coinsPerUTxOByte_412
      (coe v0)
-- _.PParams.collateralPercentage
d_collateralPercentage_1992 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_collateralPercentage_1992 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_collateralPercentage_434
      (coe v0)
-- _.PParams.costmdlsAssoc
d_costmdlsAssoc_1996 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_LanguageCostModels_676
d_costmdlsAssoc_1996 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_costmdlsAssoc_436
      (coe v0)
-- _.PParams.drepActivity
d_drepActivity_1998 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  AgdaAny
d_drepActivity_1998 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepActivity_452
      (coe v0)
-- _.PParams.drepDeposit
d_drepDeposit_2000 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_drepDeposit_2000 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepDeposit_450
      (coe v0)
-- _.PParams.drepThresholds
d_drepThresholds_2002 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_244
d_drepThresholds_2002 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepThresholds_440
      (coe v0)
-- _.PParams.govActionDeposit
d_govActionDeposit_2004 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_govActionDeposit_2004 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_govActionDeposit_448
      (coe v0)
-- _.PParams.govActionLifetime
d_govActionLifetime_2006 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_govActionLifetime_2006 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_govActionLifetime_446
      (coe v0)
-- _.PParams.keyDeposit
d_keyDeposit_2008 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_keyDeposit_2008 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_keyDeposit_404
      (coe v0)
-- _.PParams.maxBlockExUnits
d_maxBlockExUnits_2010 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  AgdaAny
d_maxBlockExUnits_2010 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxBlockExUnits_392
      (coe v0)
-- _.PParams.maxBlockSize
d_maxBlockSize_2012 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxBlockSize_2012 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxBlockSize_384
      (coe v0)
-- _.PParams.maxCollateralInputs
d_maxCollateralInputs_2014 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxCollateralInputs_2014 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxCollateralInputs_396
      (coe v0)
-- _.PParams.maxHeaderSize
d_maxHeaderSize_2016 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxHeaderSize_2016 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxHeaderSize_388
      (coe v0)
-- _.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_2018 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxRefScriptSizePerBlock_2018 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxRefScriptSizePerBlock_420
      (coe v0)
-- _.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_2020 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxRefScriptSizePerTx_2020 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxRefScriptSizePerTx_418
      (coe v0)
-- _.PParams.maxTxExUnits
d_maxTxExUnits_2022 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  AgdaAny
d_maxTxExUnits_2022 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxTxExUnits_390
      (coe v0)
-- _.PParams.maxTxSize
d_maxTxSize_2024 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxTxSize_2024 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxTxSize_386
      (coe v0)
-- _.PParams.maxValSize
d_maxValSize_2026 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxValSize_2026 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxValSize_394
      (coe v0)
-- _.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_2028 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_2028 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_minFeeRefScriptCoinsPerByte_416
      (coe v0)
-- _.PParams.minUTxOValue
d_minUTxOValue_2030 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_minUTxOValue_2030 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_minUTxOValue_426
      (coe v0)
-- _.PParams.monetaryExpansion
d_monetaryExpansion_2032 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_2032 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_monetaryExpansion_408
      (coe v0)
-- _.PParams.nopt
d_nopt_2034 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_nopt_2034 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_nopt_430
      (coe v0)
-- _.PParams.poolDeposit
d_poolDeposit_2036 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_poolDeposit_2036 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_poolDeposit_406
      (coe v0)
-- _.PParams.poolThresholds
d_poolThresholds_2038 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PoolThresholds_288
d_poolThresholds_2038 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_poolThresholds_438
      (coe v0)
-- _.PParams.prices
d_prices_2040 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  AgdaAny
d_prices_2040 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_prices_414
      (coe v0)
-- _.PParams.pv
d_pv_2042 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_2042 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_pv_398
      (coe v0)
-- _.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_2044 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_2044 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_refScriptCostMultiplier_424
      (coe v0)
-- _.PParams.refScriptCostStride
d_refScriptCostStride_2046 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_2046 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_refScriptCostStride_422
      (coe v0)
-- _.PParams.treasuryCut
d_treasuryCut_2048 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_2048 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_treasuryCut_410
      (coe v0)
-- Ledger.Dijkstra.Specification.Rewards._.DState
d_DState_2630 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Rewards._.HasPools
d_HasPools_2744 a0 a1 a2 a3 = ()
-- Ledger.Dijkstra.Specification.Rewards._.HasStake
d_HasStake_2766 a0 a1 a2 a3 = ()
-- Ledger.Dijkstra.Specification.Rewards._.HasStakeDelegs
d_HasStakeDelegs_2770 a0 a1 a2 a3 = ()
-- Ledger.Dijkstra.Specification.Rewards._.PState
d_PState_2798 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Rewards._.Pools
d_Pools_2808 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3116 ->
  ()
d_Pools_2808 = erased
-- Ledger.Dijkstra.Specification.Rewards._.PoolsOf
d_PoolsOf_2810 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasPools_1546 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_PoolsOf_2810 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_PoolsOf_1554
      (coe v0)
-- Ledger.Dijkstra.Specification.Rewards._.Rewards
d_Rewards_2816 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3116 ->
  ()
d_Rewards_2816 = erased
-- Ledger.Dijkstra.Specification.Rewards._.Stake
d_Stake_2820 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3116 ->
  ()
d_Stake_2820 = erased
-- Ledger.Dijkstra.Specification.Rewards._.StakeDelegs
d_StakeDelegs_2822 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3116 ->
  ()
d_StakeDelegs_2822 = erased
-- Ledger.Dijkstra.Specification.Rewards._.StakeDelegsOf
d_StakeDelegsOf_2824 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasStakeDelegs_1626 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_StakeDelegsOf_2824 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_StakeDelegsOf_1634
      (coe v0)
-- Ledger.Dijkstra.Specification.Rewards._.StakeOf
d_StakeOf_2826 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasStake_1606 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_StakeOf_2826 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_StakeOf_1614
      (coe v0)
-- Ledger.Dijkstra.Specification.Rewards._.StakePoolParams
d_StakePoolParams_2828 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Rewards._.DState.deposits
d_deposits_2930 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DState_1352 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_2930 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_deposits_1368
      (coe v0)
-- Ledger.Dijkstra.Specification.Rewards._.DState.rewards
d_rewards_2932 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DState_1352 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_2932 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_rewards_1366
      (coe v0)
-- Ledger.Dijkstra.Specification.Rewards._.DState.stakeDelegs
d_stakeDelegs_2934 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DState_1352 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDelegs_2934 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_stakeDelegs_1364
      (coe v0)
-- Ledger.Dijkstra.Specification.Rewards._.DState.voteDelegs
d_voteDelegs_2936 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DState_1352 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voteDelegs_2936 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_voteDelegs_1362
      (coe v0)
-- Ledger.Dijkstra.Specification.Rewards._.HasPools.PoolsOf
d_PoolsOf_2996 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasPools_1546 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_PoolsOf_2996 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_PoolsOf_1554
      (coe v0)
-- Ledger.Dijkstra.Specification.Rewards._.HasStake.StakeOf
d_StakeOf_3008 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasStake_1606 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_StakeOf_3008 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_StakeOf_1614
      (coe v0)
-- Ledger.Dijkstra.Specification.Rewards._.HasStakeDelegs.StakeDelegsOf
d_StakeDelegsOf_3012 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasStakeDelegs_1626 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_StakeDelegsOf_3012 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_StakeDelegsOf_1634
      (coe v0)
-- Ledger.Dijkstra.Specification.Rewards._.PState.deposits
d_deposits_3020 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_PState_1372 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_3020 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_deposits_1388
      (coe v0)
-- Ledger.Dijkstra.Specification.Rewards._.PState.fPools
d_fPools_3022 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_PState_1372 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_fPools_3022 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_fPools_1384
      (coe v0)
-- Ledger.Dijkstra.Specification.Rewards._.PState.pools
d_pools_3024 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_PState_1372 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_3024 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_pools_1382
      (coe v0)
-- Ledger.Dijkstra.Specification.Rewards._.PState.retiring
d_retiring_3026 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_PState_1372 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_retiring_3026 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_retiring_1386
      (coe v0)
-- Ledger.Dijkstra.Specification.Rewards._.StakePoolParams.cost
d_cost_3030 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_StakePoolParams_1260 ->
  Integer
d_cost_3030 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_cost_1274
      (coe v0)
-- Ledger.Dijkstra.Specification.Rewards._.StakePoolParams.margin
d_margin_3032 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_StakePoolParams_1260 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_margin_3032 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_margin_1276
      (coe v0)
-- Ledger.Dijkstra.Specification.Rewards._.StakePoolParams.owners
d_owners_3034 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_StakePoolParams_1260 ->
  [AgdaAny]
d_owners_3034 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_owners_1272
      (coe v0)
-- Ledger.Dijkstra.Specification.Rewards._.StakePoolParams.pledge
d_pledge_3036 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_StakePoolParams_1260 ->
  Integer
d_pledge_3036 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_pledge_1278
      (coe v0)
-- Ledger.Dijkstra.Specification.Rewards._.StakePoolParams.rewardAccount
d_rewardAccount_3038 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_StakePoolParams_1260 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_rewardAccount_3038 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_rewardAccount_1280
      (coe v0)
-- Ledger.Dijkstra.Specification.Rewards._.HasDState-LedgerState
d_HasDState'45'LedgerState_3066 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3116 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasDState_1646
d_HasDState'45'LedgerState_3066 ~v0 ~v1
  = du_HasDState'45'LedgerState_3066
du_HasDState'45'LedgerState_3066 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasDState_1646
du_HasDState'45'LedgerState_3066
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasDState'45'LedgerState_3826
-- Ledger.Dijkstra.Specification.Rewards._.HasFees-LedgerState
d_HasFees'45'LedgerState_3074 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3116 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasFees_40
d_HasFees'45'LedgerState_3074 ~v0 ~v1
  = du_HasFees'45'LedgerState_3074
du_HasFees'45'LedgerState_3074 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasFees_40
du_HasFees'45'LedgerState_3074
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasFees'45'LedgerState_3834
-- Ledger.Dijkstra.Specification.Rewards._.HasPState-LedgerState
d_HasPState'45'LedgerState_3088 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3116 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasPState_1666
d_HasPState'45'LedgerState_3088 ~v0 ~v1
  = du_HasPState'45'LedgerState_3088
du_HasPState'45'LedgerState_3088 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasPState_1666
du_HasPState'45'LedgerState_3088
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasPState'45'LedgerState_3828
-- Ledger.Dijkstra.Specification.Rewards._.HasUTxO-LedgerState
d_HasUTxO'45'LedgerState_3094 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3116 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasUTxO_3654
d_HasUTxO'45'LedgerState_3094 ~v0 ~v1
  = du_HasUTxO'45'LedgerState_3094
du_HasUTxO'45'LedgerState_3094 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasUTxO_3654
du_HasUTxO'45'LedgerState_3094
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasUTxO'45'LedgerState_3816
-- Ledger.Dijkstra.Specification.Rewards._.LedgerState
d_LedgerState_3110 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Rewards._.LedgerState.certState
d_certState_3164 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3778 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1408
d_certState_3164 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_certState_3790
      (coe v0)
-- Ledger.Dijkstra.Specification.Rewards._.LedgerState.govSt
d_govSt_3166 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3778 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_3166 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_govSt_3788
      (coe v0)
-- Ledger.Dijkstra.Specification.Rewards._.LedgerState.utxoSt
d_utxoSt_3168 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3778 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3152
d_utxoSt_3168 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_utxoSt_3786
      (coe v0)
-- Ledger.Dijkstra.Specification.Rewards.nonZero-max-1
d_nonZero'45'max'45'1_3438 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3116 ->
  Integer -> MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_nonZero'45'max'45'1_3438 ~v0 ~v1 v2
  = du_nonZero'45'max'45'1_3438 v2
du_nonZero'45'max'45'1_3438 ::
  Integer -> MAlonzo.Code.Data.Nat.Base.T_NonZero_112
du_nonZero'45'max'45'1_3438 v0
  = coe seq (coe v0) (coe MAlonzo.Code.Data.Nat.Base.du_nonZero_124)
-- Ledger.Dijkstra.Specification.Rewards.nonZero-1/n
d_nonZero'45'1'47'n_3446 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3116 ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_nonZero'45'1'47'n_3446 ~v0 v1 ~v2 = du_nonZero'45'1'47'n_3446 v1
du_nonZero'45'1'47'n_3446 ::
  Integer -> MAlonzo.Code.Data.Nat.Base.T_NonZero_112
du_nonZero'45'1'47'n_3446 v0
  = coe
      MAlonzo.Code.Data.Rational.Properties.du_pos'8658'nonZero_3004
      (coe
         MAlonzo.Code.Data.Rational.Base.du__'47'__156 (coe (1 :: Integer))
         (coe v0))
-- Ledger.Dijkstra.Specification.Rewards.nonZero-1+max0-x
d_nonZero'45'1'43'max0'45'x_3454 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3116 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_nonZero'45'1'43'max0'45'x_3454 ~v0 ~v1 v2
  = du_nonZero'45'1'43'max0'45'x_3454 v2
du_nonZero'45'1'43'max0'45'x_3454 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
du_nonZero'45'1'43'max0'45'x_3454 v0
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
-- Ledger.Dijkstra.Specification.Rewards.maxPool
d_maxPool_3458 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3116 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 -> Integer
d_maxPool_3458 ~v0 ~v1 v2 v3 v4 v5 = du_maxPool_3458 v2 v3 v4 v5
du_maxPool_3458 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 -> Integer
du_maxPool_3458 v0 v1 v2 v3
  = coe du_rewardℕ_3492 (coe v0) (coe v1) (coe v2) (coe v3)
-- Ledger.Dijkstra.Specification.Rewards._.a0
d_a0_3472 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3116 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_3472 ~v0 ~v1 v2 ~v3 ~v4 ~v5 = du_a0_3472 v2
du_a0_3472 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_a0_3472 v0
  = coe
      MAlonzo.Code.Data.Rational.Base.d__'8852'__322
      (coe
         MAlonzo.Code.Data.Rational.Literals.d_fromℤ_6 (coe (0 :: Integer)))
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_a0_432
         (coe v0))
-- Ledger.Dijkstra.Specification.Rewards._.1+a0
d_1'43'a0_3474 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3116 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_1'43'a0_3474 ~v0 ~v1 v2 ~v3 ~v4 ~v5 = du_1'43'a0_3474 v2
du_1'43'a0_3474 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_1'43'a0_3474 v0
  = coe
      MAlonzo.Code.Data.Rational.Base.d__'43'__270
      (coe
         MAlonzo.Code.Data.Rational.Literals.d_fromℤ_6 (coe (1 :: Integer)))
      (coe du_a0_3472 (coe v0))
-- Ledger.Dijkstra.Specification.Rewards._.nopt
d_nopt_3476 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3116 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 -> Integer
d_nopt_3476 ~v0 ~v1 v2 ~v3 ~v4 ~v5 = du_nopt_3476 v2
du_nopt_3476 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
du_nopt_3476 v0
  = coe
      MAlonzo.Code.Data.Nat.Base.d__'8852'__208 (coe (1 :: Integer))
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_nopt_430
         (coe v0))
-- Ledger.Dijkstra.Specification.Rewards._.z0
d_z0_3480 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3116 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_z0_3480 ~v0 ~v1 v2 ~v3 ~v4 ~v5 = du_z0_3480 v2
du_z0_3480 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_z0_3480 v0 v1
  = coe
      MAlonzo.Code.Data.Rational.Base.du__'47'__156 (coe (1 :: Integer))
      (coe du_nopt_3476 (coe v0))
-- Ledger.Dijkstra.Specification.Rewards._.stake'
d_stake''_3482 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3116 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_stake''_3482 ~v0 ~v1 v2 ~v3 v4 ~v5 = du_stake''_3482 v2 v4
du_stake''_3482 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_stake''_3482 v0 v1
  = coe
      MAlonzo.Code.Data.Rational.Base.d__'8851'__332
      (coe
         MAlonzo.Code.Ledger.Prelude.Numeric.UnitInterval.d_fromUnitInterval_72
         (coe v1))
      (coe du_z0_3480 v0 erased)
-- Ledger.Dijkstra.Specification.Rewards._.pledge'
d_pledge''_3484 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3116 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_pledge''_3484 ~v0 ~v1 v2 ~v3 ~v4 v5 = du_pledge''_3484 v2 v5
du_pledge''_3484 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_pledge''_3484 v0 v1
  = coe
      MAlonzo.Code.Data.Rational.Base.d__'8851'__332
      (coe
         MAlonzo.Code.Ledger.Prelude.Numeric.UnitInterval.d_fromUnitInterval_72
         (coe v1))
      (coe du_z0_3480 v0 erased)
-- Ledger.Dijkstra.Specification.Rewards._.rewardℚ
d_rewardℚ_3490 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3116 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_rewardℚ_3490 ~v0 ~v1 v2 v3 v4 v5 = du_rewardℚ_3490 v2 v3 v4 v5
du_rewardℚ_3490 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_rewardℚ_3490 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.Rational.Base.d__'42'__276
      (coe
         MAlonzo.Code.Data.Rational.Base.du__'247'__312
         (coe MAlonzo.Code.Data.Rational.Literals.d_fromℤ_6 (coe v1))
         (coe du_1'43'a0_3474 (coe v0)))
      (coe
         MAlonzo.Code.Data.Rational.Base.d__'43'__270
         (coe du_stake''_3482 (coe v0) (coe v2))
         (coe
            MAlonzo.Code.Data.Rational.Base.du__'247'__312
            (coe
               MAlonzo.Code.Data.Rational.Base.d__'42'__276
               (coe
                  MAlonzo.Code.Data.Rational.Base.d__'42'__276
                  (coe du_pledge''_3484 (coe v0) (coe v3)) (coe du_a0_3472 (coe v0)))
               (coe
                  MAlonzo.Code.Data.Rational.Base.d__'45'__282
                  (coe du_stake''_3482 (coe v0) (coe v2))
                  (coe
                     MAlonzo.Code.Data.Rational.Base.du__'247'__312
                     (coe
                        MAlonzo.Code.Data.Rational.Base.d__'42'__276
                        (coe du_pledge''_3484 (coe v0) (coe v3))
                        (coe
                           MAlonzo.Code.Data.Rational.Base.d__'45'__282
                           (coe du_z0_3480 v0 erased)
                           (coe du_stake''_3482 (coe v0) (coe v2))))
                     (coe du_z0_3480 v0 erased))))
            (coe du_z0_3480 v0 erased)))
-- Ledger.Dijkstra.Specification.Rewards._.rewardℕ
d_rewardℕ_3492 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3116 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 -> Integer
d_rewardℕ_3492 ~v0 ~v1 v2 v3 v4 v5 = du_rewardℕ_3492 v2 v3 v4 v5
du_rewardℕ_3492 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 -> Integer
du_rewardℕ_3492 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Prelude.d_posPart_58
      (coe
         MAlonzo.Code.Data.Rational.Base.d_floor_346
         (coe du_rewardℚ_3490 (coe v0) (coe v1) (coe v2) (coe v3)))
-- Ledger.Dijkstra.Specification.Rewards.mkApparentPerformance
d_mkApparentPerformance_3494 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3116 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  Integer -> Integer -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_mkApparentPerformance_3494 ~v0 ~v1 v2 v3 v4
  = du_mkApparentPerformance_3494 v2 v3 v4
du_mkApparentPerformance_3494 ::
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  Integer -> Integer -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_mkApparentPerformance_3494 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Prelude.d__'247''8320'__34
      (coe du_ratioBlocks_3510 (coe v1) (coe v2))
      (coe
         MAlonzo.Code.Ledger.Prelude.Numeric.UnitInterval.d_fromUnitInterval_72
         (coe v0))
-- Ledger.Dijkstra.Specification.Rewards._.ratioBlocks
d_ratioBlocks_3510 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3116 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_ratioBlocks_3510 ~v0 ~v1 ~v2 v3 v4 ~v5
  = du_ratioBlocks_3510 v3 v4
du_ratioBlocks_3510 ::
  Integer -> Integer -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_ratioBlocks_3510 v0 v1
  = coe
      MAlonzo.Code.Data.Rational.Base.du__'47'__156 (coe v0)
      (coe
         MAlonzo.Code.Data.Nat.Base.d__'8852'__208 (coe (1 :: Integer))
         (coe v1))
-- Ledger.Dijkstra.Specification.Rewards.rewardOwners
d_rewardOwners_3512 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3116 ->
  Integer ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_StakePoolParams_1260 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 -> Integer
d_rewardOwners_3512 ~v0 ~v1 v2 v3 v4 v5
  = du_rewardOwners_3512 v2 v3 v4 v5
du_rewardOwners_3512 ::
  Integer ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_StakePoolParams_1260 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 -> Integer
du_rewardOwners_3512 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Class.ToBool.du_if_then_else__38
      (coe MAlonzo.Code.Class.ToBool.du_ToBool'45''8263'_106) erased
      (coe
         MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_34 v0
         (coe du_cost_3528 (coe v1)))
      (coe (\ v4 -> v0))
      (coe
         (\ v4 ->
            addInt
              (coe du_cost_3528 (coe v1))
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
                             (coe du_cost_3528 (coe v1))))
                       (coe
                          MAlonzo.Code.Data.Rational.Base.d__'43'__270
                          (coe du_margin_3530 (coe v1))
                          (coe
                             MAlonzo.Code.Data.Rational.Base.d__'42'__276
                             (coe
                                MAlonzo.Code.Data.Rational.Base.d__'45'__282
                                (coe
                                   MAlonzo.Code.Agda.Builtin.FromNat.d_fromNat_30
                                   MAlonzo.Code.Prelude.d_Number'45'ℚ_36 (1 :: Integer)
                                   (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                (coe du_margin_3530 (coe v1)))
                             (coe du_ratioStake_3526 (coe v2) (coe v3)))))))))
-- Ledger.Dijkstra.Specification.Rewards._.ratioStake
d_ratioStake_3526 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3116 ->
  Integer ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_StakePoolParams_1260 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_ratioStake_3526 ~v0 ~v1 ~v2 ~v3 v4 v5 = du_ratioStake_3526 v4 v5
du_ratioStake_3526 ::
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_ratioStake_3526 v0 v1
  = coe
      MAlonzo.Code.Ledger.Prelude.d__'247''8320'__34
      (coe
         MAlonzo.Code.Ledger.Prelude.Numeric.UnitInterval.d_fromUnitInterval_72
         (coe v0))
      (coe
         MAlonzo.Code.Ledger.Prelude.Numeric.UnitInterval.d_fromUnitInterval_72
         (coe v1))
-- Ledger.Dijkstra.Specification.Rewards._.cost
d_cost_3528 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3116 ->
  Integer ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_StakePoolParams_1260 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 -> Integer
d_cost_3528 ~v0 ~v1 ~v2 v3 ~v4 ~v5 = du_cost_3528 v3
du_cost_3528 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_StakePoolParams_1260 ->
  Integer
du_cost_3528 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_cost_1274
      (coe v0)
-- Ledger.Dijkstra.Specification.Rewards._.margin
d_margin_3530 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3116 ->
  Integer ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_StakePoolParams_1260 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_margin_3530 ~v0 ~v1 ~v2 v3 ~v4 ~v5 = du_margin_3530 v3
du_margin_3530 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_StakePoolParams_1260 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_margin_3530 v0
  = coe
      MAlonzo.Code.Ledger.Prelude.Numeric.UnitInterval.d_fromUnitInterval_72
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_margin_1276
         (coe v0))
-- Ledger.Dijkstra.Specification.Rewards.rewardMember
d_rewardMember_3532 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3116 ->
  Integer ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_StakePoolParams_1260 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 -> Integer
d_rewardMember_3532 ~v0 ~v1 v2 v3 v4 v5
  = du_rewardMember_3532 v2 v3 v4 v5
du_rewardMember_3532 ::
  Integer ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_StakePoolParams_1260 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 -> Integer
du_rewardMember_3532 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Class.ToBool.du_if_then_else__38
      (coe MAlonzo.Code.Class.ToBool.du_ToBool'45''8263'_106) erased
      (coe
         MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_34 v0
         (coe du_cost_3548 (coe v1)))
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
                          (coe du_cost_3548 (coe v1))))
                    (coe
                       MAlonzo.Code.Data.Rational.Base.d__'42'__276
                       (coe
                          MAlonzo.Code.Data.Rational.Base.d__'45'__282
                          (coe
                             MAlonzo.Code.Agda.Builtin.FromNat.d_fromNat_30
                             MAlonzo.Code.Prelude.d_Number'45'ℚ_36 (1 :: Integer)
                             (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                          (coe du_margin_3550 (coe v1)))
                       (coe du_ratioStake_3546 (coe v2) (coe v3)))))))
-- Ledger.Dijkstra.Specification.Rewards._.ratioStake
d_ratioStake_3546 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3116 ->
  Integer ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_StakePoolParams_1260 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_ratioStake_3546 ~v0 ~v1 ~v2 ~v3 v4 v5 = du_ratioStake_3546 v4 v5
du_ratioStake_3546 ::
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_ratioStake_3546 v0 v1
  = coe
      MAlonzo.Code.Ledger.Prelude.d__'247''8320'__34
      (coe
         MAlonzo.Code.Ledger.Prelude.Numeric.UnitInterval.d_fromUnitInterval_72
         (coe v0))
      (coe
         MAlonzo.Code.Ledger.Prelude.Numeric.UnitInterval.d_fromUnitInterval_72
         (coe v1))
-- Ledger.Dijkstra.Specification.Rewards._.cost
d_cost_3548 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3116 ->
  Integer ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_StakePoolParams_1260 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 -> Integer
d_cost_3548 ~v0 ~v1 ~v2 v3 ~v4 ~v5 = du_cost_3548 v3
du_cost_3548 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_StakePoolParams_1260 ->
  Integer
du_cost_3548 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_cost_1274
      (coe v0)
-- Ledger.Dijkstra.Specification.Rewards._.margin
d_margin_3550 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3116 ->
  Integer ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_StakePoolParams_1260 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_margin_3550 ~v0 ~v1 ~v2 v3 ~v4 ~v5 = du_margin_3550 v3
du_margin_3550 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_StakePoolParams_1260 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_margin_3550 v0
  = coe
      MAlonzo.Code.Ledger.Prelude.Numeric.UnitInterval.d_fromUnitInterval_72
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_margin_1276
         (coe v0))
-- Ledger.Dijkstra.Specification.Rewards.rewardOnePool
d_rewardOnePool_3552 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3116 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_StakePoolParams_1260 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewardOnePool_3552 v0 ~v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
  = du_rewardOnePool_3552 v0 v2 v3 v4 v5 v6 v7 v8 v9 v10
du_rewardOnePool_3552 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_StakePoolParams_1260 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_rewardOnePool_3552 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9
  = coe
      MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__582
      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
         (coe
            MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                  (coe v0))))
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
               (coe v0))))
      (coe
         du_memberRewards_3596 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
         (coe v5) (coe v6) (coe v7) (coe v8) (coe v9))
      (coe
         du_ownersRewards_3600 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
         (coe v5) (coe v6) (coe v7) (coe v8) (coe v9))
-- Ledger.Dijkstra.Specification.Rewards._.mkRelativeStake
d_mkRelativeStake_3576 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3116 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_StakePoolParams_1260 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  Integer ->
  Integer -> MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_mkRelativeStake_3576 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 v10
                       v11
  = du_mkRelativeStake_3576 v10 v11
du_mkRelativeStake_3576 ::
  Integer ->
  Integer -> MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
du_mkRelativeStake_3576 v0 v1
  = coe
      MAlonzo.Code.Ledger.Prelude.Numeric.UnitInterval.d_clamp_118
      (coe
         MAlonzo.Code.Ledger.Prelude.d__'47''8320'__26 (coe v1) (coe v0))
-- Ledger.Dijkstra.Specification.Rewards._.owners
d_owners_3580 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3116 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_StakePoolParams_1260 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  Integer ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_owners_3580 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 ~v7 ~v8 ~v9 ~v10
  = du_owners_3580 v6
du_owners_3580 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_StakePoolParams_1260 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
du_owners_3580 v0
  = coe
      MAlonzo.Code.Axiom.Set.du_map_426
      (MAlonzo.Code.Axiom.Set.d_th_1516
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Address.C_KeyHashObj_22)
      (MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_owners_1272
         (coe v0))
-- Ledger.Dijkstra.Specification.Rewards._.ownerStake
d_ownerStake_3582 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3116 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_StakePoolParams_1260 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  Integer -> Integer
d_ownerStake_3582 v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 ~v8 ~v9 ~v10
  = du_ownerStake_3582 v0 v6 v7
du_ownerStake_3582 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_StakePoolParams_1260 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_ownerStake_3582 v0 v1 v2
  = coe
      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1446
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                  (coe v0))))
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
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
               MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                  (coe
                     MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                        (coe v0))))
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                     (coe v0)))))
         (coe v2) (coe du_owners_3580 (coe v1)))
-- Ledger.Dijkstra.Specification.Rewards._.pledge
d_pledge_3584 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3116 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_StakePoolParams_1260 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  Integer -> Integer
d_pledge_3584 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 ~v7 ~v8 ~v9 ~v10
  = du_pledge_3584 v6
du_pledge_3584 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_StakePoolParams_1260 ->
  Integer
du_pledge_3584 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_pledge_1278
      (coe v0)
-- Ledger.Dijkstra.Specification.Rewards._.maxP
d_maxP_3586 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3116 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_StakePoolParams_1260 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  Integer -> Integer
d_maxP_3586 v0 ~v1 v2 v3 ~v4 ~v5 v6 v7 v8 ~v9 v10
  = du_maxP_3586 v0 v2 v3 v6 v7 v8 v10
du_maxP_3586 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_StakePoolParams_1260 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  Integer -> Integer
du_maxP_3586 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Class.ToBool.du_if_then_else__38
      (coe MAlonzo.Code.Class.ToBool.du_ToBool'45''8263'_106) erased
      (coe
         MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_34
         (coe du_pledge_3584 (coe v3))
         (coe du_ownerStake_3582 (coe v0) (coe v3) (coe v4)))
      (coe
         (\ v7 ->
            coe
              du_maxPool_3458 (coe v1) (coe v2) (coe v5)
              (coe
                 du_mkRelativeStake_3576 (coe v6) (coe du_pledge_3584 (coe v3)))))
      (coe
         (\ v7 ->
            coe
              MAlonzo.Code.Agda.Builtin.FromNat.d_fromNat_30
              MAlonzo.Code.Prelude.d_Number'45'ℕ_32 (0 :: Integer)
              (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
-- Ledger.Dijkstra.Specification.Rewards._.poolReward
d_poolReward_3588 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3116 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_StakePoolParams_1260 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  Integer -> Integer
d_poolReward_3588 v0 ~v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
  = du_poolReward_3588 v0 v2 v3 v4 v5 v6 v7 v8 v9 v10
du_poolReward_3588 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_StakePoolParams_1260 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  Integer -> Integer
du_poolReward_3588 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9
  = coe
      MAlonzo.Code.Prelude.d_posPart_58
      (coe
         MAlonzo.Code.Data.Rational.Base.d_floor_346
         (coe
            MAlonzo.Code.Data.Rational.Base.d__'42'__276
            (coe du_mkApparentPerformance_3494 (coe v8) (coe v3) (coe v4))
            (coe
               MAlonzo.Code.Data.Rational.Literals.d_fromℤ_6
               (coe
                  du_maxP_3586 (coe v0) (coe v1) (coe v2) (coe v5) (coe v6) (coe v7)
                  (coe v9)))))
-- Ledger.Dijkstra.Specification.Rewards._.stakeMap[_]
d_stakeMap'91'_'93'_3592 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3116 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_StakePoolParams_1260 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  Integer ->
  (Integer ->
   MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_StakePoolParams_1260 ->
   MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
   MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 -> Integer) ->
  Integer ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 -> Integer
d_stakeMap'91'_'93'_3592 v0 ~v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
  = du_stakeMap'91'_'93'_3592 v0 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
du_stakeMap'91'_'93'_3592 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_StakePoolParams_1260 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  Integer ->
  (Integer ->
   MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_StakePoolParams_1260 ->
   MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
   MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 -> Integer) ->
  Integer ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 -> Integer
du_stakeMap'91'_'93'_3592 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
  = coe
      v10
      (coe
         du_poolReward_3588 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
         (coe v5) (coe v6) (coe v7) (coe v8) (coe v9))
      v5 (coe du_mkRelativeStake_3576 (coe v9) (coe v11))
-- Ledger.Dijkstra.Specification.Rewards._.memberRewards
d_memberRewards_3596 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3116 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_StakePoolParams_1260 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_memberRewards_3596 v0 ~v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
  = du_memberRewards_3596 v0 v2 v3 v4 v5 v6 v7 v8 v9 v10
du_memberRewards_3596 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_StakePoolParams_1260 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_memberRewards_3596 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_mapValues_976
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1516
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe
         (\ v10 ->
            coe
              du_stakeMap'91'_'93'_3592 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9
              (coe du_rewardMember_3532) v10 v7))
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
               MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                  (coe
                     MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                        (coe v0))))
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                     (coe v0)))))
         (coe v6) (coe du_owners_3580 (coe v5)))
-- Ledger.Dijkstra.Specification.Rewards._.ownersRewards
d_ownersRewards_3600 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3116 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_StakePoolParams_1260 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ownersRewards_3600 v0 ~v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
  = du_ownersRewards_3600 v0 v2 v3 v4 v5 v6 v7 v8 v9 v10
du_ownersRewards_3600 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_StakePoolParams_1260 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_ownersRewards_3600 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_844
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1516
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_rewardAccount_1280
            (coe v5))
         (coe
            du_stakeMap'91'_'93'_3592 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9
            (coe du_rewardOwners_3512)
            (coe du_ownerStake_3582 (coe v0) (coe v5) (coe v6)) v7))
-- Ledger.Dijkstra.Specification.Rewards.poolStake
d_poolStake_3602 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3116 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_poolStake_3602 v0 ~v1 v2 v3 v4 = du_poolStake_3602 v0 v2 v3 v4
du_poolStake_3602 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_poolStake_3602 v0 v1 v2 v3
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
            MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                     (coe v0))))
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
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
                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                        (coe v0)))))
            (coe v2)
            (coe
               MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_480
               (MAlonzo.Code.Axiom.Set.d_th_1516
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
               erased v1)))
-- Ledger.Dijkstra.Specification.Rewards.BlocksMade
d_BlocksMade_3610 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3116 ->
  ()
d_BlocksMade_3610 = erased
-- Ledger.Dijkstra.Specification.Rewards.uncurryᵐ
d_uncurry'7504'_3622 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3116 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_uncurry'7504'_3622 ~v0 ~v1 ~v2 ~v3 ~v4 v5 v6 v7
  = du_uncurry'7504'_3622 v5 v6 v7
du_uncurry'7504'_3622 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_uncurry'7504'_3622 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_mapFromPartialFun_1540
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1516
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe du_lookup''_3636 (coe v0) (coe v1) (coe v2))
      (coe du_domain''_3648 (coe v2))
-- Ledger.Dijkstra.Specification.Rewards._.lookup'
d_lookup''_3636 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3116 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe AgdaAny
d_lookup''_3636 ~v0 ~v1 ~v2 ~v3 ~v4 v5 v6 v7 v8
  = du_lookup''_3636 v5 v6 v7 v8
du_lookup''_3636 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe AgdaAny
du_lookup''_3636 v0 v1 v2 v3
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
-- Ledger.Dijkstra.Specification.Rewards._.joinˢ
d_join'738'_3646 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3116 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  () -> [[AgdaAny]] -> [AgdaAny]
d_join'738'_3646 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8
  = du_join'738'_3646
du_join'738'_3646 :: [[AgdaAny]] -> [AgdaAny]
du_join'738'_3646
  = coe
      MAlonzo.Code.Axiom.Set.du_concatMap'738'_536
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1516
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe (\ v0 -> v0))
-- Ledger.Dijkstra.Specification.Rewards._.domain'
d_domain''_3648 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3116 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_domain''_3648 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_domain''_3648 v7
du_domain''_3648 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_domain''_3648 v0
  = coe
      du_join'738'_3646
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
-- Ledger.Dijkstra.Specification.Rewards.reward
d_reward_3658 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3116 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_reward_3658 v0 ~v1 v2 v3 v4 v5 v6 v7 v8
  = du_reward_3658 v0 v2 v3 v4 v5 v6 v7 v8
du_reward_3658 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_reward_3658 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      du_rewards_3720 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
      (coe v5) (coe v6) (coe v7)
-- Ledger.Dijkstra.Specification.Rewards._.active
d_active_3678 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3116 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer -> Integer
d_active_3678 v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 ~v7 ~v8
  = du_active_3678 v0 v6
du_active_3678 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_active_3678 v0 v1
  = coe
      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1446
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                  (coe v0))))
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
               (coe v0))))
      (coe
         MAlonzo.Code.Class.DecEq.Core.C_constructor_32
         (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2796))
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
         (coe
            MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
      (coe (\ v2 -> v2)) (coe v1)
-- Ledger.Dijkstra.Specification.Rewards._.Σ_/total
d_Σ_'47'total_3682 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3116 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_Σ_'47'total_3682 v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8 v9
  = du_Σ_'47'total_3682 v0 v8 v9
du_Σ_'47'total_3682 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
du_Σ_'47'total_3682 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Prelude.Numeric.UnitInterval.d_clamp_118
      (coe
         MAlonzo.Code.Ledger.Prelude.d__'47''8320'__26
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1446
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                  (coe
                     MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                        (coe v0))))
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                     (coe v0))))
            (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
            (coe
               MAlonzo.Code.Ledger.Prelude.Instances.d_CommMonoid'45'ℕ'45''43'_6)
            (coe (\ v3 -> v3)) (coe v2))
         (coe v1))
-- Ledger.Dijkstra.Specification.Rewards._.Σ_/active
d_Σ_'47'active_3688 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3116 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_Σ_'47'active_3688 v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 ~v7 ~v8 v9
  = du_Σ_'47'active_3688 v0 v6 v9
du_Σ_'47'active_3688 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
du_Σ_'47'active_3688 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Prelude.Numeric.UnitInterval.d_clamp_118
      (coe
         MAlonzo.Code.Ledger.Prelude.d__'47''8320'__26
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1446
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                  (coe
                     MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                        (coe v0))))
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                     (coe v0))))
            (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
            (coe
               MAlonzo.Code.Ledger.Prelude.Instances.d_CommMonoid'45'ℕ'45''43'_6)
            (coe (\ v3 -> v3)) (coe v2))
         (coe du_active_3678 (coe v0) (coe v1)))
-- Ledger.Dijkstra.Specification.Rewards._.N
d_N_3694 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3116 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer -> Integer
d_N_3694 v0 ~v1 ~v2 v3 ~v4 ~v5 ~v6 ~v7 ~v8 = du_N_3694 v0 v3
du_N_3694 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_N_3694 v0 v1
  = coe
      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1446
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
               (coe v0))))
      (coe
         MAlonzo.Code.Class.DecEq.Core.C_constructor_32
         (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2796))
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
         (coe
            MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
      (coe (\ v2 -> v2)) (coe v1)
-- Ledger.Dijkstra.Specification.Rewards._.mkPoolData
d_mkPoolData_3698 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3116 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_StakePoolParams_1260 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_mkPoolData_3698 v0 ~v1 ~v2 v3 ~v4 ~v5 v6 v7 ~v8 v9 v10
  = du_mkPoolData_3698 v0 v3 v6 v7 v9 v10
du_mkPoolData_3698 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_StakePoolParams_1260 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_mkPoolData_3698 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Class.Functor.Core.du_fmap_22
      MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6 () erased
      () erased
      (\ v6 ->
         coe
           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v6)
           (coe
              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v5)
              (coe du_poolStake_3602 (coe v0) (coe v4) (coe v3) (coe v2))))
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
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
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
-- Ledger.Dijkstra.Specification.Rewards._.pdata
d_pdata_3706 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3116 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pdata_3706 v0 ~v1 ~v2 v3 ~v4 v5 v6 v7 ~v8
  = du_pdata_3706 v0 v3 v5 v6 v7
du_pdata_3706 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_pdata_3706 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_mapMaybeWithKey'7504'_1532
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1516
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe du_mkPoolData_3698 (coe v0) (coe v1) (coe v3) (coe v4))
      (coe v2)
-- Ledger.Dijkstra.Specification.Rewards._.f
d_f_3708 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3116 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_f_3708 v0 ~v1 v2 v3 v4 ~v5 v6 ~v7 v8 v9
  = du_f_3708 v0 v2 v3 v4 v6 v8 v9
du_f_3708 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_f_3708 v0 v1 v2 v3 v4 v5 v6
  = coe
      du_rewardOnePool_3552 (coe v0) (coe v1) (coe v3)
      (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6))
      (coe du_N_3694 (coe v0) (coe v2))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
         (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v6)))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
         (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v6)))
      (coe
         du_Σ_'47'total_3682 (coe v0) (coe v5)
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
            (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v6))))
      (coe
         du_Σ_'47'active_3688 (coe v0) (coe v4)
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
            (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v6))))
      (coe v5)
-- Ledger.Dijkstra.Specification.Rewards._.results
d_results_3718 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3116 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_results_3718 v0 ~v1 v2 v3 v4 v5 v6 v7 v8
  = du_results_3718 v0 v2 v3 v4 v5 v6 v7 v8
du_results_3718 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_results_3718 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      du_uncurry'7504'_3622
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
               (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                  (coe v0))))
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
               (coe v0))))
      (coe
         MAlonzo.Code.Axiom.Set.Map.du_mapValues_976
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1516
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe
            du_f_3708 (coe v0) (coe v1) (coe v2) (coe v3) (coe v5) (coe v7))
         (coe du_pdata_3706 (coe v0) (coe v2) (coe v4) (coe v5) (coe v6)))
-- Ledger.Dijkstra.Specification.Rewards._.rewards
d_rewards_3720 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3116 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_3720 v0 ~v1 v2 v3 v4 v5 v6 v7 v8
  = du_rewards_3720 v0 v2 v3 v4 v5 v6 v7 v8
du_rewards_3720 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_rewards_3720 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_aggregateBy_1488
      (coe
         MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_182
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                  (coe v0))))
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                     (coe v0))))
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                  (coe v0)))))
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
         (coe
            MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                  (coe v0))))
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
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
               du_results_3718 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
               (coe v5) (coe v6) (coe v7))))
      (coe
         du_results_3718 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
         (coe v5) (coe v6) (coe v7))
-- Ledger.Dijkstra.Specification.Rewards.RewardUpdate
d_RewardUpdate_3728 a0 a1 = ()
data T_RewardUpdate_3728
  = C_constructor_3762 Integer Integer Integer
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                       MAlonzo.Code.Data.Integer.Base.T__'8804'__26
                       MAlonzo.Code.Data.Integer.Base.T__'8804'__26
-- Ledger.Dijkstra.Specification.Rewards.RewardUpdate.Δt
d_Δt_3746 :: T_RewardUpdate_3728 -> Integer
d_Δt_3746 v0
  = case coe v0 of
      C_constructor_3762 v1 v2 v3 v4 v6 v7 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Rewards.RewardUpdate.Δr
d_Δr_3748 :: T_RewardUpdate_3728 -> Integer
d_Δr_3748 v0
  = case coe v0 of
      C_constructor_3762 v1 v2 v3 v4 v6 v7 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Rewards.RewardUpdate.Δf
d_Δf_3750 :: T_RewardUpdate_3728 -> Integer
d_Δf_3750 v0
  = case coe v0 of
      C_constructor_3762 v1 v2 v3 v4 v6 v7 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Rewards.RewardUpdate.rs
d_rs_3752 ::
  T_RewardUpdate_3728 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rs_3752 v0
  = case coe v0 of
      C_constructor_3762 v1 v2 v3 v4 v6 v7 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Rewards.RewardUpdate.flowConservation
d_flowConservation_3756 ::
  T_RewardUpdate_3728 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_flowConservation_3756 = erased
-- Ledger.Dijkstra.Specification.Rewards.RewardUpdate.Δt-nonnegative
d_Δt'45'nonnegative_3758 ::
  T_RewardUpdate_3728 -> MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_Δt'45'nonnegative_3758 v0
  = case coe v0 of
      C_constructor_3762 v1 v2 v3 v4 v6 v7 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Rewards.RewardUpdate.Δf-nonpositive
d_Δf'45'nonpositive_3760 ::
  T_RewardUpdate_3728 -> MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_Δf'45'nonpositive_3760 v0
  = case coe v0 of
      C_constructor_3762 v1 v2 v3 v4 v6 v7 -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Rewards.Snapshot
d_Snapshot_3764 a0 a1 = ()
data T_Snapshot_3764
  = C_constructor_3778 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Dijkstra.Specification.Rewards.Snapshot.stake
d_stake_3772 ::
  T_Snapshot_3764 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stake_3772 v0
  = case coe v0 of
      C_constructor_3778 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Rewards.Snapshot.delegations
d_delegations_3774 ::
  T_Snapshot_3764 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_delegations_3774 v0
  = case coe v0 of
      C_constructor_3778 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Rewards.Snapshot.pools
d_pools_3776 ::
  T_Snapshot_3764 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_3776 v0
  = case coe v0 of
      C_constructor_3778 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Rewards.HasStake-Snapshot
d_HasStake'45'Snapshot_3780 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3116 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasStake_1606
d_HasStake'45'Snapshot_3780 ~v0 ~v1 = du_HasStake'45'Snapshot_3780
du_HasStake'45'Snapshot_3780 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasStake_1606
du_HasStake'45'Snapshot_3780
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.C_constructor_1616
      (coe (\ v0 -> d_stake_3772 (coe v0)))
-- Ledger.Dijkstra.Specification.Rewards.HasStakeDelegs-Snapshot
d_HasStakeDelegs'45'Snapshot_3782 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3116 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasStakeDelegs_1626
d_HasStakeDelegs'45'Snapshot_3782 ~v0 ~v1
  = du_HasStakeDelegs'45'Snapshot_3782
du_HasStakeDelegs'45'Snapshot_3782 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasStakeDelegs_1626
du_HasStakeDelegs'45'Snapshot_3782
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.C_constructor_1636
      (coe (\ v0 -> d_delegations_3774 (coe v0)))
-- Ledger.Dijkstra.Specification.Rewards.HasPools-Snapshot
d_HasPools'45'Snapshot_3784 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3116 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasPools_1546
d_HasPools'45'Snapshot_3784 ~v0 ~v1 = du_HasPools'45'Snapshot_3784
du_HasPools'45'Snapshot_3784 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasPools_1546
du_HasPools'45'Snapshot_3784
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.C_constructor_1556
      (coe (\ v0 -> d_pools_3776 (coe v0)))
-- Ledger.Dijkstra.Specification.Rewards.HasCast-Snapshot
d_HasCast'45'Snapshot_3786 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3116 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'Snapshot_3786 ~v0 ~v1 = du_HasCast'45'Snapshot_3786
du_HasCast'45'Snapshot_3786 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'Snapshot_3786
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
                                 (3764 :: Integer) (2606419848528003737 :: Integer)
                                 "Ledger.Dijkstra.Specification.Rewards.Snapshot"
                                 (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                     (coe
                        MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                        (coe ("r" :: Data.Text.Text))
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                           (coe
                              (MAlonzo.RTE.QName
                                 (2820 :: Integer) (2606419848528003737 :: Integer)
                                 "Ledger.Dijkstra.Specification.Rewards._.Stake"
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
                                    (3764 :: Integer) (2606419848528003737 :: Integer)
                                    "Ledger.Dijkstra.Specification.Rewards.Snapshot"
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
                                    (2822 :: Integer) (2606419848528003737 :: Integer)
                                    "Ledger.Dijkstra.Specification.Rewards._.StakeDelegs"
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
                                       (3764 :: Integer) (2606419848528003737 :: Integer)
                                       "Ledger.Dijkstra.Specification.Rewards.Snapshot"
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
                                       (2808 :: Integer) (2606419848528003737 :: Integer)
                                       "Ledger.Dijkstra.Specification.Rewards._.Pools"
                                       (MAlonzo.RTE.Fixity
                                          MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                     (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
         (coe C_constructor_3778))
-- Ledger.Dijkstra.Specification.Rewards.getStakeCred
d_getStakeCred_3788 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3116 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_getStakeCred_3788 ~v0 ~v1 v2 = du_getStakeCred_3788 v2
du_getStakeCred_3788 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
du_getStakeCred_3788 v0
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v1 v2
        -> case coe v2 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v3 v4
               -> coe
                    seq (coe v4)
                    (coe
                       MAlonzo.Code.Ledger.Core.Specification.Address.du_stakeCred_264
                       (coe v1))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Rewards.stakeDistr
d_stakeDistr_3792 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3116 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DState_1352 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_PState_1372 ->
  T_Snapshot_3764
d_stakeDistr_3792 v0 ~v1 v2 v3 v4 = du_stakeDistr_3792 v0 v2 v3 v4
du_stakeDistr_3792 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DState_1352 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_PState_1372 ->
  T_Snapshot_3764
du_stakeDistr_3792 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
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
                                    (3764 :: Integer) (2606419848528003737 :: Integer)
                                    "Ledger.Dijkstra.Specification.Rewards.Snapshot"
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
                                    (2820 :: Integer) (2606419848528003737 :: Integer)
                                    "Ledger.Dijkstra.Specification.Rewards._.Stake"
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
                                       (3764 :: Integer) (2606419848528003737 :: Integer)
                                       "Ledger.Dijkstra.Specification.Rewards.Snapshot"
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
                                       (2822 :: Integer) (2606419848528003737 :: Integer)
                                       "Ledger.Dijkstra.Specification.Rewards._.StakeDelegs"
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
                                          (3764 :: Integer) (2606419848528003737 :: Integer)
                                          "Ledger.Dijkstra.Specification.Rewards.Snapshot"
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
                                          (2808 :: Integer) (2606419848528003737 :: Integer)
                                          "Ledger.Dijkstra.Specification.Rewards._.Pools"
                                          (MAlonzo.RTE.Fixity
                                             MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                    (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                        (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
            (coe C_constructor_3778)))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe du_activeStake_3816 (coe v0) (coe v1) (coe v2) (coe v3))
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_stakeDelegs_1364
               (coe v2))
            (coe du_pools_3804 (coe v3))))
-- Ledger.Dijkstra.Specification.Rewards._.pools
d_pools_3804 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3116 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DState_1352 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_PState_1372 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_3804 ~v0 ~v1 ~v2 ~v3 v4 = du_pools_3804 v4
du_pools_3804 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_PState_1372 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_pools_3804 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_pools_1382
      (coe v0)
-- Ledger.Dijkstra.Specification.Rewards._.utxoBalance
d_utxoBalance_3806 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3116 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DState_1352 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_PState_1372 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Integer
d_utxoBalance_3806 v0 ~v1 v2 ~v3 ~v4 v5
  = du_utxoBalance_3806 v0 v2 v5
du_utxoBalance_3806 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Integer
du_utxoBalance_3806 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.du_cbalance_3350
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
                          MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                          (coe
                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                             (coe
                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                (coe
                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                   (coe v0))))
                          (coe
                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                             (coe
                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                (coe v0))))))
                 (coe du_getStakeCred_3788 (coe v3))
                 (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v2)))))
-- Ledger.Dijkstra.Specification.Rewards._.activeDelegs
d_activeDelegs_3812 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3116 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DState_1352 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_PState_1372 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_activeDelegs_3812 v0 ~v1 ~v2 v3 v4
  = du_activeDelegs_3812 v0 v3 v4
du_activeDelegs_3812 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DState_1352 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_PState_1372 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_activeDelegs_3812 v0 v1 v2
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
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
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
               MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                  (coe
                     MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                        (coe v0))))
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                     (coe v0)))))
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_stakeDelegs_1364
            (coe v1))
         (coe
            MAlonzo.Code.Class.IsSet.du_dom_586
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1516
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_rewards_1366
               (coe v1))))
      (coe
         MAlonzo.Code.Class.IsSet.du_dom_586
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1516
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
         (coe du_pools_3804 (coe v2)))
-- Ledger.Dijkstra.Specification.Rewards._.activeRewards
d_activeRewards_3814 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3116 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DState_1352 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_PState_1372 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_activeRewards_3814 v0 ~v1 ~v2 v3 v4
  = du_activeRewards_3814 v0 v3 v4
du_activeRewards_3814 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DState_1352 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_PState_1372 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_activeRewards_3814 v0 v1 v2
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
            MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                     (coe v0))))
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                  (coe v0)))))
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_rewards_1366
         (coe v1))
      (coe
         MAlonzo.Code.Class.IsSet.du_dom_586
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1516
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
         (coe du_activeDelegs_3812 (coe v0) (coe v1) (coe v2)))
-- Ledger.Dijkstra.Specification.Rewards._.activeStake
d_activeStake_3816 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3116 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DState_1352 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_PState_1372 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_activeStake_3816 v0 ~v1 v2 v3 v4
  = du_activeStake_3816 v0 v2 v3 v4
du_activeStake_3816 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DState_1352 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_PState_1372 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_activeStake_3816 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_mapWithKey_1406
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1516
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe
         (\ v4 ->
            addInt (coe du_utxoBalance_3806 (coe v0) (coe v1) (coe v4))))
      (coe du_activeRewards_3814 (coe v0) (coe v2) (coe v3))
-- Ledger.Dijkstra.Specification.Rewards.Snapshots
d_Snapshots_3822 a0 a1 = ()
data T_Snapshots_3822
  = C_constructor_3840 T_Snapshot_3764 T_Snapshot_3764
                       T_Snapshot_3764 Integer
-- Ledger.Dijkstra.Specification.Rewards.Snapshots.mark
d_mark_3832 :: T_Snapshots_3822 -> T_Snapshot_3764
d_mark_3832 v0
  = case coe v0 of
      C_constructor_3840 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Rewards.Snapshots.set
d_set_3834 :: T_Snapshots_3822 -> T_Snapshot_3764
d_set_3834 v0
  = case coe v0 of
      C_constructor_3840 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Rewards.Snapshots.go
d_go_3836 :: T_Snapshots_3822 -> T_Snapshot_3764
d_go_3836 v0
  = case coe v0 of
      C_constructor_3840 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Rewards.Snapshots.feeSS
d_feeSS_3838 :: T_Snapshots_3822 -> Integer
d_feeSS_3838 v0
  = case coe v0 of
      C_constructor_3840 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Rewards.HasSnapshots
d_HasSnapshots_3846 a0 a1 a2 a3 = ()
newtype T_HasSnapshots_3846
  = C_constructor_3856 (AgdaAny -> T_Snapshots_3822)
-- Ledger.Dijkstra.Specification.Rewards.HasSnapshots.SnapshotsOf
d_SnapshotsOf_3854 ::
  T_HasSnapshots_3846 -> AgdaAny -> T_Snapshots_3822
d_SnapshotsOf_3854 v0
  = case coe v0 of
      C_constructor_3856 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Rewards._.SnapshotsOf
d_SnapshotsOf_3860 ::
  T_HasSnapshots_3846 -> AgdaAny -> T_Snapshots_3822
d_SnapshotsOf_3860 v0 = coe d_SnapshotsOf_3854 (coe v0)
-- Ledger.Dijkstra.Specification.Rewards.HasFees-Snapshots
d_HasFees'45'Snapshots_3862 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3116 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasFees_40
d_HasFees'45'Snapshots_3862 ~v0 ~v1 = du_HasFees'45'Snapshots_3862
du_HasFees'45'Snapshots_3862 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasFees_40
du_HasFees'45'Snapshots_3862
  = coe
      MAlonzo.Code.Ledger.Prelude.Base.C_constructor_50
      (coe (\ v0 -> d_feeSS_3838 (coe v0)))
-- Ledger.Dijkstra.Specification.Rewards.HasCast-Snapshots
d_HasCast'45'Snapshots_3864 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3116 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'Snapshots_3864 ~v0 ~v1 = du_HasCast'45'Snapshots_3864
du_HasCast'45'Snapshots_3864 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'Snapshots_3864
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
                                 (3822 :: Integer) (2606419848528003737 :: Integer)
                                 "Ledger.Dijkstra.Specification.Rewards.Snapshots"
                                 (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                     (coe
                        MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                        (coe ("r" :: Data.Text.Text))
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                           (coe
                              (MAlonzo.RTE.QName
                                 (3764 :: Integer) (2606419848528003737 :: Integer)
                                 "Ledger.Dijkstra.Specification.Rewards.Snapshot"
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
                                    (3822 :: Integer) (2606419848528003737 :: Integer)
                                    "Ledger.Dijkstra.Specification.Rewards.Snapshots"
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
                                    (3764 :: Integer) (2606419848528003737 :: Integer)
                                    "Ledger.Dijkstra.Specification.Rewards.Snapshot"
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
                                       (3822 :: Integer) (2606419848528003737 :: Integer)
                                       "Ledger.Dijkstra.Specification.Rewards.Snapshots"
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
                                       (3764 :: Integer) (2606419848528003737 :: Integer)
                                       "Ledger.Dijkstra.Specification.Rewards.Snapshot"
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
                                          (3822 :: Integer) (2606419848528003737 :: Integer)
                                          "Ledger.Dijkstra.Specification.Rewards.Snapshots"
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
         (coe C_constructor_3840))
-- Ledger.Dijkstra.Specification.Rewards._⊢_⇀⦇_,SNAP⦈_
d__'8866'_'8640''10631'_'44'SNAP'10632'__3876 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'SNAP'10632'__3876 = C_SNAP_3880
