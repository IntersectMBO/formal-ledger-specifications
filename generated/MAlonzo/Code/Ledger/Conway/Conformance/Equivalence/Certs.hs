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

module MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Data.Irrelevant
import qualified MAlonzo.Code.Data.List.Relation.Unary.Any
import qualified MAlonzo.Code.Data.Rational.Base
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Interface.STS
import qualified MAlonzo.Code.Ledger.Abstract
import qualified MAlonzo.Code.Ledger.Address
import qualified MAlonzo.Code.Ledger.Certs
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Certs
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Convert
import qualified MAlonzo.Code.Ledger.GovernanceActions
import qualified MAlonzo.Code.Ledger.PParams
import qualified MAlonzo.Code.Ledger.Transaction
import qualified MAlonzo.Code.Ledger.Types.GovStructure

-- _.PParams
d_PParams_228 a0 = ()
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
-- Ledger.Conway.Conformance.Equivalence.Certs.L._._⊢_⇀⦇_,CERTBASE⦈_
d__'8866'_'8640''10631'_'44'CERTBASE'10632'__1486 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Equivalence.Certs.L._._⊢_⇀⦇_,CERTS⦈_
d__'8866'_'8640''10631'_'44'CERTS'10632'__1488 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1708 ->
  MAlonzo.Code.Ledger.Certs.T_CertEnv_866 ->
  MAlonzo.Code.Ledger.Certs.T_CertState_930 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_830] ->
  MAlonzo.Code.Ledger.Certs.T_CertState_930 -> ()
d__'8866'_'8640''10631'_'44'CERTS'10632'__1488 = erased
-- Ledger.Conway.Conformance.Equivalence.Certs.L._._⊢_⇀⦇_,CERT⦈_
d__'8866'_'8640''10631'_'44'CERT'10632'__1490 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Equivalence.Certs.L._._⊢_⇀⦇_,DELEG⦈_
d__'8866'_'8640''10631'_'44'DELEG'10632'__1492 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Equivalence.Certs.L._._⊢_⇀⦇_,GOVCERT⦈_
d__'8866'_'8640''10631'_'44'GOVCERT'10632'__1494 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Equivalence.Certs.L._._⊢_⇀⦇_,POOL⦈_
d__'8866'_'8640''10631'_'44'POOL'10632'__1496 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Equivalence.Certs.L._.CertState
d_CertState_1508 a0 a1 = ()
-- Ledger.Conway.Conformance.Equivalence.Certs.L._.DCert
d_DCert_1512 a0 a1 = ()
-- Ledger.Conway.Conformance.Equivalence.Certs.L._.DState
d_DState_1522 a0 a1 = ()
-- Ledger.Conway.Conformance.Equivalence.Certs.L._.DepositPurpose
d_DepositPurpose_1528 a0 a1 = ()
-- Ledger.Conway.Conformance.Equivalence.Certs.L._.Deposits
d_Deposits_1530 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1708 -> ()
d_Deposits_1530 = erased
-- Ledger.Conway.Conformance.Equivalence.Certs.L._.GState
d_GState_1538 a0 a1 = ()
-- Ledger.Conway.Conformance.Equivalence.Certs.L._.CertState.dState
d_dState_1638 ::
  MAlonzo.Code.Ledger.Certs.T_CertState_930 ->
  MAlonzo.Code.Ledger.Certs.T_DState_890
d_dState_1638 v0
  = coe MAlonzo.Code.Ledger.Certs.d_dState_938 (coe v0)
-- Ledger.Conway.Conformance.Equivalence.Certs.L._.CertState.gState
d_gState_1640 ::
  MAlonzo.Code.Ledger.Certs.T_CertState_930 ->
  MAlonzo.Code.Ledger.Certs.T_GState_918
d_gState_1640 v0
  = coe MAlonzo.Code.Ledger.Certs.d_gState_942 (coe v0)
-- Ledger.Conway.Conformance.Equivalence.Certs.L._.CertState.pState
d_pState_1642 ::
  MAlonzo.Code.Ledger.Certs.T_CertState_930 ->
  MAlonzo.Code.Ledger.Certs.T_PState_906
d_pState_1642 v0
  = coe MAlonzo.Code.Ledger.Certs.d_pState_940 (coe v0)
-- Ledger.Conway.Conformance.Equivalence.Certs.L._.DState.rewards
d_rewards_1664 ::
  MAlonzo.Code.Ledger.Certs.T_DState_890 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_1664 v0
  = coe MAlonzo.Code.Ledger.Certs.d_rewards_902 (coe v0)
-- Ledger.Conway.Conformance.Equivalence.Certs.L._.DState.stakeDelegs
d_stakeDelegs_1666 ::
  MAlonzo.Code.Ledger.Certs.T_DState_890 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDelegs_1666 v0
  = coe MAlonzo.Code.Ledger.Certs.d_stakeDelegs_900 (coe v0)
-- Ledger.Conway.Conformance.Equivalence.Certs.L._.DState.voteDelegs
d_voteDelegs_1668 ::
  MAlonzo.Code.Ledger.Certs.T_DState_890 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voteDelegs_1668 v0
  = coe MAlonzo.Code.Ledger.Certs.d_voteDelegs_898 (coe v0)
-- Ledger.Conway.Conformance.Equivalence.Certs.L._.GState.ccHotKeys
d_ccHotKeys_1690 ::
  MAlonzo.Code.Ledger.Certs.T_GState_918 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_1690 v0
  = coe MAlonzo.Code.Ledger.Certs.d_ccHotKeys_926 (coe v0)
-- Ledger.Conway.Conformance.Equivalence.Certs.L._.GState.dreps
d_dreps_1692 ::
  MAlonzo.Code.Ledger.Certs.T_GState_918 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_1692 v0
  = coe MAlonzo.Code.Ledger.Certs.d_dreps_924 (coe v0)
-- Ledger.Conway.Conformance.Equivalence.Certs.C._._⊢_⇀⦇_,CERTBASE⦈_
d__'8866'_'8640''10631'_'44'CERTBASE'10632'__1708 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Equivalence.Certs.C._._⊢_⇀⦇_,CERTS⦈_
d__'8866'_'8640''10631'_'44'CERTS'10632'__1710 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1708 ->
  MAlonzo.Code.Ledger.Certs.T_CertEnv_866 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1070 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_830] ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1070 -> ()
d__'8866'_'8640''10631'_'44'CERTS'10632'__1710 = erased
-- Ledger.Conway.Conformance.Equivalence.Certs.C._._⊢_⇀⦇_,CERT⦈_
d__'8866'_'8640''10631'_'44'CERT'10632'__1712 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Equivalence.Certs.C._._⊢_⇀⦇_,DELEG⦈_
d__'8866'_'8640''10631'_'44'DELEG'10632'__1714 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Equivalence.Certs.C._._⊢_⇀⦇_,GOVCERT⦈_
d__'8866'_'8640''10631'_'44'GOVCERT'10632'__1716 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Equivalence.Certs.C._._⊢_⇀⦇_,POOL⦈_
d__'8866'_'8640''10631'_'44'POOL'10632'__1718 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Equivalence.Certs.C._.CertState
d_CertState_1738 a0 a1 = ()
-- Ledger.Conway.Conformance.Equivalence.Certs.C._.DState
d_DState_1758 a0 a1 = ()
-- Ledger.Conway.Conformance.Equivalence.Certs.C._.GState
d_GState_1780 a0 a1 = ()
-- Ledger.Conway.Conformance.Equivalence.Certs.C._.updateCertDeposit
d_updateCertDeposit_1828 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1708 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Ledger.Certs.T_DCert_830 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateCertDeposit_1828 v0 ~v1 = du_updateCertDeposit_1828 v0
du_updateCertDeposit_1828 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Ledger.Certs.T_DCert_830 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateCertDeposit_1828 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_updateCertDeposit_1108
      (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2326 (coe v0))
