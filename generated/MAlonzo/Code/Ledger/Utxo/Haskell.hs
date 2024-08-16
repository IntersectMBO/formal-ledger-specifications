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
      (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2112 (coe v0))
-- _.getValueʰ
d_getValue'688'_508 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_getValue'688'_508 ~v0 = du_getValue'688'_508
du_getValue'688'_508 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_getValue'688'_508
  = coe MAlonzo.Code.Ledger.Transaction.du_getValue'688'_2752
-- _.inject
d_inject_518 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  Integer -> AgdaAny
d_inject_518 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_inject_206
      (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2112 (coe v0))
-- _.netId
d_netId_560 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
d_netId_560 ~v0 = du_netId_560
du_netId_560 :: MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
du_netId_560 = coe MAlonzo.Code.Ledger.Address.du_netId_112
-- _.txOutHash
d_txOutHash_624 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txOutHash_624 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txOutHash_2742 (coe v0)
-- Ledger.Utxo.Haskell._._*↓_
d__'42''8595'__1582 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1590 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 -> Integer -> Integer
d__'42''8595'__1582 ~v0 v1 v2 = du__'42''8595'__1582 v1 v2
du__'42''8595'__1582 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 -> Integer -> Integer
du__'42''8595'__1582 v0 v1
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
d__'61''62''7495'__1584 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1590 ->
  Bool -> Bool -> Bool
d__'61''62''7495'__1584 ~v0 ~v1 = du__'61''62''7495'__1584
du__'61''62''7495'__1584 :: Bool -> Bool -> Bool
du__'61''62''7495'__1584
  = coe MAlonzo.Code.Ledger.Utxo.du__'61''62''7495'__2148
-- Ledger.Utxo.Haskell._._≡?_
d__'8801''63'__1586 a0 a1 a2 a3 a4 = ()
-- Ledger.Utxo.Haskell._._≤ᵇ_
d__'8804''7495'__1588 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1590 ->
  Integer -> Integer -> Bool
d__'8804''7495'__1588 ~v0 ~v1 = du__'8804''7495'__1588
du__'8804''7495'__1588 :: Integer -> Integer -> Bool
du__'8804''7495'__1588
  = coe MAlonzo.Code.Ledger.Utxo.du__'8804''7495'__2154
-- Ledger.Utxo.Haskell._._≥ᵇ_
d__'8805''7495'__1590 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1590 ->
  Integer -> Integer -> Bool
d__'8805''7495'__1590 ~v0 ~v1 = du__'8805''7495'__1590
du__'8805''7495'__1590 :: Integer -> Integer -> Bool
du__'8805''7495'__1590
  = coe MAlonzo.Code.Ledger.Utxo.du__'8805''7495'__2156
-- Ledger.Utxo.Haskell._.Dec-inInterval
d_Dec'45'inInterval_1592 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1590 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'inInterval_1592 v0 ~v1 = du_Dec'45'inInterval_1592 v0
du_Dec'45'inInterval_1592 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'inInterval_1592 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_Dec'45'inInterval_2042 (coe v0)
-- Ledger.Utxo.Haskell._.HasCoin-Map
d_HasCoin'45'Map_1594 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1590 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
d_HasCoin'45'Map_1594 ~v0 ~v1 = du_HasCoin'45'Map_1594
du_HasCoin'45'Map_1594 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
du_HasCoin'45'Map_1594 v0 v1
  = coe MAlonzo.Code.Ledger.Utxo.du_HasCoin'45'Map_1688 v1
-- Ledger.Utxo.Haskell._.HasCoin-UTxO
d_HasCoin'45'UTxO_1596 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1590 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
d_HasCoin'45'UTxO_1596 v0 ~v1 = du_HasCoin'45'UTxO_1596 v0
du_HasCoin'45'UTxO_1596 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
du_HasCoin'45'UTxO_1596 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_HasCoin'45'UTxO_1860 (coe v0)
-- Ledger.Utxo.Haskell._.HasCoin-UTxOState
d_HasCoin'45'UTxOState_1598 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1590 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
d_HasCoin'45'UTxOState_1598 v0 ~v1
  = du_HasCoin'45'UTxOState_1598 v0
du_HasCoin'45'UTxOState_1598 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
du_HasCoin'45'UTxOState_1598 v0
  = coe
      MAlonzo.Code.Ledger.Utxo.du_HasCoin'45'UTxOState_2144 (coe v0)
