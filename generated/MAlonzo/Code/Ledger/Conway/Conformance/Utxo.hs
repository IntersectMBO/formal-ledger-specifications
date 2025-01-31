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
d_netId_506 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
d_netId_506 ~v0 = du_netId_506
du_netId_506 :: MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
du_netId_506 = coe MAlonzo.Code.Ledger.Address.du_netId_112
-- _.txOutHash
d_txOutHash_568 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txOutHash_568 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txOutHash_2646 (coe v0)
-- _.Tx.body
d_body_1380 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2622 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2520
d_body_1380 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_body_2632 (coe v0)
-- _.Tx.isValid
d_isValid_1382 :: MAlonzo.Code.Ledger.Transaction.T_Tx_2622 -> Bool
d_isValid_1382 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_isValid_2636 (coe v0)
-- _.Tx.txAD
d_txAD_1384 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2622 -> Maybe AgdaAny
d_txAD_1384 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txAD_2638 (coe v0)
-- _.Tx.wits
d_wits_1386 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2622 ->
  MAlonzo.Code.Ledger.Transaction.T_TxWitnesses_2602
d_wits_1386 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_wits_2634 (coe v0)
-- Ledger.Conway.Conformance.Utxo._.collectPhaseTwoScriptInputs
d_collectPhaseTwoScriptInputs_1514 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1716 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2622 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collectPhaseTwoScriptInputs_1514 v0 v1
  = coe
      MAlonzo.Code.Ledger.ScriptValidation.d_collectPhaseTwoScriptInputs_2358
      (coe v0) (coe v1)
-- Ledger.Conway.Conformance.Utxo._.evalScripts
d_evalScripts_1524 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1716 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2622 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Bool
d_evalScripts_1524 v0 v1
  = coe
      MAlonzo.Code.Ledger.ScriptValidation.d_evalScripts_2376 (coe v0)
      (coe v1)
-- Ledger.Conway.Conformance.Utxo.L._._*↓_
d__'42''8595'__1862 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1716 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 -> Integer -> Integer
d__'42''8595'__1862 ~v0 v1 v2 = du__'42''8595'__1862 v1 v2
du__'42''8595'__1862 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 -> Integer -> Integer
du__'42''8595'__1862 v0 v1
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
d__'8801''63'__1864 a0 a1 a2 a3 a4 = ()
-- Ledger.Conway.Conformance.Utxo.L._._⊢_⇀⦇_,UTXOS⦈_
d__'8866'_'8640''10631'_'44'UTXOS'10632'__1866 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Utxo.L._._⊢_⇀⦇_,UTXO⦈_
d__'8866'_'8640''10631'_'44'UTXO'10632'__1868 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Utxo.L._.Dec-ValidCertDeposits
d_Dec'45'ValidCertDeposits_1870 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1716 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_834] ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'ValidCertDeposits_1870 v0 ~v1
  = du_Dec'45'ValidCertDeposits_1870 v0
du_Dec'45'ValidCertDeposits_1870 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_834] ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'ValidCertDeposits_1870 v0
  = coe
      MAlonzo.Code.Ledger.Utxo.du_Dec'45'ValidCertDeposits_2370 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.Dec-inInterval
d_Dec'45'inInterval_1872 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1716 ->
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
  = coe MAlonzo.Code.Ledger.Utxo.du_Dec'45'inInterval_2598 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.HasCoin-UTxO
d_HasCoin'45'UTxO_1874 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1716 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
d_HasCoin'45'UTxO_1874 v0 ~v1 = du_HasCoin'45'UTxO_1874 v0
du_HasCoin'45'UTxO_1874 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
du_HasCoin'45'UTxO_1874 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_HasCoin'45'UTxO_2082 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.HasCoin-UTxOState
d_HasCoin'45'UTxOState_1876 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1716 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
d_HasCoin'45'UTxOState_1876 v0 ~v1
  = du_HasCoin'45'UTxOState_1876 v0
du_HasCoin'45'UTxOState_1876 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
du_HasCoin'45'UTxOState_1876 v0
  = coe
      MAlonzo.Code.Ledger.Utxo.du_HasCoin'45'UTxOState_2700 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.Scripts-No-premises
d_Scripts'45'No'45'premises_1880 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1716 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_2008 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2022 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2622 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_Scripts'45'No'45'premises_1880 v0 v1
  = coe
      MAlonzo.Code.Ledger.Utxo.d_Scripts'45'No'45'premises_3066 (coe v0)
      (coe v1)
-- Ledger.Conway.Conformance.Utxo.L._.Scripts-Yes-premises
d_Scripts'45'Yes'45'premises_1884 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1716 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_2008 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2022 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2622 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_Scripts'45'Yes'45'premises_1884 v0 v1
  = coe
      MAlonzo.Code.Ledger.Utxo.d_Scripts'45'Yes'45'premises_3064 (coe v0)
      (coe v1)
