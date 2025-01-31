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
         MAlonzo.Code.Ledger.Transaction.d_globalConstants_1198 (coe v0))
-- _.Tx
d_Tx_356 a0 = ()
-- _.coin
d_coin_416 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny -> Integer
d_coin_416 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_coin_200
      (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2212 (coe v0))
-- _.getValueʰ
d_getValue'688'_452 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_getValue'688'_452 ~v0 = du_getValue'688'_452
du_getValue'688'_452 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_getValue'688'_452
  = coe MAlonzo.Code.Ledger.Transaction.du_getValue'688'_2656
-- _.inject
d_inject_462 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  Integer -> AgdaAny
d_inject_462 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_inject_202
      (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2212 (coe v0))
-- _.netId
d_netId_504 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
d_netId_504 ~v0 = du_netId_504
du_netId_504 :: MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
du_netId_504 = coe MAlonzo.Code.Ledger.Address.du_netId_112
-- _.txOutHash
d_txOutHash_566 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txOutHash_566 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txOutHash_2646 (coe v0)
-- _.Tx.body
d_body_1378 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2622 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2520
d_body_1378 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_body_2632 (coe v0)
-- _.Tx.isValid
d_isValid_1380 :: MAlonzo.Code.Ledger.Transaction.T_Tx_2622 -> Bool
d_isValid_1380 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_isValid_2636 (coe v0)
-- _.Tx.txAD
d_txAD_1382 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2622 -> Maybe AgdaAny
d_txAD_1382 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txAD_2638 (coe v0)
-- _.Tx.wits
d_wits_1384 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2622 ->
  MAlonzo.Code.Ledger.Transaction.T_TxWitnesses_2602
d_wits_1384 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_wits_2634 (coe v0)
-- Ledger.Conway.Conformance.Utxo._.collectPhaseTwoScriptInputs
d_collectPhaseTwoScriptInputs_1512 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2622 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collectPhaseTwoScriptInputs_1512 v0 v1
  = coe
      MAlonzo.Code.Ledger.ScriptValidation.d_collectPhaseTwoScriptInputs_2356
      (coe v0) (coe v1)
-- Ledger.Conway.Conformance.Utxo._.evalScripts
d_evalScripts_1522 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2622 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Bool
d_evalScripts_1522 v0 v1
  = coe
      MAlonzo.Code.Ledger.ScriptValidation.d_evalScripts_2374 (coe v0)
      (coe v1)
-- Ledger.Conway.Conformance.Utxo.L._._*↓_
d__'42''8595'__1860 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 -> Integer -> Integer
d__'42''8595'__1860 ~v0 v1 v2 = du__'42''8595'__1860 v1 v2
du__'42''8595'__1860 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 -> Integer -> Integer
du__'42''8595'__1860 v0 v1
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
d__'61''62''7495'__1862 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  Bool -> Bool -> Bool
d__'61''62''7495'__1862 ~v0 ~v1 = du__'61''62''7495'__1862
du__'61''62''7495'__1862 :: Bool -> Bool -> Bool
du__'61''62''7495'__1862
  = coe MAlonzo.Code.Ledger.Utxo.du__'61''62''7495'__2610
-- Ledger.Conway.Conformance.Utxo.L._._≡?_
d__'8801''63'__1864 a0 a1 a2 a3 a4 = ()
-- Ledger.Conway.Conformance.Utxo.L._._≤ᵇ_
d__'8804''7495'__1866 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  Integer -> Integer -> Bool
d__'8804''7495'__1866 ~v0 ~v1 = du__'8804''7495'__1866
du__'8804''7495'__1866 :: Integer -> Integer -> Bool
du__'8804''7495'__1866
  = coe MAlonzo.Code.Ledger.Utxo.du__'8804''7495'__2616
-- Ledger.Conway.Conformance.Utxo.L._._≥ᵇ_
d__'8805''7495'__1868 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  Integer -> Integer -> Bool
d__'8805''7495'__1868 ~v0 ~v1 = du__'8805''7495'__1868
du__'8805''7495'__1868 :: Integer -> Integer -> Bool
du__'8805''7495'__1868
  = coe MAlonzo.Code.Ledger.Utxo.du__'8805''7495'__2618
-- Ledger.Conway.Conformance.Utxo.L._._⊢_⇀⦇_,UTXOS⦈_
d__'8866'_'8640''10631'_'44'UTXOS'10632'__1870 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Utxo.L._._⊢_⇀⦇_,UTXO⦈_
d__'8866'_'8640''10631'_'44'UTXO'10632'__1872 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Utxo.L._.Dec-ValidCertDeposits
d_Dec'45'ValidCertDeposits_1874 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_834] ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'ValidCertDeposits_1874 v0 ~v1
  = du_Dec'45'ValidCertDeposits_1874 v0
du_Dec'45'ValidCertDeposits_1874 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_834] ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'ValidCertDeposits_1874 v0
  = coe
      MAlonzo.Code.Ledger.Utxo.du_Dec'45'ValidCertDeposits_2276 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.Dec-inInterval
