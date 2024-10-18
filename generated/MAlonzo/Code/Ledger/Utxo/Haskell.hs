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
import qualified MAlonzo.Code.Ledger.GovernanceActions
import qualified MAlonzo.Code.Ledger.Interface.HasCoin
import qualified MAlonzo.Code.Ledger.PParams
import qualified MAlonzo.Code.Ledger.ScriptValidation
import qualified MAlonzo.Code.Ledger.Set.Theory
import qualified MAlonzo.Code.Ledger.TokenAlgebra
import qualified MAlonzo.Code.Ledger.Transaction
import qualified MAlonzo.Code.Ledger.Utxo

-- _._≤ᵗ_
d__'8804''7511'__18 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny -> AgdaAny -> ()
d__'8804''7511'__18 = erased
-- _.DCert
d_DCert_74 a0 = ()
-- _.DepositPurpose
d_DepositPurpose_186 a0 = ()
-- _.Deposits
d_Deposits_188 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Deposits_188 = erased
-- _.GovProposal
d_GovProposal_222 a0 = ()
-- _.PParams
d_PParams_298 a0 = ()
-- _.Tx
d_Tx_440 a0 = ()
-- _.TxBody
d_TxBody_442 a0 = ()
-- _.coin
d_coin_468 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny -> Integer
d_coin_468 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_coin_204
      (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2112 (coe v0))
-- _.getValueʰ
d_getValue'688'_512 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_getValue'688'_512 ~v0 = du_getValue'688'_512
du_getValue'688'_512 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_getValue'688'_512
  = coe MAlonzo.Code.Ledger.Transaction.du_getValue'688'_2760
-- _.inject
d_inject_522 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  Integer -> AgdaAny
d_inject_522 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_inject_206
      (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2112 (coe v0))
-- _.netId
d_netId_564 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
d_netId_564 ~v0 = du_netId_564
du_netId_564 :: MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
du_netId_564 = coe MAlonzo.Code.Ledger.Address.du_netId_112
-- _.txOutHash
d_txOutHash_628 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txOutHash_628 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txOutHash_2750 (coe v0)
-- Ledger.Utxo.Haskell._._*↓_
d__'42''8595'__1590 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1598 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 -> Integer -> Integer
d__'42''8595'__1590 ~v0 v1 v2 = du__'42''8595'__1590 v1 v2
du__'42''8595'__1590 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 -> Integer -> Integer
du__'42''8595'__1590 v0 v1
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
d__'61''62''7495'__1592 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1598 ->
  Bool -> Bool -> Bool
d__'61''62''7495'__1592 ~v0 ~v1 = du__'61''62''7495'__1592
du__'61''62''7495'__1592 :: Bool -> Bool -> Bool
du__'61''62''7495'__1592
  = coe MAlonzo.Code.Ledger.Utxo.du__'61''62''7495'__2156
-- Ledger.Utxo.Haskell._._≡?_
d__'8801''63'__1594 a0 a1 a2 a3 a4 = ()
-- Ledger.Utxo.Haskell._._≤ᵇ_
d__'8804''7495'__1596 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1598 ->
  Integer -> Integer -> Bool
d__'8804''7495'__1596 ~v0 ~v1 = du__'8804''7495'__1596
du__'8804''7495'__1596 :: Integer -> Integer -> Bool
du__'8804''7495'__1596
  = coe MAlonzo.Code.Ledger.Utxo.du__'8804''7495'__2162
-- Ledger.Utxo.Haskell._._≥ᵇ_
d__'8805''7495'__1598 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1598 ->
  Integer -> Integer -> Bool
d__'8805''7495'__1598 ~v0 ~v1 = du__'8805''7495'__1598
du__'8805''7495'__1598 :: Integer -> Integer -> Bool
du__'8805''7495'__1598
  = coe MAlonzo.Code.Ledger.Utxo.du__'8805''7495'__2164
-- Ledger.Utxo.Haskell._.Dec-inInterval
d_Dec'45'inInterval_1600 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1598 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'inInterval_1600 v0 ~v1 = du_Dec'45'inInterval_1600 v0
du_Dec'45'inInterval_1600 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'inInterval_1600 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_Dec'45'inInterval_2050 (coe v0)
-- Ledger.Utxo.Haskell._.HasCoin-Map
d_HasCoin'45'Map_1602 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1598 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
d_HasCoin'45'Map_1602 ~v0 ~v1 = du_HasCoin'45'Map_1602
du_HasCoin'45'Map_1602 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
du_HasCoin'45'Map_1602 v0 v1
  = coe MAlonzo.Code.Ledger.Utxo.du_HasCoin'45'Map_1696 v1