-- Ledger.Conway.Conformance.Utxo.L._.UTXO-premises
d_UTXO'45'premises_1888 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1716 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2622 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_2008 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2022 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTXO'45'premises_1888 v0 v1
  = coe
      MAlonzo.Code.Ledger.Utxo.d_UTXO'45'premises_3256 (coe v0) (coe v1)
-- Ledger.Conway.Conformance.Utxo.L._.UTxOEnv
d_UTxOEnv_1890 a0 a1 = ()
-- Ledger.Conway.Conformance.Utxo.L._.UTxOState
d_UTxOState_1892 a0 a1 = ()
-- Ledger.Conway.Conformance.Utxo.L._.ValidCertDeposits
d_ValidCertDeposits_1894 a0 a1 a2 a3 a4 = ()
-- Ledger.Conway.Conformance.Utxo.L._.balance
d_balance_1898 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1716 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_balance_1898 v0 ~v1 = du_balance_1898 v0
du_balance_1898 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_balance_1898 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_balance_2058 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.cbalance
d_cbalance_1902 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1716 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_cbalance_1902 v0 ~v1 = du_cbalance_1902 v0
du_cbalance_1902 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_cbalance_1902 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_cbalance_2064 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.certDeposit
d_certDeposit_1906 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1716 ->
  MAlonzo.Code.Ledger.Certs.T_DCert_834 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_certDeposit_1906 ~v0 ~v1 = du_certDeposit_1906
du_certDeposit_1906 ::
  MAlonzo.Code.Ledger.Certs.T_DCert_834 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_certDeposit_1906
  = coe MAlonzo.Code.Ledger.Utxo.du_certDeposit_2084
-- Ledger.Conway.Conformance.Utxo.L._.certRefund
d_certRefund_1908 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1716 ->
  MAlonzo.Code.Ledger.Certs.T_DCert_834 ->
  [MAlonzo.Code.Ledger.Certs.T_DepositPurpose_814]
d_certRefund_1908 ~v0 ~v1 = du_certRefund_1908
du_certRefund_1908 ::
  MAlonzo.Code.Ledger.Certs.T_DCert_834 ->
  [MAlonzo.Code.Ledger.Certs.T_DepositPurpose_814]
du_certRefund_1908
  = coe MAlonzo.Code.Ledger.Utxo.du_certRefund_2102
-- Ledger.Conway.Conformance.Utxo.L._.coinPolicies
d_coinPolicies_1910 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1716 -> [AgdaAny]
d_coinPolicies_1910 v0 ~v1 = du_coinPolicies_1910 v0
du_coinPolicies_1910 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  [AgdaAny]
du_coinPolicies_1910 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_coinPolicies_2704 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.consumed
d_consumed_1912 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1716 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2022 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2520 -> AgdaAny
d_consumed_1912 v0 ~v1 = du_consumed_1912 v0
du_consumed_1912 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2022 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2520 -> AgdaAny
du_consumed_1912 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_consumed_2886 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.depositRefunds
d_depositRefunds_1916 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1716 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2022 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2520 -> Integer
d_depositRefunds_1916 v0 ~v1 = du_depositRefunds_1916 v0
du_depositRefunds_1916 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2022 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2520 -> Integer
du_depositRefunds_1916 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_depositRefunds_2870 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.depositsChange
d_depositsChange_1918 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1716 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2520 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_depositsChange_1918 v0 ~v1 = du_depositsChange_1918 v0
du_depositsChange_1918 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2520 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_depositsChange_1918 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_depositsChange_2568 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.feesOK
d_feesOK_1924 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1716 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2622 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_feesOK_1924 = erased
-- Ledger.Conway.Conformance.Utxo.L._.getDataHashes
d_getDataHashes_1926 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1716 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> [AgdaAny]
d_getDataHashes_1926 ~v0 ~v1 = du_getDataHashes_1926
du_getDataHashes_1926 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> [AgdaAny]
du_getDataHashes_1926
  = coe MAlonzo.Code.Ledger.Utxo.du_getDataHashes_1930
-- Ledger.Conway.Conformance.Utxo.L._.getInputHashes
d_getInputHashes_1928 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1716 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2622 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
d_getInputHashes_1928 v0 ~v1 = du_getInputHashes_1928 v0
du_getInputHashes_1928 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2622 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
du_getInputHashes_1928 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_getInputHashes_1934 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.inInterval
d_inInterval_1930 a0 a1 a2 a3 = ()
-- Ledger.Conway.Conformance.Utxo.L._.isAdaOnly
d_isAdaOnly_1932 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1716 ->
  AgdaAny -> ()