d_Dec'45'inInterval_1876 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'inInterval_1876 v0 ~v1 = du_Dec'45'inInterval_1876 v0
du_Dec'45'inInterval_1876 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'inInterval_1876 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_Dec'45'inInterval_2504 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.HasCoin-UTxO
d_HasCoin'45'UTxO_1878 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
d_HasCoin'45'UTxO_1878 v0 ~v1 = du_HasCoin'45'UTxO_1878 v0
du_HasCoin'45'UTxO_1878 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
du_HasCoin'45'UTxO_1878 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_HasCoin'45'UTxO_1988 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.HasCoin-UTxOState
d_HasCoin'45'UTxOState_1880 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
d_HasCoin'45'UTxOState_1880 v0 ~v1
  = du_HasCoin'45'UTxOState_1880 v0
du_HasCoin'45'UTxOState_1880 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
du_HasCoin'45'UTxOState_1880 v0
  = coe
      MAlonzo.Code.Ledger.Utxo.du_HasCoin'45'UTxOState_2606 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.Scripts-No-premises
d_Scripts'45'No'45'premises_1884 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1914 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1928 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2622 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_Scripts'45'No'45'premises_1884 v0 v1
  = coe
      MAlonzo.Code.Ledger.Utxo.d_Scripts'45'No'45'premises_2996 (coe v0)
      (coe v1)
-- Ledger.Conway.Conformance.Utxo.L._.Scripts-Yes-premises
d_Scripts'45'Yes'45'premises_1888 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1914 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1928 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2622 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_Scripts'45'Yes'45'premises_1888 v0 v1
  = coe
      MAlonzo.Code.Ledger.Utxo.d_Scripts'45'Yes'45'premises_2994 (coe v0)
      (coe v1)
-- Ledger.Conway.Conformance.Utxo.L._.UTXO-premises
d_UTXO'45'premises_1892 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2622 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1914 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1928 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTXO'45'premises_1892 v0 v1
  = coe
      MAlonzo.Code.Ledger.Utxo.d_UTXO'45'premises_3186 (coe v0) (coe v1)
-- Ledger.Conway.Conformance.Utxo.L._.UTxOEnv
d_UTxOEnv_1894 a0 a1 = ()
-- Ledger.Conway.Conformance.Utxo.L._.UTxOState
d_UTxOState_1896 a0 a1 = ()
-- Ledger.Conway.Conformance.Utxo.L._.ValidCertDeposits
d_ValidCertDeposits_1898 a0 a1 a2 a3 a4 = ()
-- Ledger.Conway.Conformance.Utxo.L._.balance
d_balance_1902 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_balance_1902 v0 ~v1 = du_balance_1902 v0
du_balance_1902 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_balance_1902 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_balance_1964 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.cbalance
d_cbalance_1906 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_cbalance_1906 v0 ~v1 = du_cbalance_1906 v0
du_cbalance_1906 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_cbalance_1906 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_cbalance_1970 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.certDeposit
d_certDeposit_1910 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  MAlonzo.Code.Ledger.Certs.T_DCert_834 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_certDeposit_1910 ~v0 ~v1 = du_certDeposit_1910
du_certDeposit_1910 ::
  MAlonzo.Code.Ledger.Certs.T_DCert_834 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_certDeposit_1910
  = coe MAlonzo.Code.Ledger.Utxo.du_certDeposit_1990
-- Ledger.Conway.Conformance.Utxo.L._.certRefund
d_certRefund_1912 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  MAlonzo.Code.Ledger.Certs.T_DCert_834 ->
  [MAlonzo.Code.Ledger.Certs.T_DepositPurpose_814]
d_certRefund_1912 ~v0 ~v1 = du_certRefund_1912
du_certRefund_1912 ::
  MAlonzo.Code.Ledger.Certs.T_DCert_834 ->
  [MAlonzo.Code.Ledger.Certs.T_DepositPurpose_814]
du_certRefund_1912
  = coe MAlonzo.Code.Ledger.Utxo.du_certRefund_2008
-- Ledger.Conway.Conformance.Utxo.L._.coinPolicies
d_coinPolicies_1914 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 -> [AgdaAny]
d_coinPolicies_1914 v0 ~v1 = du_coinPolicies_1914 v0
du_coinPolicies_1914 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  [AgdaAny]
du_coinPolicies_1914 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_coinPolicies_2634 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.consumed
d_consumed_1916 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1928 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2520 -> AgdaAny
d_consumed_1916 v0 ~v1 = du_consumed_1916 v0
du_consumed_1916 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1928 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2520 -> AgdaAny
du_consumed_1916 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_consumed_2816 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.depositRefunds
d_depositRefunds_1920 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1928 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2520 -> Integer
d_depositRefunds_1920 v0 ~v1 = du_depositRefunds_1920 v0
du_depositRefunds_1920 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1928 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2520 -> Integer
du_depositRefunds_1920 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_depositRefunds_2800 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.depositsChange
d_depositsChange_1922 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2520 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_depositsChange_1922 v0 ~v1 = du_depositsChange_1922 v0
du_depositsChange_1922 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2520 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_depositsChange_1922 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_depositsChange_2474 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.feesOK
d_feesOK_1928 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2622 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Bool
d_feesOK_1928 v0 v1
  = coe MAlonzo.Code.Ledger.Utxo.d_feesOK_2640 (coe v0) (coe v1)
-- Ledger.Conway.Conformance.Utxo.L._.getDataHashes
d_getDataHashes_1930 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> [AgdaAny]
d_getDataHashes_1930 ~v0 ~v1 = du_getDataHashes_1930
du_getDataHashes_1930 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> [AgdaAny]
du_getDataHashes_1930
  = coe MAlonzo.Code.Ledger.Utxo.du_getDataHashes_1836