-- Ledger.Utxo.Haskell._.HasCoin-UTxO
d_HasCoin'45'UTxO_1604 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1598 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
d_HasCoin'45'UTxO_1604 v0 ~v1 = du_HasCoin'45'UTxO_1604 v0
du_HasCoin'45'UTxO_1604 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
du_HasCoin'45'UTxO_1604 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_HasCoin'45'UTxO_1868 (coe v0)
-- Ledger.Utxo.Haskell._.HasCoin-UTxOState
d_HasCoin'45'UTxOState_1606 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1598 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
d_HasCoin'45'UTxOState_1606 v0 ~v1
  = du_HasCoin'45'UTxOState_1606 v0
du_HasCoin'45'UTxOState_1606 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
du_HasCoin'45'UTxOState_1606 v0
  = coe
      MAlonzo.Code.Ledger.Utxo.du_HasCoin'45'UTxOState_2152 (coe v0)
-- Ledger.Utxo.Haskell._.Scripts-No-premises
d_Scripts'45'No'45'premises_1610 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1598 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1798 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1812 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2726 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_Scripts'45'No'45'premises_1610 v0 v1
  = coe
      MAlonzo.Code.Ledger.Utxo.d_Scripts'45'No'45'premises_2534 (coe v0)
      (coe v1)
-- Ledger.Utxo.Haskell._.Scripts-Yes-premises
d_Scripts'45'Yes'45'premises_1614 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1598 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1798 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1812 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2726 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_Scripts'45'Yes'45'premises_1614 v0 v1
  = coe
      MAlonzo.Code.Ledger.Utxo.d_Scripts'45'Yes'45'premises_2532 (coe v0)
      (coe v1)
-- Ledger.Utxo.Haskell._.UTXO-premises
d_UTXO'45'premises_1618 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1598 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2726 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1798 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1812 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTXO'45'premises_1618 v0 v1
  = coe
      MAlonzo.Code.Ledger.Utxo.d_UTXO'45'premises_2720 (coe v0) (coe v1)
-- Ledger.Utxo.Haskell._.UTxOEnv
d_UTxOEnv_1620 a0 a1 = ()
-- Ledger.Utxo.Haskell._.UTxOState
d_UTxOState_1622 a0 a1 = ()
-- Ledger.Utxo.Haskell._.balance
d_balance_1624 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1598 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_balance_1624 v0 ~v1 = du_balance_1624 v0
du_balance_1624 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_balance_1624 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_balance_1848 (coe v0)
-- Ledger.Utxo.Haskell._.cbalance
d_cbalance_1628 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1598 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_cbalance_1628 v0 ~v1 = du_cbalance_1628 v0
du_cbalance_1628 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_cbalance_1628 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_cbalance_1854 (coe v0)
-- Ledger.Utxo.Haskell._.certRefund
d_certRefund_1630 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1598 ->
  MAlonzo.Code.Ledger.Certs.T_DCert_792 ->
  [MAlonzo.Code.Ledger.Certs.T_DepositPurpose_772]
d_certRefund_1630 ~v0 ~v1 = du_certRefund_1630
du_certRefund_1630 ::
  MAlonzo.Code.Ledger.Certs.T_DCert_792 ->
  [MAlonzo.Code.Ledger.Certs.T_DepositPurpose_772]
du_certRefund_1630
  = coe MAlonzo.Code.Ledger.Utxo.du_certRefund_1884
-- Ledger.Utxo.Haskell._.coinPolicies
d_coinPolicies_1632 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1598 -> [AgdaAny]
d_coinPolicies_1632 v0 ~v1 = du_coinPolicies_1632 v0
du_coinPolicies_1632 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  [AgdaAny]
du_coinPolicies_1632 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_coinPolicies_2180 (coe v0)
-- Ledger.Utxo.Haskell._.consumed
d_consumed_1634 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1598 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_228 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1812 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2624 -> AgdaAny
d_consumed_1634 v0 ~v1 = du_consumed_1634 v0
du_consumed_1634 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_228 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1812 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2624 -> AgdaAny
du_consumed_1634 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_consumed_2354 (coe v0)
-- Ledger.Utxo.Haskell._.depositRefunds
d_depositRefunds_1636 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1598 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_228 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1812 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2624 -> Integer
d_depositRefunds_1636 v0 ~v1 = du_depositRefunds_1636 v0
du_depositRefunds_1636 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_228 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1812 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2624 -> Integer
du_depositRefunds_1636 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_depositRefunds_2338 (coe v0)
-- Ledger.Utxo.Haskell._.depositsChange
d_depositsChange_1638 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1598 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_228 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2624 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_depositsChange_1638 v0 ~v1 = du_depositsChange_1638 v0
du_depositsChange_1638 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_228 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2624 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_depositsChange_1638 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_depositsChange_2020 (coe v0)
-- Ledger.Utxo.Haskell._.feesOK
d_feesOK_1640 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1598 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_228 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2726 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Bool
d_feesOK_1640 v0 v1
  = coe MAlonzo.Code.Ledger.Utxo.d_feesOK_2186 (coe v0) (coe v1)
