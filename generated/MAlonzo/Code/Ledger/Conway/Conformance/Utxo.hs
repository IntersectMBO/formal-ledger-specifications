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
d_NetworkId_208 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny
d_NetworkId_208 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_NetworkId_288
      (coe
         MAlonzo.Code.Ledger.Transaction.d_globalConstants_1196 (coe v0))
-- _.Tx
d_Tx_356 a0 = ()
-- _.coin
d_coin_416 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny -> Integer
d_coin_416 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_coin_200
      (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2208 (coe v0))
-- _.getValueʰ
d_getValue'688'_452 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_getValue'688'_452 ~v0 = du_getValue'688'_452
du_getValue'688'_452 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_getValue'688'_452
  = coe MAlonzo.Code.Ledger.Transaction.du_getValue'688'_2650
-- _.inject
d_inject_462 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  Integer -> AgdaAny
d_inject_462 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_inject_202
      (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2208 (coe v0))
-- _.netId
d_netId_504 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
d_netId_504 ~v0 = du_netId_504
du_netId_504 :: MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
du_netId_504 = coe MAlonzo.Code.Ledger.Address.du_netId_112
-- _.txOutHash
d_txOutHash_564 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txOutHash_564 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txOutHash_2640 (coe v0)
-- _.Tx.body
d_body_1372 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2616 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2514
d_body_1372 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_body_2626 (coe v0)
-- _.Tx.isValid
d_isValid_1374 :: MAlonzo.Code.Ledger.Transaction.T_Tx_2616 -> Bool
d_isValid_1374 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_isValid_2630 (coe v0)
-- _.Tx.txAD
d_txAD_1376 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2616 -> Maybe AgdaAny
d_txAD_1376 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txAD_2632 (coe v0)
-- _.Tx.wits
d_wits_1378 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2616 ->
  MAlonzo.Code.Ledger.Transaction.T_TxWitnesses_2596
d_wits_1378 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_wits_2628 (coe v0)
-- Ledger.Conway.Conformance.Utxo._.collectPhaseTwoScriptInputs
d_collectPhaseTwoScriptInputs_1506 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1706 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2616 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collectPhaseTwoScriptInputs_1506 v0 v1
  = coe
      MAlonzo.Code.Ledger.ScriptValidation.d_collectPhaseTwoScriptInputs_2348
      (coe v0) (coe v1)
-- Ledger.Conway.Conformance.Utxo._.evalScripts
d_evalScripts_1516 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1706 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2616 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Bool
d_evalScripts_1516 v0 v1
  = coe
      MAlonzo.Code.Ledger.ScriptValidation.d_evalScripts_2366 (coe v0)
      (coe v1)
-- Ledger.Conway.Conformance.Utxo.L._._*↓_
d__'42''8595'__1852 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1706 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 -> Integer -> Integer
d__'42''8595'__1852 ~v0 v1 v2 = du__'42''8595'__1852 v1 v2
du__'42''8595'__1852 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 -> Integer -> Integer
du__'42''8595'__1852 v0 v1
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
d__'61''62''7495'__1854 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1706 ->
  Bool -> Bool -> Bool
d__'61''62''7495'__1854 ~v0 ~v1 = du__'61''62''7495'__1854
du__'61''62''7495'__1854 :: Bool -> Bool -> Bool
du__'61''62''7495'__1854
  = coe MAlonzo.Code.Ledger.Utxo.du__'61''62''7495'__2602
-- Ledger.Conway.Conformance.Utxo.L._._≡?_
d__'8801''63'__1856 a0 a1 a2 a3 a4 = ()
-- Ledger.Conway.Conformance.Utxo.L._._≤ᵇ_
d__'8804''7495'__1858 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1706 ->
  Integer -> Integer -> Bool
d__'8804''7495'__1858 ~v0 ~v1 = du__'8804''7495'__1858
du__'8804''7495'__1858 :: Integer -> Integer -> Bool
du__'8804''7495'__1858
  = coe MAlonzo.Code.Ledger.Utxo.du__'8804''7495'__2608
-- Ledger.Conway.Conformance.Utxo.L._._≥ᵇ_
d__'8805''7495'__1860 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1706 ->
  Integer -> Integer -> Bool
d__'8805''7495'__1860 ~v0 ~v1 = du__'8805''7495'__1860
du__'8805''7495'__1860 :: Integer -> Integer -> Bool
du__'8805''7495'__1860
  = coe MAlonzo.Code.Ledger.Utxo.du__'8805''7495'__2610
-- Ledger.Conway.Conformance.Utxo.L._._⊢_⇀⦇_,UTXOS⦈_
d__'8866'_'8640''10631'_'44'UTXOS'10632'__1862 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Utxo.L._._⊢_⇀⦇_,UTXO⦈_
d__'8866'_'8640''10631'_'44'UTXO'10632'__1864 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Utxo.L._.Dec-ValidCertDeposits
d_Dec'45'ValidCertDeposits_1866 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1706 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_830] ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'ValidCertDeposits_1866 v0 ~v1
  = du_Dec'45'ValidCertDeposits_1866 v0
du_Dec'45'ValidCertDeposits_1866 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_830] ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'ValidCertDeposits_1866 v0
  = coe
      MAlonzo.Code.Ledger.Utxo.du_Dec'45'ValidCertDeposits_2268 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.Dec-inInterval