-- Ledger.Utxo.Haskell._.Scripts-No-premises
d_Scripts'45'No'45'premises_1602 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1590 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1790 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1804 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2718 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_Scripts'45'No'45'premises_1602 v0 v1
  = coe
      MAlonzo.Code.Ledger.Utxo.d_Scripts'45'No'45'premises_2526 (coe v0)
      (coe v1)
-- Ledger.Utxo.Haskell._.Scripts-Yes-premises
d_Scripts'45'Yes'45'premises_1606 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1590 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1790 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1804 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2718 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_Scripts'45'Yes'45'premises_1606 v0 v1
  = coe
      MAlonzo.Code.Ledger.Utxo.d_Scripts'45'Yes'45'premises_2524 (coe v0)
      (coe v1)
-- Ledger.Utxo.Haskell._.UTXO-premises
d_UTXO'45'premises_1610 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1590 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2718 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1790 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1804 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTXO'45'premises_1610 v0 v1
  = coe
      MAlonzo.Code.Ledger.Utxo.d_UTXO'45'premises_2712 (coe v0) (coe v1)
-- Ledger.Utxo.Haskell._.UTxOEnv
d_UTxOEnv_1612 a0 a1 = ()
-- Ledger.Utxo.Haskell._.UTxOState
d_UTxOState_1614 a0 a1 = ()
-- Ledger.Utxo.Haskell._.balance
d_balance_1616 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1590 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_balance_1616 v0 ~v1 = du_balance_1616 v0
du_balance_1616 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_balance_1616 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_balance_1840 (coe v0)
-- Ledger.Utxo.Haskell._.cbalance
d_cbalance_1620 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1590 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_cbalance_1620 v0 ~v1 = du_cbalance_1620 v0
du_cbalance_1620 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_cbalance_1620 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_cbalance_1846 (coe v0)
-- Ledger.Utxo.Haskell._.certRefund
d_certRefund_1622 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1590 ->
  MAlonzo.Code.Ledger.Certs.T_DCert_792 ->
  [MAlonzo.Code.Ledger.Certs.T_DepositPurpose_772]
d_certRefund_1622 ~v0 ~v1 = du_certRefund_1622
du_certRefund_1622 ::
  MAlonzo.Code.Ledger.Certs.T_DCert_792 ->
  [MAlonzo.Code.Ledger.Certs.T_DepositPurpose_772]
du_certRefund_1622
  = coe MAlonzo.Code.Ledger.Utxo.du_certRefund_1876
-- Ledger.Utxo.Haskell._.coinPolicies
d_coinPolicies_1624 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1590 -> [AgdaAny]
d_coinPolicies_1624 v0 ~v1 = du_coinPolicies_1624 v0
du_coinPolicies_1624 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  [AgdaAny]
du_coinPolicies_1624 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_coinPolicies_2172 (coe v0)
-- Ledger.Utxo.Haskell._.consumed
d_consumed_1626 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1590 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_228 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1804 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2616 -> AgdaAny
d_consumed_1626 v0 ~v1 = du_consumed_1626 v0
du_consumed_1626 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_228 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1804 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2616 -> AgdaAny
du_consumed_1626 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_consumed_2346 (coe v0)
-- Ledger.Utxo.Haskell._.depositRefunds
d_depositRefunds_1628 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1590 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_228 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1804 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2616 -> Integer
d_depositRefunds_1628 v0 ~v1 = du_depositRefunds_1628 v0
du_depositRefunds_1628 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_228 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1804 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2616 -> Integer
du_depositRefunds_1628 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_depositRefunds_2330 (coe v0)
-- Ledger.Utxo.Haskell._.depositsChange
d_depositsChange_1630 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1590 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_228 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2616 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_depositsChange_1630 v0 ~v1 = du_depositsChange_1630 v0
du_depositsChange_1630 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_228 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2616 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_depositsChange_1630 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_depositsChange_2012 (coe v0)
-- Ledger.Utxo.Haskell._.feesOK
d_feesOK_1632 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1590 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_228 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2718 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Bool
d_feesOK_1632 v0 v1
  = coe MAlonzo.Code.Ledger.Utxo.d_feesOK_2178 (coe v0) (coe v1)
