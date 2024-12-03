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
d_NetworkId_214 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny
d_NetworkId_214 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_NetworkId_288
      (coe
         MAlonzo.Code.Ledger.Transaction.d_globalConstants_1224 (coe v0))
-- _.Tx
d_Tx_368 a0 = ()
-- _.coin
d_coin_428 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny -> Integer
d_coin_428 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_coin_200
      (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2264 (coe v0))
-- _.getValueʰ
d_getValue'688'_464 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_getValue'688'_464 ~v0 = du_getValue'688'_464
du_getValue'688'_464 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_getValue'688'_464
  = coe MAlonzo.Code.Ledger.Transaction.du_getValue'688'_2704
-- _.inject
d_inject_474 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  Integer -> AgdaAny
d_inject_474 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_inject_202
      (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2264 (coe v0))
-- _.netId
d_netId_516 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
d_netId_516 ~v0 = du_netId_516
du_netId_516 :: MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
du_netId_516 = coe MAlonzo.Code.Ledger.Address.du_netId_112
-- _.txOutHash
d_txOutHash_578 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txOutHash_578 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txOutHash_2694 (coe v0)
-- _.Tx.body
d_body_1400 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2670 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2568
d_body_1400 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_body_2680 (coe v0)
-- _.Tx.isValid
d_isValid_1402 :: MAlonzo.Code.Ledger.Transaction.T_Tx_2670 -> Bool
d_isValid_1402 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_isValid_2684 (coe v0)
-- _.Tx.txAD
d_txAD_1404 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2670 -> Maybe AgdaAny
d_txAD_1404 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txAD_2686 (coe v0)
-- _.Tx.wits
d_wits_1406 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2670 ->
  MAlonzo.Code.Ledger.Transaction.T_TxWitnesses_2650
d_wits_1406 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_wits_2682 (coe v0)
-- Ledger.Conway.Conformance.Utxo._.collectPhaseTwoScriptInputs
d_collectPhaseTwoScriptInputs_1534 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1726 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2670 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collectPhaseTwoScriptInputs_1534 v0 v1
  = coe
      MAlonzo.Code.Ledger.ScriptValidation.d_collectPhaseTwoScriptInputs_2348
      (coe v0) (coe v1)
-- Ledger.Conway.Conformance.Utxo._.evalScripts
d_evalScripts_1544 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1726 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2670 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Bool
d_evalScripts_1544 v0 v1
  = coe
      MAlonzo.Code.Ledger.ScriptValidation.d_evalScripts_2366 (coe v0)
      (coe v1)
-- Ledger.Conway.Conformance.Utxo.L._._*↓_
d__'42''8595'__1866 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1726 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 -> Integer -> Integer
d__'42''8595'__1866 ~v0 v1 v2 = du__'42''8595'__1866 v1 v2
du__'42''8595'__1866 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 -> Integer -> Integer
du__'42''8595'__1866 v0 v1
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
d__'61''62''7495'__1868 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1726 ->
  Bool -> Bool -> Bool
d__'61''62''7495'__1868 ~v0 ~v1 = du__'61''62''7495'__1868
du__'61''62''7495'__1868 :: Bool -> Bool -> Bool
du__'61''62''7495'__1868
  = coe MAlonzo.Code.Ledger.Utxo.du__'61''62''7495'__2554
-- Ledger.Conway.Conformance.Utxo.L._._≡?_
d__'8801''63'__1870 a0 a1 a2 a3 a4 = ()
-- Ledger.Conway.Conformance.Utxo.L._._≤ᵇ_
d__'8804''7495'__1872 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1726 ->
  Integer -> Integer -> Bool
d__'8804''7495'__1872 ~v0 ~v1 = du__'8804''7495'__1872
du__'8804''7495'__1872 :: Integer -> Integer -> Bool
du__'8804''7495'__1872
  = coe MAlonzo.Code.Ledger.Utxo.du__'8804''7495'__2560
-- Ledger.Conway.Conformance.Utxo.L._._≥ᵇ_
d__'8805''7495'__1874 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1726 ->
  Integer -> Integer -> Bool
d__'8805''7495'__1874 ~v0 ~v1 = du__'8805''7495'__1874
du__'8805''7495'__1874 :: Integer -> Integer -> Bool
du__'8805''7495'__1874
  = coe MAlonzo.Code.Ledger.Utxo.du__'8805''7495'__2562
-- Ledger.Conway.Conformance.Utxo.L._._⊢_⇀⦇_,UTXOS⦈_
d__'8866'_'8640''10631'_'44'UTXOS'10632'__1876 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Utxo.L._._⊢_⇀⦇_,UTXO⦈_
d__'8866'_'8640''10631'_'44'UTXO'10632'__1878 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Utxo.L._.Dec-ValidCertDeposits
d_Dec'45'ValidCertDeposits_1880 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1726 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_856] ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'ValidCertDeposits_1880 v0 ~v1
  = du_Dec'45'ValidCertDeposits_1880 v0
du_Dec'45'ValidCertDeposits_1880 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_856] ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'ValidCertDeposits_1880 v0
  = coe
      MAlonzo.Code.Ledger.Utxo.du_Dec'45'ValidCertDeposits_2230 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.Dec-inInterval
