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

module MAlonzo.Code.Ledger.Fees where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Nat
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Data.Integer.Base
import qualified MAlonzo.Code.Data.Irrelevant
import qualified MAlonzo.Code.Data.Nat.Base
import qualified MAlonzo.Code.Data.Nat.Properties
import qualified MAlonzo.Code.Data.Rational.Base
import qualified MAlonzo.Code.Induction.WellFounded
import qualified MAlonzo.Code.Ledger.PParams
import qualified MAlonzo.Code.Ledger.Transaction
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core

-- _.PParams
d_PParams_222 a0 = ()
-- _.PParams.Emax
d_Emax_896 :: MAlonzo.Code.Ledger.PParams.T_PParams_242 -> AgdaAny
d_Emax_896 v0 = coe MAlonzo.Code.Ledger.PParams.d_Emax_350 (coe v0)
-- _.PParams.a
d_a_898 :: MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_a_898 v0 = coe MAlonzo.Code.Ledger.PParams.d_a_326 (coe v0)
-- _.PParams.a0
d_a0_900 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_900 v0 = coe MAlonzo.Code.Ledger.PParams.d_a0_354 (coe v0)
-- _.PParams.b
d_b_902 :: MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_b_902 v0 = coe MAlonzo.Code.Ledger.PParams.d_b_328 (coe v0)
-- _.PParams.ccMaxTermLength
d_ccMaxTermLength_904 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_ccMaxTermLength_904 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMaxTermLength_366 (coe v0)
-- _.PParams.ccMinSize
d_ccMinSize_906 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_ccMinSize_906 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMinSize_364 (coe v0)
-- _.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_908 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_coinsPerUTxOByte_908 v0
  = coe MAlonzo.Code.Ledger.PParams.d_coinsPerUTxOByte_334 (coe v0)
-- _.PParams.collateralPercentage
d_collateralPercentage_910 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_collateralPercentage_910 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_collateralPercentage_356 (coe v0)
-- _.PParams.costmdls
d_costmdls_912 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> AgdaAny
d_costmdls_912 v0
  = coe MAlonzo.Code.Ledger.PParams.d_costmdls_358 (coe v0)
-- _.PParams.drepActivity
d_drepActivity_914 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> AgdaAny
d_drepActivity_914 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepActivity_374 (coe v0)
-- _.PParams.drepDeposit
d_drepDeposit_916 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_drepDeposit_916 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepDeposit_372 (coe v0)
-- _.PParams.drepThresholds
d_drepThresholds_918 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_178
d_drepThresholds_918 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_362 (coe v0)
-- _.PParams.govActionDeposit
d_govActionDeposit_920 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_govActionDeposit_920 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionDeposit_370 (coe v0)
-- _.PParams.govActionLifetime
d_govActionLifetime_922 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_govActionLifetime_922 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionLifetime_368 (coe v0)
-- _.PParams.keyDeposit
d_keyDeposit_924 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_keyDeposit_924 v0
  = coe MAlonzo.Code.Ledger.PParams.d_keyDeposit_330 (coe v0)
-- _.PParams.maxBlockExUnits
d_maxBlockExUnits_926 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> AgdaAny
d_maxBlockExUnits_926 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockExUnits_318 (coe v0)
-- _.PParams.maxBlockSize
d_maxBlockSize_928 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_maxBlockSize_928 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockSize_310 (coe v0)
-- _.PParams.maxCollateralInputs
d_maxCollateralInputs_930 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_maxCollateralInputs_930 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxCollateralInputs_322 (coe v0)
-- _.PParams.maxHeaderSize
d_maxHeaderSize_932 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_maxHeaderSize_932 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxHeaderSize_314 (coe v0)
-- _.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_934 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_maxRefScriptSizePerBlock_934 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxRefScriptSizePerBlock_342 (coe v0)
-- _.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_936 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_maxRefScriptSizePerTx_936 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxRefScriptSizePerTx_340 (coe v0)
-- _.PParams.maxTxExUnits
d_maxTxExUnits_938 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> AgdaAny
d_maxTxExUnits_938 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxExUnits_316 (coe v0)
-- _.PParams.maxTxSize
d_maxTxSize_940 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_maxTxSize_940 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxSize_312 (coe v0)
-- _.PParams.maxValSize
d_maxValSize_942 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_maxValSize_942 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxValSize_320 (coe v0)
-- _.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_944 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_944 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_minFeeRefScriptCoinsPerByte_338
      (coe v0)
-- _.PParams.minUTxOValue
d_minUTxOValue_946 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_minUTxOValue_946 v0
  = coe MAlonzo.Code.Ledger.PParams.d_minUTxOValue_348 (coe v0)
-- _.PParams.nopt
d_nopt_948 :: MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_nopt_948 v0 = coe MAlonzo.Code.Ledger.PParams.d_nopt_352 (coe v0)
-- _.PParams.poolDeposit
d_poolDeposit_950 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_poolDeposit_950 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolDeposit_332 (coe v0)
-- _.PParams.poolThresholds
d_poolThresholds_952 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_220
d_poolThresholds_952 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolThresholds_360 (coe v0)
-- _.PParams.prices
d_prices_954 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> AgdaAny
d_prices_954 v0
  = coe MAlonzo.Code.Ledger.PParams.d_prices_336 (coe v0)