-- Ledger.Utxo.Haskell._.getDataHashes
d_getDataHashes_1634 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1590 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> [AgdaAny]
d_getDataHashes_1634 ~v0 ~v1 = du_getDataHashes_1634
du_getDataHashes_1634 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> [AgdaAny]
du_getDataHashes_1634
  = coe MAlonzo.Code.Ledger.Utxo.du_getDataHashes_1712
-- Ledger.Utxo.Haskell._.getInputHashes
d_getInputHashes_1636 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1590 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2718 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
d_getInputHashes_1636 v0 ~v1 = du_getInputHashes_1636 v0
du_getInputHashes_1636 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2718 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
du_getInputHashes_1636 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_getInputHashes_1716 (coe v0)
-- Ledger.Utxo.Haskell._.inInterval
d_inInterval_1638 a0 a1 a2 a3 = ()
-- Ledger.Utxo.Haskell._.isAdaOnlyᵇ
d_isAdaOnly'7495'_1640 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1590 ->
  AgdaAny -> Bool
d_isAdaOnly'7495'_1640 v0 ~v1 = du_isAdaOnly'7495'_1640 v0
du_isAdaOnly'7495'_1640 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny -> Bool
du_isAdaOnly'7495'_1640 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_isAdaOnly'7495'_2174 (coe v0)
-- Ledger.Utxo.Haskell._.isTwoPhaseScriptAddress
d_isTwoPhaseScriptAddress_1642 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1590 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2718 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Bool
d_isTwoPhaseScriptAddress_1642 v0 ~v1
  = du_isTwoPhaseScriptAddress_1642 v0
du_isTwoPhaseScriptAddress_1642 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2718 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Bool
du_isTwoPhaseScriptAddress_1642 v0
  = coe
      MAlonzo.Code.Ledger.Utxo.du_isTwoPhaseScriptAddress_1700 (coe v0)
-- Ledger.Utxo.Haskell._.minfee
d_minfee_1646 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1590 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_228 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2718 -> Integer
d_minfee_1646 v0 v1
  = coe MAlonzo.Code.Ledger.Utxo.d_minfee_1850 (coe v0) (coe v1)
-- Ledger.Utxo.Haskell._.newDeposits
d_newDeposits_1648 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1590 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_228 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1804 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2616 -> Integer
d_newDeposits_1648 v0 ~v1 = du_newDeposits_1648 v0
du_newDeposits_1648 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_228 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1804 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2616 -> Integer
du_newDeposits_1648 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_newDeposits_2338 (coe v0)
-- Ledger.Utxo.Haskell._.outs
d_outs_1652 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1590 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2616 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_outs_1652 ~v0 ~v1 = du_outs_1652
du_outs_1652 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2616 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_outs_1652 = coe MAlonzo.Code.Ledger.Utxo.du_outs_1834
-- Ledger.Utxo.Haskell._.produced
d_produced_1654 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1590 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_228 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1804 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2616 -> AgdaAny
d_produced_1654 v0 ~v1 = du_produced_1654 v0
du_produced_1654 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_228 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1804 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2616 -> AgdaAny
du_produced_1654 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_produced_2354 (coe v0)
-- Ledger.Utxo.Haskell._.proposalDepositsΔ
d_proposalDepositsΔ_1656 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1590 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_712] ->
  MAlonzo.Code.Ledger.PParams.T_PParams_228 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2616 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_proposalDepositsΔ_1656 v0 ~v1 = du_proposalDepositsΔ_1656 v0
du_proposalDepositsΔ_1656 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_712] ->
  MAlonzo.Code.Ledger.PParams.T_PParams_228 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2616 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_proposalDepositsΔ_1656 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_proposalDepositsΔ_1958 (coe v0)
-- Ledger.Utxo.Haskell._.totExUnits
d_totExUnits_1658 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1590 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2718 -> AgdaAny
d_totExUnits_1658 v0 ~v1 = du_totExUnits_1658 v0
du_totExUnits_1658 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2718 -> AgdaAny
du_totExUnits_1658 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_totExUnits_1772 (coe v0)
-- Ledger.Utxo.Haskell._.utxoEntrySize
d_utxoEntrySize_1662 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1590 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_utxoEntrySize_1662 v0 ~v1 = du_utxoEntrySize_1662 v0
du_utxoEntrySize_1662 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_utxoEntrySize_1662 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_utxoEntrySize_1786 (coe v0)
-- Ledger.Utxo.Haskell._.utxoEntrySizeWithoutVal
d_utxoEntrySizeWithoutVal_1664 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1590 -> Integer
d_utxoEntrySizeWithoutVal_1664 ~v0 ~v1
  = du_utxoEntrySizeWithoutVal_1664