-- Ledger.Utxo.Haskell._.getDataHashes
d_getDataHashes_1642 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1598 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> [AgdaAny]
d_getDataHashes_1642 ~v0 ~v1 = du_getDataHashes_1642
du_getDataHashes_1642 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> [AgdaAny]
du_getDataHashes_1642
  = coe MAlonzo.Code.Ledger.Utxo.du_getDataHashes_1720
-- Ledger.Utxo.Haskell._.getInputHashes
d_getInputHashes_1644 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1598 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2726 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
d_getInputHashes_1644 v0 ~v1 = du_getInputHashes_1644 v0
du_getInputHashes_1644 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2726 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
du_getInputHashes_1644 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_getInputHashes_1724 (coe v0)
-- Ledger.Utxo.Haskell._.inInterval
d_inInterval_1646 a0 a1 a2 a3 = ()
-- Ledger.Utxo.Haskell._.isAdaOnlyᵇ
d_isAdaOnly'7495'_1648 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1598 ->
  AgdaAny -> Bool
d_isAdaOnly'7495'_1648 v0 ~v1 = du_isAdaOnly'7495'_1648 v0
du_isAdaOnly'7495'_1648 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny -> Bool
du_isAdaOnly'7495'_1648 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_isAdaOnly'7495'_2182 (coe v0)
-- Ledger.Utxo.Haskell._.isTwoPhaseScriptAddress
d_isTwoPhaseScriptAddress_1650 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1598 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2726 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Bool
d_isTwoPhaseScriptAddress_1650 v0 ~v1
  = du_isTwoPhaseScriptAddress_1650 v0
du_isTwoPhaseScriptAddress_1650 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2726 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Bool
du_isTwoPhaseScriptAddress_1650 v0
  = coe
      MAlonzo.Code.Ledger.Utxo.du_isTwoPhaseScriptAddress_1708 (coe v0)
-- Ledger.Utxo.Haskell._.minfee
d_minfee_1654 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1598 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_228 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2726 -> Integer
d_minfee_1654 v0 v1
  = coe MAlonzo.Code.Ledger.Utxo.d_minfee_1858 (coe v0) (coe v1)
-- Ledger.Utxo.Haskell._.newDeposits
d_newDeposits_1656 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1598 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_228 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1812 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2624 -> Integer
d_newDeposits_1656 v0 ~v1 = du_newDeposits_1656 v0
du_newDeposits_1656 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_228 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1812 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2624 -> Integer
du_newDeposits_1656 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_newDeposits_2346 (coe v0)
-- Ledger.Utxo.Haskell._.outs
d_outs_1660 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1598 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2624 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_outs_1660 ~v0 ~v1 = du_outs_1660
du_outs_1660 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2624 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_outs_1660 = coe MAlonzo.Code.Ledger.Utxo.du_outs_1842
-- Ledger.Utxo.Haskell._.produced
d_produced_1662 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1598 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_228 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1812 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2624 -> AgdaAny
d_produced_1662 v0 ~v1 = du_produced_1662 v0
du_produced_1662 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_228 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1812 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2624 -> AgdaAny
du_produced_1662 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_produced_2362 (coe v0)
-- Ledger.Utxo.Haskell._.proposalDepositsΔ
d_proposalDepositsΔ_1664 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1598 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_712] ->
  MAlonzo.Code.Ledger.PParams.T_PParams_228 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2624 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_proposalDepositsΔ_1664 v0 ~v1 = du_proposalDepositsΔ_1664 v0
du_proposalDepositsΔ_1664 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_712] ->
  MAlonzo.Code.Ledger.PParams.T_PParams_228 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2624 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_proposalDepositsΔ_1664 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_proposalDepositsΔ_1966 (coe v0)