-- _.PParams.pv
d_pv_956 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_956 v0 = coe MAlonzo.Code.Ledger.PParams.d_pv_324 (coe v0)
-- _.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_958 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_958 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_refScriptCostMultiplier_346 (coe v0)
-- _.PParams.refScriptCostStride
d_refScriptCostStride_960 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_refScriptCostStride_960 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_refScriptCostStride_344 (coe v0)
-- Ledger.Fees._↑ℚ
d__'8593'ℚ_1468 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  Integer -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d__'8593'ℚ_1468 ~v0 v1 = du__'8593'ℚ_1468 v1
du__'8593'ℚ_1468 ::
  Integer -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du__'8593'ℚ_1468 v0
  = coe
      MAlonzo.Code.Data.Rational.Base.du_mkℚ'43'_32 (coe v0)
      (coe (1 :: Integer))
-- Ledger.Fees.scriptsCost
d_scriptsCost_1474 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer -> Integer
d_scriptsCost_1474 ~v0 v1 v2 = du_scriptsCost_1474 v1 v2
du_scriptsCost_1474 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer -> Integer
du_scriptsCost_1474 v0 v1
  = let v2
          = MAlonzo.Code.Ledger.PParams.d_refScriptCostStride_344 (coe v0) in
    coe
      (case coe v2 of
         0 -> coe (0 :: Integer)
         _ -> let v3 = subInt (coe v2) (coe (1 :: Integer)) in
              coe
                (coe
                   du_scriptsCostAux_1574 (coe v0) (coe v3)
                   (coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178)
                   (coe
                      MAlonzo.Code.Ledger.PParams.d_minFeeRefScriptCoinsPerByte_338
                      (coe v0))
                   (coe v1)))
-- Ledger.Fees._.multiplier
d_multiplier_1566 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  Integer -> Integer -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_multiplier_1566 ~v0 v1 ~v2 ~v3 = du_multiplier_1566 v1
du_multiplier_1566 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_multiplier_1566 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_refScriptCostMultiplier_346 (coe v0)
-- Ledger.Fees._.sizeIncrement
d_sizeIncrement_1568 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  Integer -> Integer -> Integer
d_sizeIncrement_1568 ~v0 ~v1 v2 ~v3 = du_sizeIncrement_1568 v2
du_sizeIncrement_1568 :: Integer -> Integer
du_sizeIncrement_1568 v0 = coe addInt (coe (1 :: Integer)) (coe v0)
-- Ledger.Fees._.sizeIncrementRational
d_sizeIncrementRational_1570 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  Integer -> Integer -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_sizeIncrementRational_1570 ~v0 ~v1 v2 ~v3
  = du_sizeIncrementRational_1570 v2
du_sizeIncrementRational_1570 ::
  Integer -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_sizeIncrementRational_1570 v0
  = coe du__'8593'ℚ_1468 (coe du_sizeIncrement_1568 (coe v0))
-- Ledger.Fees._.scriptsCostAux
d_scriptsCostAux_1574 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  Integer -> MAlonzo.Code.Induction.WellFounded.T_Acc_42 -> Integer
d_scriptsCostAux_1574 ~v0 v1 v2 ~v3 v4 v5 v6 ~v7
  = du_scriptsCostAux_1574 v1 v2 v4 v5 v6