d_isAdaOnly_1932 = erased
-- Ledger.Conway.Conformance.Utxo.L._.isTwoPhaseScriptAddress
d_isTwoPhaseScriptAddress_1934 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1716 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2622 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isTwoPhaseScriptAddress_1934 = erased
-- Ledger.Conway.Conformance.Utxo.L._.isTwoPhaseScriptAddress?
d_isTwoPhaseScriptAddress'63'_1936 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1716 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2622 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isTwoPhaseScriptAddress'63'_1936 v0 ~v1
  = du_isTwoPhaseScriptAddress'63'_1936 v0
du_isTwoPhaseScriptAddress'63'_1936 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2622 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_isTwoPhaseScriptAddress'63'_1936 v0
  = coe
      MAlonzo.Code.Ledger.Utxo.du_isTwoPhaseScriptAddress'63'_1844
      (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.isTwoPhaseScriptAddress′
d_isTwoPhaseScriptAddress'8242'_1938 a0 a1 a2 a3 a4 = ()
-- Ledger.Conway.Conformance.Utxo.L._.isTwoPhaseScriptAddress′?
d_isTwoPhaseScriptAddress'8242''63'_1940 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1716 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2622 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isTwoPhaseScriptAddress'8242''63'_1940 v0 ~v1
  = du_isTwoPhaseScriptAddress'8242''63'_1940 v0
du_isTwoPhaseScriptAddress'8242''63'_1940 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2622 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_isTwoPhaseScriptAddress'8242''63'_1940 v0
  = coe
      MAlonzo.Code.Ledger.Utxo.du_isTwoPhaseScriptAddress'8242''63'_1918
      (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.minfee
d_minfee_1944 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1716 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2622 -> Integer
d_minfee_1944 v0 v1
  = coe MAlonzo.Code.Ledger.Utxo.d_minfee_2074 (coe v0) (coe v1)
-- Ledger.Conway.Conformance.Utxo.L._.newDeposits
d_newDeposits_1946 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1716 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2022 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2520 -> Integer
d_newDeposits_1946 v0 ~v1 = du_newDeposits_1946 v0
du_newDeposits_1946 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2022 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2520 -> Integer
du_newDeposits_1946 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_newDeposits_2878 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.outs
d_outs_1950 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1716 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2520 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_outs_1950 ~v0 ~v1 = du_outs_1950
du_outs_1950 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2520 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_outs_1950 = coe MAlonzo.Code.Ledger.Utxo.du_outs_2052
-- Ledger.Conway.Conformance.Utxo.L._.produced
d_produced_1952 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1716 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2022 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2520 -> AgdaAny
d_produced_1952 v0 ~v1 = du_produced_1952 v0
du_produced_1952 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2022 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2520 -> AgdaAny
du_produced_1952 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_produced_2894 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.proposalDepositsΔ
d_proposalDepositsΔ_1954 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1716 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_754] ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2520 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_proposalDepositsΔ_1954 v0 ~v1 = du_proposalDepositsΔ_1954 v0
du_proposalDepositsΔ_1954 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_754] ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2520 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_proposalDepositsΔ_1954 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_proposalDepositsΔ_2514 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.refScriptsSize
d_refScriptsSize_1956 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1716 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2622 -> Integer
d_refScriptsSize_1956 v0 v1
  = coe
      MAlonzo.Code.Ledger.Utxo.d_refScriptsSize_2068 (coe v0) (coe v1)
-- Ledger.Conway.Conformance.Utxo.L._.totExUnits
d_totExUnits_1966 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1716 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2622 -> AgdaAny
d_totExUnits_1966 v0 ~v1 = du_totExUnits_1966 v0
du_totExUnits_1966 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2622 -> AgdaAny
du_totExUnits_1966 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_totExUnits_1990 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.updateCertDeposits
d_updateCertDeposits_1968 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1716 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_834] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateCertDeposits_1968 v0 ~v1 = du_updateCertDeposits_1968 v0
du_updateCertDeposits_1968 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_834] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateCertDeposits_1968 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_updateCertDeposits_2372 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.updateDeposits
d_updateDeposits_1970 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1716 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2520 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateDeposits_1970 v0 ~v1 = du_updateDeposits_1970 v0
du_updateDeposits_1970 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2520 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateDeposits_1970 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_updateDeposits_2462 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.updateProposalDeposits
d_updateProposalDeposits_1972 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1716 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_754] ->
  AgdaAny ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateProposalDeposits_1972 v0 ~v1
  = du_updateProposalDeposits_1972 v0
du_updateProposalDeposits_1972 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_754] ->
  AgdaAny ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateProposalDeposits_1972 v0
  = coe
      MAlonzo.Code.Ledger.Utxo.du_updateProposalDeposits_2450 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.utxoEntrySize