-- Ledger.Utxo.Haskell._.totExUnits
d_totExUnits_1666 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1598 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2726 -> AgdaAny
d_totExUnits_1666 v0 ~v1 = du_totExUnits_1666 v0
du_totExUnits_1666 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2726 -> AgdaAny
du_totExUnits_1666 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_totExUnits_1780 (coe v0)
-- Ledger.Utxo.Haskell._.utxoEntrySize
d_utxoEntrySize_1670 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1598 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_utxoEntrySize_1670 v0 ~v1 = du_utxoEntrySize_1670 v0
du_utxoEntrySize_1670 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_utxoEntrySize_1670 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_utxoEntrySize_1794 (coe v0)
-- Ledger.Utxo.Haskell._.utxoEntrySizeWithoutVal
d_utxoEntrySizeWithoutVal_1672 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1598 -> Integer
d_utxoEntrySizeWithoutVal_1672 ~v0 ~v1
  = du_utxoEntrySizeWithoutVal_1672
du_utxoEntrySizeWithoutVal_1672 :: Integer
du_utxoEntrySizeWithoutVal_1672
  = coe MAlonzo.Code.Ledger.Utxo.du_utxoEntrySizeWithoutVal_1792
-- Ledger.Utxo.Haskell._.≟-∅ᵇ
d_'8799''45''8709''7495'_1674 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1598 ->
  () -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> [AgdaAny] -> Bool
d_'8799''45''8709''7495'_1674 ~v0 ~v1
  = du_'8799''45''8709''7495'_1674
du_'8799''45''8709''7495'_1674 ::
  () -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> [AgdaAny] -> Bool
du_'8799''45''8709''7495'_1674 v0 v1 v2
  = coe MAlonzo.Code.Ledger.Utxo.du_'8799''45''8709''7495'_2176 v1 v2
-- Ledger.Utxo.Haskell._.≟?
d_'8799''63'_1676 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1598 ->
  () ->
  Maybe AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_'8799''63'_1676 ~v0 ~v1 = du_'8799''63'_1676
du_'8799''63'_1676 ::
  () ->
  Maybe AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_'8799''63'_1676 v0 v1 v2 v3
  = coe MAlonzo.Code.Ledger.Utxo.du_'8799''63'_2564 v1 v2 v3
-- Ledger.Utxo.Haskell._.UTxOEnv.pparams
d_pparams_1692 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1798 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_228
d_pparams_1692 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_pparams_1808 (coe v0)
-- Ledger.Utxo.Haskell._.UTxOEnv.slot
d_slot_1694 :: MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1798 -> AgdaAny
d_slot_1694 v0 = coe MAlonzo.Code.Ledger.Utxo.d_slot_1806 (coe v0)
-- Ledger.Utxo.Haskell._.UTxOEnv.treasury
d_treasury_1696 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1798 -> Integer
d_treasury_1696 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_treasury_1810 (coe v0)
-- Ledger.Utxo.Haskell._.UTxOState.deposits
d_deposits_1700 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1812 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_1700 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_deposits_1826 (coe v0)
-- Ledger.Utxo.Haskell._.UTxOState.donations
d_donations_1702 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1812 -> Integer
d_donations_1702 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_donations_1828 (coe v0)
-- Ledger.Utxo.Haskell._.UTxOState.fees
d_fees_1704 :: MAlonzo.Code.Ledger.Utxo.T_UTxOState_1812 -> Integer
d_fees_1704 v0 = coe MAlonzo.Code.Ledger.Utxo.d_fees_1824 (coe v0)
-- Ledger.Utxo.Haskell._.UTxOState.utxo
d_utxo_1706 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1812 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_1706 v0 = coe MAlonzo.Code.Ledger.Utxo.d_utxo_1822 (coe v0)
-- Ledger.Utxo.Haskell.certDepositUtxo
d_certDepositUtxo_1718 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1598 ->
  MAlonzo.Code.Ledger.Certs.T_DCert_792 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_228 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_certDepositUtxo_1718 ~v0 ~v1 v2 v3
  = du_certDepositUtxo_1718 v2 v3
