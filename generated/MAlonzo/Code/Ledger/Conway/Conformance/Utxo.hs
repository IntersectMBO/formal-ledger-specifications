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
import qualified MAlonzo.Code.Class.To
import qualified MAlonzo.Code.Data.Integer.Base
import qualified MAlonzo.Code.Data.List.Relation.Unary.Any
import qualified MAlonzo.Code.Data.Rational.Base
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Ledger.Abstract
import qualified MAlonzo.Code.Ledger.Address
import qualified MAlonzo.Code.Ledger.Certs
import qualified MAlonzo.Code.Ledger.Crypto
import qualified MAlonzo.Code.Ledger.GovernanceActions
import qualified MAlonzo.Code.Ledger.Interface.HasCoin
import qualified MAlonzo.Code.Ledger.PParams
import qualified MAlonzo.Code.Ledger.Script
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
-- _.Dec-isVKey
d_Dec'45'isVKey_66 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isVKey_66 ~v0 = du_Dec'45'isVKey_66
du_Dec'45'isVKey_66 ::
  MAlonzo.Code.Ledger.Address.T_Credential_16 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'isVKey_66
  = coe MAlonzo.Code.Ledger.Address.du_Dec'45'isVKey_144
-- _.NetworkId
d_NetworkId_208 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny
d_NetworkId_208 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_NetworkId_288
      (coe
         MAlonzo.Code.Ledger.Transaction.d_globalConstants_1200 (coe v0))
-- _.Tx
d_Tx_358 a0 = ()
-- _.coin
d_coin_414 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny -> Integer
d_coin_414 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_coin_200
      (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2216 (coe v0))
-- _.getValueʰ
d_getValue'688'_450 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_getValue'688'_450 ~v0 = du_getValue'688'_450
du_getValue'688'_450 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_getValue'688'_450
  = coe MAlonzo.Code.Ledger.Transaction.du_getValue'688'_2656
-- _.inject
d_inject_460 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  Integer -> AgdaAny
d_inject_460 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_inject_202
      (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2216 (coe v0))
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
d_body_1374 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2622 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2520
d_body_1374 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_body_2632 (coe v0)
-- _.Tx.isValid
d_isValid_1376 :: MAlonzo.Code.Ledger.Transaction.T_Tx_2622 -> Bool
d_isValid_1376 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_isValid_2636 (coe v0)
-- _.Tx.txAD
d_txAD_1378 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2622 -> Maybe AgdaAny
d_txAD_1378 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txAD_2638 (coe v0)
-- _.Tx.wits
d_wits_1380 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2622 ->
  MAlonzo.Code.Ledger.Transaction.T_TxWitnesses_2602
d_wits_1380 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_wits_2634 (coe v0)
-- Ledger.Conway.Conformance.Utxo._.collectPhaseTwoScriptInputs
d_collectPhaseTwoScriptInputs_1508 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2622 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collectPhaseTwoScriptInputs_1508 v0 v1
  = coe
      MAlonzo.Code.Ledger.ScriptValidation.d_collectPhaseTwoScriptInputs_2356
      (coe v0) (coe v1)
-- Ledger.Conway.Conformance.Utxo._.evalScripts
d_evalScripts_1518 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2622 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Bool
d_evalScripts_1518 v0 v1
  = coe
      MAlonzo.Code.Ledger.ScriptValidation.d_evalScripts_2374 (coe v0)
      (coe v1)
-- Ledger.Conway.Conformance.Utxo.L._._*↓_
d__'42''8595'__1858 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 -> Integer -> Integer
d__'42''8595'__1858 ~v0 v1 v2 = du__'42''8595'__1858 v1 v2
du__'42''8595'__1858 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 -> Integer -> Integer
du__'42''8595'__1858 v0 v1
  = coe
      MAlonzo.Code.Data.Integer.Base.d_'8739'_'8739'_18
      (coe
         MAlonzo.Code.Data.Rational.Base.d_floor_346
         (coe
            MAlonzo.Code.Data.Rational.Base.d__'42'__276 (coe v0)
            (coe
               MAlonzo.Code.Data.Rational.Base.du__'47'__156 (coe v1)
               (coe (1 :: Integer)))))
-- Ledger.Conway.Conformance.Utxo.L._._≡?_
d__'8801''63'__1860 a0 a1 a2 a3 a4 = ()
-- Ledger.Conway.Conformance.Utxo.L._._⊢_⇀⦇_,UTXOS⦈_
d__'8866'_'8640''10631'_'44'UTXOS'10632'__1862 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Utxo.L._._⊢_⇀⦇_,UTXO⦈_
d__'8866'_'8640''10631'_'44'UTXO'10632'__1864 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Utxo.L._.Dec-ValidCertDeposits
d_Dec'45'ValidCertDeposits_1866 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_832] ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'ValidCertDeposits_1866 v0 ~v1
  = du_Dec'45'ValidCertDeposits_1866 v0