d_utxoEntrySize_1976 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1716 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_utxoEntrySize_1976 v0 ~v1 = du_utxoEntrySize_1976 v0
du_utxoEntrySize_1976 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_utxoEntrySize_1976 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_utxoEntrySize_2004 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.utxoEntrySizeWithoutVal
d_utxoEntrySizeWithoutVal_1978 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1716 -> Integer
d_utxoEntrySizeWithoutVal_1978 ~v0
  = du_utxoEntrySizeWithoutVal_1978
du_utxoEntrySizeWithoutVal_1978 :: Integer
du_utxoEntrySizeWithoutVal_1978 = coe (8 :: Integer)
-- Ledger.Conway.Conformance.Utxo.L._.≟?
d_'8799''63'_1982 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1716 ->
  () ->
  Maybe AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_'8799''63'_1982 ~v0 ~v1 = du_'8799''63'_1982
du_'8799''63'_1982 ::
  () ->
  Maybe AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_'8799''63'_1982 v0 v1 v2 v3
  = coe MAlonzo.Code.Ledger.Utxo.du_'8799''63'_3096 v1 v2 v3
-- Ledger.Conway.Conformance.Utxo.L._.UTxOEnv.pparams
d_pparams_2008 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_2008 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242
d_pparams_2008 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_pparams_2018 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.UTxOEnv.slot
d_slot_2010 :: MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_2008 -> AgdaAny
d_slot_2010 v0 = coe MAlonzo.Code.Ledger.Utxo.d_slot_2016 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.UTxOEnv.treasury
d_treasury_2012 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_2008 -> Integer
d_treasury_2012 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_treasury_2020 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.UTxOState.deposits
d_deposits_2016 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2022 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_2016 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_deposits_2036 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.UTxOState.donations
d_donations_2018 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2022 -> Integer
d_donations_2018 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_donations_2038 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.UTxOState.fees
d_fees_2020 :: MAlonzo.Code.Ledger.Utxo.T_UTxOState_2022 -> Integer
d_fees_2020 v0 = coe MAlonzo.Code.Ledger.Utxo.d_fees_2034 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.UTxOState.utxo
d_utxo_2022 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2022 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2022 v0 = coe MAlonzo.Code.Ledger.Utxo.d_utxo_2032 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.isTwoPhaseScriptAddress′.unwrap
d_unwrap_2056 ::
  MAlonzo.Code.Ledger.Utxo.T_isTwoPhaseScriptAddress'8242'_1898 ->
  AgdaAny
d_unwrap_2056 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_unwrap_1908 (coe v0)
-- Ledger.Conway.Conformance.Utxo._⊢_⇀⦇_,UTXOS⦈_
d__'8866'_'8640''10631'_'44'UTXOS'10632'__2068 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'UTXOS'10632'__2068
  = C_Scripts'45'Yes_2148 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_Scripts'45'No_2228 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Utxo._.txdonation
d_txdonation_2106 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1716 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_2008 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2022 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2622 -> Integer
d_txdonation_2106 ~v0 ~v1 ~v2 v3 = du_txdonation_2106 v3
du_txdonation_2106 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2622 -> Integer
du_txdonation_2106 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txdonation_2582
      (coe MAlonzo.Code.Ledger.Transaction.d_body_2632 (coe v0))
-- Ledger.Conway.Conformance.Utxo._.txfee
d_txfee_2108 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1716 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_2008 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2022 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2622 -> Integer
d_txfee_2108 ~v0 ~v1 ~v2 v3 = du_txfee_2108 v3
du_txfee_2108 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2622 -> Integer
du_txfee_2108 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txfee_2568
      (coe MAlonzo.Code.Ledger.Transaction.d_body_2632 (coe v0))
-- Ledger.Conway.Conformance.Utxo._.txins
d_txins_2112 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1716 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_2008 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2022 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2622 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txins_2112 ~v0 ~v1 ~v2 v3 = du_txins_2112 v3
du_txins_2112 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2622 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_txins_2112 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txins_2562
      (coe MAlonzo.Code.Ledger.Transaction.d_body_2632 (coe v0))