d_Dec'45'inInterval_1882 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1726 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'inInterval_1882 v0 ~v1 = du_Dec'45'inInterval_1882 v0
du_Dec'45'inInterval_1882 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'inInterval_1882 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_Dec'45'inInterval_2448 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.HasCoin-UTxO
d_HasCoin'45'UTxO_1884 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1726 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
d_HasCoin'45'UTxO_1884 v0 ~v1 = du_HasCoin'45'UTxO_1884 v0
du_HasCoin'45'UTxO_1884 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
du_HasCoin'45'UTxO_1884 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_HasCoin'45'UTxO_1998 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.HasCoin-UTxOState
d_HasCoin'45'UTxOState_1886 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1726 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
d_HasCoin'45'UTxOState_1886 v0 ~v1
  = du_HasCoin'45'UTxOState_1886 v0
du_HasCoin'45'UTxOState_1886 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
du_HasCoin'45'UTxOState_1886 v0
  = coe
      MAlonzo.Code.Ledger.Utxo.du_HasCoin'45'UTxOState_2550 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.Scripts-No-premises
d_Scripts'45'No'45'premises_1890 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1726 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1922 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1936 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2670 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_Scripts'45'No'45'premises_1890 v0 v1
  = coe
      MAlonzo.Code.Ledger.Utxo.d_Scripts'45'No'45'premises_2940 (coe v0)
      (coe v1)
-- Ledger.Conway.Conformance.Utxo.L._.Scripts-Yes-premises
d_Scripts'45'Yes'45'premises_1894 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1726 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1922 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1936 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2670 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_Scripts'45'Yes'45'premises_1894 v0 v1
  = coe
      MAlonzo.Code.Ledger.Utxo.d_Scripts'45'Yes'45'premises_2938 (coe v0)
      (coe v1)
-- Ledger.Conway.Conformance.Utxo.L._.UTXO-premises
d_UTXO'45'premises_1898 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1726 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2670 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1922 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1936 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTXO'45'premises_1898 v0 v1
  = coe
      MAlonzo.Code.Ledger.Utxo.d_UTXO'45'premises_3130 (coe v0) (coe v1)
-- Ledger.Conway.Conformance.Utxo.L._.UTxOEnv
d_UTxOEnv_1900 a0 a1 = ()
-- Ledger.Conway.Conformance.Utxo.L._.UTxOState
d_UTxOState_1902 a0 a1 = ()
-- Ledger.Conway.Conformance.Utxo.L._.ValidCertDeposits
d_ValidCertDeposits_1904 a0 a1 a2 a3 a4 = ()
-- Ledger.Conway.Conformance.Utxo.L._.balance
d_balance_1908 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1726 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_balance_1908 v0 ~v1 = du_balance_1908 v0
du_balance_1908 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_balance_1908 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_balance_1972 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.cbalance
d_cbalance_1912 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1726 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_cbalance_1912 v0 ~v1 = du_cbalance_1912 v0
du_cbalance_1912 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_cbalance_1912 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_cbalance_1978 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.certDeposit
d_certDeposit_1916 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1726 ->
  MAlonzo.Code.Ledger.Certs.T_DCert_856 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_certDeposit_1916 ~v0 ~v1 = du_certDeposit_1916
du_certDeposit_1916 ::
  MAlonzo.Code.Ledger.Certs.T_DCert_856 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_certDeposit_1916
  = coe MAlonzo.Code.Ledger.Utxo.du_certDeposit_2000
-- Ledger.Conway.Conformance.Utxo.L._.certRefund
d_certRefund_1918 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1726 ->
  MAlonzo.Code.Ledger.Certs.T_DCert_856 ->
  [MAlonzo.Code.Ledger.Certs.T_DepositPurpose_836]
d_certRefund_1918 ~v0 ~v1 = du_certRefund_1918
du_certRefund_1918 ::
  MAlonzo.Code.Ledger.Certs.T_DCert_856 ->
  [MAlonzo.Code.Ledger.Certs.T_DepositPurpose_836]
du_certRefund_1918
  = coe MAlonzo.Code.Ledger.Utxo.du_certRefund_2014
-- Ledger.Conway.Conformance.Utxo.L._.coinPolicies
d_coinPolicies_1920 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1726 -> [AgdaAny]
d_coinPolicies_1920 v0 ~v1 = du_coinPolicies_1920 v0
du_coinPolicies_1920 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  [AgdaAny]
du_coinPolicies_1920 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_coinPolicies_2578 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.consumed
d_consumed_1922 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1726 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1936 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2568 -> AgdaAny
d_consumed_1922 v0 ~v1 = du_consumed_1922 v0
du_consumed_1922 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1936 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2568 -> AgdaAny
du_consumed_1922 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_consumed_2760 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.depositRefunds
d_depositRefunds_1926 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1726 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1936 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2568 -> Integer
d_depositRefunds_1926 v0 ~v1 = du_depositRefunds_1926 v0
du_depositRefunds_1926 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1936 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2568 -> Integer
du_depositRefunds_1926 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_depositRefunds_2744 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.depositsChange
d_depositsChange_1928 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1726 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2568 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_depositsChange_1928 v0 ~v1 = du_depositsChange_1928 v0
du_depositsChange_1928 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2568 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_depositsChange_1928 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_depositsChange_2418 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.feesOK
d_feesOK_1934 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1726 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2670 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Bool
d_feesOK_1934 v0 v1
  = coe MAlonzo.Code.Ledger.Utxo.d_feesOK_2584 (coe v0) (coe v1)