d_Dec'45'inInterval_1868 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1706 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'inInterval_1868 v0 ~v1 = du_Dec'45'inInterval_1868 v0
du_Dec'45'inInterval_1868 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'inInterval_1868 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_Dec'45'inInterval_2496 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.HasCoin-UTxO
d_HasCoin'45'UTxO_1870 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1706 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
d_HasCoin'45'UTxO_1870 v0 ~v1 = du_HasCoin'45'UTxO_1870 v0
du_HasCoin'45'UTxO_1870 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
du_HasCoin'45'UTxO_1870 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_HasCoin'45'UTxO_1980 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.HasCoin-UTxOState
d_HasCoin'45'UTxOState_1872 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1706 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
d_HasCoin'45'UTxOState_1872 v0 ~v1
  = du_HasCoin'45'UTxOState_1872 v0
du_HasCoin'45'UTxOState_1872 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
du_HasCoin'45'UTxOState_1872 v0
  = coe
      MAlonzo.Code.Ledger.Utxo.du_HasCoin'45'UTxOState_2598 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.Scripts-No-premises
d_Scripts'45'No'45'premises_1876 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1706 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1906 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1920 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2616 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_Scripts'45'No'45'premises_1876 v0 v1
  = coe
      MAlonzo.Code.Ledger.Utxo.d_Scripts'45'No'45'premises_2988 (coe v0)
      (coe v1)
-- Ledger.Conway.Conformance.Utxo.L._.Scripts-Yes-premises
d_Scripts'45'Yes'45'premises_1880 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1706 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1906 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1920 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2616 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_Scripts'45'Yes'45'premises_1880 v0 v1
  = coe
      MAlonzo.Code.Ledger.Utxo.d_Scripts'45'Yes'45'premises_2986 (coe v0)
      (coe v1)
-- Ledger.Conway.Conformance.Utxo.L._.UTXO-premises
d_UTXO'45'premises_1884 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1706 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2616 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1906 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1920 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTXO'45'premises_1884 v0 v1
  = coe
      MAlonzo.Code.Ledger.Utxo.d_UTXO'45'premises_3178 (coe v0) (coe v1)
-- Ledger.Conway.Conformance.Utxo.L._.UTxOEnv
d_UTxOEnv_1886 a0 a1 = ()
-- Ledger.Conway.Conformance.Utxo.L._.UTxOState
d_UTxOState_1888 a0 a1 = ()
-- Ledger.Conway.Conformance.Utxo.L._.ValidCertDeposits
d_ValidCertDeposits_1890 a0 a1 a2 a3 a4 = ()
-- Ledger.Conway.Conformance.Utxo.L._.balance
d_balance_1894 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1706 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_balance_1894 v0 ~v1 = du_balance_1894 v0
du_balance_1894 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_balance_1894 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_balance_1956 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.cbalance
d_cbalance_1898 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1706 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_cbalance_1898 v0 ~v1 = du_cbalance_1898 v0
du_cbalance_1898 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_cbalance_1898 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_cbalance_1962 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.certDeposit
d_certDeposit_1902 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1706 ->
  MAlonzo.Code.Ledger.Certs.T_DCert_830 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_certDeposit_1902 ~v0 ~v1 = du_certDeposit_1902
du_certDeposit_1902 ::
  MAlonzo.Code.Ledger.Certs.T_DCert_830 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_certDeposit_1902
  = coe MAlonzo.Code.Ledger.Utxo.du_certDeposit_1982
-- Ledger.Conway.Conformance.Utxo.L._.certRefund
d_certRefund_1904 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1706 ->
  MAlonzo.Code.Ledger.Certs.T_DCert_830 ->
  [MAlonzo.Code.Ledger.Certs.T_DepositPurpose_810]
d_certRefund_1904 ~v0 ~v1 = du_certRefund_1904
du_certRefund_1904 ::
  MAlonzo.Code.Ledger.Certs.T_DCert_830 ->
  [MAlonzo.Code.Ledger.Certs.T_DepositPurpose_810]
du_certRefund_1904
  = coe MAlonzo.Code.Ledger.Utxo.du_certRefund_2000
-- Ledger.Conway.Conformance.Utxo.L._.coinPolicies
d_coinPolicies_1906 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1706 -> [AgdaAny]
d_coinPolicies_1906 v0 ~v1 = du_coinPolicies_1906 v0
du_coinPolicies_1906 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  [AgdaAny]
du_coinPolicies_1906 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_coinPolicies_2626 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.consumed
d_consumed_1908 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1706 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1920 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2514 -> AgdaAny
d_consumed_1908 v0 ~v1 = du_consumed_1908 v0
du_consumed_1908 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1920 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2514 -> AgdaAny
du_consumed_1908 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_consumed_2808 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.depositRefunds
d_depositRefunds_1912 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1706 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1920 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2514 -> Integer
d_depositRefunds_1912 v0 ~v1 = du_depositRefunds_1912 v0
du_depositRefunds_1912 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1920 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2514 -> Integer
du_depositRefunds_1912 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_depositRefunds_2792 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.depositsChange
d_depositsChange_1914 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1706 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2514 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_depositsChange_1914 v0 ~v1 = du_depositsChange_1914 v0
du_depositsChange_1914 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2514 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_depositsChange_1914 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_depositsChange_2466 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.feesOK
d_feesOK_1920 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1706 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2616 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Bool
d_feesOK_1920 v0 v1
  = coe MAlonzo.Code.Ledger.Utxo.d_feesOK_2632 (coe v0) (coe v1)