-- Ledger.Conway.Conformance.Utxo._.pparams
d_pparams_2130 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1716 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_2008 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2022 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2622 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242
d_pparams_2130 ~v0 v1 ~v2 ~v3 = du_pparams_2130 v1
du_pparams_2130 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_2008 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242
du_pparams_2130 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_pparams_2018 (coe v0)
-- Ledger.Conway.Conformance.Utxo._.deposits
d_deposits_2138 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1716 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_2008 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2022 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2622 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_2138 ~v0 ~v1 v2 ~v3 = du_deposits_2138 v2
du_deposits_2138 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2022 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_deposits_2138 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_deposits_2036 (coe v0)
-- Ledger.Conway.Conformance.Utxo._.donations
d_donations_2140 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1716 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_2008 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2022 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2622 -> Integer
d_donations_2140 ~v0 ~v1 v2 ~v3 = du_donations_2140 v2
du_donations_2140 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2022 -> Integer
du_donations_2140 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_donations_2038 (coe v0)
-- Ledger.Conway.Conformance.Utxo._.fees
d_fees_2142 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1716 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_2008 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2022 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2622 -> Integer
d_fees_2142 ~v0 ~v1 v2 ~v3 = du_fees_2142 v2
du_fees_2142 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2022 -> Integer
du_fees_2142 v0 = coe MAlonzo.Code.Ledger.Utxo.d_fees_2034 (coe v0)
-- Ledger.Conway.Conformance.Utxo._.utxo
d_utxo_2144 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1716 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_2008 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2022 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2622 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2144 ~v0 ~v1 v2 ~v3 = du_utxo_2144 v2
du_utxo_2144 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2022 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxo_2144 v0 = coe MAlonzo.Code.Ledger.Utxo.d_utxo_2032 (coe v0)
-- Ledger.Conway.Conformance.Utxo._.collateral
d_collateral_2168 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1716 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_2008 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2022 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2622 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateral_2168 ~v0 ~v1 ~v2 v3 = du_collateral_2168 v3
du_collateral_2168 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2622 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_collateral_2168 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_collateral_2596
      (coe MAlonzo.Code.Ledger.Transaction.d_body_2632 (coe v0))
-- Ledger.Conway.Conformance.Utxo._.pparams
d_pparams_2210 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1716 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_2008 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2022 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2622 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242
d_pparams_2210 ~v0 v1 ~v2 ~v3 = du_pparams_2210 v1
du_pparams_2210 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_2008 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242
du_pparams_2210 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_pparams_2018 (coe v0)
-- Ledger.Conway.Conformance.Utxo._.deposits
d_deposits_2218 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1716 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_2008 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2022 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2622 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_2218 ~v0 ~v1 v2 ~v3 = du_deposits_2218 v2
du_deposits_2218 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2022 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_deposits_2218 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_deposits_2036 (coe v0)
-- Ledger.Conway.Conformance.Utxo._.donations
d_donations_2220 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1716 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_2008 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2022 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2622 -> Integer
d_donations_2220 ~v0 ~v1 v2 ~v3 = du_donations_2220 v2
du_donations_2220 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2022 -> Integer
du_donations_2220 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_donations_2038 (coe v0)
-- Ledger.Conway.Conformance.Utxo._.fees
d_fees_2222 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1716 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_2008 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2022 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2622 -> Integer
d_fees_2222 ~v0 ~v1 v2 ~v3 = du_fees_2222 v2
du_fees_2222 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2022 -> Integer
du_fees_2222 v0 = coe MAlonzo.Code.Ledger.Utxo.d_fees_2034 (coe v0)
-- Ledger.Conway.Conformance.Utxo._.utxo
d_utxo_2224 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1716 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_2008 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2022 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2622 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2224 ~v0 ~v1 v2 ~v3 = du_utxo_2224 v2
du_utxo_2224 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2022 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxo_2224 v0 = coe MAlonzo.Code.Ledger.Utxo.d_utxo_2032 (coe v0)
-- Ledger.Conway.Conformance.Utxo.Scripts-Yes-premises
d_Scripts'45'Yes'45'premises_2230 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1716 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_2008 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2022 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2622 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_Scripts'45'Yes'45'premises_2230 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased
      (coe
         MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
            (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
            (coe
               MAlonzo.Code.Ledger.ScriptValidation.d_evalScripts_2376 (coe v0)
               (coe v1) (coe v4)
               (coe
                  MAlonzo.Code.Ledger.ScriptValidation.d_collectPhaseTwoScriptInputs_2358
                  (coe v0) (coe v1)
                  (coe MAlonzo.Code.Ledger.Utxo.d_pparams_2018 (coe v2)) (coe v4)
                  (coe MAlonzo.Code.Ledger.Utxo.d_utxo_2032 (coe v3))))
            (coe MAlonzo.Code.Ledger.Transaction.d_isValid_2636 (coe v4)))
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
            (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
            (coe MAlonzo.Code.Ledger.Transaction.d_isValid_2636 (coe v4))
            (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)))