-- Ledger.Conway.Conformance.Utxo.L._.getDataHashes
d_getDataHashes_1936 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1726 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> [AgdaAny]
d_getDataHashes_1936 ~v0 ~v1 = du_getDataHashes_1936
du_getDataHashes_1936 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> [AgdaAny]
du_getDataHashes_1936
  = coe MAlonzo.Code.Ledger.Utxo.du_getDataHashes_1844
-- Ledger.Conway.Conformance.Utxo.L._.getInputHashes
d_getInputHashes_1938 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1726 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2670 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
d_getInputHashes_1938 v0 ~v1 = du_getInputHashes_1938 v0
du_getInputHashes_1938 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2670 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
du_getInputHashes_1938 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_getInputHashes_1848 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.inInterval
d_inInterval_1940 a0 a1 a2 a3 = ()
-- Ledger.Conway.Conformance.Utxo.L._.isAdaOnlyᵇ
d_isAdaOnly'7495'_1942 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1726 ->
  AgdaAny -> Bool
d_isAdaOnly'7495'_1942 v0 ~v1 = du_isAdaOnly'7495'_1942 v0
du_isAdaOnly'7495'_1942 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny -> Bool
du_isAdaOnly'7495'_1942 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_isAdaOnly'7495'_2580 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.isTwoPhaseScriptAddress
d_isTwoPhaseScriptAddress_1944 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1726 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2670 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Bool
d_isTwoPhaseScriptAddress_1944 v0 ~v1
  = du_isTwoPhaseScriptAddress_1944 v0
du_isTwoPhaseScriptAddress_1944 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2670 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Bool
du_isTwoPhaseScriptAddress_1944 v0
  = coe
      MAlonzo.Code.Ledger.Utxo.du_isTwoPhaseScriptAddress_1832 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.minfee
d_minfee_1948 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1726 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2670 -> Integer
d_minfee_1948 v0 v1
  = coe MAlonzo.Code.Ledger.Utxo.d_minfee_1990 (coe v0) (coe v1)
-- Ledger.Conway.Conformance.Utxo.L._.newDeposits
d_newDeposits_1950 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1726 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1936 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2568 -> Integer
d_newDeposits_1950 v0 ~v1 = du_newDeposits_1950 v0
du_newDeposits_1950 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1936 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2568 -> Integer
du_newDeposits_1950 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_newDeposits_2752 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.outs
d_outs_1954 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1726 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2568 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_outs_1954 ~v0 ~v1 = du_outs_1954
du_outs_1954 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2568 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_outs_1954 = coe MAlonzo.Code.Ledger.Utxo.du_outs_1966
-- Ledger.Conway.Conformance.Utxo.L._.produced
d_produced_1956 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1726 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1936 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2568 -> AgdaAny
d_produced_1956 v0 ~v1 = du_produced_1956 v0
du_produced_1956 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1936 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2568 -> AgdaAny
du_produced_1956 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_produced_2768 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.proposalDepositsΔ
d_proposalDepositsΔ_1958 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1726 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_776] ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2568 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_proposalDepositsΔ_1958 v0 ~v1 = du_proposalDepositsΔ_1958 v0
du_proposalDepositsΔ_1958 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_776] ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2568 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_proposalDepositsΔ_1958 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_proposalDepositsΔ_2364 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.refScriptsSize
d_refScriptsSize_1960 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1726 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2670 -> Integer
d_refScriptsSize_1960 v0 v1
  = coe
      MAlonzo.Code.Ledger.Utxo.d_refScriptsSize_1982 (coe v0) (coe v1)
-- Ledger.Conway.Conformance.Utxo.L._.totExUnits
d_totExUnits_1968 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1726 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2670 -> AgdaAny
d_totExUnits_1968 v0 ~v1 = du_totExUnits_1968 v0
du_totExUnits_1968 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2670 -> AgdaAny
du_totExUnits_1968 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_totExUnits_1904 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.updateCertDeposits
d_updateCertDeposits_1970 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1726 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_856] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateCertDeposits_1970 v0 ~v1 = du_updateCertDeposits_1970 v0
du_updateCertDeposits_1970 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_856] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateCertDeposits_1970 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_updateCertDeposits_2232 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.updateDeposits
d_updateDeposits_1972 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1726 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2568 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateDeposits_1972 v0 ~v1 = du_updateDeposits_1972 v0
du_updateDeposits_1972 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2568 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateDeposits_1972 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_updateDeposits_2312 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.updateProposalDeposits
d_updateProposalDeposits_1974 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1726 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_776] ->
  AgdaAny ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateProposalDeposits_1974 v0 ~v1
  = du_updateProposalDeposits_1974 v0
du_updateProposalDeposits_1974 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_776] ->
  AgdaAny ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateProposalDeposits_1974 v0
  = coe
      MAlonzo.Code.Ledger.Utxo.du_updateProposalDeposits_2300 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.utxoEntrySize
d_utxoEntrySize_1978 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1726 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_utxoEntrySize_1978 v0 ~v1 = du_utxoEntrySize_1978 v0
du_utxoEntrySize_1978 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_utxoEntrySize_1978 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_utxoEntrySize_1918 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.utxoEntrySizeWithoutVal
d_utxoEntrySizeWithoutVal_1980 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1726 -> Integer
d_utxoEntrySizeWithoutVal_1980 ~v0
  = du_utxoEntrySizeWithoutVal_1980