du_certDepositUtxo_1718 ::
  MAlonzo.Code.Ledger.Certs.T_DCert_792 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_228 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_certDepositUtxo_1718 v0 v1
  = let v2
          = coe
              MAlonzo.Code.Axiom.Set.Map.du_'8709''7504'_564
              (coe
                 MAlonzo.Code.Axiom.Set.d_th_1458
                 (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)) in
    coe
      (case coe v0 of
         MAlonzo.Code.Ledger.Certs.C_regpool_798 v3 v4
           -> coe
                MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_732
                (coe
                   MAlonzo.Code.Axiom.Set.d_th_1458
                   (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                   (coe MAlonzo.Code.Ledger.Certs.C_PoolDeposit_776 (coe v3))
                   (coe MAlonzo.Code.Ledger.PParams.d_poolDeposit_310 (coe v1)))
         _ -> coe v2)
-- Ledger.Utxo.Haskell.updateCertDepositsUtxo
d_updateCertDepositsUtxo_1724 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1598 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_228 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_792] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateCertDepositsUtxo_1724 v0 ~v1 v2 v3 v4
  = du_updateCertDepositsUtxo_1724 v0 v2 v3 v4
du_updateCertDepositsUtxo_1724 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_228 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_792] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateCertDepositsUtxo_1724 v0 v1 v2 v3
  = case coe v2 of
      [] -> coe v3
      (:) v4 v5
        -> coe
             MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__496
             MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
             (coe
                MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
                (coe
                   MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3204))
             (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_784
                (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2230 (coe v0)))
             (coe
                du_updateCertDepositsUtxo_1724 (coe v0) (coe v1) (coe v5) (coe v3))
             (coe du_certDepositUtxo_1718 (coe v4) (coe v1))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo.Haskell.updateProposalDeposits
d_updateProposalDeposits_1736 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1598 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_712] ->
  AgdaAny ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateProposalDeposits_1736 v0 ~v1 v2 v3 v4 v5
  = du_updateProposalDeposits_1736 v0 v2 v3 v4 v5
du_updateProposalDeposits_1736 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_712] ->
  AgdaAny ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateProposalDeposits_1736 v0 v1 v2 v3 v4
  = case coe v1 of
      [] -> coe v4
      (:) v5 v6
        -> coe
             MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__496
             MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
             (coe
                MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
                (coe
                   MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3204))
             (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_784
                (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2230 (coe v0)))
             (coe
                du_updateProposalDeposits_1736 (coe v0) (coe v6) (coe v2) (coe v3)
                (coe v4))
             (coe
                MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_732
                (coe
                   MAlonzo.Code.Axiom.Set.d_th_1458
                   (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                   (coe
                      MAlonzo.Code.Ledger.Certs.C_GovActionDeposit_780
                      (coe
                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v2)
                         (coe MAlonzo.Code.Data.List.Base.du_length_284 v6)))
                   (coe v3)))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo.Haskell.updateDeposits
d_updateDeposits_1748 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1598 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_228 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2624 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateDeposits_1748 v0 ~v1 v2 v3 v4
  = du_updateDeposits_1748 v0 v2 v3 v4
du_updateDeposits_1748 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_228 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2624 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateDeposits_1748 v0 v1 v2 v3
  = coe
      du_updateCertDepositsUtxo_1724 (coe v0) (coe v1)
      (coe MAlonzo.Code.Ledger.Transaction.d_txcerts_2678 (coe v2))
      (coe
         du_updateProposalDeposits_1736 (coe v0)
         (coe MAlonzo.Code.Ledger.Transaction.d_txprop_2684 (coe v2))
         (coe MAlonzo.Code.Ledger.Transaction.d_txid_2698 (coe v2))
         (coe MAlonzo.Code.Ledger.PParams.d_govActionDeposit_340 (coe v1))
         (coe v3))
-- Ledger.Utxo.Haskell._.collectPhaseTwoScriptInputs
d_collectPhaseTwoScriptInputs_1826 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1598 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_228 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2726 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collectPhaseTwoScriptInputs_1826 v0 v1
  = coe
      MAlonzo.Code.Ledger.ScriptValidation.d_collectPhaseTwoScriptInputs_2220
      (coe v0) (coe v1)
-- Ledger.Utxo.Haskell._.evalScripts
d_evalScripts_1836 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1598 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2726 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Bool
d_evalScripts_1836 v0 v1
  = coe
      MAlonzo.Code.Ledger.ScriptValidation.d_evalScripts_2238 (coe v0)
      (coe v1)
-- Ledger.Utxo.Haskell._⊢_⇀⦇_,UTXOS⦈_
d__'8866'_'8640''10631'_'44'UTXOS'10632'__1914 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'UTXOS'10632'__1914
  = C_Scripts'45'Yes_1994 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_Scripts'45'No_2074 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- _⊢_⇀⦇_,UTXOS⦈_
