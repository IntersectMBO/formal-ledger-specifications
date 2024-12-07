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

module MAlonzo.Code.Ledger.Conway.Conformance.Utxo where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Bool
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Axiom.Set
import qualified MAlonzo.Code.Axiom.Set.Map
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Class.DecEq.Instances
import qualified MAlonzo.Code.Class.Decidable.Core
import qualified MAlonzo.Code.Class.Decidable.Instances
import qualified MAlonzo.Code.Class.IsSet
import qualified MAlonzo.Code.Data.Integer.Base
import qualified MAlonzo.Code.Data.List.Relation.Unary.Any
import qualified MAlonzo.Code.Data.Rational.Base
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Ledger.Abstract
import qualified MAlonzo.Code.Ledger.Address
import qualified MAlonzo.Code.Ledger.Certs
import qualified MAlonzo.Code.Ledger.GovernanceActions
import qualified MAlonzo.Code.Ledger.Interface.HasCoin
import qualified MAlonzo.Code.Ledger.PParams
import qualified MAlonzo.Code.Ledger.ScriptValidation
import qualified MAlonzo.Code.Ledger.TokenAlgebra
import qualified MAlonzo.Code.Ledger.Transaction
import qualified MAlonzo.Code.Ledger.Types.Epoch
import qualified MAlonzo.Code.Ledger.Utxo
import qualified MAlonzo.Code.Prelude
import qualified MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory

-- _._≤ᵗ_
d__'8804''7511'__20 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny -> AgdaAny -> ()
d__'8804''7511'__20 = erased
-- _.NetworkId
d_NetworkId_210 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny
d_NetworkId_210 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_NetworkId_288
      (coe
         MAlonzo.Code.Ledger.Transaction.d_globalConstants_1200 (coe v0))
-- _.Tx
d_Tx_358 a0 = ()
-- _.coin
d_coin_418 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny -> Integer
d_coin_418 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_coin_200
      (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2216 (coe v0))
-- _.getValueʰ
d_getValue'688'_454 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_getValue'688'_454 ~v0 = du_getValue'688'_454
du_getValue'688'_454 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_getValue'688'_454
  = coe MAlonzo.Code.Ledger.Transaction.du_getValue'688'_2658
-- _.inject
d_inject_464 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  Integer -> AgdaAny
d_inject_464 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_inject_202
      (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2216 (coe v0))
-- _.netId
d_netId_506 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
d_netId_506 ~v0 = du_netId_506
du_netId_506 :: MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
du_netId_506 = coe MAlonzo.Code.Ledger.Address.du_netId_112
-- _.txOutHash
d_txOutHash_566 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txOutHash_566 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txOutHash_2648 (coe v0)
-- _.Tx.body
d_body_1376 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2624 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2522
d_body_1376 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_body_2634 (coe v0)
-- _.Tx.isValid
d_isValid_1378 :: MAlonzo.Code.Ledger.Transaction.T_Tx_2624 -> Bool
d_isValid_1378 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_isValid_2638 (coe v0)
-- _.Tx.txAD
d_txAD_1380 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2624 -> Maybe AgdaAny
d_txAD_1380 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txAD_2640 (coe v0)
-- _.Tx.wits
d_wits_1382 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2624 ->
  MAlonzo.Code.Ledger.Transaction.T_TxWitnesses_2604
d_wits_1382 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_wits_2636 (coe v0)
-- Ledger.Conway.Conformance.Utxo._.collectPhaseTwoScriptInputs
d_collectPhaseTwoScriptInputs_1510 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1710 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2624 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collectPhaseTwoScriptInputs_1510 v0 v1
  = coe
      MAlonzo.Code.Ledger.ScriptValidation.d_collectPhaseTwoScriptInputs_2352
      (coe v0) (coe v1)
-- Ledger.Conway.Conformance.Utxo._.evalScripts
d_evalScripts_1520 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1710 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2624 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Bool
d_evalScripts_1520 v0 v1
  = coe
      MAlonzo.Code.Ledger.ScriptValidation.d_evalScripts_2370 (coe v0)
      (coe v1)
-- Ledger.Conway.Conformance.Utxo.L._._*↓_
d__'42''8595'__1856 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1710 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 -> Integer -> Integer
d__'42''8595'__1856 ~v0 v1 v2 = du__'42''8595'__1856 v1 v2
du__'42''8595'__1856 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 -> Integer -> Integer
du__'42''8595'__1856 v0 v1
  = coe
      MAlonzo.Code.Data.Integer.Base.d_'8739'_'8739'_18
      (coe
         MAlonzo.Code.Data.Rational.Base.d_floor_346
         (coe
            MAlonzo.Code.Data.Rational.Base.d__'42'__276 (coe v0)
            (coe
               MAlonzo.Code.Data.Rational.Base.du__'47'__156 (coe v1)
               (coe (1 :: Integer)))))
-- Ledger.Conway.Conformance.Utxo.L._._=>ᵇ_
d__'61''62''7495'__1858 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1710 ->
  Bool -> Bool -> Bool
d__'61''62''7495'__1858 ~v0 ~v1 = du__'61''62''7495'__1858
du__'61''62''7495'__1858 :: Bool -> Bool -> Bool
du__'61''62''7495'__1858
  = coe MAlonzo.Code.Ledger.Utxo.du__'61''62''7495'__2572
-- Ledger.Conway.Conformance.Utxo.L._._≡?_
d__'8801''63'__1860 a0 a1 a2 a3 a4 = ()
-- Ledger.Conway.Conformance.Utxo.L._._≤ᵇ_
d__'8804''7495'__1862 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1710 ->
  Integer -> Integer -> Bool
d__'8804''7495'__1862 ~v0 ~v1 = du__'8804''7495'__1862
du__'8804''7495'__1862 :: Integer -> Integer -> Bool
du__'8804''7495'__1862
  = coe MAlonzo.Code.Ledger.Utxo.du__'8804''7495'__2578
-- Ledger.Conway.Conformance.Utxo.L._._≥ᵇ_
d__'8805''7495'__1864 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1710 ->
  Integer -> Integer -> Bool