du_utxoEntrySizeWithoutVal_1980 :: Integer
du_utxoEntrySizeWithoutVal_1980 = coe (8 :: Integer)
-- Ledger.Conway.Conformance.Utxo.L._.≟-∅ᵇ
d_'8799''45''8709''7495'_1982 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1726 ->
  () -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> [AgdaAny] -> Bool
d_'8799''45''8709''7495'_1982 ~v0 ~v1
  = du_'8799''45''8709''7495'_1982
du_'8799''45''8709''7495'_1982 ::
  () -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> [AgdaAny] -> Bool
du_'8799''45''8709''7495'_1982 v0 v1 v2
  = coe MAlonzo.Code.Ledger.Utxo.du_'8799''45''8709''7495'_2574 v1 v2
-- Ledger.Conway.Conformance.Utxo.L._.≟?
d_'8799''63'_1984 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1726 ->
  () ->
  Maybe AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_'8799''63'_1984 ~v0 ~v1 = du_'8799''63'_1984
du_'8799''63'_1984 ::
  () ->
  Maybe AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_'8799''63'_1984 v0 v1 v2 v3
  = coe MAlonzo.Code.Ledger.Utxo.du_'8799''63'_2970 v1 v2 v3
-- Ledger.Conway.Conformance.Utxo.L._.UTxOEnv.pparams
d_pparams_2010 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1922 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pparams_2010 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_pparams_1932 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.UTxOEnv.slot
d_slot_2012 :: MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1922 -> AgdaAny
d_slot_2012 v0 = coe MAlonzo.Code.Ledger.Utxo.d_slot_1930 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.UTxOEnv.treasury
d_treasury_2014 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1922 -> Integer
d_treasury_2014 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_treasury_1934 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.UTxOState.deposits
d_deposits_2018 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1936 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_2018 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_deposits_1950 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.UTxOState.donations
d_donations_2020 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1936 -> Integer
d_donations_2020 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_donations_1952 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.UTxOState.fees
d_fees_2022 :: MAlonzo.Code.Ledger.Utxo.T_UTxOState_1936 -> Integer
d_fees_2022 v0 = coe MAlonzo.Code.Ledger.Utxo.d_fees_1948 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.UTxOState.utxo
d_utxo_2024 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1936 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2024 v0 = coe MAlonzo.Code.Ledger.Utxo.d_utxo_1946 (coe v0)
-- Ledger.Conway.Conformance.Utxo._⊢_⇀⦇_,UTXOS⦈_
d__'8866'_'8640''10631'_'44'UTXOS'10632'__2064 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'UTXOS'10632'__2064
  = C_Scripts'45'Yes_2144 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_Scripts'45'No_2224 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Utxo._.txdonation
d_txdonation_2102 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1726 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1922 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1936 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2670 -> Integer
d_txdonation_2102 ~v0 ~v1 ~v2 v3 = du_txdonation_2102 v3
du_txdonation_2102 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2670 -> Integer
du_txdonation_2102 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txdonation_2630
      (coe MAlonzo.Code.Ledger.Transaction.d_body_2680 (coe v0))
-- Ledger.Conway.Conformance.Utxo._.txfee
d_txfee_2104 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1726 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1922 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1936 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2670 -> Integer
d_txfee_2104 ~v0 ~v1 ~v2 v3 = du_txfee_2104 v3
du_txfee_2104 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2670 -> Integer
du_txfee_2104 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txfee_2616
      (coe MAlonzo.Code.Ledger.Transaction.d_body_2680 (coe v0))
-- Ledger.Conway.Conformance.Utxo._.txins
d_txins_2108 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1726 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1922 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1936 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2670 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txins_2108 ~v0 ~v1 ~v2 v3 = du_txins_2108 v3
du_txins_2108 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2670 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_txins_2108 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txins_2610
      (coe MAlonzo.Code.Ledger.Transaction.d_body_2680 (coe v0))
-- Ledger.Conway.Conformance.Utxo._.pparams
d_pparams_2126 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1726 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1922 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1936 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2670 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pparams_2126 ~v0 v1 ~v2 ~v3 = du_pparams_2126 v1
du_pparams_2126 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1922 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244
du_pparams_2126 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_pparams_1932 (coe v0)
-- Ledger.Conway.Conformance.Utxo._.deposits
d_deposits_2134 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1726 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1922 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1936 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2670 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_2134 ~v0 ~v1 v2 ~v3 = du_deposits_2134 v2
du_deposits_2134 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1936 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_deposits_2134 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_deposits_1950 (coe v0)
-- Ledger.Conway.Conformance.Utxo._.donations
d_donations_2136 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1726 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1922 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1936 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2670 -> Integer
d_donations_2136 ~v0 ~v1 v2 ~v3 = du_donations_2136 v2
du_donations_2136 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1936 -> Integer
du_donations_2136 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_donations_1952 (coe v0)
-- Ledger.Conway.Conformance.Utxo._.fees
d_fees_2138 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1726 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1922 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1936 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2670 -> Integer
d_fees_2138 ~v0 ~v1 v2 ~v3 = du_fees_2138 v2
du_fees_2138 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1936 -> Integer
du_fees_2138 v0 = coe MAlonzo.Code.Ledger.Utxo.d_fees_1948 (coe v0)
-- Ledger.Conway.Conformance.Utxo._.utxo
d_utxo_2140 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1726 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1922 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1936 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2670 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2140 ~v0 ~v1 v2 ~v3 = du_utxo_2140 v2
du_utxo_2140 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1936 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxo_2140 v0 = coe MAlonzo.Code.Ledger.Utxo.d_utxo_1946 (coe v0)
-- Ledger.Conway.Conformance.Utxo._.collateral
d_collateral_2164 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1726 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1922 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1936 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2670 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateral_2164 ~v0 ~v1 ~v2 v3 = du_collateral_2164 v3
du_collateral_2164 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2670 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_collateral_2164 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_collateral_2644
      (coe MAlonzo.Code.Ledger.Transaction.d_body_2680 (coe v0))