-- Ledger.Conway.Conformance.Utxo.Scripts-No-premises
d_Scripts'45'No'45'premises_2232 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1716 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_2008 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2022 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2622 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_Scripts'45'No'45'premises_2232 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased
      (coe
         MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
            (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
            (coe
               MAlonzo.Code.Ledger.ScriptValidation.d_evalScripts_2376 (coe v0)
               (coe v1) (coe v4)
               (coe
                  MAlonzo.Code.Ledger.ScriptValidation.d_collectPhaseTwoScriptInputs_2358
                  (coe v0) (coe v1)
                  (coe MAlonzo.Code.Ledger.Utxo.d_pparams_2018 (coe v2)) (coe v4)
                  (coe MAlonzo.Code.Ledger.Utxo.d_utxo_2032 (coe v3))))
            (coe MAlonzo.Code.Ledger.Transaction.d_isValid_2636 (coe v4)))
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
            (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
            (coe MAlonzo.Code.Ledger.Transaction.d_isValid_2636 (coe v4))
            (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)))
-- Ledger.Conway.Conformance.Utxo._⊢_⇀⦇_,UTXO⦈_
d__'8866'_'8640''10631'_'44'UTXO'10632'__2234 a0 a1 a2 a3 a4 a5
  = ()
newtype T__'8866'_'8640''10631'_'44'UTXO'10632'__2234
  = C_UTXO'45'inductive_2330 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Utxo._.body
d_body_2242 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1716 ->
  T_GeneralizeTel_16885 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2520
d_body_2242 ~v0 ~v1 v2 = du_body_2242 v2
du_body_2242 ::
  T_GeneralizeTel_16885 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2520
du_body_2242 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_body_2632
      (coe d_'46'generalizedField'45'tx_16877 (coe v0))
-- Ledger.Conway.Conformance.Utxo._.curTreasury
d_curTreasury_2250 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1716 ->
  T_GeneralizeTel_16885 -> Maybe Integer