-- Ledger.Conway.Conformance.Utxo.L._.getDataHashes
d_getDataHashes_1922 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1706 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> [AgdaAny]
d_getDataHashes_1922 ~v0 ~v1 = du_getDataHashes_1922
du_getDataHashes_1922 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> [AgdaAny]
du_getDataHashes_1922
  = coe MAlonzo.Code.Ledger.Utxo.du_getDataHashes_1828
-- Ledger.Conway.Conformance.Utxo.L._.getInputHashes
d_getInputHashes_1924 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1706 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2616 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
d_getInputHashes_1924 v0 ~v1 = du_getInputHashes_1924 v0
du_getInputHashes_1924 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2616 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
du_getInputHashes_1924 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_getInputHashes_1832 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.inInterval
d_inInterval_1926 a0 a1 a2 a3 = ()
-- Ledger.Conway.Conformance.Utxo.L._.isAdaOnlyᵇ
d_isAdaOnly'7495'_1928 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1706 ->
  AgdaAny -> Bool
d_isAdaOnly'7495'_1928 v0 ~v1 = du_isAdaOnly'7495'_1928 v0
du_isAdaOnly'7495'_1928 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny -> Bool
du_isAdaOnly'7495'_1928 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_isAdaOnly'7495'_2628 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.isTwoPhaseScriptAddress
d_isTwoPhaseScriptAddress_1930 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1706 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2616 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Bool
d_isTwoPhaseScriptAddress_1930 v0 ~v1
  = du_isTwoPhaseScriptAddress_1930 v0
du_isTwoPhaseScriptAddress_1930 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2616 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Bool
du_isTwoPhaseScriptAddress_1930 v0
  = coe
      MAlonzo.Code.Ledger.Utxo.du_isTwoPhaseScriptAddress_1816 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.minfee
d_minfee_1934 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1706 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2616 -> Integer
d_minfee_1934 v0 v1
  = coe MAlonzo.Code.Ledger.Utxo.d_minfee_1972 (coe v0) (coe v1)
-- Ledger.Conway.Conformance.Utxo.L._.newDeposits
d_newDeposits_1936 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1706 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1920 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2514 -> Integer
d_newDeposits_1936 v0 ~v1 = du_newDeposits_1936 v0
du_newDeposits_1936 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1920 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2514 -> Integer
du_newDeposits_1936 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_newDeposits_2800 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.outs
d_outs_1940 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1706 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2514 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_outs_1940 ~v0 ~v1 = du_outs_1940
du_outs_1940 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2514 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_outs_1940 = coe MAlonzo.Code.Ledger.Utxo.du_outs_1950
-- Ledger.Conway.Conformance.Utxo.L._.produced
d_produced_1942 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1706 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1920 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2514 -> AgdaAny
d_produced_1942 v0 ~v1 = du_produced_1942 v0
du_produced_1942 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1920 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2514 -> AgdaAny
du_produced_1942 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_produced_2816 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.proposalDepositsΔ
d_proposalDepositsΔ_1944 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1706 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_750] ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2514 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_proposalDepositsΔ_1944 v0 ~v1 = du_proposalDepositsΔ_1944 v0
du_proposalDepositsΔ_1944 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_750] ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2514 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_proposalDepositsΔ_1944 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_proposalDepositsΔ_2412 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.refScriptsSize
d_refScriptsSize_1946 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1706 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2616 -> Integer
d_refScriptsSize_1946 v0 v1
  = coe
      MAlonzo.Code.Ledger.Utxo.d_refScriptsSize_1966 (coe v0) (coe v1)
-- Ledger.Conway.Conformance.Utxo.L._.totExUnits
d_totExUnits_1956 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1706 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2616 -> AgdaAny
d_totExUnits_1956 v0 ~v1 = du_totExUnits_1956 v0
du_totExUnits_1956 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2616 -> AgdaAny
du_totExUnits_1956 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_totExUnits_1888 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.updateCertDeposits
d_updateCertDeposits_1958 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1706 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_830] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateCertDeposits_1958 v0 ~v1 = du_updateCertDeposits_1958 v0
du_updateCertDeposits_1958 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_830] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateCertDeposits_1958 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_updateCertDeposits_2270 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.updateDeposits
d_updateDeposits_1960 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1706 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2514 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateDeposits_1960 v0 ~v1 = du_updateDeposits_1960 v0
du_updateDeposits_1960 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2514 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateDeposits_1960 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_updateDeposits_2360 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.updateProposalDeposits
d_updateProposalDeposits_1962 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1706 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_750] ->
  AgdaAny ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateProposalDeposits_1962 v0 ~v1
  = du_updateProposalDeposits_1962 v0
du_updateProposalDeposits_1962 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_750] ->
  AgdaAny ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateProposalDeposits_1962 v0
  = coe
      MAlonzo.Code.Ledger.Utxo.du_updateProposalDeposits_2348 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.utxoEntrySize
d_utxoEntrySize_1966 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1706 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_utxoEntrySize_1966 v0 ~v1 = du_utxoEntrySize_1966 v0
du_utxoEntrySize_1966 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_utxoEntrySize_1966 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_utxoEntrySize_1902 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.utxoEntrySizeWithoutVal
d_utxoEntrySizeWithoutVal_1968 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1706 -> Integer
d_utxoEntrySizeWithoutVal_1968 ~v0
  = du_utxoEntrySizeWithoutVal_1968
du_utxoEntrySizeWithoutVal_1968 :: Integer
du_utxoEntrySizeWithoutVal_1968 = coe (8 :: Integer)
-- Ledger.Conway.Conformance.Utxo.L._.≟-∅ᵇ
d_'8799''45''8709''7495'_1970 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1706 ->
  () -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> [AgdaAny] -> Bool