d__'8866'_'8640''10631'_'44'UTXOS'10632'__1921 a0 a1 a2 a3 a4 a5
  = ()
-- _⊢_⇀⦇_,UTXO⦈_
d__'8866'_'8640''10631'_'44'UTXO'10632'__1923 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'UTXOS'10632'__1994
  = C_Scripts'45'Yes_2074 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_Scripts'45'No_2154 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Utxo.Haskell._.txdonation
d_txdonation_1952 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1598 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1798 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1812 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2726 -> Integer
d_txdonation_1952 ~v0 ~v1 ~v2 v3 = du_txdonation_1952 v3
du_txdonation_1952 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2726 -> Integer
du_txdonation_1952 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txdonation_2686
      (coe MAlonzo.Code.Ledger.Transaction.d_body_2736 (coe v0))
-- Ledger.Utxo.Haskell._.txfee
d_txfee_1954 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1598 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1798 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1812 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2726 -> Integer
d_txfee_1954 ~v0 ~v1 ~v2 v3 = du_txfee_1954 v3
du_txfee_1954 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2726 -> Integer
du_txfee_1954 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txfee_2672
      (coe MAlonzo.Code.Ledger.Transaction.d_body_2736 (coe v0))
-- Ledger.Utxo.Haskell._.txins
d_txins_1958 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1598 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1798 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1812 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2726 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txins_1958 ~v0 ~v1 ~v2 v3 = du_txins_1958 v3
du_txins_1958 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2726 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_txins_1958 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txins_2666
      (coe MAlonzo.Code.Ledger.Transaction.d_body_2736 (coe v0))
-- Ledger.Utxo.Haskell._.pparams
d_pparams_1976 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1598 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1798 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1812 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2726 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_228
d_pparams_1976 ~v0 v1 ~v2 ~v3 = du_pparams_1976 v1
du_pparams_1976 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1798 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_228
du_pparams_1976 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_pparams_1808 (coe v0)
-- Ledger.Utxo.Haskell._.deposits
d_deposits_1984 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1598 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1798 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1812 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2726 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_1984 ~v0 ~v1 v2 ~v3 = du_deposits_1984 v2
du_deposits_1984 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1812 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_deposits_1984 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_deposits_1826 (coe v0)
-- Ledger.Utxo.Haskell._.donations
d_donations_1986 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1598 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1798 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1812 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2726 -> Integer
d_donations_1986 ~v0 ~v1 v2 ~v3 = du_donations_1986 v2
du_donations_1986 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1812 -> Integer
du_donations_1986 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_donations_1828 (coe v0)
-- Ledger.Utxo.Haskell._.fees
d_fees_1988 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1598 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1798 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1812 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2726 -> Integer
d_fees_1988 ~v0 ~v1 v2 ~v3 = du_fees_1988 v2
du_fees_1988 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1812 -> Integer
du_fees_1988 v0 = coe MAlonzo.Code.Ledger.Utxo.d_fees_1824 (coe v0)
-- Ledger.Utxo.Haskell._.utxo
d_utxo_1990 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1598 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1798 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1812 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2726 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_1990 ~v0 ~v1 v2 ~v3 = du_utxo_1990 v2
du_utxo_1990 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1812 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxo_1990 v0 = coe MAlonzo.Code.Ledger.Utxo.d_utxo_1822 (coe v0)
-- Ledger.Utxo.Haskell._.collateral
d_collateral_2014 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1598 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1798 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1812 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2726 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateral_2014 ~v0 ~v1 ~v2 v3 = du_collateral_2014 v3
du_collateral_2014 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2726 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_collateral_2014 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_collateral_2700
      (coe MAlonzo.Code.Ledger.Transaction.d_body_2736 (coe v0))