-- Ledger.Conway.Conformance.Utxo._.pparams
d_pparams_2206 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1726 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1922 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1936 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2670 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pparams_2206 ~v0 v1 ~v2 ~v3 = du_pparams_2206 v1
du_pparams_2206 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1922 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244
du_pparams_2206 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_pparams_1932 (coe v0)
-- Ledger.Conway.Conformance.Utxo._.deposits
d_deposits_2214 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1726 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1922 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1936 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2670 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_2214 ~v0 ~v1 v2 ~v3 = du_deposits_2214 v2
du_deposits_2214 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1936 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_deposits_2214 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_deposits_1950 (coe v0)
-- Ledger.Conway.Conformance.Utxo._.donations
d_donations_2216 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1726 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1922 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1936 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2670 -> Integer
d_donations_2216 ~v0 ~v1 v2 ~v3 = du_donations_2216 v2
du_donations_2216 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1936 -> Integer
du_donations_2216 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_donations_1952 (coe v0)
-- Ledger.Conway.Conformance.Utxo._.fees
d_fees_2218 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1726 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1922 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1936 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2670 -> Integer
d_fees_2218 ~v0 ~v1 v2 ~v3 = du_fees_2218 v2
du_fees_2218 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1936 -> Integer
du_fees_2218 v0 = coe MAlonzo.Code.Ledger.Utxo.d_fees_1948 (coe v0)
-- Ledger.Conway.Conformance.Utxo._.utxo
d_utxo_2220 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1726 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1922 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1936 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2670 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2220 ~v0 ~v1 v2 ~v3 = du_utxo_2220 v2
du_utxo_2220 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1936 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxo_2220 v0 = coe MAlonzo.Code.Ledger.Utxo.d_utxo_1946 (coe v0)
-- Ledger.Conway.Conformance.Utxo.Scripts-Yes-premises
d_Scripts'45'Yes'45'premises_2226 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1726 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1922 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1936 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2670 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_Scripts'45'Yes'45'premises_2226 v0 v1 v2 v3 v4
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
                  (coe MAlonzo.Code.Ledger.Utxo.d_pparams_1932 (coe v2)) (coe v4)
                  (coe MAlonzo.Code.Ledger.Utxo.d_utxo_1946 (coe v3))))
            (coe MAlonzo.Code.Ledger.Transaction.d_isValid_2684 (coe v4)))
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
            (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
            (coe MAlonzo.Code.Ledger.Transaction.d_isValid_2684 (coe v4))
            (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)))
-- Ledger.Conway.Conformance.Utxo.Scripts-No-premises
d_Scripts'45'No'45'premises_2228 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1726 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1922 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1936 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2670 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_Scripts'45'No'45'premises_2228 v0 v1 v2 v3 v4
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
                  (coe MAlonzo.Code.Ledger.Utxo.d_pparams_1932 (coe v2)) (coe v4)
                  (coe MAlonzo.Code.Ledger.Utxo.d_utxo_1946 (coe v3))))
            (coe MAlonzo.Code.Ledger.Transaction.d_isValid_2684 (coe v4)))
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
            (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
            (coe MAlonzo.Code.Ledger.Transaction.d_isValid_2684 (coe v4))
            (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)))
-- Ledger.Conway.Conformance.Utxo._⊢_⇀⦇_,UTXO⦈_
d__'8866'_'8640''10631'_'44'UTXO'10632'__2230 a0 a1 a2 a3 a4 a5
  = ()
newtype T__'8866'_'8640''10631'_'44'UTXO'10632'__2230
  = C_UTXO'45'inductive_2326 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Utxo._.body
d_body_2238 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1726 ->
  T_GeneralizeTel_16743 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2568
d_body_2238 ~v0 ~v1 v2 = du_body_2238 v2
du_body_2238 ::
  T_GeneralizeTel_16743 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2568
du_body_2238 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_body_2680
      (coe d_'46'generalizedField'45'tx_16735 (coe v0))
-- Ledger.Conway.Conformance.Utxo._.curTreasury
d_curTreasury_2246 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1726 ->
  T_GeneralizeTel_16743 -> Maybe Integer