du_utxoEntrySizeWithoutVal_1664 :: Integer
du_utxoEntrySizeWithoutVal_1664
  = coe MAlonzo.Code.Ledger.Utxo.du_utxoEntrySizeWithoutVal_1784
-- Ledger.Utxo.Haskell._.≟-∅ᵇ
d_'8799''45''8709''7495'_1666 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1590 ->
  () -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> [AgdaAny] -> Bool
d_'8799''45''8709''7495'_1666 ~v0 ~v1
  = du_'8799''45''8709''7495'_1666
du_'8799''45''8709''7495'_1666 ::
  () -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> [AgdaAny] -> Bool
du_'8799''45''8709''7495'_1666 v0 v1 v2
  = coe MAlonzo.Code.Ledger.Utxo.du_'8799''45''8709''7495'_2168 v1 v2
-- Ledger.Utxo.Haskell._.≟?
d_'8799''63'_1668 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1590 ->
  () ->
  Maybe AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_'8799''63'_1668 ~v0 ~v1 = du_'8799''63'_1668
du_'8799''63'_1668 ::
  () ->
  Maybe AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_'8799''63'_1668 v0 v1 v2 v3
  = coe MAlonzo.Code.Ledger.Utxo.du_'8799''63'_2556 v1 v2 v3
-- Ledger.Utxo.Haskell._.UTxOEnv.pparams
d_pparams_1684 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1790 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_228
d_pparams_1684 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_pparams_1800 (coe v0)
-- Ledger.Utxo.Haskell._.UTxOEnv.slot
d_slot_1686 :: MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1790 -> AgdaAny
d_slot_1686 v0 = coe MAlonzo.Code.Ledger.Utxo.d_slot_1798 (coe v0)
-- Ledger.Utxo.Haskell._.UTxOEnv.treasury
d_treasury_1688 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1790 -> Integer
d_treasury_1688 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_treasury_1802 (coe v0)
-- Ledger.Utxo.Haskell._.UTxOState.deposits
d_deposits_1692 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1804 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_1692 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_deposits_1818 (coe v0)
-- Ledger.Utxo.Haskell._.UTxOState.donations
d_donations_1694 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1804 -> Integer
d_donations_1694 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_donations_1820 (coe v0)
-- Ledger.Utxo.Haskell._.UTxOState.fees
d_fees_1696 :: MAlonzo.Code.Ledger.Utxo.T_UTxOState_1804 -> Integer
d_fees_1696 v0 = coe MAlonzo.Code.Ledger.Utxo.d_fees_1816 (coe v0)
-- Ledger.Utxo.Haskell._.UTxOState.utxo
d_utxo_1698 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1804 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_1698 v0 = coe MAlonzo.Code.Ledger.Utxo.d_utxo_1814 (coe v0)
-- Ledger.Utxo.Haskell.certDepositUtxo
d_certDepositUtxo_1710 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1590 ->
  MAlonzo.Code.Ledger.Certs.T_DCert_792 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_228 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_certDepositUtxo_1710 ~v0 ~v1 v2 v3
  = du_certDepositUtxo_1710 v2 v3
du_certDepositUtxo_1710 ::
  MAlonzo.Code.Ledger.Certs.T_DCert_792 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_228 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_certDepositUtxo_1710 v0 v1
  = let v2
          = coe
              MAlonzo.Code.Axiom.Set.Map.du_'8709''7504'_562
              (coe
                 MAlonzo.Code.Axiom.Set.d_th_1430
                 (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)) in
    coe
      (case coe v0 of
         MAlonzo.Code.Ledger.Certs.C_regpool_798 v3 v4
           -> coe
                MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_730
                (coe
                   MAlonzo.Code.Axiom.Set.d_th_1430
                   (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                   (coe MAlonzo.Code.Ledger.Certs.C_PoolDeposit_776 (coe v3))
                   (coe MAlonzo.Code.Ledger.PParams.d_poolDeposit_310 (coe v1)))
         _ -> coe v2)
-- Ledger.Utxo.Haskell.updateCertDepositsUtxo
d_updateCertDepositsUtxo_1716 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1590 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_228 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_792] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateCertDepositsUtxo_1716 v0 ~v1 v2 v3 v4
  = du_updateCertDepositsUtxo_1716 v0 v2 v3 v4