-- Ledger.Utxo.Haskell._.pparams
d_pparams_2056 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1598 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1798 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1812 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2726 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_228
d_pparams_2056 ~v0 v1 ~v2 ~v3 = du_pparams_2056 v1
du_pparams_2056 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1798 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_228
du_pparams_2056 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_pparams_1808 (coe v0)
-- Ledger.Utxo.Haskell._.deposits
d_deposits_2064 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1598 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1798 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1812 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2726 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_2064 ~v0 ~v1 v2 ~v3 = du_deposits_2064 v2
du_deposits_2064 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1812 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_deposits_2064 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_deposits_1826 (coe v0)
-- Ledger.Utxo.Haskell._.donations
d_donations_2066 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1598 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1798 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1812 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2726 -> Integer
d_donations_2066 ~v0 ~v1 v2 ~v3 = du_donations_2066 v2
du_donations_2066 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1812 -> Integer
du_donations_2066 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_donations_1828 (coe v0)
-- Ledger.Utxo.Haskell._.fees
d_fees_2068 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1598 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1798 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1812 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2726 -> Integer
d_fees_2068 ~v0 ~v1 v2 ~v3 = du_fees_2068 v2
du_fees_2068 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1812 -> Integer
du_fees_2068 v0 = coe MAlonzo.Code.Ledger.Utxo.d_fees_1824 (coe v0)
-- Ledger.Utxo.Haskell._.utxo
d_utxo_2070 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1598 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1798 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1812 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2726 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2070 ~v0 ~v1 v2 ~v3 = du_utxo_2070 v2
du_utxo_2070 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1812 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxo_2070 v0 = coe MAlonzo.Code.Ledger.Utxo.d_utxo_1822 (coe v0)
-- Ledger.Utxo.Haskell._⊢_⇀⦇_,UTXO⦈_
d__'8866'_'8640''10631'_'44'UTXO'10632'__2076 a0 a1 a2 a3 a4 a5
  = ()
newtype T__'8866'_'8640''10631'_'44'UTXO'10632'__2076
  = C_UTXO'45'inductive_2170 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Utxo.Haskell._.body
d_body_2084 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1598 ->
  T_GeneralizeTel_13061 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2624
d_body_2084 ~v0 ~v1 v2 = du_body_2084 v2
du_body_2084 ::
  T_GeneralizeTel_13061 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2624
du_body_2084 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_body_2736
      (coe d_'46'generalizedField'45'tx_13053 v0)
-- Ledger.Utxo.Haskell._.curTreasury
d_curTreasury_2092 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1598 ->
  T_GeneralizeTel_13061 -> Maybe Integer
d_curTreasury_2092 ~v0 ~v1 v2 = du_curTreasury_2092 v2
du_curTreasury_2092 :: T_GeneralizeTel_13061 -> Maybe Integer
du_curTreasury_2092 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_curTreasury_2694
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2736
         (coe d_'46'generalizedField'45'tx_13053 v0))
-- Ledger.Utxo.Haskell._.mint
d_mint_2094 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1598 ->
  T_GeneralizeTel_13061 -> AgdaAny
d_mint_2094 ~v0 ~v1 v2 = du_mint_2094 v2
du_mint_2094 :: T_GeneralizeTel_13061 -> AgdaAny
du_mint_2094 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_mint_2674
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2736
         (coe d_'46'generalizedField'45'tx_13053 v0))
-- Ledger.Utxo.Haskell._.refInputs
d_refInputs_2096 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1598 ->
  T_GeneralizeTel_13061 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_2096 ~v0 ~v1 v2 = du_refInputs_2096 v2
du_refInputs_2096 ::
  T_GeneralizeTel_13061 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_refInputs_2096 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_refInputs_2668
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2736
         (coe d_'46'generalizedField'45'tx_13053 v0))
-- Ledger.Utxo.Haskell._.txNetworkId
d_txNetworkId_2104 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1598 ->
  T_GeneralizeTel_13061 -> Maybe AgdaAny
d_txNetworkId_2104 ~v0 ~v1 v2 = du_txNetworkId_2104 v2
du_txNetworkId_2104 :: T_GeneralizeTel_13061 -> Maybe AgdaAny
du_txNetworkId_2104 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txNetworkId_2692
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2736
         (coe d_'46'generalizedField'45'tx_13053 v0))
-- Ledger.Utxo.Haskell._.txins
d_txins_2114 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1598 ->
  T_GeneralizeTel_13061 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txins_2114 ~v0 ~v1 v2 = du_txins_2114 v2
du_txins_2114 ::
  T_GeneralizeTel_13061 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_txins_2114 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txins_2666
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2736
         (coe d_'46'generalizedField'45'tx_13053 v0))
-- Ledger.Utxo.Haskell._.txouts
d_txouts_2116 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1598 ->
  T_GeneralizeTel_13061 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txouts_2116 ~v0 ~v1 v2 = du_txouts_2116 v2
du_txouts_2116 ::
  T_GeneralizeTel_13061 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txouts_2116 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txouts_2670
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2736
         (coe d_'46'generalizedField'45'tx_13053 v0))
-- Ledger.Utxo.Haskell._.txsize
d_txsize_2120 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1598 ->
  T_GeneralizeTel_13061 -> Integer
