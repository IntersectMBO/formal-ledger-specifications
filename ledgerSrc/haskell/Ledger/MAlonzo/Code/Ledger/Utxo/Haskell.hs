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

module MAlonzo.Code.Ledger.Utxo.Haskell where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Axiom.Set
import qualified MAlonzo.Code.Axiom.Set.Map
import qualified MAlonzo.Code.Axiom.Set.Map.Dec
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Class.Decidable.Core
import qualified MAlonzo.Code.Data.Integer.Base
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.Nat.Properties
import qualified MAlonzo.Code.Data.Rational.Base
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Interface.IsCommutativeMonoid
import qualified MAlonzo.Code.Ledger.Abstract
import qualified MAlonzo.Code.Ledger.Address
import qualified MAlonzo.Code.Ledger.Certs
import qualified MAlonzo.Code.Ledger.Crypto
import qualified MAlonzo.Code.Ledger.GovernanceActions
import qualified MAlonzo.Code.Ledger.Interface.HasCoin
import qualified MAlonzo.Code.Ledger.PParams
import qualified MAlonzo.Code.Ledger.Script
import qualified MAlonzo.Code.Ledger.ScriptValidation
import qualified MAlonzo.Code.Ledger.Set.Theory
import qualified MAlonzo.Code.Ledger.TokenAlgebra
import qualified MAlonzo.Code.Ledger.Transaction
import qualified MAlonzo.Code.Ledger.Types.Epoch
import qualified MAlonzo.Code.Ledger.Types.GovStructure
import qualified MAlonzo.Code.Ledger.Utxo

-- _._≤ᵗ_
d__'8804''7511'__16 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny -> AgdaAny -> ()
d__'8804''7511'__16 = erased
-- _.DCert
d_DCert_70 a0 = ()
-- _.DepositPurpose
d_DepositPurpose_182 a0 = ()
-- _.Deposits
d_Deposits_184 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Deposits_184 = erased
-- _.GovProposal
d_GovProposal_218 a0 = ()
-- _.PParams
d_PParams_294 a0 = ()
-- _.Tx
d_Tx_400 a0 = ()
-- _.TxBody
d_TxBody_402 a0 = ()
-- _.coin
d_coin_464 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny -> Integer
d_coin_464 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_coin_204
      (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2104 (coe v0))
-- _.getValueʰ
d_getValue'688'_508 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_getValue'688'_508 ~v0 = du_getValue'688'_508
du_getValue'688'_508 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_getValue'688'_508
  = coe MAlonzo.Code.Ledger.Transaction.du_getValue'688'_2744
-- _.inject
d_inject_518 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  Integer -> AgdaAny
d_inject_518 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_inject_206
      (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2104 (coe v0))
-- _.netId
d_netId_556 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
d_netId_556 ~v0 = du_netId_556
du_netId_556 :: MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
du_netId_556 = coe MAlonzo.Code.Ledger.Address.du_netId_106
-- _.txOutHash
d_txOutHash_620 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txOutHash_620 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txOutHash_2734 (coe v0)
-- Ledger.Utxo.Haskell._._*↓_
d__'42''8595'__1578 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1586 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 -> Integer -> Integer
d__'42''8595'__1578 ~v0 v1 v2 = du__'42''8595'__1578 v1 v2
du__'42''8595'__1578 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 -> Integer -> Integer
du__'42''8595'__1578 v0 v1
  = coe
      MAlonzo.Code.Data.Integer.Base.d_'8739'_'8739'_18
      (coe
         MAlonzo.Code.Data.Rational.Base.d_floor_346
         (coe
            MAlonzo.Code.Data.Rational.Base.d__'42'__276 (coe v0)
            (coe
               MAlonzo.Code.Data.Rational.Base.du__'47'__156 (coe v1)
               (coe (1 :: Integer)))))
-- Ledger.Utxo.Haskell._._=>ᵇ_
d__'61''62''7495'__1580 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1586 ->
  Bool -> Bool -> Bool
d__'61''62''7495'__1580 ~v0 ~v1 = du__'61''62''7495'__1580
du__'61''62''7495'__1580 :: Bool -> Bool -> Bool
du__'61''62''7495'__1580
  = coe MAlonzo.Code.Ledger.Utxo.du__'61''62''7495'__2144
-- Ledger.Utxo.Haskell._._≡?_
d__'8801''63'__1582 a0 a1 a2 a3 a4 = ()
-- Ledger.Utxo.Haskell._._≤ᵇ_
d__'8804''7495'__1584 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1586 ->
  Integer -> Integer -> Bool