d__'8805''7495'__1864 ~v0 ~v1 = du__'8805''7495'__1864
du__'8805''7495'__1864 :: Integer -> Integer -> Bool
du__'8805''7495'__1864
  = coe MAlonzo.Code.Ledger.Utxo.du__'8805''7495'__2580
-- Ledger.Conway.Conformance.Utxo.L._._⊢_⇀⦇_,UTXOS⦈_
d__'8866'_'8640''10631'_'44'UTXOS'10632'__1866 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Utxo.L._._⊢_⇀⦇_,UTXO⦈_
d__'8866'_'8640''10631'_'44'UTXO'10632'__1868 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Utxo.L._.Dec-ValidCertDeposits
d_Dec'45'ValidCertDeposits_1870 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1710 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_832] ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'ValidCertDeposits_1870 v0 ~v1
  = du_Dec'45'ValidCertDeposits_1870 v0
du_Dec'45'ValidCertDeposits_1870 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_832] ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'ValidCertDeposits_1870 v0
  = coe
      MAlonzo.Code.Ledger.Utxo.du_Dec'45'ValidCertDeposits_2238 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.Dec-inInterval
d_Dec'45'inInterval_1872 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1710 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'inInterval_1872 v0 ~v1 = du_Dec'45'inInterval_1872 v0
du_Dec'45'inInterval_1872 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'inInterval_1872 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_Dec'45'inInterval_2466 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.HasCoin-UTxO
d_HasCoin'45'UTxO_1874 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1710 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
d_HasCoin'45'UTxO_1874 v0 ~v1 = du_HasCoin'45'UTxO_1874 v0
du_HasCoin'45'UTxO_1874 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
du_HasCoin'45'UTxO_1874 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_HasCoin'45'UTxO_1986 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.HasCoin-UTxOState
d_HasCoin'45'UTxOState_1876 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1710 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
d_HasCoin'45'UTxOState_1876 v0 ~v1
  = du_HasCoin'45'UTxOState_1876 v0
du_HasCoin'45'UTxOState_1876 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
du_HasCoin'45'UTxOState_1876 v0
  = coe
      MAlonzo.Code.Ledger.Utxo.du_HasCoin'45'UTxOState_2568 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.Scripts-No-premises
d_Scripts'45'No'45'premises_1880 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1710 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1910 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1924 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2624 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_Scripts'45'No'45'premises_1880 v0 v1
  = coe
      MAlonzo.Code.Ledger.Utxo.d_Scripts'45'No'45'premises_2958 (coe v0)
      (coe v1)
-- Ledger.Conway.Conformance.Utxo.L._.Scripts-Yes-premises
d_Scripts'45'Yes'45'premises_1884 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1710 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1910 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1924 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2624 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_Scripts'45'Yes'45'premises_1884 v0 v1
  = coe
      MAlonzo.Code.Ledger.Utxo.d_Scripts'45'Yes'45'premises_2956 (coe v0)
      (coe v1)
-- Ledger.Conway.Conformance.Utxo.L._.UTXO-premises
d_UTXO'45'premises_1888 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1710 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2624 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1910 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1924 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTXO'45'premises_1888 v0 v1
  = coe
      MAlonzo.Code.Ledger.Utxo.d_UTXO'45'premises_3148 (coe v0) (coe v1)
-- Ledger.Conway.Conformance.Utxo.L._.UTxOEnv
d_UTxOEnv_1890 a0 a1 = ()
-- Ledger.Conway.Conformance.Utxo.L._.UTxOState
d_UTxOState_1892 a0 a1 = ()
-- Ledger.Conway.Conformance.Utxo.L._.ValidCertDeposits
d_ValidCertDeposits_1894 a0 a1 a2 a3 a4 = ()
-- Ledger.Conway.Conformance.Utxo.L._.balance
d_balance_1898 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1710 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_balance_1898 v0 ~v1 = du_balance_1898 v0
du_balance_1898 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_balance_1898 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_balance_1960 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.cbalance
d_cbalance_1902 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1710 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_cbalance_1902 v0 ~v1 = du_cbalance_1902 v0
du_cbalance_1902 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_cbalance_1902 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_cbalance_1966 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.certDeposit
d_certDeposit_1906 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1710 ->
  MAlonzo.Code.Ledger.Certs.T_DCert_832 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_certDeposit_1906 ~v0 ~v1 = du_certDeposit_1906
du_certDeposit_1906 ::
  MAlonzo.Code.Ledger.Certs.T_DCert_832 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_certDeposit_1906
  = coe MAlonzo.Code.Ledger.Utxo.du_certDeposit_1988
-- Ledger.Conway.Conformance.Utxo.L._.certRefund
d_certRefund_1908 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1710 ->
  MAlonzo.Code.Ledger.Certs.T_DCert_832 ->
  [MAlonzo.Code.Ledger.Certs.T_DepositPurpose_812]
d_certRefund_1908 ~v0 ~v1 = du_certRefund_1908
du_certRefund_1908 ::
  MAlonzo.Code.Ledger.Certs.T_DCert_832 ->
  [MAlonzo.Code.Ledger.Certs.T_DepositPurpose_812]
du_certRefund_1908
  = coe MAlonzo.Code.Ledger.Utxo.du_certRefund_2006
-- Ledger.Conway.Conformance.Utxo.L._.coinPolicies
d_coinPolicies_1910 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1710 -> [AgdaAny]
d_coinPolicies_1910 v0 ~v1 = du_coinPolicies_1910 v0
du_coinPolicies_1910 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  [AgdaAny]
du_coinPolicies_1910 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_coinPolicies_2596 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.consumed
d_consumed_1912 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1710 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1924 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2522 -> AgdaAny
d_consumed_1912 v0 ~v1 = du_consumed_1912 v0
du_consumed_1912 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1924 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2522 -> AgdaAny
du_consumed_1912 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_consumed_2778 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.depositRefunds
d_depositRefunds_1916 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1710 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1924 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2522 -> Integer
d_depositRefunds_1916 v0 ~v1 = du_depositRefunds_1916 v0
du_depositRefunds_1916 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1924 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2522 -> Integer
du_depositRefunds_1916 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_depositRefunds_2762 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.depositsChange
d_depositsChange_1918 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1710 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2522 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_depositsChange_1918 v0 ~v1 = du_depositsChange_1918 v0
du_depositsChange_1918 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2522 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_depositsChange_1918 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_depositsChange_2436 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.feesOK
d_feesOK_1924 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1710 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2624 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Bool
d_feesOK_1924 v0 v1
  = coe MAlonzo.Code.Ledger.Utxo.d_feesOK_2602 (coe v0) (coe v1)