-- Ledger.Conway.Conformance.Utxo.L._.getInputHashes
d_getInputHashes_1932 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2622 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
d_getInputHashes_1932 v0 ~v1 = du_getInputHashes_1932 v0
du_getInputHashes_1932 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2622 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
du_getInputHashes_1932 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_getInputHashes_1840 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.inInterval
d_inInterval_1934 a0 a1 a2 a3 = ()
-- Ledger.Conway.Conformance.Utxo.L._.isAdaOnlyᵇ
d_isAdaOnly'7495'_1936 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  AgdaAny -> Bool
d_isAdaOnly'7495'_1936 v0 ~v1 = du_isAdaOnly'7495'_1936 v0
du_isAdaOnly'7495'_1936 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny -> Bool
du_isAdaOnly'7495'_1936 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_isAdaOnly'7495'_2636 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.isTwoPhaseScriptAddress
d_isTwoPhaseScriptAddress_1938 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2622 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Bool
d_isTwoPhaseScriptAddress_1938 v0 ~v1
  = du_isTwoPhaseScriptAddress_1938 v0
du_isTwoPhaseScriptAddress_1938 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2622 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Bool
du_isTwoPhaseScriptAddress_1938 v0
  = coe
      MAlonzo.Code.Ledger.Utxo.du_isTwoPhaseScriptAddress_1824 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.minfee
d_minfee_1942 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2622 -> Integer
d_minfee_1942 v0 v1
  = coe MAlonzo.Code.Ledger.Utxo.d_minfee_1980 (coe v0) (coe v1)
-- Ledger.Conway.Conformance.Utxo.L._.newDeposits
d_newDeposits_1944 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1928 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2520 -> Integer
d_newDeposits_1944 v0 ~v1 = du_newDeposits_1944 v0
du_newDeposits_1944 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1928 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2520 -> Integer
du_newDeposits_1944 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_newDeposits_2808 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.outs
d_outs_1948 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2520 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_outs_1948 ~v0 ~v1 = du_outs_1948
du_outs_1948 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2520 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_outs_1948 = coe MAlonzo.Code.Ledger.Utxo.du_outs_1958
-- Ledger.Conway.Conformance.Utxo.L._.produced
d_produced_1950 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1928 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2520 -> AgdaAny
d_produced_1950 v0 ~v1 = du_produced_1950 v0
du_produced_1950 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1928 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2520 -> AgdaAny
du_produced_1950 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_produced_2824 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.proposalDepositsΔ
d_proposalDepositsΔ_1952 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_752] ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2520 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_proposalDepositsΔ_1952 v0 ~v1 = du_proposalDepositsΔ_1952 v0
du_proposalDepositsΔ_1952 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_752] ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2520 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_proposalDepositsΔ_1952 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_proposalDepositsΔ_2420 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.refScriptsSize
d_refScriptsSize_1954 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2622 -> Integer
d_refScriptsSize_1954 v0 v1
  = coe
      MAlonzo.Code.Ledger.Utxo.d_refScriptsSize_1974 (coe v0) (coe v1)
-- Ledger.Conway.Conformance.Utxo.L._.totExUnits
d_totExUnits_1964 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2622 -> AgdaAny
d_totExUnits_1964 v0 ~v1 = du_totExUnits_1964 v0
du_totExUnits_1964 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2622 -> AgdaAny
du_totExUnits_1964 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_totExUnits_1896 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.updateCertDeposits
d_updateCertDeposits_1966 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_834] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateCertDeposits_1966 v0 ~v1 = du_updateCertDeposits_1966 v0
du_updateCertDeposits_1966 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_834] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateCertDeposits_1966 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_updateCertDeposits_2278 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.updateDeposits
d_updateDeposits_1968 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2520 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateDeposits_1968 v0 ~v1 = du_updateDeposits_1968 v0
du_updateDeposits_1968 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2520 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateDeposits_1968 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_updateDeposits_2368 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.updateProposalDeposits
d_updateProposalDeposits_1970 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_752] ->
  AgdaAny ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateProposalDeposits_1970 v0 ~v1
  = du_updateProposalDeposits_1970 v0
du_updateProposalDeposits_1970 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_752] ->
  AgdaAny ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateProposalDeposits_1970 v0
  = coe
      MAlonzo.Code.Ledger.Utxo.du_updateProposalDeposits_2356 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.utxoEntrySize
d_utxoEntrySize_1974 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_utxoEntrySize_1974 v0 ~v1 = du_utxoEntrySize_1974 v0
du_utxoEntrySize_1974 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_utxoEntrySize_1974 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_utxoEntrySize_1910 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.utxoEntrySizeWithoutVal
d_utxoEntrySizeWithoutVal_1976 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 -> Integer
d_utxoEntrySizeWithoutVal_1976 ~v0
  = du_utxoEntrySizeWithoutVal_1976
du_utxoEntrySizeWithoutVal_1976 :: Integer
du_utxoEntrySizeWithoutVal_1976 = coe (8 :: Integer)
-- Ledger.Conway.Conformance.Utxo.L._.≟-∅ᵇ
d_'8799''45''8709''7495'_1978 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  () -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> [AgdaAny] -> Bool
d_'8799''45''8709''7495'_1978 ~v0 ~v1
  = du_'8799''45''8709''7495'_1978