d_curTreasury_2250 ~v0 ~v1 v2 = du_curTreasury_2250 v2
du_curTreasury_2250 :: T_GeneralizeTel_16885 -> Maybe Integer
du_curTreasury_2250 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_curTreasury_2590
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2632
         (coe d_'46'generalizedField'45'tx_16877 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.mint
d_mint_2252 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1716 ->
  T_GeneralizeTel_16885 -> AgdaAny
d_mint_2252 ~v0 ~v1 v2 = du_mint_2252 v2
du_mint_2252 :: T_GeneralizeTel_16885 -> AgdaAny
du_mint_2252 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_mint_2570
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2632
         (coe d_'46'generalizedField'45'tx_16877 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.refInputs
d_refInputs_2254 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1716 ->
  T_GeneralizeTel_16885 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_2254 ~v0 ~v1 v2 = du_refInputs_2254 v2
du_refInputs_2254 ::
  T_GeneralizeTel_16885 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_refInputs_2254 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_refInputs_2564
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2632
         (coe d_'46'generalizedField'45'tx_16877 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.txNetworkId
d_txNetworkId_2262 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1716 ->
  T_GeneralizeTel_16885 -> Maybe AgdaAny
d_txNetworkId_2262 ~v0 ~v1 v2 = du_txNetworkId_2262 v2
du_txNetworkId_2262 :: T_GeneralizeTel_16885 -> Maybe AgdaAny
du_txNetworkId_2262 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txNetworkId_2588
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2632
         (coe d_'46'generalizedField'45'tx_16877 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.txins
d_txins_2272 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1716 ->
  T_GeneralizeTel_16885 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txins_2272 ~v0 ~v1 v2 = du_txins_2272 v2
du_txins_2272 ::
  T_GeneralizeTel_16885 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_txins_2272 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txins_2562
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2632
         (coe d_'46'generalizedField'45'tx_16877 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.txouts
d_txouts_2274 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1716 ->
  T_GeneralizeTel_16885 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txouts_2274 ~v0 ~v1 v2 = du_txouts_2274 v2
du_txouts_2274 ::
  T_GeneralizeTel_16885 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txouts_2274 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txouts_2566
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2632
         (coe d_'46'generalizedField'45'tx_16877 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.txsize
d_txsize_2278 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1716 ->
  T_GeneralizeTel_16885 -> Integer
d_txsize_2278 ~v0 ~v1 v2 = du_txsize_2278 v2
du_txsize_2278 :: T_GeneralizeTel_16885 -> Integer
du_txsize_2278 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txsize_2592
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2632
         (coe d_'46'generalizedField'45'tx_16877 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.txvldt
d_txvldt_2282 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1716 ->
  T_GeneralizeTel_16885 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txvldt_2282 ~v0 ~v1 v2 = du_txvldt_2282 v2
du_txvldt_2282 ::
  T_GeneralizeTel_16885 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txvldt_2282 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txvldt_2572
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2632
         (coe d_'46'generalizedField'45'tx_16877 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.txwdrls
d_txwdrls_2286 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1716 ->
  T_GeneralizeTel_16885 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_2286 ~v0 ~v1 v2 = du_txwdrls_2286 v2
du_txwdrls_2286 ::
  T_GeneralizeTel_16885 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txwdrls_2286 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txwdrls_2576
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2632
         (coe d_'46'generalizedField'45'tx_16877 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.pparams
d_pparams_2290 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1716 ->
  T_GeneralizeTel_16885 -> MAlonzo.Code.Ledger.PParams.T_PParams_242
d_pparams_2290 ~v0 ~v1 v2 = du_pparams_2290 v2
du_pparams_2290 ::
  T_GeneralizeTel_16885 -> MAlonzo.Code.Ledger.PParams.T_PParams_242
du_pparams_2290 v0
  = coe
      MAlonzo.Code.Ledger.Utxo.d_pparams_2018
      (coe d_'46'generalizedField'45'Γ_16879 (coe v0))
-- Ledger.Conway.Conformance.Utxo._.slot
d_slot_2292 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1716 ->
  T_GeneralizeTel_16885 -> AgdaAny
d_slot_2292 ~v0 ~v1 v2 = du_slot_2292 v2
du_slot_2292 :: T_GeneralizeTel_16885 -> AgdaAny
du_slot_2292 v0
  = coe
      MAlonzo.Code.Ledger.Utxo.d_slot_2016
      (coe d_'46'generalizedField'45'Γ_16879 (coe v0))
-- Ledger.Conway.Conformance.Utxo._.treasury
d_treasury_2294 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1716 ->
  T_GeneralizeTel_16885 -> Integer
d_treasury_2294 ~v0 ~v1 v2 = du_treasury_2294 v2
du_treasury_2294 :: T_GeneralizeTel_16885 -> Integer
du_treasury_2294 v0
  = coe
      MAlonzo.Code.Ledger.Utxo.d_treasury_2020
      (coe d_'46'generalizedField'45'Γ_16879 (coe v0))
-- Ledger.Conway.Conformance.Utxo._.utxo
d_utxo_2304 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1716 ->
  T_GeneralizeTel_16885 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2304 ~v0 ~v1 v2 = du_utxo_2304 v2
du_utxo_2304 ::
  T_GeneralizeTel_16885 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxo_2304 v0
  = coe
      MAlonzo.Code.Ledger.Utxo.d_utxo_2032
      (coe d_'46'generalizedField'45's_16881 (coe v0))
-- Ledger.Conway.Conformance.Utxo.UTXO-premises
d_UTXO'45'premises_2374 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1716 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2622 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_2008 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2022 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTXO'45'premises_2374 v0 v1 v2 v3 v4
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
                          (coe MAlonzo.Code.Ledger.Utxo.d_utxo_2032 (coe v4)))))
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
                     MAlonzo.Code.Ledger.Utxo.du_Dec'45'inInterval_2598 (coe v0)
                     (coe MAlonzo.Code.Ledger.Utxo.d_slot_2016 (coe v3))
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
                              (coe MAlonzo.Code.Ledger.Utxo.d_pparams_2018 (coe v3))
                              (coe MAlonzo.Code.Ledger.Utxo.d_utxo_2032 (coe v4)) (coe v2))
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
                                          (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1180
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
                                                         MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1788
                                                         (coe v0))))))
                                          (MAlonzo.Code.Ledger.Script.d_DecEq'45'ExUnits_224
                                             (coe
                                                MAlonzo.Code.Ledger.Script.d_ps_448
                                                (coe
                                                   MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1788
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
                                    (coe v2) (coe MAlonzo.Code.Ledger.Utxo.d_utxo_2032 (coe v4))))
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
                                                     MAlonzo.Code.Ledger.Transaction.d_crypto_1222
                                                     (coe v0)))
                                               (coe v5)
                                               (coe
                                                  MAlonzo.Code.Ledger.Utxo.du_coinPolicies_2704
                                                  (coe v0))))
                                       (coe
                                          MAlonzo.Code.Ledger.TokenAlgebra.d_policies_204
                                          (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2212
                                             (coe v0))
                                          (coe
                                             MAlonzo.Code.Ledger.Utxo.du_bal_2856 (coe v0) (coe v2)
                                             (coe MAlonzo.Code.Ledger.Utxo.d_utxo_2032 (coe v4)))))
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
                                                     MAlonzo.Code.Ledger.Transaction.d_crypto_1222
                                                     (coe v0)))
                                               (coe v5)
                                               (coe
                                                  MAlonzo.Code.Ledger.TokenAlgebra.d_policies_204
                                                  (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2212
                                                     (coe v0))
                                                  (coe
                                                     MAlonzo.Code.Ledger.Utxo.du_bal_2856 (coe v0)
                                                     (coe v2)
                                                     (coe
                                                        MAlonzo.Code.Ledger.Utxo.d_utxo_2032
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
                                             MAlonzo.Code.Ledger.PParams.d_collateralPercentage_356
                                             (coe
                                                MAlonzo.Code.Ledger.Utxo.d_pparams_2018 (coe v3))))
                                       (mulInt
                                          (coe
                                             MAlonzo.Code.Ledger.TokenAlgebra.d_coin_200
                                             (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2212
                                                (coe v0))
                                             (coe
                                                MAlonzo.Code.Ledger.Utxo.du_bal_2856 (coe v0)
                                                (coe v2)
                                                (coe
                                                   MAlonzo.Code.Ledger.Utxo.d_utxo_2032 (coe v4))))
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
                                                (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1182
                                                   (coe v0))
                                                (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1180
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
                              (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2212 (coe v0)))
                           (coe
                              MAlonzo.Code.Ledger.Utxo.du_consumed_2886 (coe v0)
                              (coe MAlonzo.Code.Ledger.Utxo.d_pparams_2018 (coe v3)) (coe v4)
                              (coe MAlonzo.Code.Ledger.Transaction.d_body_2632 (coe v2)))
                           (coe
                              MAlonzo.Code.Ledger.Utxo.du_produced_2894 (coe v0)
                              (coe MAlonzo.Code.Ledger.Utxo.d_pparams_2018 (coe v3)) (coe v4)
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
                                    (coe MAlonzo.Code.Ledger.Utxo.d_pparams_2018 (coe v3))))
                              (coe
                                 MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                                 (coe
                                    MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_74
                                    (MAlonzo.Code.Ledger.Utxo.d_refScriptsSize_2068
                                       (coe v0) (coe v1)
                                       (coe MAlonzo.Code.Ledger.Utxo.d_utxo_2032 (coe v4)) (coe v2))
                                    (MAlonzo.Code.Ledger.PParams.d_maxRefScriptSizePerTx_340
                                       (coe MAlonzo.Code.Ledger.Utxo.d_pparams_2018 (coe v3))))
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
                                                           MAlonzo.Code.Ledger.Utxo.du_utxoEntrySize_2004
                                                           (coe v0)
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                              (coe v5))))
                                                     (coe
                                                        MAlonzo.Code.Ledger.PParams.d_coinsPerUTxOByte_334
                                                        (coe
                                                           MAlonzo.Code.Ledger.Utxo.d_pparams_2018
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
                                                     MAlonzo.Code.Ledger.Abstract.d_serSize_1730 v1
                                                     (coe
                                                        MAlonzo.Code.Ledger.Transaction.du_getValue'688'_2656
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                           (coe v5))))
                                                  (MAlonzo.Code.Ledger.PParams.d_maxValSize_320
                                                     (coe
                                                        MAlonzo.Code.Ledger.Utxo.d_pparams_2018
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
                                                      MAlonzo.Code.Ledger.Utxo.du_'8799''63'_3096
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
                                                      MAlonzo.Code.Ledger.Utxo.du_'8799''63'_3096
                                                      (coe
                                                         MAlonzo.Code.Ledger.Transaction.d_curTreasury_2590
                                                         (coe
                                                            MAlonzo.Code.Ledger.Transaction.d_body_2632
                                                            (coe v2)))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Utxo.d_treasury_2020
                                                         (coe v3))
                                                      (coe
                                                         MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)))))))))))))))))