-- Ledger.Conway.Conformance.Utxo.L._.getDataHashes
d_getDataHashes_1926 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1710 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> [AgdaAny]
d_getDataHashes_1926 ~v0 ~v1 = du_getDataHashes_1926
du_getDataHashes_1926 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> [AgdaAny]
du_getDataHashes_1926
  = coe MAlonzo.Code.Ledger.Utxo.du_getDataHashes_1832
-- Ledger.Conway.Conformance.Utxo.L._.getInputHashes
d_getInputHashes_1928 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1710 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2624 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
d_getInputHashes_1928 v0 ~v1 = du_getInputHashes_1928 v0
du_getInputHashes_1928 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2624 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
du_getInputHashes_1928 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_getInputHashes_1836 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.inInterval
d_inInterval_1930 a0 a1 a2 a3 = ()
-- Ledger.Conway.Conformance.Utxo.L._.isAdaOnlyᵇ
d_isAdaOnly'7495'_1932 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1710 ->
  AgdaAny -> Bool
d_isAdaOnly'7495'_1932 v0 ~v1 = du_isAdaOnly'7495'_1932 v0
du_isAdaOnly'7495'_1932 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny -> Bool
du_isAdaOnly'7495'_1932 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_isAdaOnly'7495'_2598 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.isTwoPhaseScriptAddress
d_isTwoPhaseScriptAddress_1934 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1710 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2624 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Bool
d_isTwoPhaseScriptAddress_1934 v0 ~v1
  = du_isTwoPhaseScriptAddress_1934 v0
du_isTwoPhaseScriptAddress_1934 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2624 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Bool
du_isTwoPhaseScriptAddress_1934 v0
  = coe
      MAlonzo.Code.Ledger.Utxo.du_isTwoPhaseScriptAddress_1820 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.minfee
d_minfee_1938 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1710 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2624 -> Integer
d_minfee_1938 v0 v1
  = coe MAlonzo.Code.Ledger.Utxo.d_minfee_1978 (coe v0) (coe v1)
-- Ledger.Conway.Conformance.Utxo.L._.newDeposits
d_newDeposits_1940 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1710 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1924 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2522 -> Integer
d_newDeposits_1940 v0 ~v1 = du_newDeposits_1940 v0
du_newDeposits_1940 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1924 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2522 -> Integer
du_newDeposits_1940 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_newDeposits_2770 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.outs
d_outs_1944 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1710 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2522 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_outs_1944 ~v0 ~v1 = du_outs_1944
du_outs_1944 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2522 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_outs_1944 = coe MAlonzo.Code.Ledger.Utxo.du_outs_1954
-- Ledger.Conway.Conformance.Utxo.L._.produced
d_produced_1946 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1710 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1924 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2522 -> AgdaAny
d_produced_1946 v0 ~v1 = du_produced_1946 v0
du_produced_1946 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1924 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2522 -> AgdaAny
du_produced_1946 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_produced_2786 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.proposalDepositsΔ
d_proposalDepositsΔ_1948 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1710 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_752] ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2522 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_proposalDepositsΔ_1948 v0 ~v1 = du_proposalDepositsΔ_1948 v0
du_proposalDepositsΔ_1948 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_752] ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2522 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_proposalDepositsΔ_1948 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_proposalDepositsΔ_2382 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.refScriptsSize
d_refScriptsSize_1950 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1710 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2624 -> Integer
d_refScriptsSize_1950 v0 v1
  = coe
      MAlonzo.Code.Ledger.Utxo.d_refScriptsSize_1970 (coe v0) (coe v1)
-- Ledger.Conway.Conformance.Utxo.L._.totExUnits
d_totExUnits_1960 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1710 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2624 -> AgdaAny
d_totExUnits_1960 v0 ~v1 = du_totExUnits_1960 v0
du_totExUnits_1960 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2624 -> AgdaAny
du_totExUnits_1960 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_totExUnits_1892 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.updateCertDeposits
d_updateCertDeposits_1962 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1710 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_832] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateCertDeposits_1962 v0 ~v1 = du_updateCertDeposits_1962 v0
du_updateCertDeposits_1962 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_832] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateCertDeposits_1962 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_updateCertDeposits_2240 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.updateDeposits
d_updateDeposits_1964 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1710 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2522 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateDeposits_1964 v0 ~v1 = du_updateDeposits_1964 v0
du_updateDeposits_1964 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2522 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateDeposits_1964 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_updateDeposits_2330 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.updateProposalDeposits
d_updateProposalDeposits_1966 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1710 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_752] ->
  AgdaAny ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateProposalDeposits_1966 v0 ~v1
  = du_updateProposalDeposits_1966 v0
du_updateProposalDeposits_1966 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_752] ->
  AgdaAny ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateProposalDeposits_1966 v0
  = coe
      MAlonzo.Code.Ledger.Utxo.du_updateProposalDeposits_2318 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.utxoEntrySize
d_utxoEntrySize_1970 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1710 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_utxoEntrySize_1970 v0 ~v1 = du_utxoEntrySize_1970 v0
du_utxoEntrySize_1970 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_utxoEntrySize_1970 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_utxoEntrySize_1906 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.utxoEntrySizeWithoutVal
d_utxoEntrySizeWithoutVal_1972 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1710 -> Integer
d_utxoEntrySizeWithoutVal_1972 ~v0
  = du_utxoEntrySizeWithoutVal_1972