du_Dec'45'ValidCertDeposits_1866 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_832] ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'ValidCertDeposits_1866 v0
  = coe
      MAlonzo.Code.Ledger.Utxo.du_Dec'45'ValidCertDeposits_2370 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.Dec-inInterval
d_Dec'45'inInterval_1868 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
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
  = coe MAlonzo.Code.Ledger.Utxo.du_Dec'45'inInterval_2598 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.HasCoin-UTxO
d_HasCoin'45'UTxO_1870 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
d_HasCoin'45'UTxO_1870 v0 ~v1 = du_HasCoin'45'UTxO_1870 v0
du_HasCoin'45'UTxO_1870 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
du_HasCoin'45'UTxO_1870 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_HasCoin'45'UTxO_2082 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.HasCoin-UTxOState
d_HasCoin'45'UTxOState_1872 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
d_HasCoin'45'UTxOState_1872 v0 ~v1
  = du_HasCoin'45'UTxOState_1872 v0
du_HasCoin'45'UTxOState_1872 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
du_HasCoin'45'UTxOState_1872 v0
  = coe
      MAlonzo.Code.Ledger.Utxo.du_HasCoin'45'UTxOState_2700 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.Scripts-No-premises
d_Scripts'45'No'45'premises_1876 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_2006 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2020 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2622 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_Scripts'45'No'45'premises_1876 v0 v1
  = coe
      MAlonzo.Code.Ledger.Utxo.d_Scripts'45'No'45'premises_3066 (coe v0)
      (coe v1)
-- Ledger.Conway.Conformance.Utxo.L._.Scripts-Yes-premises
d_Scripts'45'Yes'45'premises_1880 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_2006 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2020 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2622 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_Scripts'45'Yes'45'premises_1880 v0 v1
  = coe
      MAlonzo.Code.Ledger.Utxo.d_Scripts'45'Yes'45'premises_3064 (coe v0)
      (coe v1)
-- Ledger.Conway.Conformance.Utxo.L._.To-UTxOState
d_To'45'UTxOState_1882 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  MAlonzo.Code.Class.To.T_To_8
d_To'45'UTxOState_1882 ~v0 ~v1 = du_To'45'UTxOState_1882
du_To'45'UTxOState_1882 :: MAlonzo.Code.Class.To.T_To_8
du_To'45'UTxOState_1882
  = coe MAlonzo.Code.Ledger.Utxo.du_To'45'UTxOState_2040
-- Ledger.Conway.Conformance.Utxo.L._.UTXO-premises
d_UTXO'45'premises_1886 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2622 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_2006 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2020 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTXO'45'premises_1886 v0 v1
  = coe
      MAlonzo.Code.Ledger.Utxo.d_UTXO'45'premises_3256 (coe v0) (coe v1)
-- Ledger.Conway.Conformance.Utxo.L._.UTxOEnv
d_UTxOEnv_1888 a0 a1 = ()
-- Ledger.Conway.Conformance.Utxo.L._.UTxOState
d_UTxOState_1890 a0 a1 = ()
-- Ledger.Conway.Conformance.Utxo.L._.ValidCertDeposits
d_ValidCertDeposits_1892 a0 a1 a2 a3 a4 = ()
-- Ledger.Conway.Conformance.Utxo.L._.balance
d_balance_1896 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_balance_1896 v0 ~v1 = du_balance_1896 v0
du_balance_1896 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_balance_1896 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_balance_2058 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.cbalance
d_cbalance_1900 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_cbalance_1900 v0 ~v1 = du_cbalance_1900 v0
du_cbalance_1900 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_cbalance_1900 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_cbalance_2064 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.certDeposit
d_certDeposit_1904 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  MAlonzo.Code.Ledger.Certs.T_DCert_832 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_certDeposit_1904 ~v0 ~v1 = du_certDeposit_1904
du_certDeposit_1904 ::
  MAlonzo.Code.Ledger.Certs.T_DCert_832 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_certDeposit_1904
  = coe MAlonzo.Code.Ledger.Utxo.du_certDeposit_2084
-- Ledger.Conway.Conformance.Utxo.L._.certRefund
d_certRefund_1906 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  MAlonzo.Code.Ledger.Certs.T_DCert_832 ->
  [MAlonzo.Code.Ledger.Certs.T_DepositPurpose_812]
d_certRefund_1906 ~v0 ~v1 = du_certRefund_1906
du_certRefund_1906 ::
  MAlonzo.Code.Ledger.Certs.T_DCert_832 ->
  [MAlonzo.Code.Ledger.Certs.T_DepositPurpose_812]
du_certRefund_1906
  = coe MAlonzo.Code.Ledger.Utxo.du_certRefund_2102