-- Ledger.Conway.Conformance.Equivalence.Certs.C._.CertState.dState
d_dState_1892 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1070 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1034
d_dState_1892 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1078 (coe v0)
-- Ledger.Conway.Conformance.Equivalence.Certs.C._.CertState.gState
d_gState_1894 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1070 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_GState_1054
d_gState_1894 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1082 (coe v0)
-- Ledger.Conway.Conformance.Equivalence.Certs.C._.CertState.pState
d_pState_1896 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1070 ->
  MAlonzo.Code.Ledger.Certs.T_PState_906
d_pState_1896 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1080 (coe v0)
-- Ledger.Conway.Conformance.Equivalence.Certs.C._.DState.deposits
d_deposits_1918 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1034 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_1918 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1050
      (coe v0)
-- Ledger.Conway.Conformance.Equivalence.Certs.C._.DState.rewards
d_rewards_1920 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1034 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_1920 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1048
      (coe v0)
-- Ledger.Conway.Conformance.Equivalence.Certs.C._.DState.stakeDelegs
d_stakeDelegs_1922 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1034 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDelegs_1922 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_stakeDelegs_1046
      (coe v0)
-- Ledger.Conway.Conformance.Equivalence.Certs.C._.DState.voteDelegs
d_voteDelegs_1924 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1034 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voteDelegs_1924 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_1044
      (coe v0)
-- Ledger.Conway.Conformance.Equivalence.Certs.C._.GState.ccHotKeys
d_ccHotKeys_1946 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_GState_1054 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_1946 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_ccHotKeys_1064
      (coe v0)
-- Ledger.Conway.Conformance.Equivalence.Certs.C._.GState.deposits
d_deposits_1948 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_GState_1054 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_1948 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1066
      (coe v0)