d__'8804''7495'__1584 ~v0 ~v1 = du__'8804''7495'__1584
du__'8804''7495'__1584 :: Integer -> Integer -> Bool
du__'8804''7495'__1584
  = coe MAlonzo.Code.Ledger.Utxo.du__'8804''7495'__2150
-- Ledger.Utxo.Haskell._._≥ᵇ_
d__'8805''7495'__1586 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1586 ->
  Integer -> Integer -> Bool
d__'8805''7495'__1586 ~v0 ~v1 = du__'8805''7495'__1586
du__'8805''7495'__1586 :: Integer -> Integer -> Bool
du__'8805''7495'__1586
  = coe MAlonzo.Code.Ledger.Utxo.du__'8805''7495'__2152
-- Ledger.Utxo.Haskell._.Dec-inInterval
d_Dec'45'inInterval_1588 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1586 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'inInterval_1588 v0 ~v1 = du_Dec'45'inInterval_1588 v0
du_Dec'45'inInterval_1588 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'inInterval_1588 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_Dec'45'inInterval_2038 (coe v0)
-- Ledger.Utxo.Haskell._.HasCoin-Map
d_HasCoin'45'Map_1590 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1586 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
d_HasCoin'45'Map_1590 ~v0 ~v1 = du_HasCoin'45'Map_1590
du_HasCoin'45'Map_1590 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
du_HasCoin'45'Map_1590 v0 v1
  = coe MAlonzo.Code.Ledger.Utxo.du_HasCoin'45'Map_1684 v1
-- Ledger.Utxo.Haskell._.HasCoin-UTxO
d_HasCoin'45'UTxO_1592 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1586 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
d_HasCoin'45'UTxO_1592 v0 ~v1 = du_HasCoin'45'UTxO_1592 v0
du_HasCoin'45'UTxO_1592 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
du_HasCoin'45'UTxO_1592 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_HasCoin'45'UTxO_1856 (coe v0)
-- Ledger.Utxo.Haskell._.HasCoin-UTxOState
d_HasCoin'45'UTxOState_1594 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1586 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
d_HasCoin'45'UTxOState_1594 v0 ~v1
  = du_HasCoin'45'UTxOState_1594 v0
du_HasCoin'45'UTxOState_1594 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
du_HasCoin'45'UTxOState_1594 v0
  = coe
      MAlonzo.Code.Ledger.Utxo.du_HasCoin'45'UTxOState_2140 (coe v0)
-- Ledger.Utxo.Haskell._.Scripts-No-premises
d_Scripts'45'No'45'premises_1598 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1586 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1786 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1800 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2710 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_Scripts'45'No'45'premises_1598 v0 v1
  = coe
      MAlonzo.Code.Ledger.Utxo.d_Scripts'45'No'45'premises_2522 (coe v0)
      (coe v1)
-- Ledger.Utxo.Haskell._.Scripts-Yes-premises
d_Scripts'45'Yes'45'premises_1602 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1586 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1786 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1800 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2710 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_Scripts'45'Yes'45'premises_1602 v0 v1
  = coe
      MAlonzo.Code.Ledger.Utxo.d_Scripts'45'Yes'45'premises_2520 (coe v0)
      (coe v1)
-- Ledger.Utxo.Haskell._.UTXO-premises
d_UTXO'45'premises_1606 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1586 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2710 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1786 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1800 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTXO'45'premises_1606 v0 v1
  = coe
      MAlonzo.Code.Ledger.Utxo.d_UTXO'45'premises_2708 (coe v0) (coe v1)
-- Ledger.Utxo.Haskell._.UTxOEnv
d_UTxOEnv_1608 a0 a1 = ()
-- Ledger.Utxo.Haskell._.UTxOState
d_UTxOState_1610 a0 a1 = ()
-- Ledger.Utxo.Haskell._.balance
d_balance_1612 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1586 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_balance_1612 v0 ~v1 = du_balance_1612 v0
du_balance_1612 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_balance_1612 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_balance_1836 (coe v0)
-- Ledger.Utxo.Haskell._.cbalance
d_cbalance_1616 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1586 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_cbalance_1616 v0 ~v1 = du_cbalance_1616 v0
du_cbalance_1616 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_cbalance_1616 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_cbalance_1842 (coe v0)
-- Ledger.Utxo.Haskell._.certRefund
d_certRefund_1618 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1586 ->
  MAlonzo.Code.Ledger.Certs.T_DCert_788 ->
  [MAlonzo.Code.Ledger.Certs.T_DepositPurpose_768]
d_certRefund_1618 ~v0 ~v1 = du_certRefund_1618
du_certRefund_1618 ::
  MAlonzo.Code.Ledger.Certs.T_DCert_788 ->
  [MAlonzo.Code.Ledger.Certs.T_DepositPurpose_768]