du_updateCertDepositsUtxo_1716 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_228 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_792] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateCertDepositsUtxo_1716 v0 v1 v2 v3
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
             (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_784
                (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2230 (coe v0)))
             (coe
                du_updateCertDepositsUtxo_1716 (coe v0) (coe v1) (coe v5) (coe v3))
             (coe du_certDepositUtxo_1710 (coe v4) (coe v1))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo.Haskell.updateProposalDeposits
d_updateProposalDeposits_1728 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1590 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_712] ->
  AgdaAny ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateProposalDeposits_1728 v0 ~v1 v2 v3 v4 v5
  = du_updateProposalDeposits_1728 v0 v2 v3 v4 v5
du_updateProposalDeposits_1728 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_712] ->
  AgdaAny ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateProposalDeposits_1728 v0 v1 v2 v3 v4
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
             (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_784
                (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2230 (coe v0)))
             (coe
                du_updateProposalDeposits_1728 (coe v0) (coe v6) (coe v2) (coe v3)
                (coe v4))
             (coe
                MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_730
                (coe
                   MAlonzo.Code.Axiom.Set.d_th_1430
                   (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                   (coe
                      MAlonzo.Code.Ledger.Certs.C_GovActionDeposit_780
                      (coe
                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v2)
                         (coe MAlonzo.Code.Data.List.Base.du_length_304 v6)))
                   (coe v3)))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo.Haskell.updateDeposits
d_updateDeposits_1740 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1590 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_228 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2616 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateDeposits_1740 v0 ~v1 v2 v3 v4
  = du_updateDeposits_1740 v0 v2 v3 v4
du_updateDeposits_1740 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_228 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2616 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateDeposits_1740 v0 v1 v2 v3
  = coe
      du_updateCertDepositsUtxo_1716 (coe v0) (coe v1)
      (coe MAlonzo.Code.Ledger.Transaction.d_txcerts_2670 (coe v2))
      (coe
         du_updateProposalDeposits_1728 (coe v0)
         (coe MAlonzo.Code.Ledger.Transaction.d_txprop_2676 (coe v2))
         (coe MAlonzo.Code.Ledger.Transaction.d_txid_2690 (coe v2))
         (coe MAlonzo.Code.Ledger.PParams.d_govActionDeposit_340 (coe v1))
         (coe v3))
-- Ledger.Utxo.Haskell._.collectPhaseTwoScriptInputs
d_collectPhaseTwoScriptInputs_1818 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1590 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_228 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2718 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collectPhaseTwoScriptInputs_1818 v0 v1
  = coe
      MAlonzo.Code.Ledger.ScriptValidation.d_collectPhaseTwoScriptInputs_2212
      (coe v0) (coe v1)
-- Ledger.Utxo.Haskell._.evalScripts
d_evalScripts_1828 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1590 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2718 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Bool
d_evalScripts_1828 v0 v1
  = coe
      MAlonzo.Code.Ledger.ScriptValidation.d_evalScripts_2230 (coe v0)
      (coe v1)
-- Ledger.Utxo.Haskell._⊢_⇀⦇_,UTXOS⦈_
d__'8866'_'8640''10631'_'44'UTXOS'10632'__1906 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'UTXOS'10632'__1906
  = C_Scripts'45'Yes_1986 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_Scripts'45'No_2066 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- _⊢_⇀⦇_,UTXOS⦈_
d__'8866'_'8640''10631'_'44'UTXOS'10632'__1913 a0 a1 a2 a3 a4 a5
  = ()
-- _⊢_⇀⦇_,UTXO⦈_
d__'8866'_'8640''10631'_'44'UTXO'10632'__1915 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Utxo.Haskell._.txdonation
d_txdonation_1944 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1590 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1790 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1804 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2718 -> Integer
d_txdonation_1944 ~v0 ~v1 ~v2 v3 = du_txdonation_1944 v3
du_txdonation_1944 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2718 -> Integer
du_txdonation_1944 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txdonation_2678
      (coe MAlonzo.Code.Ledger.Transaction.d_body_2728 (coe v0))