du_utxoEntrySizeWithoutVal_1972 :: Integer
du_utxoEntrySizeWithoutVal_1972 = coe (8 :: Integer)
-- Ledger.Conway.Conformance.Utxo.L._.≟-∅ᵇ
d_'8799''45''8709''7495'_1974 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1710 ->
  () -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> [AgdaAny] -> Bool
d_'8799''45''8709''7495'_1974 ~v0 ~v1
  = du_'8799''45''8709''7495'_1974
du_'8799''45''8709''7495'_1974 ::
  () -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> [AgdaAny] -> Bool
du_'8799''45''8709''7495'_1974 v0 v1 v2
  = coe MAlonzo.Code.Ledger.Utxo.du_'8799''45''8709''7495'_2592 v1 v2
-- Ledger.Conway.Conformance.Utxo.L._.≟?
d_'8799''63'_1976 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1710 ->
  () ->
  Maybe AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_'8799''63'_1976 ~v0 ~v1 = du_'8799''63'_1976
du_'8799''63'_1976 ::
  () ->
  Maybe AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_'8799''63'_1976 v0 v1 v2 v3
  = coe MAlonzo.Code.Ledger.Utxo.du_'8799''63'_2988 v1 v2 v3
-- Ledger.Conway.Conformance.Utxo.L._.UTxOEnv.pparams
d_pparams_2002 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1910 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pparams_2002 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_pparams_1920 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.UTxOEnv.slot
d_slot_2004 :: MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1910 -> AgdaAny
d_slot_2004 v0 = coe MAlonzo.Code.Ledger.Utxo.d_slot_1918 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.UTxOEnv.treasury
d_treasury_2006 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1910 -> Integer
d_treasury_2006 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_treasury_1922 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.UTxOState.deposits
d_deposits_2010 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1924 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_2010 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_deposits_1938 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.UTxOState.donations
d_donations_2012 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1924 -> Integer
d_donations_2012 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_donations_1940 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.UTxOState.fees
d_fees_2014 :: MAlonzo.Code.Ledger.Utxo.T_UTxOState_1924 -> Integer
d_fees_2014 v0 = coe MAlonzo.Code.Ledger.Utxo.d_fees_1936 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.UTxOState.utxo
d_utxo_2016 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1924 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2016 v0 = coe MAlonzo.Code.Ledger.Utxo.d_utxo_1934 (coe v0)
-- Ledger.Conway.Conformance.Utxo._⊢_⇀⦇_,UTXOS⦈_
d__'8866'_'8640''10631'_'44'UTXOS'10632'__2058 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'UTXOS'10632'__2058
  = C_Scripts'45'Yes_2138 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_Scripts'45'No_2218 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Utxo._.txdonation
d_txdonation_2096 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1710 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1910 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1924 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2624 -> Integer
d_txdonation_2096 ~v0 ~v1 ~v2 v3 = du_txdonation_2096 v3
du_txdonation_2096 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2624 -> Integer
du_txdonation_2096 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txdonation_2584
      (coe MAlonzo.Code.Ledger.Transaction.d_body_2634 (coe v0))
-- Ledger.Conway.Conformance.Utxo._.txfee
d_txfee_2098 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1710 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1910 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1924 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2624 -> Integer
d_txfee_2098 ~v0 ~v1 ~v2 v3 = du_txfee_2098 v3
du_txfee_2098 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2624 -> Integer
du_txfee_2098 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txfee_2570
      (coe MAlonzo.Code.Ledger.Transaction.d_body_2634 (coe v0))
-- Ledger.Conway.Conformance.Utxo._.txins
d_txins_2102 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1710 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1910 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1924 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2624 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txins_2102 ~v0 ~v1 ~v2 v3 = du_txins_2102 v3
du_txins_2102 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2624 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_txins_2102 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txins_2564
      (coe MAlonzo.Code.Ledger.Transaction.d_body_2634 (coe v0))
-- Ledger.Conway.Conformance.Utxo._.pparams
d_pparams_2120 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1710 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1910 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1924 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2624 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pparams_2120 ~v0 v1 ~v2 ~v3 = du_pparams_2120 v1
du_pparams_2120 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1910 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244
du_pparams_2120 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_pparams_1920 (coe v0)
-- Ledger.Conway.Conformance.Utxo._.deposits
d_deposits_2128 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1710 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1910 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1924 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2624 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_2128 ~v0 ~v1 v2 ~v3 = du_deposits_2128 v2
du_deposits_2128 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1924 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_deposits_2128 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_deposits_1938 (coe v0)
-- Ledger.Conway.Conformance.Utxo._.donations
d_donations_2130 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1710 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1910 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1924 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2624 -> Integer
d_donations_2130 ~v0 ~v1 v2 ~v3 = du_donations_2130 v2
du_donations_2130 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1924 -> Integer
du_donations_2130 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_donations_1940 (coe v0)
-- Ledger.Conway.Conformance.Utxo._.fees
d_fees_2132 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1710 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1910 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1924 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2624 -> Integer
d_fees_2132 ~v0 ~v1 v2 ~v3 = du_fees_2132 v2
du_fees_2132 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1924 -> Integer
du_fees_2132 v0 = coe MAlonzo.Code.Ledger.Utxo.d_fees_1936 (coe v0)
-- Ledger.Conway.Conformance.Utxo._.utxo
d_utxo_2134 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1710 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1910 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1924 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2624 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2134 ~v0 ~v1 v2 ~v3 = du_utxo_2134 v2
du_utxo_2134 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1924 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxo_2134 v0 = coe MAlonzo.Code.Ledger.Utxo.d_utxo_1934 (coe v0)
-- Ledger.Conway.Conformance.Utxo._.collateral
d_collateral_2158 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1710 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1910 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1924 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2624 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateral_2158 ~v0 ~v1 ~v2 v3 = du_collateral_2158 v3
du_collateral_2158 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2624 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_collateral_2158 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_collateral_2598
      (coe MAlonzo.Code.Ledger.Transaction.d_body_2634 (coe v0))