du_certRefund_1618
  = coe MAlonzo.Code.Ledger.Utxo.du_certRefund_1872
-- Ledger.Utxo.Haskell._.coinPolicies
d_coinPolicies_1620 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1586 -> [AgdaAny]
d_coinPolicies_1620 v0 ~v1 = du_coinPolicies_1620 v0
du_coinPolicies_1620 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  [AgdaAny]
du_coinPolicies_1620 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_coinPolicies_2168 (coe v0)
-- Ledger.Utxo.Haskell._.consumed
d_consumed_1622 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1586 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_228 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1800 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2608 -> AgdaAny
d_consumed_1622 v0 ~v1 = du_consumed_1622 v0
du_consumed_1622 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_228 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1800 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2608 -> AgdaAny
du_consumed_1622 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_consumed_2342 (coe v0)
-- Ledger.Utxo.Haskell._.depositRefunds
d_depositRefunds_1624 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1586 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_228 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1800 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2608 -> Integer
d_depositRefunds_1624 v0 ~v1 = du_depositRefunds_1624 v0
du_depositRefunds_1624 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_228 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1800 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2608 -> Integer
du_depositRefunds_1624 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_depositRefunds_2326 (coe v0)
-- Ledger.Utxo.Haskell._.depositsChange
d_depositsChange_1626 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1586 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_228 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2608 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_depositsChange_1626 v0 ~v1 = du_depositsChange_1626 v0
du_depositsChange_1626 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_228 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2608 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_depositsChange_1626 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_depositsChange_2008 (coe v0)
-- Ledger.Utxo.Haskell._.feesOK
d_feesOK_1628 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1586 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_228 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2710 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Bool
d_feesOK_1628 v0 v1
  = coe MAlonzo.Code.Ledger.Utxo.d_feesOK_2174 (coe v0) (coe v1)
-- Ledger.Utxo.Haskell._.getDataHashes
d_getDataHashes_1630 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1586 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> [AgdaAny]
d_getDataHashes_1630 ~v0 ~v1 = du_getDataHashes_1630
du_getDataHashes_1630 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> [AgdaAny]
du_getDataHashes_1630
  = coe MAlonzo.Code.Ledger.Utxo.du_getDataHashes_1708
-- Ledger.Utxo.Haskell._.getInputHashes
d_getInputHashes_1632 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1586 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2710 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
d_getInputHashes_1632 v0 ~v1 = du_getInputHashes_1632 v0
du_getInputHashes_1632 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2710 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
du_getInputHashes_1632 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_getInputHashes_1712 (coe v0)
-- Ledger.Utxo.Haskell._.inInterval
d_inInterval_1634 a0 a1 a2 a3 = ()
-- Ledger.Utxo.Haskell._.isAdaOnlyᵇ
d_isAdaOnly'7495'_1636 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1586 ->
  AgdaAny -> Bool
d_isAdaOnly'7495'_1636 v0 ~v1 = du_isAdaOnly'7495'_1636 v0
du_isAdaOnly'7495'_1636 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny -> Bool
du_isAdaOnly'7495'_1636 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_isAdaOnly'7495'_2170 (coe v0)
-- Ledger.Utxo.Haskell._.isTwoPhaseScriptAddress
d_isTwoPhaseScriptAddress_1638 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1586 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2710 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Bool
d_isTwoPhaseScriptAddress_1638 v0 ~v1
  = du_isTwoPhaseScriptAddress_1638 v0
du_isTwoPhaseScriptAddress_1638 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2710 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Bool
du_isTwoPhaseScriptAddress_1638 v0
  = coe
      MAlonzo.Code.Ledger.Utxo.du_isTwoPhaseScriptAddress_1696 (coe v0)
-- Ledger.Utxo.Haskell._.minfee
d_minfee_1642 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1586 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_228 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2710 -> Integer
d_minfee_1642 v0 v1
  = coe MAlonzo.Code.Ledger.Utxo.d_minfee_1846 (coe v0) (coe v1)