-- Ledger.Utxo.Haskell._.txfee
d_txfee_1946 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1590 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1790 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1804 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2718 -> Integer
d_txfee_1946 ~v0 ~v1 ~v2 v3 = du_txfee_1946 v3
du_txfee_1946 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2718 -> Integer
du_txfee_1946 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txfee_2664
      (coe MAlonzo.Code.Ledger.Transaction.d_body_2728 (coe v0))
-- Ledger.Utxo.Haskell._.txins
d_txins_1950 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1590 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1790 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1804 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2718 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txins_1950 ~v0 ~v1 ~v2 v3 = du_txins_1950 v3
du_txins_1950 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2718 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_txins_1950 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txins_2658
      (coe MAlonzo.Code.Ledger.Transaction.d_body_2728 (coe v0))
-- Ledger.Utxo.Haskell._.pparams
d_pparams_1968 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1590 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1790 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1804 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2718 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_228
d_pparams_1968 ~v0 v1 ~v2 ~v3 = du_pparams_1968 v1
du_pparams_1968 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1790 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_228
du_pparams_1968 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_pparams_1800 (coe v0)
-- Ledger.Utxo.Haskell._.deposits
d_deposits_1976 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1590 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1790 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1804 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2718 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_1976 ~v0 ~v1 v2 ~v3 = du_deposits_1976 v2
du_deposits_1976 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1804 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_deposits_1976 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_deposits_1818 (coe v0)
-- Ledger.Utxo.Haskell._.donations
d_donations_1978 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1590 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1790 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1804 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2718 -> Integer
d_donations_1978 ~v0 ~v1 v2 ~v3 = du_donations_1978 v2
du_donations_1978 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1804 -> Integer
du_donations_1978 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_donations_1820 (coe v0)
-- Ledger.Utxo.Haskell._.fees
d_fees_1980 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1590 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1790 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1804 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2718 -> Integer
d_fees_1980 ~v0 ~v1 v2 ~v3 = du_fees_1980 v2
du_fees_1980 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1804 -> Integer
du_fees_1980 v0 = coe MAlonzo.Code.Ledger.Utxo.d_fees_1816 (coe v0)
-- Ledger.Utxo.Haskell._.utxo
d_utxo_1982 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1590 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1790 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1804 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2718 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_1982 ~v0 ~v1 v2 ~v3 = du_utxo_1982 v2
du_utxo_1982 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1804 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxo_1982 v0 = coe MAlonzo.Code.Ledger.Utxo.d_utxo_1814 (coe v0)
-- Ledger.Utxo.Haskell._.collateral
d_collateral_2006 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1590 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1790 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1804 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2718 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateral_2006 ~v0 ~v1 ~v2 v3 = du_collateral_2006 v3
du_collateral_2006 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2718 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_collateral_2006 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_collateral_2692
      (coe MAlonzo.Code.Ledger.Transaction.d_body_2728 (coe v0))
-- Ledger.Utxo.Haskell._.pparams
d_pparams_2048 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1590 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1790 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1804 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2718 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_228
d_pparams_2048 ~v0 v1 ~v2 ~v3 = du_pparams_2048 v1
du_pparams_2048 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1790 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_228
du_pparams_2048 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_pparams_1800 (coe v0)
-- Ledger.Utxo.Haskell._.deposits
d_deposits_2056 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1590 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1790 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1804 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2718 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_2056 ~v0 ~v1 v2 ~v3 = du_deposits_2056 v2
du_deposits_2056 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1804 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_deposits_2056 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_deposits_1818 (coe v0)
-- Ledger.Utxo.Haskell._.donations
d_donations_2058 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1590 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1790 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1804 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2718 -> Integer
d_donations_2058 ~v0 ~v1 v2 ~v3 = du_donations_2058 v2
du_donations_2058 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1804 -> Integer
du_donations_2058 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_donations_1820 (coe v0)
-- Ledger.Utxo.Haskell._.fees
d_fees_2060 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1590 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1790 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1804 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2718 -> Integer
d_fees_2060 ~v0 ~v1 v2 ~v3 = du_fees_2060 v2
du_fees_2060 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1804 -> Integer
du_fees_2060 v0 = coe MAlonzo.Code.Ledger.Utxo.d_fees_1816 (coe v0)
-- Ledger.Utxo.Haskell._.utxo
d_utxo_2062 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1590 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1790 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1804 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2718 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2062 ~v0 ~v1 v2 ~v3 = du_utxo_2062 v2
du_utxo_2062 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1804 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxo_2062 v0 = coe MAlonzo.Code.Ledger.Utxo.d_utxo_1814 (coe v0)
-- Ledger.Utxo.Haskell._⊢_⇀⦇_,UTXO⦈_
d__'8866'_'8640''10631'_'44'UTXO'10632'__2068 a0 a1 a2 a3 a4 a5
  = ()