-- Ledger.Conway.Conformance.Utxo._.pparams
d_pparams_2200 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1710 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1910 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1924 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2624 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pparams_2200 ~v0 v1 ~v2 ~v3 = du_pparams_2200 v1
du_pparams_2200 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1910 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244
du_pparams_2200 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_pparams_1920 (coe v0)
-- Ledger.Conway.Conformance.Utxo._.deposits
d_deposits_2208 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1710 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1910 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1924 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2624 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_2208 ~v0 ~v1 v2 ~v3 = du_deposits_2208 v2
du_deposits_2208 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1924 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_deposits_2208 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_deposits_1938 (coe v0)
-- Ledger.Conway.Conformance.Utxo._.donations
d_donations_2210 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1710 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1910 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1924 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2624 -> Integer
d_donations_2210 ~v0 ~v1 v2 ~v3 = du_donations_2210 v2
du_donations_2210 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1924 -> Integer
du_donations_2210 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_donations_1940 (coe v0)
-- Ledger.Conway.Conformance.Utxo._.fees
d_fees_2212 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1710 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1910 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1924 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2624 -> Integer
d_fees_2212 ~v0 ~v1 v2 ~v3 = du_fees_2212 v2
du_fees_2212 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1924 -> Integer
du_fees_2212 v0 = coe MAlonzo.Code.Ledger.Utxo.d_fees_1936 (coe v0)
-- Ledger.Conway.Conformance.Utxo._.utxo
d_utxo_2214 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1710 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1910 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1924 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2624 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2214 ~v0 ~v1 v2 ~v3 = du_utxo_2214 v2
du_utxo_2214 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1924 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxo_2214 v0 = coe MAlonzo.Code.Ledger.Utxo.d_utxo_1934 (coe v0)
-- Ledger.Conway.Conformance.Utxo.Scripts-Yes-premises
d_Scripts'45'Yes'45'premises_2220 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1710 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1910 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1924 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2624 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_Scripts'45'Yes'45'premises_2220 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased
      (coe
         MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
            (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
            (coe
               MAlonzo.Code.Ledger.ScriptValidation.d_evalScripts_2370 (coe v0)
               (coe v1) (coe v4)
               (coe
                  MAlonzo.Code.Ledger.ScriptValidation.d_collectPhaseTwoScriptInputs_2352
                  (coe v0) (coe v1)
                  (coe MAlonzo.Code.Ledger.Utxo.d_pparams_1920 (coe v2)) (coe v4)
                  (coe MAlonzo.Code.Ledger.Utxo.d_utxo_1934 (coe v3))))
            (coe MAlonzo.Code.Ledger.Transaction.d_isValid_2638 (coe v4)))
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
            (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
            (coe MAlonzo.Code.Ledger.Transaction.d_isValid_2638 (coe v4))
            (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)))
-- Ledger.Conway.Conformance.Utxo.Scripts-No-premises
d_Scripts'45'No'45'premises_2222 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1710 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1910 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1924 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2624 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_Scripts'45'No'45'premises_2222 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased
      (coe
         MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
            (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
            (coe
               MAlonzo.Code.Ledger.ScriptValidation.d_evalScripts_2370 (coe v0)
               (coe v1) (coe v4)
               (coe
                  MAlonzo.Code.Ledger.ScriptValidation.d_collectPhaseTwoScriptInputs_2352
                  (coe v0) (coe v1)
                  (coe MAlonzo.Code.Ledger.Utxo.d_pparams_1920 (coe v2)) (coe v4)
                  (coe MAlonzo.Code.Ledger.Utxo.d_utxo_1934 (coe v3))))
            (coe MAlonzo.Code.Ledger.Transaction.d_isValid_2638 (coe v4)))
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
            (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
            (coe MAlonzo.Code.Ledger.Transaction.d_isValid_2638 (coe v4))
            (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)))
-- Ledger.Conway.Conformance.Utxo._⊢_⇀⦇_,UTXO⦈_
d__'8866'_'8640''10631'_'44'UTXO'10632'__2224 a0 a1 a2 a3 a4 a5
  = ()
newtype T__'8866'_'8640''10631'_'44'UTXO'10632'__2224
  = C_UTXO'45'inductive_2320 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Utxo._.body
d_body_2232 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1710 ->
  T_GeneralizeTel_16817 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2522
d_body_2232 ~v0 ~v1 v2 = du_body_2232 v2
du_body_2232 ::
  T_GeneralizeTel_16817 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2522
du_body_2232 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_body_2634
      (coe d_'46'generalizedField'45'tx_16809 (coe v0))
-- Ledger.Conway.Conformance.Utxo._.curTreasury
d_curTreasury_2240 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1710 ->
  T_GeneralizeTel_16817 -> Maybe Integer