-- Ledger.Utxo.Haskell._.newDeposits
d_newDeposits_1644 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1586 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_228 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1800 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2608 -> Integer
d_newDeposits_1644 v0 ~v1 = du_newDeposits_1644 v0
du_newDeposits_1644 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_228 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1800 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2608 -> Integer
du_newDeposits_1644 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_newDeposits_2334 (coe v0)
-- Ledger.Utxo.Haskell._.outs
d_outs_1648 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1586 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2608 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_outs_1648 ~v0 ~v1 = du_outs_1648
du_outs_1648 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2608 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_outs_1648 = coe MAlonzo.Code.Ledger.Utxo.du_outs_1830
-- Ledger.Utxo.Haskell._.produced
d_produced_1650 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1586 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_228 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1800 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2608 -> AgdaAny
d_produced_1650 v0 ~v1 = du_produced_1650 v0
du_produced_1650 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_228 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1800 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2608 -> AgdaAny
du_produced_1650 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_produced_2350 (coe v0)
-- Ledger.Utxo.Haskell._.proposalDepositsΔ
d_proposalDepositsΔ_1652 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1586 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_708] ->
  MAlonzo.Code.Ledger.PParams.T_PParams_228 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2608 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_proposalDepositsΔ_1652 v0 ~v1 = du_proposalDepositsΔ_1652 v0
du_proposalDepositsΔ_1652 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_708] ->
  MAlonzo.Code.Ledger.PParams.T_PParams_228 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2608 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_proposalDepositsΔ_1652 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_proposalDepositsΔ_1954 (coe v0)
-- Ledger.Utxo.Haskell._.totExUnits
d_totExUnits_1654 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1586 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2710 -> AgdaAny
d_totExUnits_1654 v0 ~v1 = du_totExUnits_1654 v0
du_totExUnits_1654 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2710 -> AgdaAny
du_totExUnits_1654 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_totExUnits_1768 (coe v0)
-- Ledger.Utxo.Haskell._.utxoEntrySize
d_utxoEntrySize_1658 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1586 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_utxoEntrySize_1658 v0 ~v1 = du_utxoEntrySize_1658 v0
du_utxoEntrySize_1658 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_utxoEntrySize_1658 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_utxoEntrySize_1782 (coe v0)
-- Ledger.Utxo.Haskell._.utxoEntrySizeWithoutVal
d_utxoEntrySizeWithoutVal_1660 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1586 -> Integer
d_utxoEntrySizeWithoutVal_1660 ~v0 ~v1
  = du_utxoEntrySizeWithoutVal_1660
du_utxoEntrySizeWithoutVal_1660 :: Integer
du_utxoEntrySizeWithoutVal_1660
  = coe MAlonzo.Code.Ledger.Utxo.du_utxoEntrySizeWithoutVal_1780
-- Ledger.Utxo.Haskell._.≟-∅ᵇ
d_'8799''45''8709''7495'_1662 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1586 ->
  () -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> [AgdaAny] -> Bool
d_'8799''45''8709''7495'_1662 ~v0 ~v1
  = du_'8799''45''8709''7495'_1662
du_'8799''45''8709''7495'_1662 ::
  () -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> [AgdaAny] -> Bool
du_'8799''45''8709''7495'_1662 v0 v1 v2
  = coe MAlonzo.Code.Ledger.Utxo.du_'8799''45''8709''7495'_2164 v1 v2
-- Ledger.Utxo.Haskell._.≟?
d_'8799''63'_1664 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1586 ->
  () ->
  Maybe AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_'8799''63'_1664 ~v0 ~v1 = du_'8799''63'_1664
du_'8799''63'_1664 ::
  () ->
  Maybe AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_'8799''63'_1664 v0 v1 v2 v3
  = coe MAlonzo.Code.Ledger.Utxo.du_'8799''63'_2552 v1 v2 v3
-- Ledger.Utxo.Haskell._.UTxOEnv.pparams
d_pparams_1680 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1786 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_228
d_pparams_1680 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_pparams_1796 (coe v0)
-- Ledger.Utxo.Haskell._.UTxOEnv.slot
d_slot_1682 :: MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1786 -> AgdaAny
d_slot_1682 v0 = coe MAlonzo.Code.Ledger.Utxo.d_slot_1794 (coe v0)
-- Ledger.Utxo.Haskell._.UTxOEnv.treasury
d_treasury_1684 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1786 -> Integer
d_treasury_1684 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_treasury_1798 (coe v0)
-- Ledger.Utxo.Haskell._.UTxOState.deposits
d_deposits_1688 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1800 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_1688 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_deposits_1814 (coe v0)
-- Ledger.Utxo.Haskell._.UTxOState.donations
d_donations_1690 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1800 -> Integer
d_donations_1690 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_donations_1816 (coe v0)
-- Ledger.Utxo.Haskell._.UTxOState.fees
d_fees_1692 :: MAlonzo.Code.Ledger.Utxo.T_UTxOState_1800 -> Integer
d_fees_1692 v0 = coe MAlonzo.Code.Ledger.Utxo.d_fees_1812 (coe v0)
-- Ledger.Utxo.Haskell._.UTxOState.utxo
d_utxo_1694 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1800 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_1694 v0 = coe MAlonzo.Code.Ledger.Utxo.d_utxo_1810 (coe v0)
-- Ledger.Utxo.Haskell.certDepositUtxo
d_certDepositUtxo_1706 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1586 ->
  MAlonzo.Code.Ledger.Certs.T_DCert_788 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_228 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_certDepositUtxo_1706 ~v0 ~v1 v2 v3
  = du_certDepositUtxo_1706 v2 v3