d_'8799''45''8709''7495'_1970 ~v0 ~v1
  = du_'8799''45''8709''7495'_1970
du_'8799''45''8709''7495'_1970 ::
  () -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> [AgdaAny] -> Bool
du_'8799''45''8709''7495'_1970 v0 v1 v2
  = coe MAlonzo.Code.Ledger.Utxo.du_'8799''45''8709''7495'_2622 v1 v2
-- Ledger.Conway.Conformance.Utxo.L._.≟?
d_'8799''63'_1972 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1706 ->
  () ->
  Maybe AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_'8799''63'_1972 ~v0 ~v1 = du_'8799''63'_1972
du_'8799''63'_1972 ::
  () ->
  Maybe AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_'8799''63'_1972 v0 v1 v2 v3
  = coe MAlonzo.Code.Ledger.Utxo.du_'8799''63'_3018 v1 v2 v3
-- Ledger.Conway.Conformance.Utxo.L._.UTxOEnv.pparams
d_pparams_1998 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1906 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242
d_pparams_1998 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_pparams_1916 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.UTxOEnv.slot
d_slot_2000 :: MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1906 -> AgdaAny
d_slot_2000 v0 = coe MAlonzo.Code.Ledger.Utxo.d_slot_1914 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.UTxOEnv.treasury
d_treasury_2002 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1906 -> Integer
d_treasury_2002 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_treasury_1918 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.UTxOState.deposits
d_deposits_2006 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1920 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_2006 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_deposits_1934 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.UTxOState.donations
d_donations_2008 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1920 -> Integer
d_donations_2008 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_donations_1936 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.UTxOState.fees
d_fees_2010 :: MAlonzo.Code.Ledger.Utxo.T_UTxOState_1920 -> Integer
d_fees_2010 v0 = coe MAlonzo.Code.Ledger.Utxo.d_fees_1932 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.UTxOState.utxo
d_utxo_2012 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1920 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2012 v0 = coe MAlonzo.Code.Ledger.Utxo.d_utxo_1930 (coe v0)
-- Ledger.Conway.Conformance.Utxo._⊢_⇀⦇_,UTXOS⦈_
d__'8866'_'8640''10631'_'44'UTXOS'10632'__2054 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'UTXOS'10632'__2054
  = C_Scripts'45'Yes_2134 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_Scripts'45'No_2214 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Utxo._.txdonation
d_txdonation_2092 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1706 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1906 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1920 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2616 -> Integer
d_txdonation_2092 ~v0 ~v1 ~v2 v3 = du_txdonation_2092 v3
du_txdonation_2092 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2616 -> Integer
du_txdonation_2092 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txdonation_2576
      (coe MAlonzo.Code.Ledger.Transaction.d_body_2626 (coe v0))
-- Ledger.Conway.Conformance.Utxo._.txfee
d_txfee_2094 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1706 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1906 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1920 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2616 -> Integer
d_txfee_2094 ~v0 ~v1 ~v2 v3 = du_txfee_2094 v3
du_txfee_2094 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2616 -> Integer
du_txfee_2094 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txfee_2562
      (coe MAlonzo.Code.Ledger.Transaction.d_body_2626 (coe v0))
-- Ledger.Conway.Conformance.Utxo._.txins
d_txins_2098 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1706 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1906 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1920 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2616 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txins_2098 ~v0 ~v1 ~v2 v3 = du_txins_2098 v3
du_txins_2098 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2616 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_txins_2098 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txins_2556
      (coe MAlonzo.Code.Ledger.Transaction.d_body_2626 (coe v0))
-- Ledger.Conway.Conformance.Utxo._.pparams
d_pparams_2116 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1706 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1906 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1920 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2616 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242
d_pparams_2116 ~v0 v1 ~v2 ~v3 = du_pparams_2116 v1
du_pparams_2116 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1906 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242
du_pparams_2116 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_pparams_1916 (coe v0)
-- Ledger.Conway.Conformance.Utxo._.deposits
d_deposits_2124 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1706 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1906 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1920 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2616 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_2124 ~v0 ~v1 v2 ~v3 = du_deposits_2124 v2
du_deposits_2124 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1920 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_deposits_2124 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_deposits_1934 (coe v0)
-- Ledger.Conway.Conformance.Utxo._.donations
d_donations_2126 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1706 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1906 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1920 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2616 -> Integer
d_donations_2126 ~v0 ~v1 v2 ~v3 = du_donations_2126 v2
du_donations_2126 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1920 -> Integer
du_donations_2126 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_donations_1936 (coe v0)
-- Ledger.Conway.Conformance.Utxo._.fees
d_fees_2128 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1706 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1906 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1920 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2616 -> Integer
d_fees_2128 ~v0 ~v1 v2 ~v3 = du_fees_2128 v2
du_fees_2128 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1920 -> Integer
du_fees_2128 v0 = coe MAlonzo.Code.Ledger.Utxo.d_fees_1932 (coe v0)
-- Ledger.Conway.Conformance.Utxo._.utxo
d_utxo_2130 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1706 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1906 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1920 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2616 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2130 ~v0 ~v1 v2 ~v3 = du_utxo_2130 v2
du_utxo_2130 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1920 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxo_2130 v0 = coe MAlonzo.Code.Ledger.Utxo.d_utxo_1930 (coe v0)
-- Ledger.Conway.Conformance.Utxo._.collateral
d_collateral_2154 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1706 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1906 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1920 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2616 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateral_2154 ~v0 ~v1 ~v2 v3 = du_collateral_2154 v3
du_collateral_2154 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2616 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_collateral_2154 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_collateral_2590
      (coe MAlonzo.Code.Ledger.Transaction.d_body_2626 (coe v0))