-- Ledger.Conway.Conformance.Utxo..generalizedField-tx
d_'46'generalizedField'45'tx_16877 ::
  T_GeneralizeTel_16885 -> MAlonzo.Code.Ledger.Transaction.T_Tx_2622
d_'46'generalizedField'45'tx_16877 v0
  = case coe v0 of
      C_mkGeneralizeTel_16887 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxo..generalizedField-Γ
d_'46'generalizedField'45'Γ_16879 ::
  T_GeneralizeTel_16885 -> MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_2008
d_'46'generalizedField'45'Γ_16879 v0
  = case coe v0 of
      C_mkGeneralizeTel_16887 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxo..generalizedField-s
d_'46'generalizedField'45's_16881 ::
  T_GeneralizeTel_16885 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_2022
d_'46'generalizedField'45's_16881 v0
  = case coe v0 of
      C_mkGeneralizeTel_16887 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxo..generalizedField-s'
d_'46'generalizedField'45's''_16883 ::
  T_GeneralizeTel_16885 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_2022
d_'46'generalizedField'45's''_16883 v0
  = case coe v0 of
      C_mkGeneralizeTel_16887 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxo.GeneralizeTel
d_GeneralizeTel_16885 a0 a1 = ()
data T_GeneralizeTel_16885
  = C_mkGeneralizeTel_16887 MAlonzo.Code.Ledger.Transaction.T_Tx_2622
                            MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_2008
                            MAlonzo.Code.Ledger.Utxo.T_UTxOState_2022
                            MAlonzo.Code.Ledger.Utxo.T_UTxOState_2022