d_txsize_2120 ~v0 ~v1 v2 = du_txsize_2120 v2
du_txsize_2120 :: T_GeneralizeTel_13061 -> Integer
du_txsize_2120 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txsize_2696
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2736
         (coe d_'46'generalizedField'45'tx_13053 v0))
-- Ledger.Utxo.Haskell._.txvldt
d_txvldt_2124 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1598 ->
  T_GeneralizeTel_13061 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txvldt_2124 ~v0 ~v1 v2 = du_txvldt_2124 v2
du_txvldt_2124 ::
  T_GeneralizeTel_13061 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txvldt_2124 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txvldt_2676
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2736
         (coe d_'46'generalizedField'45'tx_13053 v0))
-- Ledger.Utxo.Haskell._.txwdrls
d_txwdrls_2128 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1598 ->
  T_GeneralizeTel_13061 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_2128 ~v0 ~v1 v2 = du_txwdrls_2128 v2
du_txwdrls_2128 ::
  T_GeneralizeTel_13061 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txwdrls_2128 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txwdrls_2680
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2736
         (coe d_'46'generalizedField'45'tx_13053 v0))
-- Ledger.Utxo.Haskell._.pparams
d_pparams_2132 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1598 ->
  T_GeneralizeTel_13061 -> MAlonzo.Code.Ledger.PParams.T_PParams_228
d_pparams_2132 ~v0 ~v1 v2 = du_pparams_2132 v2
du_pparams_2132 ::
  T_GeneralizeTel_13061 -> MAlonzo.Code.Ledger.PParams.T_PParams_228
du_pparams_2132 v0
  = coe
      MAlonzo.Code.Ledger.Utxo.d_pparams_1808
      (coe d_'46'generalizedField'45'Γ_13055 v0)
-- Ledger.Utxo.Haskell._.slot
d_slot_2134 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1598 ->
  T_GeneralizeTel_13061 -> AgdaAny
d_slot_2134 ~v0 ~v1 v2 = du_slot_2134 v2
du_slot_2134 :: T_GeneralizeTel_13061 -> AgdaAny
du_slot_2134 v0
  = coe
      MAlonzo.Code.Ledger.Utxo.d_slot_1806
      (coe d_'46'generalizedField'45'Γ_13055 v0)
-- Ledger.Utxo.Haskell._.treasury
d_treasury_2136 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1598 ->
  T_GeneralizeTel_13061 -> Integer
d_treasury_2136 ~v0 ~v1 v2 = du_treasury_2136 v2
du_treasury_2136 :: T_GeneralizeTel_13061 -> Integer
du_treasury_2136 v0
  = coe
      MAlonzo.Code.Ledger.Utxo.d_treasury_1810
      (coe d_'46'generalizedField'45'Γ_13055 v0)
-- Ledger.Utxo.Haskell._.utxo
d_utxo_2146 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1598 ->
  T_GeneralizeTel_13061 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2146 ~v0 ~v1 v2 = du_utxo_2146 v2
du_utxo_2146 ::
  T_GeneralizeTel_13061 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxo_2146 v0
  = coe
      MAlonzo.Code.Ledger.Utxo.d_utxo_1822
      (coe d_'46'generalizedField'45's_13057 v0)
-- Ledger.Utxo.Haskell..generalizedField-tx
d_'46'generalizedField'45'tx_13053 ::
  T_GeneralizeTel_13061 -> MAlonzo.Code.Ledger.Transaction.T_Tx_2726
d_'46'generalizedField'45'tx_13053
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo.Haskell..generalizedField-Γ
d_'46'generalizedField'45'Γ_13055 ::
  T_GeneralizeTel_13061 -> MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1798
d_'46'generalizedField'45'Γ_13055 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo.Haskell..generalizedField-s
d_'46'generalizedField'45's_13057 ::
  T_GeneralizeTel_13061 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1812
d_'46'generalizedField'45's_13057 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo.Haskell..generalizedField-s'
d_'46'generalizedField'45's''_13059 ::
  T_GeneralizeTel_13061 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1812
d_'46'generalizedField'45's''_13059
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo.Haskell.GeneralizeTel
d_GeneralizeTel_13061 a0 a1 = ()
data T_GeneralizeTel_13061
  = C_mkGeneralizeTel_13063 MAlonzo.Code.Ledger.Transaction.T_Tx_2726
                            MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1798
                            MAlonzo.Code.Ledger.Utxo.T_UTxOState_1812
                            MAlonzo.Code.Ledger.Utxo.T_UTxOState_1812