d_curTreasury_2240 ~v0 ~v1 v2 = du_curTreasury_2240 v2
du_curTreasury_2240 :: T_GeneralizeTel_16817 -> Maybe Integer
du_curTreasury_2240 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_curTreasury_2592
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2634
         (coe d_'46'generalizedField'45'tx_16809 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.mint
d_mint_2242 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1710 ->
  T_GeneralizeTel_16817 -> AgdaAny
d_mint_2242 ~v0 ~v1 v2 = du_mint_2242 v2
du_mint_2242 :: T_GeneralizeTel_16817 -> AgdaAny
du_mint_2242 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_mint_2572
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2634
         (coe d_'46'generalizedField'45'tx_16809 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.refInputs
d_refInputs_2244 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1710 ->
  T_GeneralizeTel_16817 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_2244 ~v0 ~v1 v2 = du_refInputs_2244 v2
du_refInputs_2244 ::
  T_GeneralizeTel_16817 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_refInputs_2244 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_refInputs_2566
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2634
         (coe d_'46'generalizedField'45'tx_16809 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.txNetworkId
d_txNetworkId_2252 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1710 ->
  T_GeneralizeTel_16817 -> Maybe AgdaAny
d_txNetworkId_2252 ~v0 ~v1 v2 = du_txNetworkId_2252 v2
du_txNetworkId_2252 :: T_GeneralizeTel_16817 -> Maybe AgdaAny
du_txNetworkId_2252 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txNetworkId_2590
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2634
         (coe d_'46'generalizedField'45'tx_16809 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.txins
d_txins_2262 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1710 ->
  T_GeneralizeTel_16817 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txins_2262 ~v0 ~v1 v2 = du_txins_2262 v2
du_txins_2262 ::
  T_GeneralizeTel_16817 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_txins_2262 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txins_2564
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2634
         (coe d_'46'generalizedField'45'tx_16809 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.txouts
d_txouts_2264 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1710 ->
  T_GeneralizeTel_16817 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txouts_2264 ~v0 ~v1 v2 = du_txouts_2264 v2
du_txouts_2264 ::
  T_GeneralizeTel_16817 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txouts_2264 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txouts_2568
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2634
         (coe d_'46'generalizedField'45'tx_16809 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.txsize
d_txsize_2268 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1710 ->
  T_GeneralizeTel_16817 -> Integer
d_txsize_2268 ~v0 ~v1 v2 = du_txsize_2268 v2
du_txsize_2268 :: T_GeneralizeTel_16817 -> Integer
du_txsize_2268 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txsize_2594
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2634
         (coe d_'46'generalizedField'45'tx_16809 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.txvldt
d_txvldt_2272 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1710 ->
  T_GeneralizeTel_16817 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txvldt_2272 ~v0 ~v1 v2 = du_txvldt_2272 v2
du_txvldt_2272 ::
  T_GeneralizeTel_16817 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txvldt_2272 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txvldt_2574
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2634
         (coe d_'46'generalizedField'45'tx_16809 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.txwdrls
d_txwdrls_2276 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1710 ->
  T_GeneralizeTel_16817 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_2276 ~v0 ~v1 v2 = du_txwdrls_2276 v2
du_txwdrls_2276 ::
  T_GeneralizeTel_16817 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txwdrls_2276 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txwdrls_2578
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2634
         (coe d_'46'generalizedField'45'tx_16809 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.pparams
d_pparams_2280 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1710 ->
  T_GeneralizeTel_16817 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pparams_2280 ~v0 ~v1 v2 = du_pparams_2280 v2
du_pparams_2280 ::
  T_GeneralizeTel_16817 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
du_pparams_2280 v0
  = coe
      MAlonzo.Code.Ledger.Utxo.d_pparams_1920
      (coe d_'46'generalizedField'45'Γ_16811 (coe v0))
-- Ledger.Conway.Conformance.Utxo._.slot
d_slot_2282 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1710 ->
  T_GeneralizeTel_16817 -> AgdaAny
d_slot_2282 ~v0 ~v1 v2 = du_slot_2282 v2
du_slot_2282 :: T_GeneralizeTel_16817 -> AgdaAny
du_slot_2282 v0
  = coe
      MAlonzo.Code.Ledger.Utxo.d_slot_1918
      (coe d_'46'generalizedField'45'Γ_16811 (coe v0))
-- Ledger.Conway.Conformance.Utxo._.treasury
d_treasury_2284 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1710 ->
  T_GeneralizeTel_16817 -> Integer
d_treasury_2284 ~v0 ~v1 v2 = du_treasury_2284 v2
du_treasury_2284 :: T_GeneralizeTel_16817 -> Integer
du_treasury_2284 v0
  = coe
      MAlonzo.Code.Ledger.Utxo.d_treasury_1922
      (coe d_'46'generalizedField'45'Γ_16811 (coe v0))
-- Ledger.Conway.Conformance.Utxo._.utxo
d_utxo_2294 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1710 ->
  T_GeneralizeTel_16817 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2294 ~v0 ~v1 v2 = du_utxo_2294 v2
du_utxo_2294 ::
  T_GeneralizeTel_16817 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxo_2294 v0
  = coe
      MAlonzo.Code.Ledger.Utxo.d_utxo_1934
      (coe d_'46'generalizedField'45's_16813 (coe v0))
-- Ledger.Conway.Conformance.Utxo.UTXO-premises
d_UTXO'45'premises_2364 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1710 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2624 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1910 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1924 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTXO'45'premises_2364 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased
      (coe
         MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_22
            (coe
               MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_DecEq'45'ℙ_1138
                  (coe
                     MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                     (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1184 (coe v0))
                     (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1182 (coe v0))))
               (coe
                  MAlonzo.Code.Ledger.Transaction.d_txins_2564
                  (coe MAlonzo.Code.Ledger.Transaction.d_body_2634 (coe v2)))
               (coe
                  MAlonzo.Code.Axiom.Set.du_'8709'_442
                  (coe
                     MAlonzo.Code.Axiom.Set.d_th_1470
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))))
            (coe MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_18))
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
            (coe
               MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1634
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
               (coe
                  (\ v5 ->
                     coe
                       MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1672
                       (coe
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                       (coe
                          MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                          (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1184 (coe v0))
                          (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1182 (coe v0)))
                       (coe v5)
                       (coe
                          MAlonzo.Code.Class.IsSet.du_dom_548
                          (coe
                             MAlonzo.Code.Axiom.Set.d_th_1470
                             (coe
                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                          (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                          (coe MAlonzo.Code.Ledger.Utxo.d_utxo_1934 (coe v4)))))
               (coe
                  MAlonzo.Code.Axiom.Set.du__'8746'__680
                  (coe
                     MAlonzo.Code.Axiom.Set.d_th_1470
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                  (coe
                     MAlonzo.Code.Ledger.Transaction.d_txins_2564
                     (coe MAlonzo.Code.Ledger.Transaction.d_body_2634 (coe v2)))
                  (coe
                     MAlonzo.Code.Ledger.Transaction.d_refInputs_2566
                     (coe MAlonzo.Code.Ledger.Transaction.d_body_2634 (coe v2)))))
            (coe
               MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
               (coe
                  MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_DecEq'45'ℙ_1138
                     (coe
                        MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                        (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1184 (coe v0))
                        (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1182 (coe v0))))
                  (coe
                     MAlonzo.Code.Axiom.Set.du__'8745'__704
                     (coe
                        MAlonzo.Code.Axiom.Set.d_th_1470
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                     (coe
                        MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                        erased
                        (coe
                           MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                           MAlonzo.Code.Agda.Primitive.d_lzero_20 erased
                           MAlonzo.Code.Agda.Primitive.d_lzero_20 erased
                           (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1184 (coe v0))
                           (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1182 (coe v0))))
                     (coe
                        MAlonzo.Code.Ledger.Transaction.d_txins_2564
                        (coe MAlonzo.Code.Ledger.Transaction.d_body_2634 (coe v2)))
                     (coe
                        MAlonzo.Code.Ledger.Transaction.d_refInputs_2566
                        (coe MAlonzo.Code.Ledger.Transaction.d_body_2634 (coe v2))))
                  (coe
                     MAlonzo.Code.Axiom.Set.du_'8709'_442
                     (coe
                        MAlonzo.Code.Axiom.Set.d_th_1470
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))))
               (coe
                  MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                  (coe
                     MAlonzo.Code.Ledger.Utxo.du_Dec'45'inInterval_2466 (coe v0)
                     (coe MAlonzo.Code.Ledger.Utxo.d_slot_1918 (coe v3))
                     (coe
                        MAlonzo.Code.Ledger.Transaction.d_txvldt_2574
                        (coe MAlonzo.Code.Ledger.Transaction.d_body_2634 (coe v2))))
                  (coe
                     MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                     (coe
                        MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                        (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
                        (coe
                           MAlonzo.Code.Ledger.Utxo.d_feesOK_2602 (coe v0) (coe v1)
                           (coe MAlonzo.Code.Ledger.Utxo.d_pparams_1920 (coe v3)) (coe v2)
                           (coe MAlonzo.Code.Ledger.Utxo.d_utxo_1934 (coe v4)))
                        (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10))
                     (coe
                        MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                        (coe
                           MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                           (coe
                              MAlonzo.Code.Ledger.TokenAlgebra.d_DecEq'45'Value_218
                              (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2216 (coe v0)))
                           (coe
                              MAlonzo.Code.Ledger.Utxo.du_consumed_2778 (coe v0)
                              (coe MAlonzo.Code.Ledger.Utxo.d_pparams_1920 (coe v3)) (coe v4)
                              (coe MAlonzo.Code.Ledger.Transaction.d_body_2634 (coe v2)))
                           (coe
                              MAlonzo.Code.Ledger.Utxo.du_produced_2786 (coe v0)
                              (coe MAlonzo.Code.Ledger.Utxo.d_pparams_1920 (coe v3)) (coe v4)
                              (coe MAlonzo.Code.Ledger.Transaction.d_body_2634 (coe v2))))
                        (coe
                           MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                           (coe
                              MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                              (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                              (coe
                                 MAlonzo.Code.Ledger.TokenAlgebra.d_coin_200
                                 (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2216 (coe v0))
                                 (MAlonzo.Code.Ledger.Transaction.d_mint_2572
                                    (coe MAlonzo.Code.Ledger.Transaction.d_body_2634 (coe v2))))
                              (coe (0 :: Integer)))
                           (coe
                              MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                              (coe
                                 MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_74
                                 (MAlonzo.Code.Ledger.Transaction.d_txsize_2594
                                    (coe MAlonzo.Code.Ledger.Transaction.d_body_2634 (coe v2)))
                                 (MAlonzo.Code.Ledger.PParams.d_maxTxSize_314
                                    (coe MAlonzo.Code.Ledger.Utxo.d_pparams_1920 (coe v3))))
                              (coe
                                 MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                                 (coe
                                    MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_74
                                    (MAlonzo.Code.Ledger.Utxo.d_refScriptsSize_1970
                                       (coe v0) (coe v1)
                                       (coe MAlonzo.Code.Ledger.Utxo.d_utxo_1934 (coe v4)) (coe v2))
                                    (MAlonzo.Code.Ledger.PParams.d_maxRefScriptSizePerTx_342
                                       (coe MAlonzo.Code.Ledger.Utxo.d_pparams_1920 (coe v3))))
                                 (coe
                                    MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                                    (coe
                                       MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1634
                                       (coe
                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                       (coe
                                          (\ v5 ->
                                             coe
                                               MAlonzo.Code.Ledger.TokenAlgebra.d_Dec'45''8804''7511'_220
                                               (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2216
                                                  (coe v0))
                                               (coe
                                                  MAlonzo.Code.Ledger.TokenAlgebra.d_inject_202
                                                  (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2216
                                                     (coe v0))
                                                  (mulInt
                                                     (coe
                                                        addInt (coe (160 :: Integer))
                                                        (coe
                                                           MAlonzo.Code.Ledger.Utxo.du_utxoEntrySize_1906
                                                           (coe v0)
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                              (coe v5))))
                                                     (coe
                                                        MAlonzo.Code.Ledger.PParams.d_coinsPerUTxOByte_336
                                                        (coe
                                                           MAlonzo.Code.Ledger.Utxo.d_pparams_1920
                                                           (coe v3)))))
                                               (coe
                                                  MAlonzo.Code.Ledger.Transaction.du_getValue'688'_2658
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                     (coe v5)))))
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                          (coe
                                             MAlonzo.Code.Axiom.Set.Map.du_mapValues_878
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_th_1470
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                             (coe
                                                MAlonzo.Code.Ledger.Transaction.d_txOutHash_2648
                                                (coe v0))
                                             (coe
                                                MAlonzo.Code.Ledger.Transaction.d_txouts_2568
                                                (coe
                                                   MAlonzo.Code.Ledger.Transaction.d_body_2634
                                                   (coe v2))))))
                                    (coe
                                       MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                                       (coe
                                          MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1634
                                          (coe
                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                          (coe
                                             (\ v5 ->
                                                coe
                                                  MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_74
                                                  (coe
                                                     MAlonzo.Code.Ledger.Abstract.d_serSize_1724 v1
                                                     (coe
                                                        MAlonzo.Code.Ledger.Transaction.du_getValue'688'_2658
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                           (coe v5))))
                                                  (MAlonzo.Code.Ledger.PParams.d_maxValSize_322
                                                     (coe
                                                        MAlonzo.Code.Ledger.Utxo.d_pparams_1920
                                                        (coe v3)))))
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                             (coe
                                                MAlonzo.Code.Axiom.Set.Map.du_mapValues_878
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.d_th_1470
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                (coe
                                                   MAlonzo.Code.Ledger.Transaction.d_txOutHash_2648
                                                   (coe v0))
                                                (coe
                                                   MAlonzo.Code.Ledger.Transaction.d_txouts_2568
                                                   (coe
                                                      MAlonzo.Code.Ledger.Transaction.d_body_2634
                                                      (coe v2))))))
                                       (coe
                                          MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                                          (coe
                                             MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1634
                                             (coe
                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                             (coe
                                                (\ v5 ->
                                                   coe
                                                     MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8846'All_28
                                                     (coe
                                                        (\ v6 ->
                                                           MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8868'_20))
                                                     (coe
                                                        (\ v6 ->
                                                           coe
                                                             MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_74
                                                             (MAlonzo.Code.Ledger.Address.d_attrsSize_74
                                                                (coe v6))
                                                             (64 :: Integer)))
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                        (coe v5))))
                                             (coe
                                                MAlonzo.Code.Class.IsSet.du_range_550
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.d_th_1470
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.Map.du_mapValues_878
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.d_th_1470
                                                      (coe
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Transaction.d_txOutHash_2648
                                                      (coe v0))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Transaction.d_txouts_2568
                                                      (coe
                                                         MAlonzo.Code.Ledger.Transaction.d_body_2634
                                                         (coe v2))))))
                                          (coe
                                             MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                                             (coe
                                                MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1634
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                (coe
                                                   (\ v5 ->
                                                      coe
                                                        MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                                                        (coe
                                                           MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_276
                                                           (coe
                                                              MAlonzo.Code.Ledger.Transaction.d_globalConstants_1200
                                                              (coe v0)))
                                                        (coe
                                                           MAlonzo.Code.Ledger.Address.du_netId_112
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                              (coe v5)))
                                                        (coe
                                                           MAlonzo.Code.Ledger.Types.Epoch.d_NetworkId_288
                                                           (coe
                                                              MAlonzo.Code.Ledger.Transaction.d_globalConstants_1200
                                                              (coe v0)))))
                                                (coe
                                                   MAlonzo.Code.Class.IsSet.du_range_550
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.d_th_1470
                                                      (coe
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                   (coe
                                                      MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.Map.du_mapValues_878
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.d_th_1470
                                                         (coe
                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Transaction.d_txOutHash_2648
                                                         (coe v0))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Transaction.d_txouts_2568
                                                         (coe
                                                            MAlonzo.Code.Ledger.Transaction.d_body_2634
                                                            (coe v2))))))
                                             (coe
                                                MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1634
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                   (coe
                                                      (\ v5 ->
                                                         coe
                                                           MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                                                           (coe
                                                              MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_276
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Transaction.d_globalConstants_1200
                                                                 (coe v0)))
                                                           (coe
                                                              MAlonzo.Code.Ledger.Address.d_net_82
                                                              (coe v5))
                                                           (coe
                                                              MAlonzo.Code.Ledger.Types.Epoch.d_NetworkId_288
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Transaction.d_globalConstants_1200
                                                                 (coe v0)))))
                                                   (coe
                                                      MAlonzo.Code.Class.IsSet.du_dom_548
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.d_th_1470
                                                         (coe
                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                      (coe
                                                         MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Transaction.d_txwdrls_2578
                                                         (coe
                                                            MAlonzo.Code.Ledger.Transaction.d_body_2634
                                                            (coe v2)))))
                                                (coe
                                                   MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                                                   (coe
                                                      MAlonzo.Code.Ledger.Utxo.du_'8799''63'_2988
                                                      (coe
                                                         MAlonzo.Code.Ledger.Transaction.d_txNetworkId_2590
                                                         (coe
                                                            MAlonzo.Code.Ledger.Transaction.d_body_2634
                                                            (coe v2)))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Types.Epoch.d_NetworkId_288
                                                         (coe
                                                            MAlonzo.Code.Ledger.Transaction.d_globalConstants_1200
                                                            (coe v0)))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_276
                                                         (coe
                                                            MAlonzo.Code.Ledger.Transaction.d_globalConstants_1200
                                                            (coe v0))))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Utxo.du_'8799''63'_2988
                                                      (coe
                                                         MAlonzo.Code.Ledger.Transaction.d_curTreasury_2592
                                                         (coe
                                                            MAlonzo.Code.Ledger.Transaction.d_body_2634
                                                            (coe v2)))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Utxo.d_treasury_1922
                                                         (coe v3))
                                                      (coe
                                                         MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)))))))))))))))))
-- Ledger.Conway.Conformance.Utxo..generalizedField-tx
d_'46'generalizedField'45'tx_16809 ::
  T_GeneralizeTel_16817 -> MAlonzo.Code.Ledger.Transaction.T_Tx_2624
d_'46'generalizedField'45'tx_16809 v0
  = case coe v0 of
      C_mkGeneralizeTel_16819 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxo..generalizedField-Γ
d_'46'generalizedField'45'Γ_16811 ::
  T_GeneralizeTel_16817 -> MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1910
d_'46'generalizedField'45'Γ_16811 v0
  = case coe v0 of
      C_mkGeneralizeTel_16819 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxo..generalizedField-s
d_'46'generalizedField'45's_16813 ::
  T_GeneralizeTel_16817 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1924
d_'46'generalizedField'45's_16813 v0
  = case coe v0 of
      C_mkGeneralizeTel_16819 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxo..generalizedField-s'
d_'46'generalizedField'45's''_16815 ::
  T_GeneralizeTel_16817 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1924
d_'46'generalizedField'45's''_16815 v0
  = case coe v0 of
      C_mkGeneralizeTel_16819 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxo.GeneralizeTel
d_GeneralizeTel_16817 a0 a1 = ()
data T_GeneralizeTel_16817
  = C_mkGeneralizeTel_16819 MAlonzo.Code.Ledger.Transaction.T_Tx_2624
                            MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1910
                            MAlonzo.Code.Ledger.Utxo.T_UTxOState_1924
                            MAlonzo.Code.Ledger.Utxo.T_UTxOState_1924