-- Ledger.Conway.Conformance.Equivalence.Certs.C._.GState.dreps
d_dreps_1950 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_GState_1054 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_1950 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dreps_1062 (coe v0)
-- Ledger.Conway.Conformance.Equivalence.Certs.DStateToConf
d_DStateToConf_1962 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1708 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Convert.T__'8866'_'11078''8305'__16
d_DStateToConf_1962 ~v0 ~v1 = du_DStateToConf_1962
du_DStateToConf_1962 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Convert.T__'8866'_'11078''8305'__16
du_DStateToConf_1962
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Convert.C__'8866'_'11078''8305'_'46'constructor_41
      (coe
         (\ v0 v1 ->
            case coe v1 of
              MAlonzo.Code.Ledger.Certs.C_'10214'_'44'_'44'_'10215''7496'_904 v2 v3 v4
                -> coe
                     MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'44'_'10215''7496'_1052
                     (coe v2) (coe v3) (coe v4) (coe v0)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.Conformance.Equivalence.Certs.DStateFromConf
d_DStateFromConf_1972 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1708 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Convert.T__'8866'_'11078''8305'__16
d_DStateFromConf_1972 ~v0 ~v1 = du_DStateFromConf_1972
du_DStateFromConf_1972 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Convert.T__'8866'_'11078''8305'__16
du_DStateFromConf_1972
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Convert.C__'8866'_'11078''8305'_'46'constructor_41
      (coe
         (\ v0 v1 ->
            case coe v1 of
              MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'44'_'10215''7496'_1052 v2 v3 v4 v5
                -> coe
                     MAlonzo.Code.Ledger.Certs.C_'10214'_'44'_'44'_'10215''7496'_904
                     (coe v2) (coe v3) (coe v4)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.Conformance.Equivalence.Certs.GStateToConf
d_GStateToConf_1980 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1708 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Convert.T__'8866'_'11078''8305'__16
d_GStateToConf_1980 ~v0 ~v1 = du_GStateToConf_1980
du_GStateToConf_1980 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Convert.T__'8866'_'11078''8305'__16
du_GStateToConf_1980
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Convert.C__'8866'_'11078''8305'_'46'constructor_41
      (coe
         (\ v0 v1 ->
            case coe v1 of
              MAlonzo.Code.Ledger.Certs.C_'10214'_'44'_'10215''7515'_928 v2 v3
                -> coe
                     MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'10215''7515'_1068
                     (coe v2) (coe v3) (coe v0)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.Conformance.Equivalence.Certs.GStateFromConf
d_GStateFromConf_1988 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1708 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Convert.T__'8866'_'11078''8305'__16
d_GStateFromConf_1988 ~v0 ~v1 = du_GStateFromConf_1988
du_GStateFromConf_1988 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Convert.T__'8866'_'11078''8305'__16
du_GStateFromConf_1988
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Convert.C__'8866'_'11078''8305'_'46'constructor_41
      (coe
         (\ v0 v1 ->
            case coe v1 of
              MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'10215''7515'_1068 v2 v3 v4
                -> coe
                     MAlonzo.Code.Ledger.Certs.C_'10214'_'44'_'10215''7515'_928 (coe v2)
                     (coe v3)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.Conformance.Equivalence.Certs.ValidDepsᵈ
d_ValidDeps'7496'_2000 a0 a1 a2 a3 a4 = ()
data T_ValidDeps'7496'_2000
  = C_'91''93'_2006 | C_delegate_2018 T_ValidDeps'7496'_2000 |
    C_dereg_2028 Integer
                 MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
                 MAlonzo.Code.Data.Sum.Base.T__'8846'__30 T_ValidDeps'7496'_2000 |
    C_regdrep_2038 T_ValidDeps'7496'_2000 |
    C_deregdrep_2046 T_ValidDeps'7496'_2000 |
    C_regpool_2054 T_ValidDeps'7496'_2000 |
    C_retirepool_2062 T_ValidDeps'7496'_2000 |
    C_ccreghot_2070 T_ValidDeps'7496'_2000 |
    C_reg_2078 T_ValidDeps'7496'_2000
-- Ledger.Conway.Conformance.Equivalence.Certs.ValidDepsᵍ
d_ValidDeps'7501'_2084 a0 a1 a2 a3 a4 = ()
data T_ValidDeps'7501'_2084
  = C_'91''93'_2090 | C_regdrep_2100 T_ValidDeps'7501'_2084 |
    C_deregdrep_2108 MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
                     T_ValidDeps'7501'_2084 |
    C_delegate_2120 T_ValidDeps'7501'_2084 |
    C_dereg_2128 T_ValidDeps'7501'_2084 |
    C_regpool_2136 T_ValidDeps'7501'_2084 |
    C_retirepool_2144 T_ValidDeps'7501'_2084 |
    C_ccreghot_2152 T_ValidDeps'7501'_2084 |
    C_reg_2160 T_ValidDeps'7501'_2084
-- Ledger.Conway.Conformance.Equivalence.Certs.CertDeps*
d_CertDeps'42'_2166 a0 a1 a2 a3 = ()
data T_CertDeps'42'_2166
  = C_'10214'_'44'_'44'_'44'_'10215''42'_2188 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                              MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                              T_ValidDeps'7496'_2000 T_ValidDeps'7501'_2084
-- Ledger.Conway.Conformance.Equivalence.Certs.CertDeps*.depsᵈ
d_deps'7496'_2180 ::
  T_CertDeps'42'_2166 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deps'7496'_2180 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''42'_2188 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Equivalence.Certs.CertDeps*.depsᵍ
d_deps'7501'_2182 ::
  T_CertDeps'42'_2166 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deps'7501'_2182 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''42'_2188 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Equivalence.Certs.CertDeps*.validᵈ
d_valid'7496'_2184 :: T_CertDeps'42'_2166 -> T_ValidDeps'7496'_2000
d_valid'7496'_2184 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''42'_2188 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Equivalence.Certs.CertDeps*.validᵍ
d_valid'7501'_2186 :: T_CertDeps'42'_2166 -> T_ValidDeps'7501'_2084
d_valid'7501'_2186 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''42'_2188 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Equivalence.Certs.getCertDeps*
d_getCertDeps'42'_2248 ::
  T_CertDeps'42'_2166 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_getCertDeps'42'_2248 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe d_deps'7496'_2180 (coe v0)) (coe d_deps'7501'_2182 (coe v0))
-- Ledger.Conway.Conformance.Equivalence.Certs.updateCertDeps
d_updateCertDeps_2258 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1708 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Ledger.Certs.T_DCert_830 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_830] ->
  T_CertDeps'42'_2166 -> T_CertDeps'42'_2166
d_updateCertDeps_2258 v0 ~v1 v2 v3 ~v4 v5
  = du_updateCertDeps_2258 v0 v2 v3 v5
du_updateCertDeps_2258 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Ledger.Certs.T_DCert_830 ->
  T_CertDeps'42'_2166 -> T_CertDeps'42'_2166
du_updateCertDeps_2258 v0 v1 v2 v3
  = case coe v3 of
      C_'10214'_'44'_'44'_'44'_'10215''42'_2188 v4 v5 v6 v7
        -> case coe v6 of
             C_delegate_2018 v13
               -> case coe v7 of
                    C_delegate_2120 v19
                      -> coe
                           C_'10214'_'44'_'44'_'44'_'10215''42'_2188
                           (coe
                              MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_updateCertDeposit_1108
                              (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2326 (coe v0))
                              (coe v1) (coe v2) (coe v4))
                           (coe v5) (coe v13) (coe v19)
                    _ -> MAlonzo.RTE.mazUnreachableError
             C_dereg_2028 v10 v12 v13 v14
               -> case coe v7 of
                    C_dereg_2128 v18
                      -> coe
                           C_'10214'_'44'_'44'_'44'_'10215''42'_2188
                           (coe
                              MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_updateCertDeposit_1108
                              (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2326 (coe v0))
                              (coe v1) (coe v2) (coe v4))
                           (coe v5) (coe v14) (coe v18)
                    _ -> MAlonzo.RTE.mazUnreachableError
             C_regdrep_2038 v12
               -> case coe v7 of
                    C_regdrep_2100 v17
                      -> coe
                           C_'10214'_'44'_'44'_'44'_'10215''42'_2188 (coe v4)
                           (coe
                              MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_updateCertDeposit_1108
                              (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2326 (coe v0))
                              (coe v1) (coe v2) (coe v5))
                           (coe v12) (coe v17)
                    _ -> MAlonzo.RTE.mazUnreachableError
             C_deregdrep_2046 v11
               -> case coe v7 of
                    C_deregdrep_2108 v15 v16
                      -> coe
                           C_'10214'_'44'_'44'_'44'_'10215''42'_2188 (coe v4)
                           (coe
                              MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_updateCertDeposit_1108
                              (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2326 (coe v0))
                              (coe v1) (coe v2) (coe v5))
                           (coe v11) (coe v16)
                    _ -> MAlonzo.RTE.mazUnreachableError
             C_regpool_2054 v11
               -> case coe v7 of
                    C_regpool_2136 v15
                      -> coe
                           C_'10214'_'44'_'44'_'44'_'10215''42'_2188 (coe v4) (coe v5)
                           (coe v11) (coe v15)
                    _ -> MAlonzo.RTE.mazUnreachableError
             C_retirepool_2062 v11
               -> case coe v7 of
                    C_retirepool_2144 v15
                      -> coe
                           C_'10214'_'44'_'44'_'44'_'10215''42'_2188 (coe v4) (coe v5)
                           (coe v11) (coe v15)
                    _ -> MAlonzo.RTE.mazUnreachableError
             C_ccreghot_2070 v11
               -> case coe v7 of
                    C_ccreghot_2152 v15
                      -> coe
                           C_'10214'_'44'_'44'_'44'_'10215''42'_2188 (coe v4) (coe v5)
                           (coe v11) (coe v15)
                    _ -> MAlonzo.RTE.mazUnreachableError
             C_reg_2078 v11
               -> case coe v7 of
                    C_reg_2160 v15
                      -> coe
                           C_'10214'_'44'_'44'_'44'_'10215''42'_2188
                           (coe
                              MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_updateCertDeposit_1108
                              (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2326 (coe v0))
                              (coe v1) (coe v2) (coe v4))
                           (coe v5) (coe v11) (coe v15)
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Equivalence.Certs.updateCertDeps*
d_updateCertDeps'42'_2296 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1708 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_830] ->
  T_CertDeps'42'_2166 -> T_CertDeps'42'_2166
d_updateCertDeps'42'_2296 v0 ~v1 v2 v3 v4
  = du_updateCertDeps'42'_2296 v0 v2 v3 v4
du_updateCertDeps'42'_2296 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_830] ->
  T_CertDeps'42'_2166 -> T_CertDeps'42'_2166
du_updateCertDeps'42'_2296 v0 v1 v2 v3
  = case coe v2 of
      [] -> coe v3
      (:) v4 v5
        -> coe
             du_updateCertDeps'42'_2296 (coe v0) (coe v1) (coe v5)
             (coe du_updateCertDeps_2258 (coe v0) (coe v1) (coe v4) (coe v3))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Equivalence.Certs.CertStToConf
d_CertStToConf_2306 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1708 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Convert.T__'8866'_'11078''8305'__16
d_CertStToConf_2306 ~v0 ~v1 = du_CertStToConf_2306
du_CertStToConf_2306 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Convert.T__'8866'_'11078''8305'__16
du_CertStToConf_2306
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Convert.C__'8866'_'11078''8305'_'46'constructor_41
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v1 v2
                -> coe
                     (\ v3 ->
                        case coe v3 of
                          MAlonzo.Code.Ledger.Certs.C_'10214'_'44'_'44'_'10215''7580''738'_944 v4 v5 v6
                            -> coe
                                 MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'10215''7580''738'_1084
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'44'_'10215''7496'_1052
                                    (coe MAlonzo.Code.Ledger.Certs.d_voteDelegs_898 (coe v4))
                                    (coe MAlonzo.Code.Ledger.Certs.d_stakeDelegs_900 (coe v4))
                                    (coe MAlonzo.Code.Ledger.Certs.d_rewards_902 (coe v4)) (coe v1))
                                 (coe v5)
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'10215''7515'_1068
                                    (coe MAlonzo.Code.Ledger.Certs.d_dreps_924 (coe v6))
                                    (coe MAlonzo.Code.Ledger.Certs.d_ccHotKeys_926 (coe v6))
                                    (coe v2))
                          _ -> MAlonzo.RTE.mazUnreachableError)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.Conformance.Equivalence.Certs.CertStFromConf
d_CertStFromConf_2318 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1708 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Convert.T__'8866'_'11078''8305'__16
d_CertStFromConf_2318 ~v0 ~v1 = du_CertStFromConf_2318
du_CertStFromConf_2318 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Convert.T__'8866'_'11078''8305'__16
du_CertStFromConf_2318
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Convert.C__'8866'_'11078''8305'_'46'constructor_41
      (coe
         (\ v0 v1 ->
            case coe v1 of
              MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'10215''7580''738'_1084 v2 v3 v4
                -> coe
                     MAlonzo.Code.Ledger.Certs.C_'10214'_'44'_'44'_'10215''7580''738'_944
                     (coe
                        MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Convert.du_conv_84
                        (coe du_DStateFromConf_1972) (coe v2))
                     (coe v3)
                     (coe
                        MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Convert.du_conv_84
                        (coe du_GStateFromConf_1988) (coe v4))
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.Conformance.Equivalence.Certs.CERTBASEToConf
d_CERTBASEToConf_2336 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1708 ->
  MAlonzo.Code.Ledger.Certs.T_CertEnv_866 ->
  MAlonzo.Code.Ledger.Certs.T_CertState_930 ->
  MAlonzo.Code.Ledger.Certs.T_CertState_930 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Convert.T__'8866'_'11078''8305'__16
d_CERTBASEToConf_2336 ~v0 ~v1 ~v2 ~v3 ~v4 = du_CERTBASEToConf_2336
du_CERTBASEToConf_2336 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Convert.T__'8866'_'11078''8305'__16
du_CERTBASEToConf_2336
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Convert.C__'8866'_'11078''8305'_'46'constructor_41
      (coe
         (\ v0 v1 ->
            case coe v1 of
              MAlonzo.Code.Ledger.Certs.C_CERT'45'base_1358 v13
                -> coe
                     MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_CERT'45'base_1542
                     v13
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.Conformance.Equivalence.Certs._.pparams
d_pparams_2358 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1708 ->
  MAlonzo.Code.Ledger.Certs.T_DelegEnv_946 ->
  MAlonzo.Code.Ledger.Certs.T_DState_890 ->
  MAlonzo.Code.Ledger.Certs.T_DCert_830 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_830] ->
  MAlonzo.Code.Ledger.Certs.T_DState_890 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242
d_pparams_2358 ~v0 v1 ~v2 ~v3 ~v4 ~v5 = du_pparams_2358 v1
du_pparams_2358 ::
  MAlonzo.Code.Ledger.Certs.T_DelegEnv_946 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242
du_pparams_2358 v0
  = coe MAlonzo.Code.Ledger.Certs.d_pparams_954 (coe v0)
-- Ledger.Conway.Conformance.Equivalence.Certs.DELEGToConf
d_DELEGToConf_2364 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1708 ->
  MAlonzo.Code.Ledger.Certs.T_DelegEnv_946 ->
  MAlonzo.Code.Ledger.Certs.T_DState_890 ->
  MAlonzo.Code.Ledger.Certs.T_DCert_830 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_830] ->
  MAlonzo.Code.Ledger.Certs.T_DState_890 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Convert.T__'8866'_'11078''8305'__16
d_DELEGToConf_2364 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6
  = du_DELEGToConf_2364
du_DELEGToConf_2364 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Convert.T__'8866'_'11078''8305'__16
du_DELEGToConf_2364
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Convert.C__'8866'_'11078''8305'_'46'constructor_41
      (coe
         (\ v0 ->
            case coe v0 of
              C_'10214'_'44'_'44'_'44'_'10215''42'_2188 v1 v2 v3 v4
                -> case coe v3 of
                     C_delegate_2018 v10
                       -> coe
                            seq (coe v4)
                            (coe
                               (\ v11 ->
                                  case coe v11 of
                                    MAlonzo.Code.Ledger.Certs.C_DELEG'45'delegate_1122 v22
                                      -> coe
                                           MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_DELEG'45'delegate_1304
                                           v22
                                    _ -> MAlonzo.RTE.mazUnreachableError))
                     C_dereg_2028 v7 v9 v10 v11
                       -> coe
                            seq (coe v4)
                            (coe
                               (\ v12 ->
                                  case coe v12 of
                                    MAlonzo.Code.Ledger.Certs.C_DELEG'45'dereg_1124 v21
                                      -> coe
                                           MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_DELEG'45'dereg_1306
                                           v7
                                           (coe
                                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v21)
                                              (coe
                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                 (coe v9) (coe v10)))
                                    _ -> MAlonzo.RTE.mazUnreachableError))
                     C_regdrep_2038 v9 -> coe (\ v10 -> MAlonzo.RTE.mazUnreachableError)
                     C_deregdrep_2046 v8
                       -> coe (\ v9 -> MAlonzo.RTE.mazUnreachableError)
                     C_regpool_2054 v8 -> coe (\ v9 -> MAlonzo.RTE.mazUnreachableError)
                     C_retirepool_2062 v8
                       -> coe (\ v9 -> MAlonzo.RTE.mazUnreachableError)
                     C_ccreghot_2070 v8 -> coe (\ v9 -> MAlonzo.RTE.mazUnreachableError)
                     C_reg_2078 v8
                       -> coe
                            seq (coe v4)
                            (coe
                               (\ v9 ->
                                  case coe v9 of
                                    MAlonzo.Code.Ledger.Certs.C_DELEG'45'reg_1194 v18
                                      -> coe
                                           MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_DELEG'45'reg_1376
                                           v18
                                    _ -> MAlonzo.RTE.mazUnreachableError))
                     _ -> MAlonzo.RTE.mazUnreachableError
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.Conformance.Equivalence.Certs.POOLToConf
d_POOLToConf_2384 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1708 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Ledger.Certs.T_PState_906 ->
  MAlonzo.Code.Ledger.Certs.T_DCert_830 ->
  MAlonzo.Code.Ledger.Certs.T_PState_906 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Convert.T__'8866'_'11078''8305'__16
d_POOLToConf_2384 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 = du_POOLToConf_2384
du_POOLToConf_2384 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Convert.T__'8866'_'11078''8305'__16
du_POOLToConf_2384
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Convert.C__'8866'_'11078''8305'_'46'constructor_41
      (coe
         (\ v0 v1 ->
            case coe v1 of
              MAlonzo.Code.Ledger.Certs.C_POOL'45'regpool_1196
                -> coe
                     MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_POOL'45'regpool_1232
              MAlonzo.Code.Ledger.Certs.C_POOL'45'retirepool_1198
                -> coe
                     MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_POOL'45'retirepool_1234
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.Conformance.Equivalence.Certs._.pp
d_pp_2400 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1708 ->
  MAlonzo.Code.Ledger.Certs.T_CertEnv_866 ->
  MAlonzo.Code.Ledger.Certs.T_GState_918 ->
  MAlonzo.Code.Ledger.Certs.T_DCert_830 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_830] ->
  MAlonzo.Code.Ledger.Certs.T_GState_918 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242
d_pp_2400 ~v0 v1 ~v2 ~v3 ~v4 ~v5 = du_pp_2400 v1
du_pp_2400 ::
  MAlonzo.Code.Ledger.Certs.T_CertEnv_866 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242
du_pp_2400 v0 = coe MAlonzo.Code.Ledger.Certs.d_pp_880 (coe v0)
-- Ledger.Conway.Conformance.Equivalence.Certs.GOVCERTToConf
d_GOVCERTToConf_2406 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1708 ->
  MAlonzo.Code.Ledger.Certs.T_CertEnv_866 ->
  MAlonzo.Code.Ledger.Certs.T_GState_918 ->
  MAlonzo.Code.Ledger.Certs.T_DCert_830 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_830] ->
  MAlonzo.Code.Ledger.Certs.T_GState_918 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Convert.T__'8866'_'11078''8305'__16
d_GOVCERTToConf_2406 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6
  = du_GOVCERTToConf_2406
du_GOVCERTToConf_2406 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Convert.T__'8866'_'11078''8305'__16
du_GOVCERTToConf_2406
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Convert.C__'8866'_'11078''8305'_'46'constructor_41
      (coe
         (\ v0 ->
            case coe v0 of
              C_'10214'_'44'_'44'_'44'_'10215''42'_2188 v1 v2 v3 v4
                -> case coe v3 of
                     C_delegate_2018 v10
                       -> coe (\ v11 -> MAlonzo.RTE.mazUnreachableError)
                     C_dereg_2028 v7 v9 v10 v11
                       -> coe (\ v12 -> MAlonzo.RTE.mazUnreachableError)
                     C_regdrep_2038 v9
                       -> coe
                            seq (coe v4)
                            (coe
                               (\ v10 ->
                                  case coe v10 of
                                    MAlonzo.Code.Ledger.Certs.C_GOVCERT'45'regdrep_1270 v21
                                      -> coe
                                           MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_GOVCERT'45'regdrep_1450
                                           v21
                                    _ -> MAlonzo.RTE.mazUnreachableError))
                     C_deregdrep_2046 v8
                       -> case coe v4 of
                            C_deregdrep_2108 v12 v13
                              -> coe
                                   (\ v14 ->
                                      case coe v14 of
                                        MAlonzo.Code.Ledger.Certs.C_GOVCERT'45'deregdrep_1272 v24
                                          -> coe
                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_GOVCERT'45'deregdrep_1452
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                  (coe v24) (coe v12))
                                        _ -> MAlonzo.RTE.mazUnreachableError)
                            _ -> MAlonzo.RTE.mazUnreachableError
                     C_regpool_2054 v8 -> coe (\ v9 -> MAlonzo.RTE.mazUnreachableError)
                     C_retirepool_2062 v8
                       -> coe (\ v9 -> MAlonzo.RTE.mazUnreachableError)
                     C_ccreghot_2070 v8
                       -> coe
                            seq (coe v4)
                            (coe
                               (\ v9 ->
                                  case coe v9 of
                                    MAlonzo.Code.Ledger.Certs.C_GOVCERT'45'ccreghot_1274 v19
                                      -> coe
                                           MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_GOVCERT'45'ccreghot_1454
                                           v19
                                    _ -> MAlonzo.RTE.mazUnreachableError))
                     C_reg_2078 v8 -> coe (\ v9 -> MAlonzo.RTE.mazUnreachableError)
                     _ -> MAlonzo.RTE.mazUnreachableError
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.Conformance.Equivalence.Certs._.pp
d_pp_2428 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1708 ->
  MAlonzo.Code.Ledger.Certs.T_CertEnv_866 ->
  MAlonzo.Code.Ledger.Certs.T_CertState_930 ->
  MAlonzo.Code.Ledger.Certs.T_DCert_830 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_830] ->
  MAlonzo.Code.Ledger.Certs.T_CertState_930 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242
d_pp_2428 ~v0 v1 ~v2 ~v3 ~v4 ~v5 = du_pp_2428 v1
du_pp_2428 ::
  MAlonzo.Code.Ledger.Certs.T_CertEnv_866 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242
du_pp_2428 v0 = coe MAlonzo.Code.Ledger.Certs.d_pp_880 (coe v0)
-- Ledger.Conway.Conformance.Equivalence.Certs.CERTToConf
d_CERTToConf_2434 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1708 ->
  MAlonzo.Code.Ledger.Certs.T_CertEnv_866 ->
  MAlonzo.Code.Ledger.Certs.T_CertState_930 ->
  MAlonzo.Code.Ledger.Certs.T_DCert_830 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_830] ->
  MAlonzo.Code.Ledger.Certs.T_CertState_930 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Convert.T__'8866'_'11078''8305'__16
d_CERTToConf_2434 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 = du_CERTToConf_2434
du_CERTToConf_2434 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Convert.T__'8866'_'11078''8305'__16
du_CERTToConf_2434
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Convert.C__'8866'_'11078''8305'_'46'constructor_41
      (coe
         (\ v0 ->
            case coe v0 of
              C_'10214'_'44'_'44'_'44'_'10215''42'_2188 v1 v2 v3 v4
                -> case coe v3 of
                     C_delegate_2018 v10
                       -> case coe v4 of
                            C_delegate_2120 v16
                              -> coe
                                   (\ v17 ->
                                      case coe v17 of
                                        MAlonzo.Code.Ledger.Certs.C_CERT'45'deleg_1276 v28
                                          -> coe
                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_CERT'45'deleg_1458
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Convert.d_conv'8305'_34
                                                  (coe du_DELEGToConf_2364)
                                                  (coe
                                                     C_'10214'_'44'_'44'_'44'_'10215''42'_2188
                                                     (coe v1) (coe v2) (coe C_delegate_2018 v10)
                                                     (coe C_delegate_2120 v16))
                                                  v28)
                                        _ -> MAlonzo.RTE.mazUnreachableError)
                            _ -> MAlonzo.RTE.mazUnreachableError
                     C_dereg_2028 v7 v9 v10 v11
                       -> case coe v4 of
                            C_dereg_2128 v15
                              -> coe
                                   (\ v16 ->
                                      case coe v16 of
                                        MAlonzo.Code.Ledger.Certs.C_CERT'45'deleg_1276 v27
                                          -> coe
                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_CERT'45'deleg_1458
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Convert.d_conv'8305'_34
                                                  (coe du_DELEGToConf_2364)
                                                  (coe
                                                     C_'10214'_'44'_'44'_'44'_'10215''42'_2188
                                                     (coe v1) (coe v2)
                                                     (coe C_dereg_2028 v7 v9 v10 v11)
                                                     (coe C_dereg_2128 v15))
                                                  v27)
                                        _ -> MAlonzo.RTE.mazUnreachableError)
                            _ -> MAlonzo.RTE.mazUnreachableError
                     C_regdrep_2038 v9
                       -> case coe v4 of
                            C_regdrep_2100 v14
                              -> coe
                                   (\ v15 ->
                                      case coe v15 of
                                        MAlonzo.Code.Ledger.Certs.C_CERT'45'vdel_1280 v22
                                          -> coe
                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_CERT'45'vdel_1462
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Convert.d_conv'8305'_34
                                                  (coe du_GOVCERTToConf_2406)
                                                  (coe
                                                     C_'10214'_'44'_'44'_'44'_'10215''42'_2188
                                                     (coe v1) (coe v2) (coe C_regdrep_2038 v9)
                                                     (coe C_regdrep_2100 v14))
                                                  v22)
                                        _ -> MAlonzo.RTE.mazUnreachableError)
                            _ -> MAlonzo.RTE.mazUnreachableError
                     C_deregdrep_2046 v8
                       -> case coe v4 of
                            C_deregdrep_2108 v12 v13
                              -> coe
                                   (\ v14 ->
                                      case coe v14 of
                                        MAlonzo.Code.Ledger.Certs.C_CERT'45'vdel_1280 v21
                                          -> coe
                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_CERT'45'vdel_1462
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Convert.d_conv'8305'_34
                                                  (coe du_GOVCERTToConf_2406)
                                                  (coe
                                                     C_'10214'_'44'_'44'_'44'_'10215''42'_2188
                                                     (coe v1) (coe v2) (coe C_deregdrep_2046 v8)
                                                     (coe C_deregdrep_2108 v12 v13))
                                                  v21)
                                        _ -> MAlonzo.RTE.mazUnreachableError)
                            _ -> MAlonzo.RTE.mazUnreachableError
                     C_regpool_2054 v8
                       -> coe
                            seq (coe v4)
                            (coe
                               (\ v9 ->
                                  case coe v9 of
                                    MAlonzo.Code.Ledger.Certs.C_CERT'45'pool_1278 v20
                                      -> coe
                                           MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_CERT'45'pool_1460
                                           (coe
                                              MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Convert.du_conv_84
                                              (coe du_POOLToConf_2384) (coe v20))
                                    _ -> MAlonzo.RTE.mazUnreachableError))
                     C_retirepool_2062 v8
                       -> coe
                            seq (coe v4)
                            (coe
                               (\ v9 ->
                                  case coe v9 of
                                    MAlonzo.Code.Ledger.Certs.C_CERT'45'pool_1278 v20
                                      -> coe
                                           MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_CERT'45'pool_1460
                                           (coe
                                              MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Convert.du_conv_84
                                              (coe du_POOLToConf_2384) (coe v20))
                                    _ -> MAlonzo.RTE.mazUnreachableError))
                     C_ccreghot_2070 v8
                       -> case coe v4 of
                            C_ccreghot_2152 v12
                              -> coe
                                   (\ v13 ->
                                      case coe v13 of
                                        MAlonzo.Code.Ledger.Certs.C_CERT'45'vdel_1280 v20
                                          -> coe
                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_CERT'45'vdel_1462
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Convert.d_conv'8305'_34
                                                  (coe du_GOVCERTToConf_2406)
                                                  (coe
                                                     C_'10214'_'44'_'44'_'44'_'10215''42'_2188
                                                     (coe v1) (coe v2) (coe C_ccreghot_2070 v8)
                                                     (coe C_ccreghot_2152 v12))
                                                  v20)
                                        _ -> MAlonzo.RTE.mazUnreachableError)
                            _ -> MAlonzo.RTE.mazUnreachableError
                     C_reg_2078 v8
                       -> case coe v4 of
                            C_reg_2160 v12
                              -> coe
                                   (\ v13 ->
                                      case coe v13 of
                                        MAlonzo.Code.Ledger.Certs.C_CERT'45'deleg_1276 v24
                                          -> coe
                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_CERT'45'deleg_1458
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Convert.d_conv'8305'_34
                                                  (coe du_DELEGToConf_2364)
                                                  (coe
                                                     C_'10214'_'44'_'44'_'44'_'10215''42'_2188
                                                     (coe v1) (coe v2) (coe C_reg_2078 v8)
                                                     (coe C_reg_2160 v12))
                                                  v24)
                                        _ -> MAlonzo.RTE.mazUnreachableError)
                            _ -> MAlonzo.RTE.mazUnreachableError
                     _ -> MAlonzo.RTE.mazUnreachableError
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.Conformance.Equivalence.Certs._.pp
d_pp_2482 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1708 ->
  MAlonzo.Code.Ledger.Certs.T_CertEnv_866 ->
  MAlonzo.Code.Ledger.Certs.T_CertState_930 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_830] ->
  MAlonzo.Code.Ledger.Certs.T_CertState_930 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242