-- Ledger.Conway.Conformance.Utxo._.pparams
d_pparams_2196 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1706 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1906 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1920 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2616 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242
d_pparams_2196 ~v0 v1 ~v2 ~v3 = du_pparams_2196 v1
du_pparams_2196 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1906 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242
du_pparams_2196 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_pparams_1916 (coe v0)
-- Ledger.Conway.Conformance.Utxo._.deposits
d_deposits_2204 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1706 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1906 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1920 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2616 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_2204 ~v0 ~v1 v2 ~v3 = du_deposits_2204 v2
du_deposits_2204 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1920 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_deposits_2204 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_deposits_1934 (coe v0)
-- Ledger.Conway.Conformance.Utxo._.donations
d_donations_2206 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1706 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1906 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1920 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2616 -> Integer
d_donations_2206 ~v0 ~v1 v2 ~v3 = du_donations_2206 v2
du_donations_2206 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1920 -> Integer
du_donations_2206 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_donations_1936 (coe v0)
-- Ledger.Conway.Conformance.Utxo._.fees
d_fees_2208 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1706 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1906 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1920 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2616 -> Integer
d_fees_2208 ~v0 ~v1 v2 ~v3 = du_fees_2208 v2
du_fees_2208 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1920 -> Integer
du_fees_2208 v0 = coe MAlonzo.Code.Ledger.Utxo.d_fees_1932 (coe v0)
-- Ledger.Conway.Conformance.Utxo._.utxo
d_utxo_2210 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1706 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1906 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1920 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2616 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2210 ~v0 ~v1 v2 ~v3 = du_utxo_2210 v2
du_utxo_2210 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1920 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxo_2210 v0 = coe MAlonzo.Code.Ledger.Utxo.d_utxo_1930 (coe v0)
-- Ledger.Conway.Conformance.Utxo.Scripts-Yes-premises
d_Scripts'45'Yes'45'premises_2216 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1706 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1906 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1920 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2616 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_Scripts'45'Yes'45'premises_2216 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased
      (coe
         MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
            (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
            (coe
               MAlonzo.Code.Ledger.ScriptValidation.d_evalScripts_2366 (coe v0)
               (coe v1) (coe v4)
               (coe
                  MAlonzo.Code.Ledger.ScriptValidation.d_collectPhaseTwoScriptInputs_2348
                  (coe v0) (coe v1)
                  (coe MAlonzo.Code.Ledger.Utxo.d_pparams_1916 (coe v2)) (coe v4)
                  (coe MAlonzo.Code.Ledger.Utxo.d_utxo_1930 (coe v3))))
            (coe MAlonzo.Code.Ledger.Transaction.d_isValid_2630 (coe v4)))
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
            (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
            (coe MAlonzo.Code.Ledger.Transaction.d_isValid_2630 (coe v4))
            (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)))
-- Ledger.Conway.Conformance.Utxo.Scripts-No-premises
d_Scripts'45'No'45'premises_2218 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1706 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1906 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1920 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2616 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_Scripts'45'No'45'premises_2218 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased
      (coe
         MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
            (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
            (coe
               MAlonzo.Code.Ledger.ScriptValidation.d_evalScripts_2366 (coe v0)
               (coe v1) (coe v4)
               (coe
                  MAlonzo.Code.Ledger.ScriptValidation.d_collectPhaseTwoScriptInputs_2348
                  (coe v0) (coe v1)
                  (coe MAlonzo.Code.Ledger.Utxo.d_pparams_1916 (coe v2)) (coe v4)
                  (coe MAlonzo.Code.Ledger.Utxo.d_utxo_1930 (coe v3))))
            (coe MAlonzo.Code.Ledger.Transaction.d_isValid_2630 (coe v4)))
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
            (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
            (coe MAlonzo.Code.Ledger.Transaction.d_isValid_2630 (coe v4))
            (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)))
-- Ledger.Conway.Conformance.Utxo._⊢_⇀⦇_,UTXO⦈_
d__'8866'_'8640''10631'_'44'UTXO'10632'__2220 a0 a1 a2 a3 a4 a5
  = ()
newtype T__'8866'_'8640''10631'_'44'UTXO'10632'__2220
  = C_UTXO'45'inductive_2316 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Utxo._.body
d_body_2228 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1706 ->
  T_GeneralizeTel_16859 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2514
d_body_2228 ~v0 ~v1 v2 = du_body_2228 v2
du_body_2228 ::
  T_GeneralizeTel_16859 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2514
du_body_2228 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_body_2626
      (coe d_'46'generalizedField'45'tx_16851 (coe v0))
-- Ledger.Conway.Conformance.Utxo._.curTreasury
d_curTreasury_2236 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1706 ->
  T_GeneralizeTel_16859 -> Maybe Integer