-- Ledger.Conway.Conformance.Utxo.L._.coinPolicies
d_coinPolicies_1908 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 -> [AgdaAny]
d_coinPolicies_1908 v0 ~v1 = du_coinPolicies_1908 v0
du_coinPolicies_1908 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  [AgdaAny]
du_coinPolicies_1908 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_coinPolicies_2704 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.consumed
d_consumed_1910 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2020 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2520 -> AgdaAny
d_consumed_1910 v0 ~v1 = du_consumed_1910 v0
du_consumed_1910 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2020 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2520 -> AgdaAny
du_consumed_1910 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_consumed_2886 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.depositRefunds
d_depositRefunds_1914 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2020 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2520 -> Integer
d_depositRefunds_1914 v0 ~v1 = du_depositRefunds_1914 v0
du_depositRefunds_1914 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2020 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2520 -> Integer
du_depositRefunds_1914 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_depositRefunds_2870 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.depositsChange
d_depositsChange_1916 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2520 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_depositsChange_1916 v0 ~v1 = du_depositsChange_1916 v0
du_depositsChange_1916 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2520 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_depositsChange_1916 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_depositsChange_2568 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.feesOK
d_feesOK_1922 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2622 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_feesOK_1922 = erased
-- Ledger.Conway.Conformance.Utxo.L._.getDataHashes
d_getDataHashes_1924 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> [AgdaAny]
d_getDataHashes_1924 ~v0 ~v1 = du_getDataHashes_1924
du_getDataHashes_1924 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> [AgdaAny]
du_getDataHashes_1924
  = coe MAlonzo.Code.Ledger.Utxo.du_getDataHashes_1928
-- Ledger.Conway.Conformance.Utxo.L._.getInputHashes
d_getInputHashes_1926 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2622 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
d_getInputHashes_1926 v0 ~v1 = du_getInputHashes_1926 v0
du_getInputHashes_1926 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2622 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
du_getInputHashes_1926 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_getInputHashes_1932 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.inInterval
d_inInterval_1928 a0 a1 a2 a3 = ()
-- Ledger.Conway.Conformance.Utxo.L._.isAdaOnly
d_isAdaOnly_1930 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  AgdaAny -> ()
d_isAdaOnly_1930 = erased
-- Ledger.Conway.Conformance.Utxo.L._.isTwoPhaseScriptAddress
d_isTwoPhaseScriptAddress_1932 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2622 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isTwoPhaseScriptAddress_1932 = erased
-- Ledger.Conway.Conformance.Utxo.L._.isTwoPhaseScriptAddress?
d_isTwoPhaseScriptAddress'63'_1934 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2622 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isTwoPhaseScriptAddress'63'_1934 v0 ~v1
  = du_isTwoPhaseScriptAddress'63'_1934 v0
du_isTwoPhaseScriptAddress'63'_1934 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2622 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_isTwoPhaseScriptAddress'63'_1934 v0
  = coe
      MAlonzo.Code.Ledger.Utxo.du_isTwoPhaseScriptAddress'63'_1842
      (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.isTwoPhaseScriptAddress′
d_isTwoPhaseScriptAddress'8242'_1936 a0 a1 a2 a3 a4 = ()
-- Ledger.Conway.Conformance.Utxo.L._.isTwoPhaseScriptAddress′?
d_isTwoPhaseScriptAddress'8242''63'_1938 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2622 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isTwoPhaseScriptAddress'8242''63'_1938 v0 ~v1
  = du_isTwoPhaseScriptAddress'8242''63'_1938 v0
du_isTwoPhaseScriptAddress'8242''63'_1938 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2622 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_isTwoPhaseScriptAddress'8242''63'_1938 v0
  = coe
      MAlonzo.Code.Ledger.Utxo.du_isTwoPhaseScriptAddress'8242''63'_1916
      (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.minfee
d_minfee_1942 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2622 -> Integer
d_minfee_1942 v0 v1
  = coe MAlonzo.Code.Ledger.Utxo.d_minfee_2074 (coe v0) (coe v1)
-- Ledger.Conway.Conformance.Utxo.L._.newDeposits
d_newDeposits_1944 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2020 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2520 -> Integer
d_newDeposits_1944 v0 ~v1 = du_newDeposits_1944 v0
du_newDeposits_1944 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2020 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2520 -> Integer
du_newDeposits_1944 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_newDeposits_2878 (coe v0)
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
du_outs_1948 = coe MAlonzo.Code.Ledger.Utxo.du_outs_2052
-- Ledger.Conway.Conformance.Utxo.L._.produced
d_produced_1950 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2020 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2520 -> AgdaAny
d_produced_1950 v0 ~v1 = du_produced_1950 v0
du_produced_1950 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2020 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2520 -> AgdaAny
du_produced_1950 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_produced_2894 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.proposalDepositsΔ
d_proposalDepositsΔ_1952 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_742] ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2520 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_proposalDepositsΔ_1952 v0 ~v1 = du_proposalDepositsΔ_1952 v0
du_proposalDepositsΔ_1952 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_742] ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2520 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_proposalDepositsΔ_1952 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_proposalDepositsΔ_2514 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.refScriptsSize
d_refScriptsSize_1954 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2622 -> Integer
d_refScriptsSize_1954 v0 v1
  = coe
      MAlonzo.Code.Ledger.Utxo.d_refScriptsSize_2068 (coe v0) (coe v1)
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
  = coe MAlonzo.Code.Ledger.Utxo.du_totExUnits_1988 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.updateCertDeposits