du_certDepositUtxo_1706 ::
  MAlonzo.Code.Ledger.Certs.T_DCert_788 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_228 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_certDepositUtxo_1706 v0 v1
  = let v2
          = coe
              MAlonzo.Code.Axiom.Set.Map.du_'8709''7504'_562
              (coe
                 MAlonzo.Code.Axiom.Set.d_th_1430
                 (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)) in
    coe
      (case coe v0 of
         MAlonzo.Code.Ledger.Certs.C_regpool_794 v3 v4
           -> coe
                MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_730
                (coe
                   MAlonzo.Code.Axiom.Set.d_th_1430
                   (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                   (coe MAlonzo.Code.Ledger.Certs.C_PoolDeposit_772 (coe v3))
                   (coe MAlonzo.Code.Ledger.PParams.d_poolDeposit_310 (coe v1)))
         _ -> coe v2)
-- Ledger.Utxo.Haskell.updateCertDepositsUtxo
d_updateCertDepositsUtxo_1712 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1586 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_228 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_788] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateCertDepositsUtxo_1712 v0 ~v1 v2 v3 v4
  = du_updateCertDepositsUtxo_1712 v0 v2 v3 v4
du_updateCertDepositsUtxo_1712 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_228 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_788] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateCertDepositsUtxo_1712 v0 v1 v2 v3
  = case coe v2 of
      [] -> coe v3
      (:) v4 v5
        -> coe
             MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__494
             MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
             (coe
                MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
                (coe
                   MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3204))
             (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_780
                (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2222 (coe v0)))
             (coe
                du_updateCertDepositsUtxo_1712 (coe v0) (coe v1) (coe v5) (coe v3))
             (coe du_certDepositUtxo_1706 (coe v4) (coe v1))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo.Haskell.updateProposalDeposits
d_updateProposalDeposits_1724 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1586 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_708] ->
  AgdaAny ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateProposalDeposits_1724 v0 ~v1 v2 v3 v4 v5
  = du_updateProposalDeposits_1724 v0 v2 v3 v4 v5
du_updateProposalDeposits_1724 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_708] ->
  AgdaAny ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateProposalDeposits_1724 v0 v1 v2 v3 v4
  = case coe v1 of
      [] -> coe v4
      (:) v5 v6
        -> coe
             MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__494
             MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
             (coe
                MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
                (coe
                   MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3204))
             (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_780
                (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2222 (coe v0)))
             (coe
                du_updateProposalDeposits_1724 (coe v0) (coe v6) (coe v2) (coe v3)
                (coe v4))
             (coe
                MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_730
                (coe
                   MAlonzo.Code.Axiom.Set.d_th_1430
                   (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                   (coe
                      MAlonzo.Code.Ledger.Certs.C_GovActionDeposit_776
                      (coe
                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v2)
                         (coe MAlonzo.Code.Data.List.Base.du_length_304 v6)))
                   (coe v3)))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo.Haskell.updateDeposits
d_updateDeposits_1736 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1586 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_228 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2608 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateDeposits_1736 v0 ~v1 v2 v3 v4
  = du_updateDeposits_1736 v0 v2 v3 v4
du_updateDeposits_1736 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_228 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2608 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateDeposits_1736 v0 v1 v2 v3
  = coe
      du_updateCertDepositsUtxo_1712 (coe v0) (coe v1)
      (coe MAlonzo.Code.Ledger.Transaction.d_txcerts_2662 (coe v2))
      (coe
         du_updateProposalDeposits_1724 (coe v0)
         (coe MAlonzo.Code.Ledger.Transaction.d_txprop_2668 (coe v2))
         (coe MAlonzo.Code.Ledger.Transaction.d_txid_2682 (coe v2))
         (coe MAlonzo.Code.Ledger.PParams.d_govActionDeposit_340 (coe v1))
         (coe v3))
-- Ledger.Utxo.Haskell._.collectPhaseTwoScriptInputs
d_collectPhaseTwoScriptInputs_1814 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1586 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_228 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2710 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collectPhaseTwoScriptInputs_1814 v0 v1
  = coe
      MAlonzo.Code.Ledger.ScriptValidation.d_collectPhaseTwoScriptInputs_2206
      (coe v0) (coe v1)