d_curTreasury_2236 ~v0 ~v1 v2 = du_curTreasury_2236 v2
du_curTreasury_2236 :: T_GeneralizeTel_16859 -> Maybe Integer
du_curTreasury_2236 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_curTreasury_2584
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2626
         (coe d_'46'generalizedField'45'tx_16851 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.mint
d_mint_2238 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1706 ->
  T_GeneralizeTel_16859 -> AgdaAny
d_mint_2238 ~v0 ~v1 v2 = du_mint_2238 v2
du_mint_2238 :: T_GeneralizeTel_16859 -> AgdaAny
du_mint_2238 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_mint_2564
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2626
         (coe d_'46'generalizedField'45'tx_16851 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.refInputs
d_refInputs_2240 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1706 ->
  T_GeneralizeTel_16859 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_2240 ~v0 ~v1 v2 = du_refInputs_2240 v2
du_refInputs_2240 ::
  T_GeneralizeTel_16859 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_refInputs_2240 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_refInputs_2558
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2626
         (coe d_'46'generalizedField'45'tx_16851 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.txNetworkId
d_txNetworkId_2248 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1706 ->
  T_GeneralizeTel_16859 -> Maybe AgdaAny
d_txNetworkId_2248 ~v0 ~v1 v2 = du_txNetworkId_2248 v2
du_txNetworkId_2248 :: T_GeneralizeTel_16859 -> Maybe AgdaAny
du_txNetworkId_2248 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txNetworkId_2582
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2626
         (coe d_'46'generalizedField'45'tx_16851 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.txins
d_txins_2258 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1706 ->
  T_GeneralizeTel_16859 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txins_2258 ~v0 ~v1 v2 = du_txins_2258 v2
du_txins_2258 ::
  T_GeneralizeTel_16859 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_txins_2258 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txins_2556
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2626
         (coe d_'46'generalizedField'45'tx_16851 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.txouts
d_txouts_2260 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1706 ->
  T_GeneralizeTel_16859 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txouts_2260 ~v0 ~v1 v2 = du_txouts_2260 v2
du_txouts_2260 ::
  T_GeneralizeTel_16859 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txouts_2260 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txouts_2560
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2626
         (coe d_'46'generalizedField'45'tx_16851 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.txsize
d_txsize_2264 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1706 ->
  T_GeneralizeTel_16859 -> Integer
d_txsize_2264 ~v0 ~v1 v2 = du_txsize_2264 v2
du_txsize_2264 :: T_GeneralizeTel_16859 -> Integer
du_txsize_2264 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txsize_2586
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2626
         (coe d_'46'generalizedField'45'tx_16851 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.txvldt
d_txvldt_2268 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1706 ->
  T_GeneralizeTel_16859 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txvldt_2268 ~v0 ~v1 v2 = du_txvldt_2268 v2
du_txvldt_2268 ::
  T_GeneralizeTel_16859 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txvldt_2268 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txvldt_2566
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2626
         (coe d_'46'generalizedField'45'tx_16851 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.txwdrls
d_txwdrls_2272 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1706 ->
  T_GeneralizeTel_16859 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_2272 ~v0 ~v1 v2 = du_txwdrls_2272 v2
du_txwdrls_2272 ::
  T_GeneralizeTel_16859 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txwdrls_2272 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txwdrls_2570
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2626
         (coe d_'46'generalizedField'45'tx_16851 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.pparams
d_pparams_2276 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1706 ->
  T_GeneralizeTel_16859 -> MAlonzo.Code.Ledger.PParams.T_PParams_242
d_pparams_2276 ~v0 ~v1 v2 = du_pparams_2276 v2
du_pparams_2276 ::
  T_GeneralizeTel_16859 -> MAlonzo.Code.Ledger.PParams.T_PParams_242
du_pparams_2276 v0
  = coe
      MAlonzo.Code.Ledger.Utxo.d_pparams_1916
      (coe d_'46'generalizedField'45'Γ_16853 (coe v0))
-- Ledger.Conway.Conformance.Utxo._.slot
d_slot_2278 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1706 ->
  T_GeneralizeTel_16859 -> AgdaAny
d_slot_2278 ~v0 ~v1 v2 = du_slot_2278 v2
du_slot_2278 :: T_GeneralizeTel_16859 -> AgdaAny
du_slot_2278 v0
  = coe
      MAlonzo.Code.Ledger.Utxo.d_slot_1914
      (coe d_'46'generalizedField'45'Γ_16853 (coe v0))
-- Ledger.Conway.Conformance.Utxo._.treasury
d_treasury_2280 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1706 ->
  T_GeneralizeTel_16859 -> Integer
d_treasury_2280 ~v0 ~v1 v2 = du_treasury_2280 v2
du_treasury_2280 :: T_GeneralizeTel_16859 -> Integer
du_treasury_2280 v0
  = coe
      MAlonzo.Code.Ledger.Utxo.d_treasury_1918
      (coe d_'46'generalizedField'45'Γ_16853 (coe v0))
-- Ledger.Conway.Conformance.Utxo._.utxo
d_utxo_2290 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1706 ->
  T_GeneralizeTel_16859 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2290 ~v0 ~v1 v2 = du_utxo_2290 v2
du_utxo_2290 ::
  T_GeneralizeTel_16859 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxo_2290 v0
  = coe
      MAlonzo.Code.Ledger.Utxo.d_utxo_1930
      (coe d_'46'generalizedField'45's_16855 (coe v0))
-- Ledger.Conway.Conformance.Utxo.UTXO-premises
d_UTXO'45'premises_2360 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1706 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2616 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1906 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1920 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTXO'45'premises_2360 v0 v1 v2 v3 v4
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
                     (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1180 (coe v0))
                     (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1178 (coe v0))))
               (coe
                  MAlonzo.Code.Ledger.Transaction.d_txins_2556
                  (coe MAlonzo.Code.Ledger.Transaction.d_body_2626 (coe v2)))
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
                          (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1180 (coe v0))
                          (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1178 (coe v0)))
                       (coe v5)
                       (coe
                          MAlonzo.Code.Class.IsSet.du_dom_548
                          (coe
                             MAlonzo.Code.Axiom.Set.d_th_1470
                             (coe
                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                          (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                          (coe MAlonzo.Code.Ledger.Utxo.d_utxo_1930 (coe v4)))))
               (coe
                  MAlonzo.Code.Axiom.Set.du__'8746'__680
                  (coe
                     MAlonzo.Code.Axiom.Set.d_th_1470
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                  (coe
                     MAlonzo.Code.Ledger.Transaction.d_txins_2556
                     (coe MAlonzo.Code.Ledger.Transaction.d_body_2626 (coe v2)))
                  (coe
                     MAlonzo.Code.Ledger.Transaction.d_refInputs_2558
                     (coe MAlonzo.Code.Ledger.Transaction.d_body_2626 (coe v2)))))
            (coe
               MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
               (coe
                  MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_DecEq'45'ℙ_1138
                     (coe
                        MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                        (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1180 (coe v0))
                        (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1178 (coe v0))))
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
                           (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1180 (coe v0))
                           (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1178 (coe v0))))
                     (coe
                        MAlonzo.Code.Ledger.Transaction.d_txins_2556
                        (coe MAlonzo.Code.Ledger.Transaction.d_body_2626 (coe v2)))
                     (coe
                        MAlonzo.Code.Ledger.Transaction.d_refInputs_2558
                        (coe MAlonzo.Code.Ledger.Transaction.d_body_2626 (coe v2))))
                  (coe
                     MAlonzo.Code.Axiom.Set.du_'8709'_442
                     (coe
                        MAlonzo.Code.Axiom.Set.d_th_1470
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))))
               (coe
                  MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                  (coe
                     MAlonzo.Code.Ledger.Utxo.du_Dec'45'inInterval_2496 (coe v0)
                     (coe MAlonzo.Code.Ledger.Utxo.d_slot_1914 (coe v3))
                     (coe
                        MAlonzo.Code.Ledger.Transaction.d_txvldt_2566
                        (coe MAlonzo.Code.Ledger.Transaction.d_body_2626 (coe v2))))
                  (coe
                     MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                     (coe
                        MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                        (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
                        (coe
                           MAlonzo.Code.Ledger.Utxo.d_feesOK_2632 (coe v0) (coe v1)
                           (coe MAlonzo.Code.Ledger.Utxo.d_pparams_1916 (coe v3)) (coe v2)
                           (coe MAlonzo.Code.Ledger.Utxo.d_utxo_1930 (coe v4)))
                        (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10))
                     (coe
                        MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                        (coe
                           MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                           (coe
                              MAlonzo.Code.Ledger.TokenAlgebra.d_DecEq'45'Value_218
                              (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2208 (coe v0)))
                           (coe
                              MAlonzo.Code.Ledger.Utxo.du_consumed_2808 (coe v0)
                              (coe MAlonzo.Code.Ledger.Utxo.d_pparams_1916 (coe v3)) (coe v4)
                              (coe MAlonzo.Code.Ledger.Transaction.d_body_2626 (coe v2)))
                           (coe
                              MAlonzo.Code.Ledger.Utxo.du_produced_2816 (coe v0)
                              (coe MAlonzo.Code.Ledger.Utxo.d_pparams_1916 (coe v3)) (coe v4)
                              (coe MAlonzo.Code.Ledger.Transaction.d_body_2626 (coe v2))))
                        (coe
                           MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                           (coe
                              MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                              (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                              (coe
                                 MAlonzo.Code.Ledger.TokenAlgebra.d_coin_200
                                 (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2208 (coe v0))
                                 (MAlonzo.Code.Ledger.Transaction.d_mint_2564
                                    (coe MAlonzo.Code.Ledger.Transaction.d_body_2626 (coe v2))))
                              (coe (0 :: Integer)))
                           (coe
                              MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                              (coe
                                 MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_74
                                 (MAlonzo.Code.Ledger.Transaction.d_txsize_2586
                                    (coe MAlonzo.Code.Ledger.Transaction.d_body_2626 (coe v2)))
                                 (MAlonzo.Code.Ledger.PParams.d_maxTxSize_312
                                    (coe MAlonzo.Code.Ledger.Utxo.d_pparams_1916 (coe v3))))
                              (coe
                                 MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                                 (coe
                                    MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_74
                                    (MAlonzo.Code.Ledger.Utxo.d_refScriptsSize_1966
                                       (coe v0) (coe v1)
                                       (coe MAlonzo.Code.Ledger.Utxo.d_utxo_1930 (coe v4)) (coe v2))
                                    (MAlonzo.Code.Ledger.PParams.d_maxRefScriptSizePerTx_340
                                       (coe MAlonzo.Code.Ledger.Utxo.d_pparams_1916 (coe v3))))
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
                                               (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2208
                                                  (coe v0))
                                               (coe
                                                  MAlonzo.Code.Ledger.TokenAlgebra.d_inject_202
                                                  (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2208
                                                     (coe v0))
                                                  (mulInt
                                                     (coe
                                                        addInt (coe (160 :: Integer))
                                                        (coe
                                                           MAlonzo.Code.Ledger.Utxo.du_utxoEntrySize_1902
                                                           (coe v0)
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                              (coe v5))))
                                                     (coe
                                                        MAlonzo.Code.Ledger.PParams.d_coinsPerUTxOByte_334
                                                        (coe
                                                           MAlonzo.Code.Ledger.Utxo.d_pparams_1916
                                                           (coe v3)))))
                                               (coe
                                                  MAlonzo.Code.Ledger.Transaction.du_getValue'688'_2650
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
                                                MAlonzo.Code.Ledger.Transaction.d_txOutHash_2640
                                                (coe v0))
                                             (coe
                                                MAlonzo.Code.Ledger.Transaction.d_txouts_2560
                                                (coe
                                                   MAlonzo.Code.Ledger.Transaction.d_body_2626
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
                                                     MAlonzo.Code.Ledger.Abstract.d_serSize_1720 v1
                                                     (coe
                                                        MAlonzo.Code.Ledger.Transaction.du_getValue'688'_2650
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                           (coe v5))))
                                                  (MAlonzo.Code.Ledger.PParams.d_maxValSize_320
                                                     (coe
                                                        MAlonzo.Code.Ledger.Utxo.d_pparams_1916
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
                                                   MAlonzo.Code.Ledger.Transaction.d_txOutHash_2640
                                                   (coe v0))
                                                (coe
                                                   MAlonzo.Code.Ledger.Transaction.d_txouts_2560
                                                   (coe
                                                      MAlonzo.Code.Ledger.Transaction.d_body_2626
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
                                                      MAlonzo.Code.Ledger.Transaction.d_txOutHash_2640
                                                      (coe v0))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Transaction.d_txouts_2560
                                                      (coe
                                                         MAlonzo.Code.Ledger.Transaction.d_body_2626
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
                                                              MAlonzo.Code.Ledger.Transaction.d_globalConstants_1196
                                                              (coe v0)))
                                                        (coe
                                                           MAlonzo.Code.Ledger.Address.du_netId_112
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                              (coe v5)))
                                                        (coe
                                                           MAlonzo.Code.Ledger.Types.Epoch.d_NetworkId_288
                                                           (coe
                                                              MAlonzo.Code.Ledger.Transaction.d_globalConstants_1196
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
                                                         MAlonzo.Code.Ledger.Transaction.d_txOutHash_2640
                                                         (coe v0))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Transaction.d_txouts_2560
                                                         (coe
                                                            MAlonzo.Code.Ledger.Transaction.d_body_2626
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
                                                                 MAlonzo.Code.Ledger.Transaction.d_globalConstants_1196
                                                                 (coe v0)))
                                                           (coe
                                                              MAlonzo.Code.Ledger.Address.d_net_82
                                                              (coe v5))
                                                           (coe
                                                              MAlonzo.Code.Ledger.Types.Epoch.d_NetworkId_288
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Transaction.d_globalConstants_1196
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
                                                         MAlonzo.Code.Ledger.Transaction.d_txwdrls_2570
                                                         (coe
                                                            MAlonzo.Code.Ledger.Transaction.d_body_2626
                                                            (coe v2)))))
                                                (coe
                                                   MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                                                   (coe
                                                      MAlonzo.Code.Ledger.Utxo.du_'8799''63'_3018
                                                      (coe
                                                         MAlonzo.Code.Ledger.Transaction.d_txNetworkId_2582
                                                         (coe
                                                            MAlonzo.Code.Ledger.Transaction.d_body_2626
                                                            (coe v2)))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Types.Epoch.d_NetworkId_288
                                                         (coe
                                                            MAlonzo.Code.Ledger.Transaction.d_globalConstants_1196
                                                            (coe v0)))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_276
                                                         (coe
                                                            MAlonzo.Code.Ledger.Transaction.d_globalConstants_1196
                                                            (coe v0))))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Utxo.du_'8799''63'_3018
                                                      (coe
                                                         MAlonzo.Code.Ledger.Transaction.d_curTreasury_2584
                                                         (coe
                                                            MAlonzo.Code.Ledger.Transaction.d_body_2626
                                                            (coe v2)))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Utxo.d_treasury_1918
                                                         (coe v3))
                                                      (coe
                                                         MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)))))))))))))))))