du_'8799''45''8709''7495'_1978 ::
  () -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> [AgdaAny] -> Bool
du_'8799''45''8709''7495'_1978 v0 v1 v2
  = coe MAlonzo.Code.Ledger.Utxo.du_'8799''45''8709''7495'_2630 v1 v2
-- Ledger.Conway.Conformance.Utxo.L._.≟?
d_'8799''63'_1980 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  () ->
  Maybe AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_'8799''63'_1980 ~v0 ~v1 = du_'8799''63'_1980
du_'8799''63'_1980 ::
  () ->
  Maybe AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_'8799''63'_1980 v0 v1 v2 v3
  = coe MAlonzo.Code.Ledger.Utxo.du_'8799''63'_3026 v1 v2 v3
-- Ledger.Conway.Conformance.Utxo.L._.UTxOEnv.pparams
d_pparams_2006 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1914 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242
d_pparams_2006 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_pparams_1924 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.UTxOEnv.slot
d_slot_2008 :: MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1914 -> AgdaAny
d_slot_2008 v0 = coe MAlonzo.Code.Ledger.Utxo.d_slot_1922 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.UTxOEnv.treasury
d_treasury_2010 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1914 -> Integer
d_treasury_2010 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_treasury_1926 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.UTxOState.deposits
d_deposits_2014 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1928 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_2014 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_deposits_1942 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.UTxOState.donations
d_donations_2016 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1928 -> Integer
d_donations_2016 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_donations_1944 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.UTxOState.fees
d_fees_2018 :: MAlonzo.Code.Ledger.Utxo.T_UTxOState_1928 -> Integer
d_fees_2018 v0 = coe MAlonzo.Code.Ledger.Utxo.d_fees_1940 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.UTxOState.utxo
d_utxo_2020 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1928 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2020 v0 = coe MAlonzo.Code.Ledger.Utxo.d_utxo_1938 (coe v0)
-- Ledger.Conway.Conformance.Utxo._⊢_⇀⦇_,UTXOS⦈_
d__'8866'_'8640''10631'_'44'UTXOS'10632'__2062 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'UTXOS'10632'__2062
  = C_Scripts'45'Yes_2142 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_Scripts'45'No_2222 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Utxo._.txdonation
d_txdonation_2100 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1914 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1928 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2622 -> Integer
d_txdonation_2100 ~v0 ~v1 ~v2 v3 = du_txdonation_2100 v3
du_txdonation_2100 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2622 -> Integer
du_txdonation_2100 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txdonation_2582
      (coe MAlonzo.Code.Ledger.Transaction.d_body_2632 (coe v0))
-- Ledger.Conway.Conformance.Utxo._.txfee
d_txfee_2102 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1914 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1928 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2622 -> Integer
d_txfee_2102 ~v0 ~v1 ~v2 v3 = du_txfee_2102 v3
du_txfee_2102 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2622 -> Integer
du_txfee_2102 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txfee_2568
      (coe MAlonzo.Code.Ledger.Transaction.d_body_2632 (coe v0))
-- Ledger.Conway.Conformance.Utxo._.txins
d_txins_2106 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1914 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1928 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2622 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txins_2106 ~v0 ~v1 ~v2 v3 = du_txins_2106 v3
du_txins_2106 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2622 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_txins_2106 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txins_2562
      (coe MAlonzo.Code.Ledger.Transaction.d_body_2632 (coe v0))
-- Ledger.Conway.Conformance.Utxo._.pparams
d_pparams_2124 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1914 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1928 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2622 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242
d_pparams_2124 ~v0 v1 ~v2 ~v3 = du_pparams_2124 v1
du_pparams_2124 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1914 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242
du_pparams_2124 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_pparams_1924 (coe v0)
-- Ledger.Conway.Conformance.Utxo._.deposits
d_deposits_2132 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1914 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1928 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2622 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_2132 ~v0 ~v1 v2 ~v3 = du_deposits_2132 v2
du_deposits_2132 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1928 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_deposits_2132 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_deposits_1942 (coe v0)
-- Ledger.Conway.Conformance.Utxo._.donations
d_donations_2134 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1914 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1928 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2622 -> Integer
d_donations_2134 ~v0 ~v1 v2 ~v3 = du_donations_2134 v2
du_donations_2134 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1928 -> Integer
du_donations_2134 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_donations_1944 (coe v0)
-- Ledger.Conway.Conformance.Utxo._.fees
d_fees_2136 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1914 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1928 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2622 -> Integer
d_fees_2136 ~v0 ~v1 v2 ~v3 = du_fees_2136 v2
du_fees_2136 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1928 -> Integer
du_fees_2136 v0 = coe MAlonzo.Code.Ledger.Utxo.d_fees_1940 (coe v0)
-- Ledger.Conway.Conformance.Utxo._.utxo
d_utxo_2138 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1914 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1928 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2622 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2138 ~v0 ~v1 v2 ~v3 = du_utxo_2138 v2
du_utxo_2138 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1928 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxo_2138 v0 = coe MAlonzo.Code.Ledger.Utxo.d_utxo_1938 (coe v0)
-- Ledger.Conway.Conformance.Utxo._.collateral
d_collateral_2162 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1914 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1928 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2622 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateral_2162 ~v0 ~v1 ~v2 v3 = du_collateral_2162 v3
du_collateral_2162 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2622 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_collateral_2162 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_collateral_2596
      (coe MAlonzo.Code.Ledger.Transaction.d_body_2632 (coe v0))