d_updateCertDeposits_1966 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_832] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateCertDeposits_1966 v0 ~v1 = du_updateCertDeposits_1966 v0
du_updateCertDeposits_1966 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_832] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateCertDeposits_1966 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_updateCertDeposits_2372 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.updateDeposits
d_updateDeposits_1968 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2520 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateDeposits_1968 v0 ~v1 = du_updateDeposits_1968 v0
du_updateDeposits_1968 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2520 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateDeposits_1968 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_updateDeposits_2462 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.updateProposalDeposits
d_updateProposalDeposits_1970 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_742] ->
  AgdaAny ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateProposalDeposits_1970 v0 ~v1
  = du_updateProposalDeposits_1970 v0
du_updateProposalDeposits_1970 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_742] ->
  AgdaAny ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateProposalDeposits_1970 v0
  = coe
      MAlonzo.Code.Ledger.Utxo.du_updateProposalDeposits_2450 (coe v0)
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
  = coe MAlonzo.Code.Ledger.Utxo.du_utxoEntrySize_2002 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.utxoEntrySizeWithoutVal
d_utxoEntrySizeWithoutVal_1976 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 -> Integer
d_utxoEntrySizeWithoutVal_1976 ~v0
  = du_utxoEntrySizeWithoutVal_1976
du_utxoEntrySizeWithoutVal_1976 :: Integer
du_utxoEntrySizeWithoutVal_1976 = coe (8 :: Integer)
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
  = coe MAlonzo.Code.Ledger.Utxo.du_'8799''63'_3096 v1 v2 v3
-- Ledger.Conway.Conformance.Utxo.L._.UTxOEnv.pparams
d_pparams_2006 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_2006 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pparams_2006 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_pparams_2016 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.UTxOEnv.slot
d_slot_2008 :: MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_2006 -> AgdaAny
d_slot_2008 v0 = coe MAlonzo.Code.Ledger.Utxo.d_slot_2014 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.UTxOEnv.treasury
d_treasury_2010 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_2006 -> Integer
d_treasury_2010 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_treasury_2018 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.UTxOState.deposits
d_deposits_2014 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2020 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_2014 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_deposits_2034 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.UTxOState.donations
d_donations_2016 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2020 -> Integer
d_donations_2016 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_donations_2036 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.UTxOState.fees
d_fees_2018 :: MAlonzo.Code.Ledger.Utxo.T_UTxOState_2020 -> Integer
d_fees_2018 v0 = coe MAlonzo.Code.Ledger.Utxo.d_fees_2032 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.UTxOState.utxo
d_utxo_2020 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2020 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2020 v0 = coe MAlonzo.Code.Ledger.Utxo.d_utxo_2030 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.isTwoPhaseScriptAddress′.unwrap
d_unwrap_2054 ::
  MAlonzo.Code.Ledger.Utxo.T_isTwoPhaseScriptAddress'8242'_1896 ->
  AgdaAny
d_unwrap_2054 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_unwrap_1906 (coe v0)
-- Ledger.Conway.Conformance.Utxo._⊢_⇀⦇_,UTXOS⦈_
d__'8866'_'8640''10631'_'44'UTXOS'10632'__2066 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'UTXOS'10632'__2066
  = C_Scripts'45'Yes_2146 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_Scripts'45'No_2226 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Utxo._.txins
d_txins_2110 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_2006 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2020 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2622 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txins_2110 ~v0 ~v1 ~v2 v3 = du_txins_2110 v3
du_txins_2110 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2622 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_txins_2110 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txins_2562
      (coe MAlonzo.Code.Ledger.Transaction.d_body_2632 (coe v0))
-- Ledger.Conway.Conformance.Utxo._.pparams
d_pparams_2128 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_2006 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2020 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2622 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pparams_2128 ~v0 v1 ~v2 ~v3 = du_pparams_2128 v1
du_pparams_2128 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_2006 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244
du_pparams_2128 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_pparams_2016 (coe v0)
-- Ledger.Conway.Conformance.Utxo._.utxo
d_utxo_2142 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_2006 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2020 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2622 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2142 ~v0 ~v1 v2 ~v3 = du_utxo_2142 v2
du_utxo_2142 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2020 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxo_2142 v0 = coe MAlonzo.Code.Ledger.Utxo.d_utxo_2030 (coe v0)
-- Ledger.Conway.Conformance.Utxo._.collateral
d_collateral_2166 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_2006 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2020 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2622 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateral_2166 ~v0 ~v1 ~v2 v3 = du_collateral_2166 v3
du_collateral_2166 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2622 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_collateral_2166 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_collateral_2596
      (coe MAlonzo.Code.Ledger.Transaction.d_body_2632 (coe v0))