-- Ledger.Utxo.Haskell._.evalScripts
d_evalScripts_1824 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1586 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2710 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Bool
d_evalScripts_1824 v0 v1
  = coe
      MAlonzo.Code.Ledger.ScriptValidation.d_evalScripts_2224 (coe v0)
      (coe v1)
-- Ledger.Utxo.Haskell._⊢_⇀⦇_,UTXOS⦈_
d__'8866'_'8640''10631'_'44'UTXOS'10632'__1902 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'UTXOS'10632'__1902
  = C_Scripts'45'Yes_1982 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_Scripts'45'No_2062 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- _⊢_⇀⦇_,UTXOS⦈_
d__'8866'_'8640''10631'_'44'UTXOS'10632'__1909 a0 a1 a2 a3 a4 a5
  = ()
-- _⊢_⇀⦇_,UTXO⦈_
d__'8866'_'8640''10631'_'44'UTXO'10632'__1911 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Utxo.Haskell._.txdonation
d_txdonation_1940 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1586 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1786 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1800 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2710 -> Integer
d_txdonation_1940 ~v0 ~v1 ~v2 v3 = du_txdonation_1940 v3
du_txdonation_1940 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2710 -> Integer
du_txdonation_1940 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txdonation_2670
      (coe MAlonzo.Code.Ledger.Transaction.d_body_2720 (coe v0))
-- Ledger.Utxo.Haskell._.txfee
d_txfee_1942 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1586 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1786 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1800 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2710 -> Integer
d_txfee_1942 ~v0 ~v1 ~v2 v3 = du_txfee_1942 v3
du_txfee_1942 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2710 -> Integer
du_txfee_1942 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txfee_2656
      (coe MAlonzo.Code.Ledger.Transaction.d_body_2720 (coe v0))
-- Ledger.Utxo.Haskell._.txins
d_txins_1946 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1586 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1786 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1800 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2710 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txins_1946 ~v0 ~v1 ~v2 v3 = du_txins_1946 v3
du_txins_1946 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2710 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_txins_1946 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txins_2650
      (coe MAlonzo.Code.Ledger.Transaction.d_body_2720 (coe v0))
-- Ledger.Utxo.Haskell._.pparams
d_pparams_1964 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1586 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1786 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1800 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2710 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_228
d_pparams_1964 ~v0 v1 ~v2 ~v3 = du_pparams_1964 v1
du_pparams_1964 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1786 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_228
du_pparams_1964 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_pparams_1796 (coe v0)
-- Ledger.Utxo.Haskell._.deposits
d_deposits_1972 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1586 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1786 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1800 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2710 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_1972 ~v0 ~v1 v2 ~v3 = du_deposits_1972 v2
du_deposits_1972 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1800 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_deposits_1972 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_deposits_1814 (coe v0)
-- Ledger.Utxo.Haskell._.donations
d_donations_1974 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1586 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1786 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1800 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2710 -> Integer
d_donations_1974 ~v0 ~v1 v2 ~v3 = du_donations_1974 v2
du_donations_1974 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1800 -> Integer
du_donations_1974 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_donations_1816 (coe v0)
-- Ledger.Utxo.Haskell._.fees
d_fees_1976 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1586 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1786 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1800 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2710 -> Integer
d_fees_1976 ~v0 ~v1 v2 ~v3 = du_fees_1976 v2
du_fees_1976 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1800 -> Integer
du_fees_1976 v0 = coe MAlonzo.Code.Ledger.Utxo.d_fees_1812 (coe v0)
-- Ledger.Utxo.Haskell._.utxo
d_utxo_1978 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1586 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1786 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1800 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2710 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_1978 ~v0 ~v1 v2 ~v3 = du_utxo_1978 v2
du_utxo_1978 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1800 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxo_1978 v0 = coe MAlonzo.Code.Ledger.Utxo.d_utxo_1810 (coe v0)
-- Ledger.Utxo.Haskell._.collateral
d_collateral_2002 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1586 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1786 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1800 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2710 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateral_2002 ~v0 ~v1 ~v2 v3 = du_collateral_2002 v3
du_collateral_2002 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2710 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_collateral_2002 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_collateral_2684
      (coe MAlonzo.Code.Ledger.Transaction.d_body_2720 (coe v0))