-- Ledger.Conway.Conformance.Utxo._.pparams
d_pparams_2204 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1914 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1928 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2622 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242
d_pparams_2204 ~v0 v1 ~v2 ~v3 = du_pparams_2204 v1
du_pparams_2204 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1914 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242
du_pparams_2204 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_pparams_1924 (coe v0)
-- Ledger.Conway.Conformance.Utxo._.deposits
d_deposits_2212 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1914 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1928 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2622 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_2212 ~v0 ~v1 v2 ~v3 = du_deposits_2212 v2
du_deposits_2212 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1928 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_deposits_2212 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_deposits_1942 (coe v0)
-- Ledger.Conway.Conformance.Utxo._.donations
d_donations_2214 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1914 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1928 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2622 -> Integer
d_donations_2214 ~v0 ~v1 v2 ~v3 = du_donations_2214 v2
du_donations_2214 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1928 -> Integer
du_donations_2214 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_donations_1944 (coe v0)
-- Ledger.Conway.Conformance.Utxo._.fees
d_fees_2216 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1914 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1928 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2622 -> Integer
d_fees_2216 ~v0 ~v1 v2 ~v3 = du_fees_2216 v2
du_fees_2216 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1928 -> Integer
du_fees_2216 v0 = coe MAlonzo.Code.Ledger.Utxo.d_fees_1940 (coe v0)
-- Ledger.Conway.Conformance.Utxo._.utxo
d_utxo_2218 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1914 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1928 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2622 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2218 ~v0 ~v1 v2 ~v3 = du_utxo_2218 v2
du_utxo_2218 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1928 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxo_2218 v0 = coe MAlonzo.Code.Ledger.Utxo.d_utxo_1938 (coe v0)
-- Ledger.Conway.Conformance.Utxo.Scripts-Yes-premises
d_Scripts'45'Yes'45'premises_2224 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1914 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1928 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2622 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_Scripts'45'Yes'45'premises_2224 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased
      (coe
         MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
            (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
            (coe
               MAlonzo.Code.Ledger.ScriptValidation.d_evalScripts_2374 (coe v0)
               (coe v1) (coe v4)
               (coe
                  MAlonzo.Code.Ledger.ScriptValidation.d_collectPhaseTwoScriptInputs_2356
                  (coe v0) (coe v1)
                  (coe MAlonzo.Code.Ledger.Utxo.d_pparams_1924 (coe v2)) (coe v4)
                  (coe MAlonzo.Code.Ledger.Utxo.d_utxo_1938 (coe v3))))
            (coe MAlonzo.Code.Ledger.Transaction.d_isValid_2636 (coe v4)))
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
            (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
            (coe MAlonzo.Code.Ledger.Transaction.d_isValid_2636 (coe v4))
            (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)))
-- Ledger.Conway.Conformance.Utxo.Scripts-No-premises
d_Scripts'45'No'45'premises_2226 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1914 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1928 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2622 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_Scripts'45'No'45'premises_2226 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased
      (coe
         MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
            (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
            (coe
               MAlonzo.Code.Ledger.ScriptValidation.d_evalScripts_2374 (coe v0)
               (coe v1) (coe v4)
               (coe
                  MAlonzo.Code.Ledger.ScriptValidation.d_collectPhaseTwoScriptInputs_2356
                  (coe v0) (coe v1)
                  (coe MAlonzo.Code.Ledger.Utxo.d_pparams_1924 (coe v2)) (coe v4)
                  (coe MAlonzo.Code.Ledger.Utxo.d_utxo_1938 (coe v3))))
            (coe MAlonzo.Code.Ledger.Transaction.d_isValid_2636 (coe v4)))
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
            (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
            (coe MAlonzo.Code.Ledger.Transaction.d_isValid_2636 (coe v4))
            (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)))
-- Ledger.Conway.Conformance.Utxo._⊢_⇀⦇_,UTXO⦈_
d__'8866'_'8640''10631'_'44'UTXO'10632'__2228 a0 a1 a2 a3 a4 a5
  = ()
newtype T__'8866'_'8640''10631'_'44'UTXO'10632'__2228
  = C_UTXO'45'inductive_2324 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Utxo._.body
d_body_2236 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  T_GeneralizeTel_16869 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2520
d_body_2236 ~v0 ~v1 v2 = du_body_2236 v2
du_body_2236 ::
  T_GeneralizeTel_16869 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2520
du_body_2236 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_body_2632
      (coe d_'46'generalizedField'45'tx_16861 (coe v0))