du_scriptsCostAux_1574 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  Integer ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 -> Integer -> Integer
du_scriptsCostAux_1574 v0 v1 v2 v3 v4
  = let v5
          = coe
              MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_168
              (\ v5 ->
                 coe
                   MAlonzo.Code.Data.Nat.Properties.du_'8804''7495''8658''8804'_2746
                   (coe v4))
              (coe
                 MAlonzo.Code.Data.Nat.Properties.du_'8804''8658''8804''7495'_2758)
              (coe
                 MAlonzo.Code.Relation.Nullary.Decidable.Core.d_T'63'_66
                 (coe
                    MAlonzo.Code.Data.Nat.Base.d__'8804''7495'__14 (coe v4)
                    (coe du_sizeIncrement_1568 (coe v1)))) in
    coe
      (case coe v5 of
         MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v6 v7
           -> if coe v6
                then coe
                       seq (coe v7)
                       (coe
                          MAlonzo.Code.Data.Integer.Base.d_'8739'_'8739'_18
                          (coe
                             MAlonzo.Code.Data.Rational.Base.d_floor_346
                             (coe
                                MAlonzo.Code.Data.Rational.Base.d__'43'__270 (coe v2)
                                (coe
                                   MAlonzo.Code.Data.Rational.Base.d__'42'__276
                                   (coe du__'8593'ℚ_1468 (coe v4)) (coe v3)))))
                else coe
                       seq (coe v7)
                       (coe
                          du_scriptsCostAux_1574 (coe v0) (coe v1)
                          (coe
                             MAlonzo.Code.Data.Rational.Base.d__'43'__270 (coe v2)
                             (coe
                                MAlonzo.Code.Data.Rational.Base.d__'42'__276
                                (coe du_sizeIncrementRational_1570 (coe v1)) (coe v3)))
                          (coe
                             MAlonzo.Code.Data.Rational.Base.d__'42'__276
                             (coe du_multiplier_1566 (coe v0)) (coe v3))
                          (coe
                             MAlonzo.Code.Agda.Builtin.Nat.d__'45'__22 v4
                             (coe du_sizeIncrement_1568 (coe v1))))
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Fees._._.>′-trans
d_'62''8242''45'trans_1616 ::
  Integer ->
  Integer ->
  (MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  Integer ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  (Integer ->
   MAlonzo.Code.Data.Nat.Base.T__'8804''8242'__338 ->
   MAlonzo.Code.Induction.WellFounded.T_Acc_42) ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804''8242'__338 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804''8242'__338 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804''8242'__338
d_'62''8242''45'trans_1616 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9
                           ~v10 ~v11 v12 v13
  = du_'62''8242''45'trans_1616 v12 v13
du_'62''8242''45'trans_1616 ::
  MAlonzo.Code.Data.Nat.Base.T__'8804''8242'__338 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804''8242'__338 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804''8242'__338
du_'62''8242''45'trans_1616 v0 v1
  = case coe v0 of
      MAlonzo.Code.Data.Nat.Base.C_'8804''8242''45'refl_342
        -> coe MAlonzo.Code.Data.Nat.Base.C_'8804''8242''45'step_348 v1
      MAlonzo.Code.Data.Nat.Base.C_'8804''8242''45'step_348 v3
        -> coe
             MAlonzo.Code.Data.Nat.Base.C_'8804''8242''45'step_348
             (coe du_'62''8242''45'trans_1616 (coe v3) (coe v1))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Fees._._.suc∸≤′
d_suc'8760''8804''8242'_1636 ::
  Integer ->
  Integer ->
  (MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  Integer ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  (Integer ->
   MAlonzo.Code.Data.Nat.Base.T__'8804''8242'__338 ->
   MAlonzo.Code.Induction.WellFounded.T_Acc_42) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804''8242'__338 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804''8242'__338 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804''8242'__338
d_suc'8760''8804''8242'_1636 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8
                             ~v9 v10 v11 v12
  = du_suc'8760''8804''8242'_1636 v10 v11 v12
du_suc'8760''8804''8242'_1636 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804''8242'__338 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804''8242'__338 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804''8242'__338
du_suc'8760''8804''8242'_1636 v0 v1 v2
  = let v3 = subInt (coe v0) (coe (1 :: Integer)) in
    coe
      (let v4
             = case coe v1 of
                 MAlonzo.Code.Data.Nat.Base.C_'8804''8242''45'step_348 v5
                   -> case coe v2 of
                        MAlonzo.Code.Data.Nat.Base.C_'8804''8242''45'refl_342 -> coe v2
                        MAlonzo.Code.Data.Nat.Base.C_'8804''8242''45'step_348 v7
                          -> coe
                               MAlonzo.Code.Data.Nat.Base.C_'8804''8242''45'step_348
                               (coe du_suc'8760''8804''8242'_1636 (coe v3) (coe v5) (coe v7))
                        _ -> MAlonzo.RTE.mazUnreachableError
                 _ -> MAlonzo.RTE.mazUnreachableError in
       coe
         (case coe v0 of
            1 -> case coe v1 of
                   MAlonzo.Code.Data.Nat.Base.C_'8804''8242''45'refl_342 -> coe v2
                   MAlonzo.Code.Data.Nat.Base.C_'8804''8242''45'step_348 v6
                     -> case coe v2 of
                          MAlonzo.Code.Data.Nat.Base.C_'8804''8242''45'refl_342 -> coe v2
                          MAlonzo.Code.Data.Nat.Base.C_'8804''8242''45'step_348 v8
                            -> coe
                                 MAlonzo.Code.Data.Nat.Base.C_'8804''8242''45'step_348
                                 (coe du_suc'8760''8804''8242'_1636 (coe v3) (coe v6) (coe v8))
                          _ -> MAlonzo.RTE.mazUnreachableError
                   _ -> MAlonzo.RTE.mazUnreachableError
            _ | coe geqInt (coe v0) (coe (2 :: Integer)) ->
                case coe v1 of
                  MAlonzo.Code.Data.Nat.Base.C_'8804''8242''45'refl_342 -> coe v1
                  MAlonzo.Code.Data.Nat.Base.C_'8804''8242''45'step_348 v6
                    -> case coe v2 of
                         MAlonzo.Code.Data.Nat.Base.C_'8804''8242''45'refl_342 -> coe v2
                         MAlonzo.Code.Data.Nat.Base.C_'8804''8242''45'step_348 v8
                           -> coe
                                MAlonzo.Code.Data.Nat.Base.C_'8804''8242''45'step_348
                                (coe du_suc'8760''8804''8242'_1636 (coe v3) (coe v6) (coe v8))
                         _ -> MAlonzo.RTE.mazUnreachableError
                  _ -> MAlonzo.RTE.mazUnreachableError
            _ -> coe v4))