-- Ledger.Utxo.Haskell._.pparams
d_pparams_2044 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1586 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1786 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1800 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2710 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_228
d_pparams_2044 ~v0 v1 ~v2 ~v3 = du_pparams_2044 v1
du_pparams_2044 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1786 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_228
du_pparams_2044 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_pparams_1796 (coe v0)
-- Ledger.Utxo.Haskell._.deposits
d_deposits_2052 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1586 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1786 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1800 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2710 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_2052 ~v0 ~v1 v2 ~v3 = du_deposits_2052 v2
du_deposits_2052 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1800 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_deposits_2052 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_deposits_1814 (coe v0)
-- Ledger.Utxo.Haskell._.donations
d_donations_2054 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1586 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1786 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1800 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2710 -> Integer
d_donations_2054 ~v0 ~v1 v2 ~v3 = du_donations_2054 v2
du_donations_2054 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1800 -> Integer
du_donations_2054 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_donations_1816 (coe v0)
-- Ledger.Utxo.Haskell._.fees
d_fees_2056 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1586 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1786 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1800 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2710 -> Integer
d_fees_2056 ~v0 ~v1 v2 ~v3 = du_fees_2056 v2
du_fees_2056 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1800 -> Integer
du_fees_2056 v0 = coe MAlonzo.Code.Ledger.Utxo.d_fees_1812 (coe v0)
-- Ledger.Utxo.Haskell._.utxo
d_utxo_2058 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1586 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1786 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1800 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2710 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2058 ~v0 ~v1 v2 ~v3 = du_utxo_2058 v2
du_utxo_2058 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1800 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxo_2058 v0 = coe MAlonzo.Code.Ledger.Utxo.d_utxo_1810 (coe v0)
-- Ledger.Utxo.Haskell._⊢_⇀⦇_,UTXO⦈_
d__'8866'_'8640''10631'_'44'UTXO'10632'__2064 a0 a1 a2 a3 a4 a5
  = ()
newtype T__'8866'_'8640''10631'_'44'UTXO'10632'__2064
  = C_UTXO'45'inductive_2158 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Utxo.Haskell._.body
d_body_2072 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1586 ->
  T_GeneralizeTel_13043 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2608
d_body_2072 ~v0 ~v1 v2 = du_body_2072 v2
du_body_2072 ::
  T_GeneralizeTel_13043 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2608
du_body_2072 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_body_2720
      (coe d_'46'generalizedField'45'tx_13035 v0)
-- Ledger.Utxo.Haskell._.curTreasury
d_curTreasury_2080 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1586 ->
  T_GeneralizeTel_13043 -> Maybe Integer
d_curTreasury_2080 ~v0 ~v1 v2 = du_curTreasury_2080 v2
du_curTreasury_2080 :: T_GeneralizeTel_13043 -> Maybe Integer
du_curTreasury_2080 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_curTreasury_2678
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2720
         (coe d_'46'generalizedField'45'tx_13035 v0))
-- Ledger.Utxo.Haskell._.mint
d_mint_2082 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1586 ->
  T_GeneralizeTel_13043 -> AgdaAny
d_mint_2082 ~v0 ~v1 v2 = du_mint_2082 v2
du_mint_2082 :: T_GeneralizeTel_13043 -> AgdaAny
du_mint_2082 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_mint_2658
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2720
         (coe d_'46'generalizedField'45'tx_13035 v0))
-- Ledger.Utxo.Haskell._.refInputs
d_refInputs_2084 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1586 ->
  T_GeneralizeTel_13043 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_2084 ~v0 ~v1 v2 = du_refInputs_2084 v2
du_refInputs_2084 ::
  T_GeneralizeTel_13043 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_refInputs_2084 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_refInputs_2652
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2720
         (coe d_'46'generalizedField'45'tx_13035 v0))
-- Ledger.Utxo.Haskell._.txNetworkId
d_txNetworkId_2092 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1586 ->
  T_GeneralizeTel_13043 -> Maybe AgdaAny
d_txNetworkId_2092 ~v0 ~v1 v2 = du_txNetworkId_2092 v2
du_txNetworkId_2092 :: T_GeneralizeTel_13043 -> Maybe AgdaAny
du_txNetworkId_2092 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txNetworkId_2676
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2720
         (coe d_'46'generalizedField'45'tx_13035 v0))
-- Ledger.Utxo.Haskell._.txins
d_txins_2102 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1586 ->
  T_GeneralizeTel_13043 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txins_2102 ~v0 ~v1 v2 = du_txins_2102 v2
du_txins_2102 ::
  T_GeneralizeTel_13043 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_txins_2102 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txins_2650
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2720
         (coe d_'46'generalizedField'45'tx_13035 v0))
-- Ledger.Utxo.Haskell._.txouts
d_txouts_2104 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1586 ->
  T_GeneralizeTel_13043 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txouts_2104 ~v0 ~v1 v2 = du_txouts_2104 v2
du_txouts_2104 ::
  T_GeneralizeTel_13043 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txouts_2104 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txouts_2654
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2720
         (coe d_'46'generalizedField'45'tx_13035 v0))