-- Ledger.Conway.Conformance.Utxo._.curTreasury
d_curTreasury_2244 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  T_GeneralizeTel_16869 -> Maybe Integer
d_curTreasury_2244 ~v0 ~v1 v2 = du_curTreasury_2244 v2
du_curTreasury_2244 :: T_GeneralizeTel_16869 -> Maybe Integer
du_curTreasury_2244 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_curTreasury_2590
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2632
         (coe d_'46'generalizedField'45'tx_16861 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.mint
d_mint_2246 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  T_GeneralizeTel_16869 -> AgdaAny
d_mint_2246 ~v0 ~v1 v2 = du_mint_2246 v2
du_mint_2246 :: T_GeneralizeTel_16869 -> AgdaAny
du_mint_2246 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_mint_2570
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2632
         (coe d_'46'generalizedField'45'tx_16861 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.refInputs
d_refInputs_2248 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  T_GeneralizeTel_16869 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_2248 ~v0 ~v1 v2 = du_refInputs_2248 v2
du_refInputs_2248 ::
  T_GeneralizeTel_16869 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_refInputs_2248 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_refInputs_2564
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2632
         (coe d_'46'generalizedField'45'tx_16861 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.txNetworkId
d_txNetworkId_2256 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  T_GeneralizeTel_16869 -> Maybe AgdaAny
d_txNetworkId_2256 ~v0 ~v1 v2 = du_txNetworkId_2256 v2
du_txNetworkId_2256 :: T_GeneralizeTel_16869 -> Maybe AgdaAny
du_txNetworkId_2256 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txNetworkId_2588
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2632
         (coe d_'46'generalizedField'45'tx_16861 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.txins
d_txins_2266 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  T_GeneralizeTel_16869 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txins_2266 ~v0 ~v1 v2 = du_txins_2266 v2
du_txins_2266 ::
  T_GeneralizeTel_16869 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_txins_2266 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txins_2562
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2632
         (coe d_'46'generalizedField'45'tx_16861 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.txouts
d_txouts_2268 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  T_GeneralizeTel_16869 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txouts_2268 ~v0 ~v1 v2 = du_txouts_2268 v2
du_txouts_2268 ::
  T_GeneralizeTel_16869 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txouts_2268 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txouts_2566
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2632
         (coe d_'46'generalizedField'45'tx_16861 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.txsize
d_txsize_2272 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  T_GeneralizeTel_16869 -> Integer
d_txsize_2272 ~v0 ~v1 v2 = du_txsize_2272 v2
du_txsize_2272 :: T_GeneralizeTel_16869 -> Integer
du_txsize_2272 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txsize_2592
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2632
         (coe d_'46'generalizedField'45'tx_16861 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.txvldt
d_txvldt_2276 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  T_GeneralizeTel_16869 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txvldt_2276 ~v0 ~v1 v2 = du_txvldt_2276 v2
du_txvldt_2276 ::
  T_GeneralizeTel_16869 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txvldt_2276 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txvldt_2572
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2632
         (coe d_'46'generalizedField'45'tx_16861 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.txwdrls
d_txwdrls_2280 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  T_GeneralizeTel_16869 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_2280 ~v0 ~v1 v2 = du_txwdrls_2280 v2
du_txwdrls_2280 ::
  T_GeneralizeTel_16869 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txwdrls_2280 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txwdrls_2576
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2632
         (coe d_'46'generalizedField'45'tx_16861 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.pparams
d_pparams_2284 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  T_GeneralizeTel_16869 -> MAlonzo.Code.Ledger.PParams.T_PParams_242
d_pparams_2284 ~v0 ~v1 v2 = du_pparams_2284 v2
du_pparams_2284 ::
  T_GeneralizeTel_16869 -> MAlonzo.Code.Ledger.PParams.T_PParams_242
du_pparams_2284 v0
  = coe
      MAlonzo.Code.Ledger.Utxo.d_pparams_1924
      (coe d_'46'generalizedField'45'Γ_16863 (coe v0))
-- Ledger.Conway.Conformance.Utxo._.slot
d_slot_2286 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  T_GeneralizeTel_16869 -> AgdaAny
d_slot_2286 ~v0 ~v1 v2 = du_slot_2286 v2
du_slot_2286 :: T_GeneralizeTel_16869 -> AgdaAny
du_slot_2286 v0
  = coe
      MAlonzo.Code.Ledger.Utxo.d_slot_1922
      (coe d_'46'generalizedField'45'Γ_16863 (coe v0))
-- Ledger.Conway.Conformance.Utxo._.treasury
d_treasury_2288 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  T_GeneralizeTel_16869 -> Integer
d_treasury_2288 ~v0 ~v1 v2 = du_treasury_2288 v2
du_treasury_2288 :: T_GeneralizeTel_16869 -> Integer
du_treasury_2288 v0
  = coe
      MAlonzo.Code.Ledger.Utxo.d_treasury_1926
      (coe d_'46'generalizedField'45'Γ_16863 (coe v0))
-- Ledger.Conway.Conformance.Utxo._.utxo
d_utxo_2298 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  T_GeneralizeTel_16869 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2298 ~v0 ~v1 v2 = du_utxo_2298 v2
du_utxo_2298 ::
  T_GeneralizeTel_16869 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxo_2298 v0
  = coe
      MAlonzo.Code.Ledger.Utxo.d_utxo_1938
      (coe d_'46'generalizedField'45's_16865 (coe v0))
-- Ledger.Conway.Conformance.Utxo.UTXO-premises
d_UTXO'45'premises_2368 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2622 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1914 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1928 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTXO'45'premises_2368 v0 v1 v2 v3 v4
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
                     (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1182 (coe v0))
                     (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1180 (coe v0))))
               (coe
                  MAlonzo.Code.Ledger.Transaction.d_txins_2562
                  (coe MAlonzo.Code.Ledger.Transaction.d_body_2632 (coe v2)))
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
                          (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1182 (coe v0))
                          (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1180 (coe v0)))
                       (coe v5)
                       (coe
                          MAlonzo.Code.Class.IsSet.du_dom_548
                          (coe
                             MAlonzo.Code.Axiom.Set.d_th_1470
                             (coe
                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                          (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                          (coe MAlonzo.Code.Ledger.Utxo.d_utxo_1938 (coe v4)))))
               (coe
                  MAlonzo.Code.Axiom.Set.du__'8746'__680
                  (coe
                     MAlonzo.Code.Axiom.Set.d_th_1470
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                  (coe
                     MAlonzo.Code.Ledger.Transaction.d_txins_2562
                     (coe MAlonzo.Code.Ledger.Transaction.d_body_2632 (coe v2)))
                  (coe
                     MAlonzo.Code.Ledger.Transaction.d_refInputs_2564
                     (coe MAlonzo.Code.Ledger.Transaction.d_body_2632 (coe v2)))))
            (coe
               MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
               (coe
                  MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_DecEq'45'ℙ_1138
                     (coe
                        MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                        (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1182 (coe v0))
                        (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1180 (coe v0))))
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
                           (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1182 (coe v0))
                           (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1180 (coe v0))))
                     (coe
                        MAlonzo.Code.Ledger.Transaction.d_txins_2562
                        (coe MAlonzo.Code.Ledger.Transaction.d_body_2632 (coe v2)))
                     (coe
                        MAlonzo.Code.Ledger.Transaction.d_refInputs_2564
                        (coe MAlonzo.Code.Ledger.Transaction.d_body_2632 (coe v2))))
                  (coe
                     MAlonzo.Code.Axiom.Set.du_'8709'_442
                     (coe
                        MAlonzo.Code.Axiom.Set.d_th_1470
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))))
               (coe
                  MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                  (coe
                     MAlonzo.Code.Ledger.Utxo.du_Dec'45'inInterval_2504 (coe v0)
                     (coe MAlonzo.Code.Ledger.Utxo.d_slot_1922 (coe v3))
                     (coe
                        MAlonzo.Code.Ledger.Transaction.d_txvldt_2572
                        (coe MAlonzo.Code.Ledger.Transaction.d_body_2632 (coe v2))))
                  (coe
                     MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                     (coe
                        MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                        (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
                        (coe
                           MAlonzo.Code.Ledger.Utxo.d_feesOK_2640 (coe v0) (coe v1)
                           (coe MAlonzo.Code.Ledger.Utxo.d_pparams_1924 (coe v3)) (coe v2)
                           (coe MAlonzo.Code.Ledger.Utxo.d_utxo_1938 (coe v4)))
                        (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10))
                     (coe
                        MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                        (coe
                           MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                           (coe
                              MAlonzo.Code.Ledger.TokenAlgebra.d_DecEq'45'Value_218
                              (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2212 (coe v0)))
                           (coe
                              MAlonzo.Code.Ledger.Utxo.du_consumed_2816 (coe v0)
                              (coe MAlonzo.Code.Ledger.Utxo.d_pparams_1924 (coe v3)) (coe v4)
                              (coe MAlonzo.Code.Ledger.Transaction.d_body_2632 (coe v2)))
                           (coe
                              MAlonzo.Code.Ledger.Utxo.du_produced_2824 (coe v0)
                              (coe MAlonzo.Code.Ledger.Utxo.d_pparams_1924 (coe v3)) (coe v4)
                              (coe MAlonzo.Code.Ledger.Transaction.d_body_2632 (coe v2))))
                        (coe
                           MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                           (coe
                              MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                              (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                              (coe
                                 MAlonzo.Code.Ledger.TokenAlgebra.d_coin_200
                                 (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2212 (coe v0))
                                 (MAlonzo.Code.Ledger.Transaction.d_mint_2570
                                    (coe MAlonzo.Code.Ledger.Transaction.d_body_2632 (coe v2))))
                              (coe (0 :: Integer)))
                           (coe
                              MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                              (coe
                                 MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_74
                                 (MAlonzo.Code.Ledger.Transaction.d_txsize_2592
                                    (coe MAlonzo.Code.Ledger.Transaction.d_body_2632 (coe v2)))
                                 (MAlonzo.Code.Ledger.PParams.d_maxTxSize_312
                                    (coe MAlonzo.Code.Ledger.Utxo.d_pparams_1924 (coe v3))))
                              (coe
                                 MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                                 (coe
                                    MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_74
                                    (MAlonzo.Code.Ledger.Utxo.d_refScriptsSize_1974
                                       (coe v0) (coe v1)
                                       (coe MAlonzo.Code.Ledger.Utxo.d_utxo_1938 (coe v4)) (coe v2))
                                    (MAlonzo.Code.Ledger.PParams.d_maxRefScriptSizePerTx_340
                                       (coe MAlonzo.Code.Ledger.Utxo.d_pparams_1924 (coe v3))))
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
                                               (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2212
                                                  (coe v0))
                                               (coe
                                                  MAlonzo.Code.Ledger.TokenAlgebra.d_inject_202
                                                  (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2212
                                                     (coe v0))
                                                  (mulInt
                                                     (coe
                                                        addInt (coe (160 :: Integer))
                                                        (coe
                                                           MAlonzo.Code.Ledger.Utxo.du_utxoEntrySize_1910
                                                           (coe v0)
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                              (coe v5))))
                                                     (coe
                                                        MAlonzo.Code.Ledger.PParams.d_coinsPerUTxOByte_334
                                                        (coe
                                                           MAlonzo.Code.Ledger.Utxo.d_pparams_1924
                                                           (coe v3)))))
                                               (coe
                                                  MAlonzo.Code.Ledger.Transaction.du_getValue'688'_2656
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
                                                MAlonzo.Code.Ledger.Transaction.d_txOutHash_2646
                                                (coe v0))
                                             (coe
                                                MAlonzo.Code.Ledger.Transaction.d_txouts_2566
                                                (coe
                                                   MAlonzo.Code.Ledger.Transaction.d_body_2632
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
                                                     MAlonzo.Code.Ledger.Abstract.d_serSize_1728 v1
                                                     (coe
                                                        MAlonzo.Code.Ledger.Transaction.du_getValue'688'_2656
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                           (coe v5))))
                                                  (MAlonzo.Code.Ledger.PParams.d_maxValSize_320
                                                     (coe
                                                        MAlonzo.Code.Ledger.Utxo.d_pparams_1924
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
                                                   MAlonzo.Code.Ledger.Transaction.d_txOutHash_2646
                                                   (coe v0))
                                                (coe
                                                   MAlonzo.Code.Ledger.Transaction.d_txouts_2566
                                                   (coe
                                                      MAlonzo.Code.Ledger.Transaction.d_body_2632
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
                                                      MAlonzo.Code.Ledger.Transaction.d_txOutHash_2646
                                                      (coe v0))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Transaction.d_txouts_2566
                                                      (coe
                                                         MAlonzo.Code.Ledger.Transaction.d_body_2632
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
                                                              MAlonzo.Code.Ledger.Transaction.d_globalConstants_1198
                                                              (coe v0)))
                                                        (coe
                                                           MAlonzo.Code.Ledger.Address.du_netId_112
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                              (coe v5)))
                                                        (coe
                                                           MAlonzo.Code.Ledger.Types.Epoch.d_NetworkId_288
                                                           (coe
                                                              MAlonzo.Code.Ledger.Transaction.d_globalConstants_1198
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
                                                         MAlonzo.Code.Ledger.Transaction.d_txOutHash_2646
                                                         (coe v0))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Transaction.d_txouts_2566
                                                         (coe
                                                            MAlonzo.Code.Ledger.Transaction.d_body_2632
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
                                                                 MAlonzo.Code.Ledger.Transaction.d_globalConstants_1198
                                                                 (coe v0)))
                                                           (coe
                                                              MAlonzo.Code.Ledger.Address.d_net_82
                                                              (coe v5))
                                                           (coe
                                                              MAlonzo.Code.Ledger.Types.Epoch.d_NetworkId_288
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Transaction.d_globalConstants_1198
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
                                                         MAlonzo.Code.Ledger.Transaction.d_txwdrls_2576
                                                         (coe
                                                            MAlonzo.Code.Ledger.Transaction.d_body_2632
                                                            (coe v2)))))
                                                (coe
                                                   MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                                                   (coe
                                                      MAlonzo.Code.Ledger.Utxo.du_'8799''63'_3026
                                                      (coe
                                                         MAlonzo.Code.Ledger.Transaction.d_txNetworkId_2588
                                                         (coe
                                                            MAlonzo.Code.Ledger.Transaction.d_body_2632
                                                            (coe v2)))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Types.Epoch.d_NetworkId_288
                                                         (coe
                                                            MAlonzo.Code.Ledger.Transaction.d_globalConstants_1198
                                                            (coe v0)))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_276
                                                         (coe
                                                            MAlonzo.Code.Ledger.Transaction.d_globalConstants_1198
                                                            (coe v0))))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Utxo.du_'8799''63'_3026
                                                      (coe
                                                         MAlonzo.Code.Ledger.Transaction.d_curTreasury_2590
                                                         (coe
                                                            MAlonzo.Code.Ledger.Transaction.d_body_2632
                                                            (coe v2)))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Utxo.d_treasury_1926
                                                         (coe v3))
                                                      (coe
                                                         MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)))))))))))))))))