d_pp_2482 ~v0 v1 ~v2 ~v3 ~v4 = du_pp_2482 v1
du_pp_2482 ::
  MAlonzo.Code.Ledger.Certs.T_CertEnv_866 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242
du_pp_2482 v0 = coe MAlonzo.Code.Ledger.Certs.d_pp_880 (coe v0)
-- Ledger.Conway.Conformance.Equivalence.Certs.CERTS'ToConf
d_CERTS''ToConf_2492 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1708 ->
  MAlonzo.Code.Ledger.Certs.T_CertEnv_866 ->
  MAlonzo.Code.Ledger.Certs.T_CertState_930 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_830] ->
  MAlonzo.Code.Ledger.Certs.T_CertState_930 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Convert.T__'8866'_'11078''8305'__16
d_CERTS''ToConf_2492 v0 ~v1 v2 ~v3 v4 ~v5
  = du_CERTS''ToConf_2492 v0 v2 v4
du_CERTS''ToConf_2492 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Certs.T_CertEnv_866 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_830] ->
  MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Convert.T__'8866'_'11078''8305'__16
du_CERTS''ToConf_2492 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Convert.C__'8866'_'11078''8305'_'46'constructor_41
      (coe
         (\ v3 v4 ->
            case coe v4 of
              MAlonzo.Code.Interface.STS.C_BS'45'base_70 v8
                -> coe
                     seq (coe v8)
                     (coe
                        MAlonzo.Code.Interface.STS.C_BS'45'base_70
                        (coe MAlonzo.Code.Interface.STS.C_Id'45'nop_108))
              MAlonzo.Code.Interface.STS.C_BS'45'ind_72 v8 v11 v12
                -> case coe v2 of
                     (:) v13 v14
                       -> coe
                            MAlonzo.Code.Interface.STS.C_BS'45'ind_72
                            (coe
                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'10215''7580''738'_1084
                               (coe
                                  MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'44'_'10215''7496'_1052
                                  (coe
                                     MAlonzo.Code.Ledger.Certs.d_voteDelegs_898
                                     (coe MAlonzo.Code.Ledger.Certs.d_dState_938 (coe v8)))
                                  (coe
                                     MAlonzo.Code.Ledger.Certs.d_stakeDelegs_900
                                     (coe MAlonzo.Code.Ledger.Certs.d_dState_938 (coe v8)))
                                  (coe
                                     MAlonzo.Code.Ledger.Certs.d_rewards_902
                                     (coe MAlonzo.Code.Ledger.Certs.d_dState_938 (coe v8)))
                                  (coe
                                     d_deps'7496'_2180
                                     (coe
                                        du_updateCertDeps_2258 (coe v0)
                                        (coe MAlonzo.Code.Ledger.Certs.d_pp_880 (coe v1)) (coe v13)
                                        (coe v3))))
                               (coe MAlonzo.Code.Ledger.Certs.d_pState_940 (coe v8))
                               (coe
                                  MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'10215''7515'_1068
                                  (coe
                                     MAlonzo.Code.Ledger.Certs.d_dreps_924
                                     (coe MAlonzo.Code.Ledger.Certs.d_gState_942 (coe v8)))
                                  (coe
                                     MAlonzo.Code.Ledger.Certs.d_ccHotKeys_926
                                     (coe MAlonzo.Code.Ledger.Certs.d_gState_942 (coe v8)))
                                  (coe
                                     d_deps'7501'_2182
                                     (coe
                                        du_updateCertDeps_2258 (coe v0)
                                        (coe MAlonzo.Code.Ledger.Certs.d_pp_880 (coe v1)) (coe v13)
                                        (coe v3)))))
                            (coe
                               MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Convert.d_conv'8305'_34
                               (coe du_CERTToConf_2434) v3 v11)
                            (coe
                               MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Convert.d_conv'8305'_34
                               (coe du_CERTS''ToConf_2492 (coe v0) (coe v1) (coe v14))
                               (coe
                                  du_updateCertDeps_2258 (coe v0)
                                  (coe MAlonzo.Code.Ledger.Certs.d_pp_880 (coe v1)) (coe v13)
                                  (coe v3))
                               v12)
                     _ -> MAlonzo.RTE.mazUnreachableError
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.Conformance.Equivalence.Certs._.pp
d_pp_2516 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1708 ->
  MAlonzo.Code.Ledger.Certs.T_CertEnv_866 ->
  MAlonzo.Code.Ledger.Certs.T_CertState_930 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_830] ->
  MAlonzo.Code.Ledger.Certs.T_CertState_930 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242
d_pp_2516 ~v0 v1 ~v2 ~v3 ~v4 = du_pp_2516 v1
du_pp_2516 ::
  MAlonzo.Code.Ledger.Certs.T_CertEnv_866 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242
du_pp_2516 v0 = coe MAlonzo.Code.Ledger.Certs.d_pp_880 (coe v0)
-- Ledger.Conway.Conformance.Equivalence.Certs.CERTSToConf
d_CERTSToConf_2526 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1708 ->
  MAlonzo.Code.Ledger.Certs.T_CertEnv_866 ->
  MAlonzo.Code.Ledger.Certs.T_CertState_930 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_830] ->
  MAlonzo.Code.Ledger.Certs.T_CertState_930 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Convert.T__'8866'_'11078''8305'__16