-- Ledger.Conway.Conformance.Utxo._.pparams
d_pparams_2208 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_2006 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2020 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2622 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pparams_2208 ~v0 v1 ~v2 ~v3 = du_pparams_2208 v1
du_pparams_2208 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_2006 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244
du_pparams_2208 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_pparams_2016 (coe v0)
-- Ledger.Conway.Conformance.Utxo._.utxo
d_utxo_2222 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_2006 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2020 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2622 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2222 ~v0 ~v1 v2 ~v3 = du_utxo_2222 v2
du_utxo_2222 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2020 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxo_2222 v0 = coe MAlonzo.Code.Ledger.Utxo.d_utxo_2030 (coe v0)
-- Ledger.Conway.Conformance.Utxo.Scripts-Yes-premises
d_Scripts'45'Yes'45'premises_2228 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_2006 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2020 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2622 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_Scripts'45'Yes'45'premises_2228 v0 v1 v2 v3 v4
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
                  (coe MAlonzo.Code.Ledger.Utxo.d_pparams_2016 (coe v2)) (coe v4)
                  (coe MAlonzo.Code.Ledger.Utxo.d_utxo_2030 (coe v3))))
            (coe MAlonzo.Code.Ledger.Transaction.d_isValid_2636 (coe v4)))
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
            (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
            (coe MAlonzo.Code.Ledger.Transaction.d_isValid_2636 (coe v4))
            (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)))
-- Ledger.Conway.Conformance.Utxo.Scripts-No-premises
d_Scripts'45'No'45'premises_2230 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_2006 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2020 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2622 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_Scripts'45'No'45'premises_2230 v0 v1 v2 v3 v4
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
                  (coe MAlonzo.Code.Ledger.Utxo.d_pparams_2016 (coe v2)) (coe v4)
                  (coe MAlonzo.Code.Ledger.Utxo.d_utxo_2030 (coe v3))))
            (coe MAlonzo.Code.Ledger.Transaction.d_isValid_2636 (coe v4)))
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
            (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
            (coe MAlonzo.Code.Ledger.Transaction.d_isValid_2636 (coe v4))
            (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)))
-- Ledger.Conway.Conformance.Utxo._⊢_⇀⦇_,UTXO⦈_
d__'8866'_'8640''10631'_'44'UTXO'10632'__2232 a0 a1 a2 a3 a4 a5
  = ()
newtype T__'8866'_'8640''10631'_'44'UTXO'10632'__2232
  = C_UTXO'45'inductive_2328 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Utxo._.body
d_body_2240 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  T_GeneralizeTel_28355 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2520
d_body_2240 ~v0 ~v1 v2 = du_body_2240 v2
du_body_2240 ::
  T_GeneralizeTel_28355 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2520
du_body_2240 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_body_2632
      (coe d_'46'generalizedField'45'tx_28347 (coe v0))