-- Ledger.Conway.Conformance.Utxo..generalizedField-tx
d_'46'generalizedField'45'tx_16861 ::
  T_GeneralizeTel_16869 -> MAlonzo.Code.Ledger.Transaction.T_Tx_2622
d_'46'generalizedField'45'tx_16861 v0
  = case coe v0 of
      C_mkGeneralizeTel_16871 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxo..generalizedField-Γ
d_'46'generalizedField'45'Γ_16863 ::
  T_GeneralizeTel_16869 -> MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1914
d_'46'generalizedField'45'Γ_16863 v0
  = case coe v0 of
      C_mkGeneralizeTel_16871 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxo..generalizedField-s
d_'46'generalizedField'45's_16865 ::
  T_GeneralizeTel_16869 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1928
d_'46'generalizedField'45's_16865 v0
  = case coe v0 of
      C_mkGeneralizeTel_16871 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxo..generalizedField-s'
d_'46'generalizedField'45's''_16867 ::
  T_GeneralizeTel_16869 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1928
d_'46'generalizedField'45's''_16867 v0
  = case coe v0 of
      C_mkGeneralizeTel_16871 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxo.GeneralizeTel
d_GeneralizeTel_16869 a0 a1 = ()
data T_GeneralizeTel_16869
  = C_mkGeneralizeTel_16871 MAlonzo.Code.Ledger.Transaction.T_Tx_2622
                            MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1914
                            MAlonzo.Code.Ledger.Utxo.T_UTxOState_1928
                            MAlonzo.Code.Ledger.Utxo.T_UTxOState_1928