-- Ledger.Utxo.Haskell._.txsize
d_txsize_2108 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1586 ->
  T_GeneralizeTel_13043 -> Integer
d_txsize_2108 ~v0 ~v1 v2 = du_txsize_2108 v2
du_txsize_2108 :: T_GeneralizeTel_13043 -> Integer
du_txsize_2108 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txsize_2680
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2720
         (coe d_'46'generalizedField'45'tx_13035 v0))
-- Ledger.Utxo.Haskell._.txvldt
d_txvldt_2112 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1586 ->
  T_GeneralizeTel_13043 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txvldt_2112 ~v0 ~v1 v2 = du_txvldt_2112 v2
du_txvldt_2112 ::
  T_GeneralizeTel_13043 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txvldt_2112 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txvldt_2660
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2720
         (coe d_'46'generalizedField'45'tx_13035 v0))
-- Ledger.Utxo.Haskell._.txwdrls
d_txwdrls_2116 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1586 ->
  T_GeneralizeTel_13043 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_2116 ~v0 ~v1 v2 = du_txwdrls_2116 v2
du_txwdrls_2116 ::
  T_GeneralizeTel_13043 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txwdrls_2116 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txwdrls_2664
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2720
         (coe d_'46'generalizedField'45'tx_13035 v0))
-- Ledger.Utxo.Haskell._.pparams
d_pparams_2120 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1586 ->
  T_GeneralizeTel_13043 -> MAlonzo.Code.Ledger.PParams.T_PParams_228
d_pparams_2120 ~v0 ~v1 v2 = du_pparams_2120 v2
du_pparams_2120 ::
  T_GeneralizeTel_13043 -> MAlonzo.Code.Ledger.PParams.T_PParams_228
du_pparams_2120 v0
  = coe
      MAlonzo.Code.Ledger.Utxo.d_pparams_1796
      (coe d_'46'generalizedField'45'Γ_13037 v0)
-- Ledger.Utxo.Haskell._.slot
d_slot_2122 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1586 ->
  T_GeneralizeTel_13043 -> AgdaAny
d_slot_2122 ~v0 ~v1 v2 = du_slot_2122 v2
du_slot_2122 :: T_GeneralizeTel_13043 -> AgdaAny
du_slot_2122 v0
  = coe
      MAlonzo.Code.Ledger.Utxo.d_slot_1794
      (coe d_'46'generalizedField'45'Γ_13037 v0)
-- Ledger.Utxo.Haskell._.treasury
d_treasury_2124 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1586 ->
  T_GeneralizeTel_13043 -> Integer
d_treasury_2124 ~v0 ~v1 v2 = du_treasury_2124 v2
du_treasury_2124 :: T_GeneralizeTel_13043 -> Integer
du_treasury_2124 v0
  = coe
      MAlonzo.Code.Ledger.Utxo.d_treasury_1798
      (coe d_'46'generalizedField'45'Γ_13037 v0)
-- Ledger.Utxo.Haskell._.utxo
d_utxo_2134 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1586 ->
  T_GeneralizeTel_13043 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2134 ~v0 ~v1 v2 = du_utxo_2134 v2
du_utxo_2134 ::
  T_GeneralizeTel_13043 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxo_2134 v0
  = coe
      MAlonzo.Code.Ledger.Utxo.d_utxo_1810
      (coe d_'46'generalizedField'45's_13039 v0)
-- Ledger.Utxo.Haskell..generalizedField-tx
d_'46'generalizedField'45'tx_13035 ::
  T_GeneralizeTel_13043 -> MAlonzo.Code.Ledger.Transaction.T_Tx_2710
d_'46'generalizedField'45'tx_13035
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo.Haskell..generalizedField-Γ
d_'46'generalizedField'45'Γ_13037 ::
  T_GeneralizeTel_13043 -> MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1786
d_'46'generalizedField'45'Γ_13037 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo.Haskell..generalizedField-s
d_'46'generalizedField'45's_13039 ::
  T_GeneralizeTel_13043 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1800
d_'46'generalizedField'45's_13039 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo.Haskell..generalizedField-s'
d_'46'generalizedField'45's''_13041 ::
  T_GeneralizeTel_13043 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1800
d_'46'generalizedField'45's''_13041
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo.Haskell.GeneralizeTel
d_GeneralizeTel_13043 a0 a1 = ()
data T_GeneralizeTel_13043
  = C_mkGeneralizeTel_13045 MAlonzo.Code.Ledger.Transaction.T_Tx_2710
                            MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1786
                            MAlonzo.Code.Ledger.Utxo.T_UTxOState_1800
                            MAlonzo.Code.Ledger.Utxo.T_UTxOState_1800