-- Ledger.Conway.Conformance.Utxo._.curTreasury
d_curTreasury_2248 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  T_GeneralizeTel_28355 -> Maybe Integer
d_curTreasury_2248 ~v0 ~v1 v2 = du_curTreasury_2248 v2
du_curTreasury_2248 :: T_GeneralizeTel_28355 -> Maybe Integer
du_curTreasury_2248 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_curTreasury_2590
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2632
         (coe d_'46'generalizedField'45'tx_28347 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.mint
d_mint_2250 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  T_GeneralizeTel_28355 -> AgdaAny
d_mint_2250 ~v0 ~v1 v2 = du_mint_2250 v2
du_mint_2250 :: T_GeneralizeTel_28355 -> AgdaAny
du_mint_2250 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_mint_2570
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2632
         (coe d_'46'generalizedField'45'tx_28347 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.refInputs
d_refInputs_2252 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  T_GeneralizeTel_28355 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_2252 ~v0 ~v1 v2 = du_refInputs_2252 v2
du_refInputs_2252 ::
  T_GeneralizeTel_28355 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_refInputs_2252 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_refInputs_2564
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2632
         (coe d_'46'generalizedField'45'tx_28347 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.txNetworkId
d_txNetworkId_2260 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  T_GeneralizeTel_28355 -> Maybe AgdaAny
d_txNetworkId_2260 ~v0 ~v1 v2 = du_txNetworkId_2260 v2
du_txNetworkId_2260 :: T_GeneralizeTel_28355 -> Maybe AgdaAny
du_txNetworkId_2260 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txNetworkId_2588
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2632
         (coe d_'46'generalizedField'45'tx_28347 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.txins
d_txins_2270 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  T_GeneralizeTel_28355 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txins_2270 ~v0 ~v1 v2 = du_txins_2270 v2
du_txins_2270 ::
  T_GeneralizeTel_28355 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_txins_2270 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txins_2562
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2632
         (coe d_'46'generalizedField'45'tx_28347 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.txouts
d_txouts_2272 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  T_GeneralizeTel_28355 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txouts_2272 ~v0 ~v1 v2 = du_txouts_2272 v2
du_txouts_2272 ::
  T_GeneralizeTel_28355 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txouts_2272 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txouts_2566
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2632
         (coe d_'46'generalizedField'45'tx_28347 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.txsize
d_txsize_2276 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  T_GeneralizeTel_28355 -> Integer
d_txsize_2276 ~v0 ~v1 v2 = du_txsize_2276 v2
du_txsize_2276 :: T_GeneralizeTel_28355 -> Integer
du_txsize_2276 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txsize_2592
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2632
         (coe d_'46'generalizedField'45'tx_28347 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.txvldt
d_txvldt_2280 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  T_GeneralizeTel_28355 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txvldt_2280 ~v0 ~v1 v2 = du_txvldt_2280 v2
du_txvldt_2280 ::
  T_GeneralizeTel_28355 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txvldt_2280 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txvldt_2572
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2632
         (coe d_'46'generalizedField'45'tx_28347 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.txwdrls
d_txwdrls_2284 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  T_GeneralizeTel_28355 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_2284 ~v0 ~v1 v2 = du_txwdrls_2284 v2
du_txwdrls_2284 ::
  T_GeneralizeTel_28355 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txwdrls_2284 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txwdrls_2576
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2632
         (coe d_'46'generalizedField'45'tx_28347 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.pparams
d_pparams_2288 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  T_GeneralizeTel_28355 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pparams_2288 ~v0 ~v1 v2 = du_pparams_2288 v2
du_pparams_2288 ::
  T_GeneralizeTel_28355 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
du_pparams_2288 v0
  = coe
      MAlonzo.Code.Ledger.Utxo.d_pparams_2016
      (coe d_'46'generalizedField'45'Γ_28349 (coe v0))
-- Ledger.Conway.Conformance.Utxo._.slot
d_slot_2290 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  T_GeneralizeTel_28355 -> AgdaAny
d_slot_2290 ~v0 ~v1 v2 = du_slot_2290 v2
du_slot_2290 :: T_GeneralizeTel_28355 -> AgdaAny
du_slot_2290 v0
  = coe
      MAlonzo.Code.Ledger.Utxo.d_slot_2014
      (coe d_'46'generalizedField'45'Γ_28349 (coe v0))
-- Ledger.Conway.Conformance.Utxo._.treasury
d_treasury_2292 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  T_GeneralizeTel_28355 -> Integer
d_treasury_2292 ~v0 ~v1 v2 = du_treasury_2292 v2
du_treasury_2292 :: T_GeneralizeTel_28355 -> Integer
du_treasury_2292 v0
  = coe
      MAlonzo.Code.Ledger.Utxo.d_treasury_2018
      (coe d_'46'generalizedField'45'Γ_28349 (coe v0))
-- Ledger.Conway.Conformance.Utxo._.utxo
d_utxo_2302 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  T_GeneralizeTel_28355 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2302 ~v0 ~v1 v2 = du_utxo_2302 v2
du_utxo_2302 ::
  T_GeneralizeTel_28355 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxo_2302 v0
  = coe
      MAlonzo.Code.Ledger.Utxo.d_utxo_2030
      (coe d_'46'generalizedField'45's_28351 (coe v0))
-- Ledger.Conway.Conformance.Utxo.UTXO-premises
d_UTXO'45'premises_2372 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2622 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_2006 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2020 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTXO'45'premises_2372 v0 v1 v2 v3 v4
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
                          (coe MAlonzo.Code.Ledger.Utxo.d_utxo_2030 (coe v4)))))
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
                     MAlonzo.Code.Ledger.Utxo.du_Dec'45'inInterval_2598 (coe v0)
                     (coe MAlonzo.Code.Ledger.Utxo.d_slot_2014 (coe v3))
                     (coe
                        MAlonzo.Code.Ledger.Transaction.d_txvldt_2572
                        (coe MAlonzo.Code.Ledger.Transaction.d_body_2632 (coe v2))))
                  (coe
                     MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                     (coe
                        MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                        (coe
                           MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_74
                           (MAlonzo.Code.Ledger.Utxo.d_minfee_2074
                              (coe v0) (coe v1)
                              (coe MAlonzo.Code.Ledger.Utxo.d_pparams_2016 (coe v3))
                              (coe MAlonzo.Code.Ledger.Utxo.d_utxo_2030 (coe v4)) (coe v2))
                           (MAlonzo.Code.Ledger.Transaction.d_txfee_2568
                              (coe MAlonzo.Code.Ledger.Transaction.d_body_2632 (coe v2))))
                        (coe
                           MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_22
                           (coe
                              MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_22
                              (coe
                                 MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                                 (coe
                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_DecEq'45'ℙ_1138
                                    (coe
                                       MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased ()
                                       erased
                                       (coe
                                          MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased ()
                                          erased MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Tag_18
                                          (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1182
                                             (coe v0)))
                                       (coe
                                          MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased ()
                                          erased
                                          (MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_26
                                             (coe
                                                MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40
                                                (coe
                                                   MAlonzo.Code.Ledger.Script.d_Data'688'_190
                                                   (coe
                                                      MAlonzo.Code.Ledger.Script.d_ps_448
                                                      (coe
                                                         MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1790
                                                         (coe v0))))))
                                          (MAlonzo.Code.Ledger.Script.d_DecEq'45'ExUnits_224
                                             (coe
                                                MAlonzo.Code.Ledger.Script.d_ps_448
                                                (coe
                                                   MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1790
                                                   (coe v0)))))))
                                 (coe
                                    MAlonzo.Code.Axiom.Set.Map.du__'738'_550
                                    (coe
                                       MAlonzo.Code.Ledger.Transaction.d_txrdmrs_2618
                                       (coe MAlonzo.Code.Ledger.Transaction.d_wits_2634 (coe v2))))
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
                                         MAlonzo.Code.Ledger.Address.du_Dec'45'isVKey_144
                                         (coe
                                            MAlonzo.Code.Ledger.Address.du_payCred_108
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v5)))))
                                 (coe
                                    MAlonzo.Code.Ledger.Utxo.du_collateralRange_2854 (coe v0)
                                    (coe v2) (coe MAlonzo.Code.Ledger.Utxo.d_utxo_2030 (coe v4))))
                              (coe
                                 MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
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
                                                  MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                  (coe
                                                     MAlonzo.Code.Ledger.Transaction.d_crypto_1224
                                                     (coe v0)))
                                               (coe v5)
                                               (coe
                                                  MAlonzo.Code.Ledger.Utxo.du_coinPolicies_2704
                                                  (coe v0))))
                                       (coe
                                          MAlonzo.Code.Ledger.TokenAlgebra.d_policies_204
                                          (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2216
                                             (coe v0))
                                          (coe
                                             MAlonzo.Code.Ledger.Utxo.du_bal_2856 (coe v0) (coe v2)
                                             (coe MAlonzo.Code.Ledger.Utxo.d_utxo_2030 (coe v4)))))
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
                                                  MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                  (coe
                                                     MAlonzo.Code.Ledger.Transaction.d_crypto_1224
                                                     (coe v0)))
                                               (coe v5)
                                               (coe
                                                  MAlonzo.Code.Ledger.TokenAlgebra.d_policies_204
                                                  (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2216
                                                     (coe v0))
                                                  (coe
                                                     MAlonzo.Code.Ledger.Utxo.du_bal_2856 (coe v0)
                                                     (coe v2)
                                                     (coe
                                                        MAlonzo.Code.Ledger.Utxo.d_utxo_2030
                                                        (coe v4))))))
                                       (coe
                                          MAlonzo.Code.Ledger.Utxo.du_coinPolicies_2704 (coe v0))))
                                 (coe
                                    MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                                    (coe
                                       MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_74
                                       (mulInt
                                          (coe
                                             MAlonzo.Code.Ledger.Transaction.d_txfee_2568
                                             (coe
                                                MAlonzo.Code.Ledger.Transaction.d_body_2632
                                                (coe v2)))
                                          (coe
                                             MAlonzo.Code.Ledger.PParams.d_collateralPercentage_358
                                             (coe
                                                MAlonzo.Code.Ledger.Utxo.d_pparams_2016 (coe v3))))
                                       (mulInt
                                          (coe
                                             MAlonzo.Code.Ledger.TokenAlgebra.d_coin_200
                                             (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2216
                                                (coe v0))
                                             (coe
                                                MAlonzo.Code.Ledger.Utxo.du_bal_2856 (coe v0)
                                                (coe v2)
                                                (coe
                                                   MAlonzo.Code.Ledger.Utxo.d_utxo_2030 (coe v4))))
                                          (coe (100 :: Integer))))
                                    (coe
                                       MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_22
                                       (coe
                                          MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                                          (coe
                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_DecEq'45'ℙ_1138
                                             (coe
                                                MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 ()
                                                erased () erased
                                                (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1184
                                                   (coe v0))
                                                (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1182
                                                   (coe v0))))
                                          (coe
                                             MAlonzo.Code.Ledger.Transaction.d_collateral_2596
                                             (coe
                                                MAlonzo.Code.Ledger.Transaction.d_body_2632
                                                (coe v2)))
                                          (coe
                                             MAlonzo.Code.Axiom.Set.du_'8709'_442
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_th_1470
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))))
                                       (coe
                                          MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_18)))))))
                     (coe
                        MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                        (coe
                           MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                           (coe
                              MAlonzo.Code.Ledger.TokenAlgebra.d_DecEq'45'Value_218
                              (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2216 (coe v0)))
                           (coe
                              MAlonzo.Code.Ledger.Utxo.du_consumed_2886 (coe v0)
                              (coe MAlonzo.Code.Ledger.Utxo.d_pparams_2016 (coe v3)) (coe v4)
                              (coe MAlonzo.Code.Ledger.Transaction.d_body_2632 (coe v2)))
                           (coe
                              MAlonzo.Code.Ledger.Utxo.du_produced_2894 (coe v0)
                              (coe MAlonzo.Code.Ledger.Utxo.d_pparams_2016 (coe v3)) (coe v4)
                              (coe MAlonzo.Code.Ledger.Transaction.d_body_2632 (coe v2))))
                        (coe
                           MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                           (coe
                              MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                              (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                              (coe
                                 MAlonzo.Code.Ledger.TokenAlgebra.d_coin_200
                                 (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2216 (coe v0))
                                 (MAlonzo.Code.Ledger.Transaction.d_mint_2570
                                    (coe MAlonzo.Code.Ledger.Transaction.d_body_2632 (coe v2))))
                              (coe (0 :: Integer)))
                           (coe
                              MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                              (coe
                                 MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_74
                                 (MAlonzo.Code.Ledger.Transaction.d_txsize_2592
                                    (coe MAlonzo.Code.Ledger.Transaction.d_body_2632 (coe v2)))
                                 (MAlonzo.Code.Ledger.PParams.d_maxTxSize_314
                                    (coe MAlonzo.Code.Ledger.Utxo.d_pparams_2016 (coe v3))))
                              (coe
                                 MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                                 (coe
                                    MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_74
                                    (MAlonzo.Code.Ledger.Utxo.d_refScriptsSize_2068
                                       (coe v0) (coe v1)
                                       (coe MAlonzo.Code.Ledger.Utxo.d_utxo_2030 (coe v4)) (coe v2))
                                    (MAlonzo.Code.Ledger.PParams.d_maxRefScriptSizePerTx_342
                                       (coe MAlonzo.Code.Ledger.Utxo.d_pparams_2016 (coe v3))))
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
                                                           MAlonzo.Code.Ledger.Utxo.du_utxoEntrySize_2002
                                                           (coe v0)
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                              (coe v5))))
                                                     (coe
                                                        MAlonzo.Code.Ledger.PParams.d_coinsPerUTxOByte_336
                                                        (coe
                                                           MAlonzo.Code.Ledger.Utxo.d_pparams_2016
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
                                                  (MAlonzo.Code.Ledger.PParams.d_maxValSize_322
                                                     (coe
                                                        MAlonzo.Code.Ledger.Utxo.d_pparams_2016
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
                                                         MAlonzo.Code.Ledger.Transaction.d_txwdrls_2576
                                                         (coe
                                                            MAlonzo.Code.Ledger.Transaction.d_body_2632
                                                            (coe v2)))))
                                                (coe
                                                   MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                                                   (coe
                                                      MAlonzo.Code.Ledger.Utxo.du_'8799''63'_3096
                                                      (coe
                                                         MAlonzo.Code.Ledger.Transaction.d_txNetworkId_2588
                                                         (coe
                                                            MAlonzo.Code.Ledger.Transaction.d_body_2632
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
                                                      MAlonzo.Code.Ledger.Utxo.du_'8799''63'_3096
                                                      (coe
                                                         MAlonzo.Code.Ledger.Transaction.d_curTreasury_2590
                                                         (coe
                                                            MAlonzo.Code.Ledger.Transaction.d_body_2632
                                                            (coe v2)))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Utxo.d_treasury_2018
                                                         (coe v3))
                                                      (coe
                                                         MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)))))))))))))))))