d_curTreasury_2246 ~v0 ~v1 v2 = du_curTreasury_2246 v2
du_curTreasury_2246 :: T_GeneralizeTel_16743 -> Maybe Integer
du_curTreasury_2246 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_curTreasury_2638
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2680
         (coe d_'46'generalizedField'45'tx_16735 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.mint
d_mint_2248 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1726 ->
  T_GeneralizeTel_16743 -> AgdaAny
d_mint_2248 ~v0 ~v1 v2 = du_mint_2248 v2
du_mint_2248 :: T_GeneralizeTel_16743 -> AgdaAny
du_mint_2248 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_mint_2618
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2680
         (coe d_'46'generalizedField'45'tx_16735 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.refInputs
d_refInputs_2250 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1726 ->
  T_GeneralizeTel_16743 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_2250 ~v0 ~v1 v2 = du_refInputs_2250 v2
du_refInputs_2250 ::
  T_GeneralizeTel_16743 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_refInputs_2250 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_refInputs_2612
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2680
         (coe d_'46'generalizedField'45'tx_16735 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.txNetworkId
d_txNetworkId_2258 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1726 ->
  T_GeneralizeTel_16743 -> Maybe AgdaAny
d_txNetworkId_2258 ~v0 ~v1 v2 = du_txNetworkId_2258 v2
du_txNetworkId_2258 :: T_GeneralizeTel_16743 -> Maybe AgdaAny
du_txNetworkId_2258 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txNetworkId_2636
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2680
         (coe d_'46'generalizedField'45'tx_16735 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.txins
d_txins_2268 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1726 ->
  T_GeneralizeTel_16743 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txins_2268 ~v0 ~v1 v2 = du_txins_2268 v2
du_txins_2268 ::
  T_GeneralizeTel_16743 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_txins_2268 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txins_2610
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2680
         (coe d_'46'generalizedField'45'tx_16735 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.txouts
d_txouts_2270 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1726 ->
  T_GeneralizeTel_16743 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txouts_2270 ~v0 ~v1 v2 = du_txouts_2270 v2
du_txouts_2270 ::
  T_GeneralizeTel_16743 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txouts_2270 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txouts_2614
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2680
         (coe d_'46'generalizedField'45'tx_16735 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.txsize
d_txsize_2274 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1726 ->
  T_GeneralizeTel_16743 -> Integer
d_txsize_2274 ~v0 ~v1 v2 = du_txsize_2274 v2
du_txsize_2274 :: T_GeneralizeTel_16743 -> Integer
du_txsize_2274 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txsize_2640
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2680
         (coe d_'46'generalizedField'45'tx_16735 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.txvldt
d_txvldt_2278 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1726 ->
  T_GeneralizeTel_16743 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txvldt_2278 ~v0 ~v1 v2 = du_txvldt_2278 v2
du_txvldt_2278 ::
  T_GeneralizeTel_16743 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txvldt_2278 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txvldt_2620
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2680
         (coe d_'46'generalizedField'45'tx_16735 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.txwdrls
d_txwdrls_2282 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1726 ->
  T_GeneralizeTel_16743 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_2282 ~v0 ~v1 v2 = du_txwdrls_2282 v2
du_txwdrls_2282 ::
  T_GeneralizeTel_16743 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txwdrls_2282 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txwdrls_2624
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2680
         (coe d_'46'generalizedField'45'tx_16735 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.pparams
d_pparams_2286 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1726 ->
  T_GeneralizeTel_16743 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pparams_2286 ~v0 ~v1 v2 = du_pparams_2286 v2
du_pparams_2286 ::
  T_GeneralizeTel_16743 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
du_pparams_2286 v0
  = coe
      MAlonzo.Code.Ledger.Utxo.d_pparams_1932
      (coe d_'46'generalizedField'45'Γ_16737 (coe v0))
-- Ledger.Conway.Conformance.Utxo._.slot
d_slot_2288 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1726 ->
  T_GeneralizeTel_16743 -> AgdaAny
d_slot_2288 ~v0 ~v1 v2 = du_slot_2288 v2
du_slot_2288 :: T_GeneralizeTel_16743 -> AgdaAny
du_slot_2288 v0
  = coe
      MAlonzo.Code.Ledger.Utxo.d_slot_1930
      (coe d_'46'generalizedField'45'Γ_16737 (coe v0))
-- Ledger.Conway.Conformance.Utxo._.treasury
d_treasury_2290 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1726 ->
  T_GeneralizeTel_16743 -> Integer
d_treasury_2290 ~v0 ~v1 v2 = du_treasury_2290 v2
du_treasury_2290 :: T_GeneralizeTel_16743 -> Integer
du_treasury_2290 v0
  = coe
      MAlonzo.Code.Ledger.Utxo.d_treasury_1934
      (coe d_'46'generalizedField'45'Γ_16737 (coe v0))
-- Ledger.Conway.Conformance.Utxo._.utxo
d_utxo_2300 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1726 ->
  T_GeneralizeTel_16743 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2300 ~v0 ~v1 v2 = du_utxo_2300 v2
du_utxo_2300 ::
  T_GeneralizeTel_16743 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxo_2300 v0
  = coe
      MAlonzo.Code.Ledger.Utxo.d_utxo_1946
      (coe d_'46'generalizedField'45's_16739 (coe v0))
-- Ledger.Conway.Conformance.Utxo.UTXO-premises
d_UTXO'45'premises_2370 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1726 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2670 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1922 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1936 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTXO'45'premises_2370 v0 v1 v2 v3 v4
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
                     (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1208 (coe v0))
                     (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1206 (coe v0))))
               (coe
                  MAlonzo.Code.Ledger.Transaction.d_txins_2610
                  (coe MAlonzo.Code.Ledger.Transaction.d_body_2680 (coe v2)))
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
                          (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1208 (coe v0))
                          (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1206 (coe v0)))
                       (coe v5)
                       (coe
                          MAlonzo.Code.Class.IsSet.du_dom_548
                          (coe
                             MAlonzo.Code.Axiom.Set.d_th_1470
                             (coe
                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                          (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                          (coe MAlonzo.Code.Ledger.Utxo.d_utxo_1946 (coe v4)))))
               (coe
                  MAlonzo.Code.Axiom.Set.du__'8746'__680
                  (coe
                     MAlonzo.Code.Axiom.Set.d_th_1470
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                  (coe
                     MAlonzo.Code.Ledger.Transaction.d_txins_2610
                     (coe MAlonzo.Code.Ledger.Transaction.d_body_2680 (coe v2)))
                  (coe
                     MAlonzo.Code.Ledger.Transaction.d_refInputs_2612
                     (coe MAlonzo.Code.Ledger.Transaction.d_body_2680 (coe v2)))))
            (coe
               MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
               (coe
                  MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_DecEq'45'ℙ_1138
                     (coe
                        MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                        (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1208 (coe v0))
                        (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1206 (coe v0))))
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
                           (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1208 (coe v0))
                           (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1206 (coe v0))))
                     (coe
                        MAlonzo.Code.Ledger.Transaction.d_txins_2610
                        (coe MAlonzo.Code.Ledger.Transaction.d_body_2680 (coe v2)))
                     (coe
                        MAlonzo.Code.Ledger.Transaction.d_refInputs_2612
                        (coe MAlonzo.Code.Ledger.Transaction.d_body_2680 (coe v2))))
                  (coe
                     MAlonzo.Code.Axiom.Set.du_'8709'_442
                     (coe
                        MAlonzo.Code.Axiom.Set.d_th_1470
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))))
               (coe
                  MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                  (coe
                     MAlonzo.Code.Ledger.Utxo.du_Dec'45'inInterval_2448 (coe v0)
                     (coe MAlonzo.Code.Ledger.Utxo.d_slot_1930 (coe v3))
                     (coe
                        MAlonzo.Code.Ledger.Transaction.d_txvldt_2620
                        (coe MAlonzo.Code.Ledger.Transaction.d_body_2680 (coe v2))))
                  (coe
                     MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                     (coe
                        MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                        (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
                        (coe
                           MAlonzo.Code.Ledger.Utxo.d_feesOK_2584 (coe v0) (coe v1)
                           (coe MAlonzo.Code.Ledger.Utxo.d_pparams_1932 (coe v3)) (coe v2)
                           (coe MAlonzo.Code.Ledger.Utxo.d_utxo_1946 (coe v4)))
                        (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10))
                     (coe
                        MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                        (coe
                           MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                           (coe
                              MAlonzo.Code.Ledger.TokenAlgebra.d_DecEq'45'Value_218
                              (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2264 (coe v0)))
                           (coe
                              MAlonzo.Code.Ledger.Utxo.du_consumed_2760 (coe v0)
                              (coe MAlonzo.Code.Ledger.Utxo.d_pparams_1932 (coe v3)) (coe v4)
                              (coe MAlonzo.Code.Ledger.Transaction.d_body_2680 (coe v2)))
                           (coe
                              MAlonzo.Code.Ledger.Utxo.du_produced_2768 (coe v0)
                              (coe MAlonzo.Code.Ledger.Utxo.d_pparams_1932 (coe v3)) (coe v4)
                              (coe MAlonzo.Code.Ledger.Transaction.d_body_2680 (coe v2))))
                        (coe
                           MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                           (coe
                              MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                              (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                              (coe
                                 MAlonzo.Code.Ledger.TokenAlgebra.d_coin_200
                                 (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2264 (coe v0))
                                 (MAlonzo.Code.Ledger.Transaction.d_mint_2618
                                    (coe MAlonzo.Code.Ledger.Transaction.d_body_2680 (coe v2))))
                              (coe (0 :: Integer)))
                           (coe
                              MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                              (coe
                                 MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_74
                                 (MAlonzo.Code.Ledger.Transaction.d_txsize_2640
                                    (coe MAlonzo.Code.Ledger.Transaction.d_body_2680 (coe v2)))
                                 (MAlonzo.Code.Ledger.PParams.d_maxTxSize_314
                                    (coe MAlonzo.Code.Ledger.Utxo.d_pparams_1932 (coe v3))))
                              (coe
                                 MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                                 (coe
                                    MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_74
                                    (MAlonzo.Code.Ledger.Utxo.d_refScriptsSize_1982
                                       (coe v0) (coe v1)
                                       (coe MAlonzo.Code.Ledger.Utxo.d_utxo_1946 (coe v4)) (coe v2))
                                    (MAlonzo.Code.Ledger.PParams.d_maxRefScriptSizePerTx_342
                                       (coe MAlonzo.Code.Ledger.Utxo.d_pparams_1932 (coe v3))))
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
                                               (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2264
                                                  (coe v0))
                                               (coe
                                                  MAlonzo.Code.Ledger.TokenAlgebra.d_inject_202
                                                  (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2264
                                                     (coe v0))
                                                  (mulInt
                                                     (coe
                                                        addInt (coe (160 :: Integer))
                                                        (coe
                                                           MAlonzo.Code.Ledger.Utxo.du_utxoEntrySize_1918
                                                           (coe v0)
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                              (coe v5))))
                                                     (coe
                                                        MAlonzo.Code.Ledger.PParams.d_coinsPerUTxOByte_336
                                                        (coe
                                                           MAlonzo.Code.Ledger.Utxo.d_pparams_1932
                                                           (coe v3)))))
                                               (coe
                                                  MAlonzo.Code.Ledger.Transaction.du_getValue'688'_2704
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
                                                MAlonzo.Code.Ledger.Transaction.d_txOutHash_2694
                                                (coe v0))
                                             (coe
                                                MAlonzo.Code.Ledger.Transaction.d_txouts_2614
                                                (coe
                                                   MAlonzo.Code.Ledger.Transaction.d_body_2680
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
                                                     MAlonzo.Code.Ledger.Abstract.d_serSize_1740 v1
                                                     (coe
                                                        MAlonzo.Code.Ledger.Transaction.du_getValue'688'_2704
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                           (coe v5))))
                                                  (MAlonzo.Code.Ledger.PParams.d_maxValSize_322
                                                     (coe
                                                        MAlonzo.Code.Ledger.Utxo.d_pparams_1932
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
                                                   MAlonzo.Code.Ledger.Transaction.d_txOutHash_2694
                                                   (coe v0))
                                                (coe
                                                   MAlonzo.Code.Ledger.Transaction.d_txouts_2614
                                                   (coe
                                                      MAlonzo.Code.Ledger.Transaction.d_body_2680
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
                                                      MAlonzo.Code.Ledger.Transaction.d_txOutHash_2694
                                                      (coe v0))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Transaction.d_txouts_2614
                                                      (coe
                                                         MAlonzo.Code.Ledger.Transaction.d_body_2680
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
                                                              MAlonzo.Code.Ledger.Transaction.d_globalConstants_1224
                                                              (coe v0)))
                                                        (coe
                                                           MAlonzo.Code.Ledger.Address.du_netId_112
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                              (coe v5)))
                                                        (coe
                                                           MAlonzo.Code.Ledger.Types.Epoch.d_NetworkId_288
                                                           (coe
                                                              MAlonzo.Code.Ledger.Transaction.d_globalConstants_1224
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
                                                         MAlonzo.Code.Ledger.Transaction.d_txOutHash_2694
                                                         (coe v0))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Transaction.d_txouts_2614
                                                         (coe
                                                            MAlonzo.Code.Ledger.Transaction.d_body_2680
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
                                                                 MAlonzo.Code.Ledger.Transaction.d_globalConstants_1224
                                                                 (coe v0)))
                                                           (coe
                                                              MAlonzo.Code.Ledger.Address.d_net_82
                                                              (coe v5))
                                                           (coe
                                                              MAlonzo.Code.Ledger.Types.Epoch.d_NetworkId_288
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Transaction.d_globalConstants_1224
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
                                                         MAlonzo.Code.Ledger.Transaction.d_txwdrls_2624
                                                         (coe
                                                            MAlonzo.Code.Ledger.Transaction.d_body_2680
                                                            (coe v2)))))
                                                (coe
                                                   MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                                                   (coe
                                                      MAlonzo.Code.Ledger.Utxo.du_'8799''63'_2970
                                                      (coe
                                                         MAlonzo.Code.Ledger.Transaction.d_txNetworkId_2636
                                                         (coe
                                                            MAlonzo.Code.Ledger.Transaction.d_body_2680
                                                            (coe v2)))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Types.Epoch.d_NetworkId_288
                                                         (coe
                                                            MAlonzo.Code.Ledger.Transaction.d_globalConstants_1224
                                                            (coe v0)))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_276
                                                         (coe
                                                            MAlonzo.Code.Ledger.Transaction.d_globalConstants_1224
                                                            (coe v0))))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Utxo.du_'8799''63'_2970
                                                      (coe
                                                         MAlonzo.Code.Ledger.Transaction.d_curTreasury_2638
                                                         (coe
                                                            MAlonzo.Code.Ledger.Transaction.d_body_2680
                                                            (coe v2)))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Utxo.d_treasury_1934
                                                         (coe v3))
                                                      (coe
                                                         MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)))))))))))))))))