newtype T__'8866'_'8640''10631'_'44'UTXO'10632'__2068
  = C_UTXO'45'inductive_2162 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Utxo.Haskell._.body
d_body_2076 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1590 ->
  T_GeneralizeTel_13053 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2616
d_body_2076 ~v0 ~v1 v2 = du_body_2076 v2
du_body_2076 ::
  T_GeneralizeTel_13053 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2616
du_body_2076 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_body_2728
      (coe d_'46'generalizedField'45'tx_13045 v0)
-- Ledger.Utxo.Haskell._.curTreasury
d_curTreasury_2084 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1590 ->
  T_GeneralizeTel_13053 -> Maybe Integer
d_curTreasury_2084 ~v0 ~v1 v2 = du_curTreasury_2084 v2
du_curTreasury_2084 :: T_GeneralizeTel_13053 -> Maybe Integer
du_curTreasury_2084 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_curTreasury_2686
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2728
         (coe d_'46'generalizedField'45'tx_13045 v0))
-- Ledger.Utxo.Haskell._.mint
d_mint_2086 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1590 ->
  T_GeneralizeTel_13053 -> AgdaAny
d_mint_2086 ~v0 ~v1 v2 = du_mint_2086 v2
du_mint_2086 :: T_GeneralizeTel_13053 -> AgdaAny
du_mint_2086 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_mint_2666
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2728
         (coe d_'46'generalizedField'45'tx_13045 v0))
-- Ledger.Utxo.Haskell._.refInputs
d_refInputs_2088 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1590 ->
  T_GeneralizeTel_13053 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_2088 ~v0 ~v1 v2 = du_refInputs_2088 v2
du_refInputs_2088 ::
  T_GeneralizeTel_13053 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_refInputs_2088 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_refInputs_2660
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2728
         (coe d_'46'generalizedField'45'tx_13045 v0))
-- Ledger.Utxo.Haskell._.txNetworkId
d_txNetworkId_2096 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1590 ->
  T_GeneralizeTel_13053 -> Maybe AgdaAny
d_txNetworkId_2096 ~v0 ~v1 v2 = du_txNetworkId_2096 v2
du_txNetworkId_2096 :: T_GeneralizeTel_13053 -> Maybe AgdaAny
du_txNetworkId_2096 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txNetworkId_2684
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2728
         (coe d_'46'generalizedField'45'tx_13045 v0))
-- Ledger.Utxo.Haskell._.txins
d_txins_2106 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1590 ->
  T_GeneralizeTel_13053 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txins_2106 ~v0 ~v1 v2 = du_txins_2106 v2
du_txins_2106 ::
  T_GeneralizeTel_13053 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_txins_2106 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txins_2658
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2728
         (coe d_'46'generalizedField'45'tx_13045 v0))
-- Ledger.Utxo.Haskell._.txouts
d_txouts_2108 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1590 ->
  T_GeneralizeTel_13053 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txouts_2108 ~v0 ~v1 v2 = du_txouts_2108 v2
du_txouts_2108 ::
  T_GeneralizeTel_13053 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txouts_2108 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txouts_2662
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2728
         (coe d_'46'generalizedField'45'tx_13045 v0))
-- Ledger.Utxo.Haskell._.txsize
d_txsize_2112 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1590 ->
  T_GeneralizeTel_13053 -> Integer
d_txsize_2112 ~v0 ~v1 v2 = du_txsize_2112 v2
du_txsize_2112 :: T_GeneralizeTel_13053 -> Integer
du_txsize_2112 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txsize_2688
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2728
         (coe d_'46'generalizedField'45'tx_13045 v0))