-- Ledger.Conway.Conformance.Utxo..generalizedField-tx
d_'46'generalizedField'45'tx_28347 ::
  T_GeneralizeTel_28355 -> MAlonzo.Code.Ledger.Transaction.T_Tx_2622
d_'46'generalizedField'45'tx_28347 v0
  = case coe v0 of
      C_mkGeneralizeTel_28357 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxo..generalizedField-Γ
d_'46'generalizedField'45'Γ_28349 ::
  T_GeneralizeTel_28355 -> MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_2006
d_'46'generalizedField'45'Γ_28349 v0
  = case coe v0 of
      C_mkGeneralizeTel_28357 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxo..generalizedField-s
d_'46'generalizedField'45's_28351 ::
  T_GeneralizeTel_28355 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_2020
d_'46'generalizedField'45's_28351 v0
  = case coe v0 of
      C_mkGeneralizeTel_28357 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxo..generalizedField-s'
d_'46'generalizedField'45's''_28353 ::
  T_GeneralizeTel_28355 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_2020
d_'46'generalizedField'45's''_28353 v0
  = case coe v0 of
      C_mkGeneralizeTel_28357 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxo.GeneralizeTel
d_GeneralizeTel_28355 a0 a1 = ()
data T_GeneralizeTel_28355
  = C_mkGeneralizeTel_28357 MAlonzo.Code.Ledger.Transaction.T_Tx_2622
                            MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_2006
                            MAlonzo.Code.Ledger.Utxo.T_UTxOState_2020
                            MAlonzo.Code.Ledger.Utxo.T_UTxOState_2020