-- Ledger.Conway.Conformance.Utxo..generalizedField-tx
d_'46'generalizedField'45'tx_16735 ::
  T_GeneralizeTel_16743 -> MAlonzo.Code.Ledger.Transaction.T_Tx_2670
d_'46'generalizedField'45'tx_16735 v0
  = case coe v0 of
      C_mkGeneralizeTel_16745 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxo..generalizedField-Γ
d_'46'generalizedField'45'Γ_16737 ::
  T_GeneralizeTel_16743 -> MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1922
d_'46'generalizedField'45'Γ_16737 v0
  = case coe v0 of
      C_mkGeneralizeTel_16745 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxo..generalizedField-s
d_'46'generalizedField'45's_16739 ::
  T_GeneralizeTel_16743 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1936
d_'46'generalizedField'45's_16739 v0
  = case coe v0 of
      C_mkGeneralizeTel_16745 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxo..generalizedField-s'
d_'46'generalizedField'45's''_16741 ::
  T_GeneralizeTel_16743 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1936
d_'46'generalizedField'45's''_16741 v0
  = case coe v0 of
      C_mkGeneralizeTel_16745 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxo.GeneralizeTel
d_GeneralizeTel_16743 a0 a1 = ()
data T_GeneralizeTel_16743
  = C_mkGeneralizeTel_16745 MAlonzo.Code.Ledger.Transaction.T_Tx_2670
                            MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1922
                            MAlonzo.Code.Ledger.Utxo.T_UTxOState_1936
                            MAlonzo.Code.Ledger.Utxo.T_UTxOState_1936