d_CERTSToConf_2526 v0 ~v1 v2 ~v3 v4 ~v5
  = du_CERTSToConf_2526 v0 v2 v4
du_CERTSToConf_2526 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Certs.T_CertEnv_866 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_830] ->
  MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Convert.T__'8866'_'11078''8305'__16
du_CERTSToConf_2526 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Convert.C__'8866'_'11078''8305'_'46'constructor_41
      (coe
         (\ v3 v4 ->
            case coe v4 of
              MAlonzo.Code.Interface.STS.C_RTC_126 v7 v10
                -> case coe v10 of
                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v11 v12
                       -> coe
                            MAlonzo.Code.Interface.STS.C_RTC_126
                            (coe
                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'10215''7580''738'_1084
                               (coe
                                  MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'44'_'10215''7496'_1052
                                  (coe
                                     MAlonzo.Code.Ledger.Certs.d_voteDelegs_898
                                     (coe MAlonzo.Code.Ledger.Certs.d_dState_938 (coe v7)))
                                  (coe
                                     MAlonzo.Code.Ledger.Certs.d_stakeDelegs_900
                                     (coe MAlonzo.Code.Ledger.Certs.d_dState_938 (coe v7)))
                                  (coe
                                     MAlonzo.Code.Ledger.Certs.d_rewards_902
                                     (coe MAlonzo.Code.Ledger.Certs.d_dState_938 (coe v7)))
                                  (coe d_deps'7496'_2180 (coe v3)))
                               (coe MAlonzo.Code.Ledger.Certs.d_pState_940 (coe v7))
                               (coe
                                  MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'10215''7515'_1068
                                  (coe
                                     MAlonzo.Code.Ledger.Certs.d_dreps_924
                                     (coe MAlonzo.Code.Ledger.Certs.d_gState_942 (coe v7)))
                                  (coe
                                     MAlonzo.Code.Ledger.Certs.d_ccHotKeys_926
                                     (coe MAlonzo.Code.Ledger.Certs.d_gState_942 (coe v7)))
                                  (coe d_deps'7501'_2182 (coe v3))))
                            (coe
                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                               (coe
                                  MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Convert.d_conv'8305'_34
                                  (coe du_CERTBASEToConf_2336)
                                  (coe
                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                     (coe d_deps'7496'_2180 (coe v3))
                                     (coe d_deps'7501'_2182 (coe v3)))
                                  v11)
                               (coe
                                  MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Convert.d_conv'8305'_34
                                  (coe du_CERTS''ToConf_2492 (coe v0) (coe v1) (coe v2)) v3 v12))
                     _ -> MAlonzo.RTE.mazUnreachableError
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.Conformance.Equivalence.Certs.DELEGFromConf
d_DELEGFromConf_2542 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1708 ->
  MAlonzo.Code.Ledger.Certs.T_DelegEnv_946 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1034 ->
  MAlonzo.Code.Ledger.Certs.T_DCert_830 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1034 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Convert.T__'8866'_'11078''8305'__16
d_DELEGFromConf_2542 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_DELEGFromConf_2542
du_DELEGFromConf_2542 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Convert.T__'8866'_'11078''8305'__16
du_DELEGFromConf_2542
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Convert.C__'8866'_'11078''8305'_'46'constructor_41
      (coe
         (\ v0 v1 ->
            case coe v1 of
              MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_DELEG'45'delegate_1304 v13
                -> coe MAlonzo.Code.Ledger.Certs.C_DELEG'45'delegate_1122 v13
              MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_DELEG'45'dereg_1306 v4 v12
                -> case coe v12 of
                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v13 v14
                       -> coe MAlonzo.Code.Ledger.Certs.C_DELEG'45'dereg_1124 v13
                     _ -> MAlonzo.RTE.mazUnreachableError
              MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_DELEG'45'reg_1376 v11
                -> coe MAlonzo.Code.Ledger.Certs.C_DELEG'45'reg_1194 v11
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.Conformance.Equivalence.Certs.POOLFromConf
d_POOLFromConf_2558 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1708 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Ledger.Certs.T_PState_906 ->
  MAlonzo.Code.Ledger.Certs.T_DCert_830 ->
  MAlonzo.Code.Ledger.Certs.T_PState_906 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Convert.T__'8866'_'11078''8305'__16
d_POOLFromConf_2558 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 = du_POOLFromConf_2558
du_POOLFromConf_2558 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Convert.T__'8866'_'11078''8305'__16
du_POOLFromConf_2558
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Convert.C__'8866'_'11078''8305'_'46'constructor_41
      (coe
         (\ v0 v1 ->
            case coe v1 of
              MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_POOL'45'regpool_1232
                -> coe MAlonzo.Code.Ledger.Certs.C_POOL'45'regpool_1196
              MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_POOL'45'retirepool_1234
                -> coe MAlonzo.Code.Ledger.Certs.C_POOL'45'retirepool_1198
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.Conformance.Equivalence.Certs.GOVCERTFromConf
d_GOVCERTFromConf_2570 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1708 ->
  MAlonzo.Code.Ledger.Certs.T_CertEnv_866 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_GState_1054 ->
  MAlonzo.Code.Ledger.Certs.T_DCert_830 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_GState_1054 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Convert.T__'8866'_'11078''8305'__16
d_GOVCERTFromConf_2570 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_GOVCERTFromConf_2570
du_GOVCERTFromConf_2570 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Convert.T__'8866'_'11078''8305'__16
du_GOVCERTFromConf_2570
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Convert.C__'8866'_'11078''8305'_'46'constructor_41
      (coe
         (\ v0 v1 ->
            case coe v1 of
              MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_GOVCERT'45'regdrep_1450 v13
                -> coe MAlonzo.Code.Ledger.Certs.C_GOVCERT'45'regdrep_1270 v13
              MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_GOVCERT'45'deregdrep_1452 v12
                -> case coe v12 of
                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v13 v14
                       -> coe MAlonzo.Code.Ledger.Certs.C_GOVCERT'45'deregdrep_1272 v13
                     _ -> MAlonzo.RTE.mazUnreachableError
              MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_GOVCERT'45'ccreghot_1454 v12
                -> coe MAlonzo.Code.Ledger.Certs.C_GOVCERT'45'ccreghot_1274 v12
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.Conformance.Equivalence.Certs.C._._⊢_⇀⦇_,GOVCERT⦈_
d__'8866'_'8640''10631'_'44'GOVCERT'10632'__2585 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Equivalence.Certs.CERTFromConf
d_CERTFromConf_2586 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1708 ->
  MAlonzo.Code.Ledger.Certs.T_CertEnv_866 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1070 ->
  MAlonzo.Code.Ledger.Certs.T_DCert_830 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1070 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Convert.T__'8866'_'11078''8305'__16
d_CERTFromConf_2586 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 = du_CERTFromConf_2586
du_CERTFromConf_2586 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Convert.T__'8866'_'11078''8305'__16
du_CERTFromConf_2586
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Convert.C__'8866'_'11078''8305'_'46'constructor_41
      (coe
         (\ v0 v1 ->
            case coe v1 of
              MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_CERT'45'deleg_1458 v12
                -> coe
                     MAlonzo.Code.Ledger.Certs.C_CERT'45'deleg_1276
                     (coe
                        MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Convert.du_conv_84
                        (coe du_DELEGFromConf_2542) (coe v12))
              MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_CERT'45'pool_1460 v12
                -> coe
                     MAlonzo.Code.Ledger.Certs.C_CERT'45'pool_1278
                     (coe
                        MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Convert.du_conv_84
                        (coe du_POOLFromConf_2558) (coe v12))
              MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_CERT'45'vdel_1462 v8
                -> coe
                     MAlonzo.Code.Ledger.Certs.C_CERT'45'vdel_1280
                     (coe
                        MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Convert.du_conv_84
                        (coe du_GOVCERTFromConf_2570) (coe v8))
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.Conformance.Equivalence.Certs.CERTBASEFromConf
d_CERTBASEFromConf_2600 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1708 ->
  MAlonzo.Code.Ledger.Certs.T_CertEnv_866 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1070 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1070 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Convert.T__'8866'_'11078''8305'__16
d_CERTBASEFromConf_2600 ~v0 ~v1 ~v2 ~v3 ~v4
  = du_CERTBASEFromConf_2600
du_CERTBASEFromConf_2600 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Convert.T__'8866'_'11078''8305'__16
du_CERTBASEFromConf_2600
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Convert.C__'8866'_'11078''8305'_'46'constructor_41
      (coe
         (\ v0 v1 ->
            case coe v1 of
              MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_CERT'45'base_1542 v15
                -> coe MAlonzo.Code.Ledger.Certs.C_CERT'45'base_1358 v15
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.Conformance.Equivalence.Certs.CERTS'FromConf
d_CERTS''FromConf_2612 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1708 ->
  MAlonzo.Code.Ledger.Certs.T_CertEnv_866 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1070 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_830] ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1070 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Convert.T__'8866'_'11078''8305'__16
d_CERTS''FromConf_2612 ~v0 ~v1 ~v2 ~v3 v4 ~v5
  = du_CERTS''FromConf_2612 v4
du_CERTS''FromConf_2612 ::
  [MAlonzo.Code.Ledger.Certs.T_DCert_830] ->
  MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Convert.T__'8866'_'11078''8305'__16
du_CERTS''FromConf_2612 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Convert.C__'8866'_'11078''8305'_'46'constructor_41
      (coe
         (\ v1 v2 ->
            case coe v2 of
              MAlonzo.Code.Interface.STS.C_BS'45'base_70 v6
                -> coe
                     seq (coe v6)
                     (coe
                        MAlonzo.Code.Interface.STS.C_BS'45'base_70
                        (coe MAlonzo.Code.Interface.STS.C_Id'45'nop_108))
              MAlonzo.Code.Interface.STS.C_BS'45'ind_72 v6 v9 v10
                -> case coe v0 of
                     (:) v11 v12
                       -> coe
                            MAlonzo.Code.Interface.STS.C_BS'45'ind_72
                            (coe
                               MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Convert.du_conv_84
                               (coe du_CertStFromConf_2318) (coe v6))
                            (coe
                               MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Convert.du_conv_84
                               (coe du_CERTFromConf_2586) (coe v9))
                            (coe
                               MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Convert.du_conv_84
                               (coe du_CERTS''FromConf_2612 (coe v12)) (coe v10))
                     _ -> MAlonzo.RTE.mazUnreachableError
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.Conformance.Equivalence.Certs.CERTSFromConf
d_CERTSFromConf_2626 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1708 ->
  MAlonzo.Code.Ledger.Certs.T_CertEnv_866 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1070 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_830] ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1070 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Convert.T__'8866'_'11078''8305'__16
d_CERTSFromConf_2626 ~v0 ~v1 ~v2 ~v3 v4 ~v5
  = du_CERTSFromConf_2626 v4
du_CERTSFromConf_2626 ::
  [MAlonzo.Code.Ledger.Certs.T_DCert_830] ->
  MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Convert.T__'8866'_'11078''8305'__16
du_CERTSFromConf_2626 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Convert.C__'8866'_'11078''8305'_'46'constructor_41
      (coe
         (\ v1 v2 ->
            case coe v2 of
              MAlonzo.Code.Interface.STS.C_RTC_126 v5 v8
                -> case coe v8 of
                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v9 v10
                       -> coe
                            MAlonzo.Code.Interface.STS.C_RTC_126
                            (coe
                               MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Convert.du_conv_84
                               (coe du_CertStFromConf_2318) (coe v5))
                            (coe
                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                               (coe
                                  MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Convert.du_conv_84
                                  (coe du_CERTBASEFromConf_2600) (coe v9))
                               (coe
                                  MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Convert.du_conv_84
                                  (coe du_CERTS''FromConf_2612 (coe v0)) (coe v10)))
                     _ -> MAlonzo.RTE.mazUnreachableError
              _ -> MAlonzo.RTE.mazUnreachableError))