-- Ledger.Conway.Conformance.Utxo..generalizedField-tx
d_'46'generalizedField'45'tx_16851 ::
  T_GeneralizeTel_16859 -> MAlonzo.Code.Ledger.Transaction.T_Tx_2616
d_'46'generalizedField'45'tx_16851 v0
  = case coe v0 of
      C_mkGeneralizeTel_16861 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxo..generalizedField-Γ
d_'46'generalizedField'45'Γ_16853 ::
  T_GeneralizeTel_16859 -> MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1906
d_'46'generalizedField'45'Γ_16853 v0
  = case coe v0 of
      C_mkGeneralizeTel_16861 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxo..generalizedField-s
d_'46'generalizedField'45's_16855 ::
  T_GeneralizeTel_16859 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1920
d_'46'generalizedField'45's_16855 v0
  = case coe v0 of
      C_mkGeneralizeTel_16861 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxo..generalizedField-s'
d_'46'generalizedField'45's''_16857 ::
  T_GeneralizeTel_16859 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1920
d_'46'generalizedField'45's''_16857 v0
  = case coe v0 of
      C_mkGeneralizeTel_16861 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxo.GeneralizeTel
d_GeneralizeTel_16859 a0 a1 = ()
data T_GeneralizeTel_16859
  = C_mkGeneralizeTel_16861 MAlonzo.Code.Ledger.Transaction.T_Tx_2616
                            MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1906
                            MAlonzo.Code.Ledger.Utxo.T_UTxOState_1920
                            MAlonzo.Code.Ledger.Utxo.T_UTxOState_1920