-- Ledger.Utxo.Haskell._.txvldt
d_txvldt_2116 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1590 ->
  T_GeneralizeTel_13053 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txvldt_2116 ~v0 ~v1 v2 = du_txvldt_2116 v2
du_txvldt_2116 ::
  T_GeneralizeTel_13053 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txvldt_2116 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txvldt_2668
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2728
         (coe d_'46'generalizedField'45'tx_13045 v0))
-- Ledger.Utxo.Haskell._.txwdrls
d_txwdrls_2120 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1590 ->
  T_GeneralizeTel_13053 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_2120 ~v0 ~v1 v2 = du_txwdrls_2120 v2
du_txwdrls_2120 ::
  T_GeneralizeTel_13053 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txwdrls_2120 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txwdrls_2672
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2728
         (coe d_'46'generalizedField'45'tx_13045 v0))
-- Ledger.Utxo.Haskell._.pparams
d_pparams_2124 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1590 ->
  T_GeneralizeTel_13053 -> MAlonzo.Code.Ledger.PParams.T_PParams_228
d_pparams_2124 ~v0 ~v1 v2 = du_pparams_2124 v2
du_pparams_2124 ::
  T_GeneralizeTel_13053 -> MAlonzo.Code.Ledger.PParams.T_PParams_228
du_pparams_2124 v0
  = coe
      MAlonzo.Code.Ledger.Utxo.d_pparams_1800
      (coe d_'46'generalizedField'45'Γ_13047 v0)
-- Ledger.Utxo.Haskell._.slot
d_slot_2126 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1590 ->
  T_GeneralizeTel_13053 -> AgdaAny
d_slot_2126 ~v0 ~v1 v2 = du_slot_2126 v2
du_slot_2126 :: T_GeneralizeTel_13053 -> AgdaAny
du_slot_2126 v0
  = coe
      MAlonzo.Code.Ledger.Utxo.d_slot_1798
      (coe d_'46'generalizedField'45'Γ_13047 v0)
-- Ledger.Utxo.Haskell._.treasury
d_treasury_2128 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1590 ->
  T_GeneralizeTel_13053 -> Integer
d_treasury_2128 ~v0 ~v1 v2 = du_treasury_2128 v2
du_treasury_2128 :: T_GeneralizeTel_13053 -> Integer
du_treasury_2128 v0
  = coe
      MAlonzo.Code.Ledger.Utxo.d_treasury_1802
      (coe d_'46'generalizedField'45'Γ_13047 v0)
-- Ledger.Utxo.Haskell._.utxo
d_utxo_2138 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1590 ->
  T_GeneralizeTel_13053 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2138 ~v0 ~v1 v2 = du_utxo_2138 v2
du_utxo_2138 ::
  T_GeneralizeTel_13053 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxo_2138 v0
  = coe
      MAlonzo.Code.Ledger.Utxo.d_utxo_1814
      (coe d_'46'generalizedField'45's_13049 v0)
-- Ledger.Utxo.Haskell..generalizedField-tx
d_'46'generalizedField'45'tx_13045 ::
  T_GeneralizeTel_13053 -> MAlonzo.Code.Ledger.Transaction.T_Tx_2718
d_'46'generalizedField'45'tx_13045
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo.Haskell..generalizedField-Γ
d_'46'generalizedField'45'Γ_13047 ::
  T_GeneralizeTel_13053 -> MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1790
d_'46'generalizedField'45'Γ_13047 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo.Haskell..generalizedField-s
d_'46'generalizedField'45's_13049 ::
  T_GeneralizeTel_13053 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1804
d_'46'generalizedField'45's_13049 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo.Haskell..generalizedField-s'
d_'46'generalizedField'45's''_13051 ::
  T_GeneralizeTel_13053 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1804
d_'46'generalizedField'45's''_13051
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo.Haskell.GeneralizeTel
d_GeneralizeTel_13053 a0 a1 = ()
data T_GeneralizeTel_13053
  = C_mkGeneralizeTel_13055 MAlonzo.Code.Ledger.Transaction.T_Tx_2718
                            MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1790
                            MAlonzo.Code.Ledger.Utxo.T_UTxOState_1804
                            MAlonzo.Code.Ledger.Utxo.T_UTxOState_1804
