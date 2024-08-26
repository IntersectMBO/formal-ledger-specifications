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
d_Tx_436 a0 = ()
-- _.TxBody
d_TxBody_438 a0 = ()
-- _.coin
d_coin_500 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny -> Integer
d_coin_500 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_coin_204
      (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2220 (coe v0))
-- _.getValueʰ
d_getValue'688'_544 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_getValue'688'_544 ~v0 = du_getValue'688'_544
du_getValue'688'_544 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_getValue'688'_544
  = coe MAlonzo.Code.Ledger.Transaction.du_getValue'688'_2860
-- _.inject
d_inject_554 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  Integer -> AgdaAny
d_inject_554 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_inject_206
      (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2220 (coe v0))
-- _.netId
d_netId_596 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
d_netId_596 ~v0 = du_netId_596
du_netId_596 :: MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
du_netId_596 = coe MAlonzo.Code.Ledger.Address.du_netId_112
-- _.txOutHash
d_txOutHash_660 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txOutHash_660 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txOutHash_2850 (coe v0)
-- Ledger.Utxo.Haskell._._*↓_
d__'42''8595'__1636 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1644 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 -> Integer -> Integer
d__'42''8595'__1636 ~v0 v1 v2 = du__'42''8595'__1636 v1 v2
du__'42''8595'__1636 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 -> Integer -> Integer
du__'42''8595'__1636 v0 v1
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
d__'61''62''7495'__1638 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1644 ->
  Bool -> Bool -> Bool
d__'61''62''7495'__1638 ~v0 ~v1 = du__'61''62''7495'__1638
du__'61''62''7495'__1638 :: Bool -> Bool -> Bool
du__'61''62''7495'__1638
  = coe MAlonzo.Code.Ledger.Utxo.du__'61''62''7495'__2202
-- Ledger.Utxo.Haskell._._≡?_
d__'8801''63'__1640 a0 a1 a2 a3 a4 = ()
-- Ledger.Utxo.Haskell._._≤ᵇ_
d__'8804''7495'__1642 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1644 ->
  Integer -> Integer -> Bool
d__'8804''7495'__1642 ~v0 ~v1 = du__'8804''7495'__1642
du__'8804''7495'__1642 :: Integer -> Integer -> Bool
du__'8804''7495'__1642
  = coe MAlonzo.Code.Ledger.Utxo.du__'8804''7495'__2208
-- Ledger.Utxo.Haskell._._≥ᵇ_
d__'8805''7495'__1644 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1644 ->
  Integer -> Integer -> Bool
d__'8805''7495'__1644 ~v0 ~v1 = du__'8805''7495'__1644
du__'8805''7495'__1644 :: Integer -> Integer -> Bool
du__'8805''7495'__1644
  = coe MAlonzo.Code.Ledger.Utxo.du__'8805''7495'__2210
-- Ledger.Utxo.Haskell._.Dec-inInterval
d_Dec'45'inInterval_1646 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1644 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'inInterval_1646 v0 ~v1 = du_Dec'45'inInterval_1646 v0
du_Dec'45'inInterval_1646 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'inInterval_1646 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_Dec'45'inInterval_2096 (coe v0)
-- Ledger.Utxo.Haskell._.HasCoin-Map
d_HasCoin'45'Map_1648 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1644 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
d_HasCoin'45'Map_1648 ~v0 ~v1 = du_HasCoin'45'Map_1648
du_HasCoin'45'Map_1648 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
du_HasCoin'45'Map_1648 v0 v1
  = coe MAlonzo.Code.Ledger.Utxo.du_HasCoin'45'Map_1742 v1
-- Ledger.Utxo.Haskell._.HasCoin-UTxO
d_HasCoin'45'UTxO_1650 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1644 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
d_HasCoin'45'UTxO_1650 v0 ~v1 = du_HasCoin'45'UTxO_1650 v0
du_HasCoin'45'UTxO_1650 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
du_HasCoin'45'UTxO_1650 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_HasCoin'45'UTxO_1914 (coe v0)
-- Ledger.Utxo.Haskell._.HasCoin-UTxOState
d_HasCoin'45'UTxOState_1652 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1644 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
d_HasCoin'45'UTxOState_1652 v0 ~v1
  = du_HasCoin'45'UTxOState_1652 v0
du_HasCoin'45'UTxOState_1652 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
du_HasCoin'45'UTxOState_1652 v0
  = coe
      MAlonzo.Code.Ledger.Utxo.du_HasCoin'45'UTxOState_2198 (coe v0)
-- Ledger.Utxo.Haskell._.Scripts-No-premises
d_Scripts'45'No'45'premises_1656 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1644 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1844 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1858 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2826 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_Scripts'45'No'45'premises_1656 v0 v1
  = coe
      MAlonzo.Code.Ledger.Utxo.d_Scripts'45'No'45'premises_2580 (coe v0)
      (coe v1)
-- Ledger.Utxo.Haskell._.Scripts-Yes-premises
d_Scripts'45'Yes'45'premises_1660 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1644 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1844 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1858 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2826 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_Scripts'45'Yes'45'premises_1660 v0 v1
  = coe
      MAlonzo.Code.Ledger.Utxo.d_Scripts'45'Yes'45'premises_2578 (coe v0)
      (coe v1)
-- Ledger.Utxo.Haskell._.UTXO-premises
d_UTXO'45'premises_1664 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1644 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2826 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1844 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1858 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTXO'45'premises_1664 v0 v1
  = coe
      MAlonzo.Code.Ledger.Utxo.d_UTXO'45'premises_2766 (coe v0) (coe v1)
-- Ledger.Utxo.Haskell._.UTxOEnv
d_UTxOEnv_1666 a0 a1 = ()
-- Ledger.Utxo.Haskell._.UTxOState
d_UTxOState_1668 a0 a1 = ()
-- Ledger.Utxo.Haskell._.balance
d_balance_1670 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1644 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_balance_1670 v0 ~v1 = du_balance_1670 v0
du_balance_1670 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_balance_1670 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_balance_1894 (coe v0)
-- Ledger.Utxo.Haskell._.cbalance
d_cbalance_1674 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1644 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_cbalance_1674 v0 ~v1 = du_cbalance_1674 v0
du_cbalance_1674 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_cbalance_1674 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_cbalance_1900 (coe v0)
-- Ledger.Utxo.Haskell._.certRefund
d_certRefund_1676 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1644 ->
  MAlonzo.Code.Ledger.Certs.T_DCert_828 ->
  [MAlonzo.Code.Ledger.Certs.T_DepositPurpose_808]
d_certRefund_1676 ~v0 ~v1 = du_certRefund_1676
du_certRefund_1676 ::
  MAlonzo.Code.Ledger.Certs.T_DCert_828 ->
  [MAlonzo.Code.Ledger.Certs.T_DepositPurpose_808]
du_certRefund_1676
  = coe MAlonzo.Code.Ledger.Utxo.du_certRefund_1930
-- Ledger.Utxo.Haskell._.coinPolicies
d_coinPolicies_1678 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1644 -> [AgdaAny]
d_coinPolicies_1678 v0 ~v1 = du_coinPolicies_1678 v0
du_coinPolicies_1678 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  [AgdaAny]
du_coinPolicies_1678 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_coinPolicies_2226 (coe v0)
-- Ledger.Utxo.Haskell._.consumed
d_consumed_1680 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1644 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_240 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1858 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2724 -> AgdaAny
d_consumed_1680 v0 ~v1 = du_consumed_1680 v0
du_consumed_1680 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_240 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1858 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2724 -> AgdaAny
du_consumed_1680 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_consumed_2400 (coe v0)
-- Ledger.Utxo.Haskell._.depositRefunds
d_depositRefunds_1682 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1644 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_240 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1858 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2724 -> Integer
d_depositRefunds_1682 v0 ~v1 = du_depositRefunds_1682 v0
du_depositRefunds_1682 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_240 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1858 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2724 -> Integer
du_depositRefunds_1682 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_depositRefunds_2384 (coe v0)
-- Ledger.Utxo.Haskell._.depositsChange
d_depositsChange_1684 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1644 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_240 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2724 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_depositsChange_1684 v0 ~v1 = du_depositsChange_1684 v0
du_depositsChange_1684 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_240 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2724 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_depositsChange_1684 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_depositsChange_2066 (coe v0)
-- Ledger.Utxo.Haskell._.feesOK
d_feesOK_1686 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1644 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_240 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2826 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Bool
d_feesOK_1686 v0 v1
  = coe MAlonzo.Code.Ledger.Utxo.d_feesOK_2232 (coe v0) (coe v1)
-- Ledger.Utxo.Haskell._.getDataHashes
d_getDataHashes_1688 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1644 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> [AgdaAny]
d_getDataHashes_1688 ~v0 ~v1 = du_getDataHashes_1688
du_getDataHashes_1688 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> [AgdaAny]
du_getDataHashes_1688
  = coe MAlonzo.Code.Ledger.Utxo.du_getDataHashes_1766
-- Ledger.Utxo.Haskell._.getInputHashes
d_getInputHashes_1690 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1644 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2826 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
d_getInputHashes_1690 v0 ~v1 = du_getInputHashes_1690 v0
du_getInputHashes_1690 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2826 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
du_getInputHashes_1690 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_getInputHashes_1770 (coe v0)
-- Ledger.Utxo.Haskell._.inInterval
d_inInterval_1692 a0 a1 a2 a3 = ()
-- Ledger.Utxo.Haskell._.isAdaOnlyᵇ
d_isAdaOnly'7495'_1694 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1644 ->
  AgdaAny -> Bool
d_isAdaOnly'7495'_1694 v0 ~v1 = du_isAdaOnly'7495'_1694 v0
du_isAdaOnly'7495'_1694 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny -> Bool
du_isAdaOnly'7495'_1694 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_isAdaOnly'7495'_2228 (coe v0)
-- Ledger.Utxo.Haskell._.isTwoPhaseScriptAddress
d_isTwoPhaseScriptAddress_1696 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1644 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2826 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Bool
d_isTwoPhaseScriptAddress_1696 v0 ~v1
  = du_isTwoPhaseScriptAddress_1696 v0
du_isTwoPhaseScriptAddress_1696 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2826 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Bool
du_isTwoPhaseScriptAddress_1696 v0
  = coe
      MAlonzo.Code.Ledger.Utxo.du_isTwoPhaseScriptAddress_1754 (coe v0)
-- Ledger.Utxo.Haskell._.minfee
d_minfee_1700 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1644 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_240 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2826 -> Integer
d_minfee_1700 v0 v1
  = coe MAlonzo.Code.Ledger.Utxo.d_minfee_1904 (coe v0) (coe v1)
-- Ledger.Utxo.Haskell._.newDeposits
d_newDeposits_1702 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1644 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_240 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1858 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2724 -> Integer
d_newDeposits_1702 v0 ~v1 = du_newDeposits_1702 v0
du_newDeposits_1702 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_240 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1858 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2724 -> Integer
du_newDeposits_1702 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_newDeposits_2392 (coe v0)
-- Ledger.Utxo.Haskell._.outs
d_outs_1706 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1644 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2724 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_outs_1706 ~v0 ~v1 = du_outs_1706
du_outs_1706 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2724 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_outs_1706 = coe MAlonzo.Code.Ledger.Utxo.du_outs_1888
-- Ledger.Utxo.Haskell._.produced
d_produced_1708 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1644 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_240 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1858 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2724 -> AgdaAny
d_produced_1708 v0 ~v1 = du_produced_1708 v0
du_produced_1708 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_240 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1858 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2724 -> AgdaAny
du_produced_1708 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_produced_2408 (coe v0)
-- Ledger.Utxo.Haskell._.proposalDepositsΔ
d_proposalDepositsΔ_1710 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1644 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_748] ->
  MAlonzo.Code.Ledger.PParams.T_PParams_240 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2724 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_proposalDepositsΔ_1710 v0 ~v1 = du_proposalDepositsΔ_1710 v0
du_proposalDepositsΔ_1710 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_748] ->
  MAlonzo.Code.Ledger.PParams.T_PParams_240 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2724 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_proposalDepositsΔ_1710 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_proposalDepositsΔ_2012 (coe v0)
-- Ledger.Utxo.Haskell._.totExUnits
d_totExUnits_1712 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1644 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2826 -> AgdaAny
d_totExUnits_1712 v0 ~v1 = du_totExUnits_1712 v0
du_totExUnits_1712 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2826 -> AgdaAny
du_totExUnits_1712 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_totExUnits_1826 (coe v0)
-- Ledger.Utxo.Haskell._.utxoEntrySize
d_utxoEntrySize_1716 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1644 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_utxoEntrySize_1716 v0 ~v1 = du_utxoEntrySize_1716 v0
du_utxoEntrySize_1716 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_utxoEntrySize_1716 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_utxoEntrySize_1840 (coe v0)
-- Ledger.Utxo.Haskell._.utxoEntrySizeWithoutVal
d_utxoEntrySizeWithoutVal_1718 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1644 -> Integer
d_utxoEntrySizeWithoutVal_1718 ~v0 ~v1
  = du_utxoEntrySizeWithoutVal_1718
du_utxoEntrySizeWithoutVal_1718 :: Integer
du_utxoEntrySizeWithoutVal_1718
  = coe MAlonzo.Code.Ledger.Utxo.du_utxoEntrySizeWithoutVal_1838
-- Ledger.Utxo.Haskell._.≟-∅ᵇ
d_'8799''45''8709''7495'_1720 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1644 ->
  () -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> [AgdaAny] -> Bool
d_'8799''45''8709''7495'_1720 ~v0 ~v1
  = du_'8799''45''8709''7495'_1720
du_'8799''45''8709''7495'_1720 ::
  () -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> [AgdaAny] -> Bool
du_'8799''45''8709''7495'_1720 v0 v1 v2
  = coe MAlonzo.Code.Ledger.Utxo.du_'8799''45''8709''7495'_2222 v1 v2
-- Ledger.Utxo.Haskell._.≟?
d_'8799''63'_1722 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1644 ->
  () ->
  Maybe AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_'8799''63'_1722 ~v0 ~v1 = du_'8799''63'_1722
du_'8799''63'_1722 ::
  () ->
  Maybe AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_'8799''63'_1722 v0 v1 v2 v3
  = coe MAlonzo.Code.Ledger.Utxo.du_'8799''63'_2610 v1 v2 v3
-- Ledger.Utxo.Haskell._.UTxOEnv.pparams
d_pparams_1738 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1844 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_240
d_pparams_1738 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_pparams_1854 (coe v0)
-- Ledger.Utxo.Haskell._.UTxOEnv.slot
d_slot_1740 :: MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1844 -> AgdaAny
d_slot_1740 v0 = coe MAlonzo.Code.Ledger.Utxo.d_slot_1852 (coe v0)
-- Ledger.Utxo.Haskell._.UTxOEnv.treasury
d_treasury_1742 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1844 -> Integer
d_treasury_1742 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_treasury_1856 (coe v0)
-- Ledger.Utxo.Haskell._.UTxOState.deposits
d_deposits_1746 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1858 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_1746 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_deposits_1872 (coe v0)
-- Ledger.Utxo.Haskell._.UTxOState.donations
d_donations_1748 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1858 -> Integer
d_donations_1748 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_donations_1874 (coe v0)
-- Ledger.Utxo.Haskell._.UTxOState.fees
d_fees_1750 :: MAlonzo.Code.Ledger.Utxo.T_UTxOState_1858 -> Integer
d_fees_1750 v0 = coe MAlonzo.Code.Ledger.Utxo.d_fees_1870 (coe v0)
-- Ledger.Utxo.Haskell._.UTxOState.utxo
d_utxo_1752 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1858 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_1752 v0 = coe MAlonzo.Code.Ledger.Utxo.d_utxo_1868 (coe v0)
-- Ledger.Utxo.Haskell.certDepositUtxo
d_certDepositUtxo_1764 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1644 ->
  MAlonzo.Code.Ledger.Certs.T_DCert_828 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_240 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_certDepositUtxo_1764 ~v0 ~v1 v2 v3
  = du_certDepositUtxo_1764 v2 v3
du_certDepositUtxo_1764 ::
  MAlonzo.Code.Ledger.Certs.T_DCert_828 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_240 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_certDepositUtxo_1764 v0 v1
  = let v2
          = coe
              MAlonzo.Code.Axiom.Set.Map.du_'8709''7504'_564
              (coe
                 MAlonzo.Code.Axiom.Set.d_th_1458
                 (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)) in
    coe
      (case coe v0 of
         MAlonzo.Code.Ledger.Certs.C_regpool_834 v3 v4
           -> coe
                MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_732
                (coe
                   MAlonzo.Code.Axiom.Set.d_th_1458
                   (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                   (coe MAlonzo.Code.Ledger.Certs.C_PoolDeposit_812 (coe v3))
                   (coe MAlonzo.Code.Ledger.PParams.d_poolDeposit_322 (coe v1)))
         _ -> coe v2)
-- Ledger.Utxo.Haskell.updateCertDepositsUtxo
d_updateCertDepositsUtxo_1770 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1644 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_240 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_828] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateCertDepositsUtxo_1770 v0 ~v1 v2 v3 v4
  = du_updateCertDepositsUtxo_1770 v0 v2 v3 v4
du_updateCertDepositsUtxo_1770 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_240 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_828] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateCertDepositsUtxo_1770 v0 v1 v2 v3
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
             (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_820
                (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2338 (coe v0)))
             (coe
                du_updateCertDepositsUtxo_1770 (coe v0) (coe v1) (coe v5) (coe v3))
             (coe du_certDepositUtxo_1764 (coe v4) (coe v1))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo.Haskell.updateProposalDeposits
d_updateProposalDeposits_1782 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1644 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_748] ->
  AgdaAny ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateProposalDeposits_1782 v0 ~v1 v2 v3 v4 v5
  = du_updateProposalDeposits_1782 v0 v2 v3 v4 v5
du_updateProposalDeposits_1782 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_748] ->
  AgdaAny ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateProposalDeposits_1782 v0 v1 v2 v3 v4
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
             (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_820
                (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2338 (coe v0)))
             (coe
                du_updateProposalDeposits_1782 (coe v0) (coe v6) (coe v2) (coe v3)
                (coe v4))
             (coe
                MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_732
                (coe
                   MAlonzo.Code.Axiom.Set.d_th_1458
                   (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                   (coe
                      MAlonzo.Code.Ledger.Certs.C_GovActionDeposit_816
                      (coe
                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v2)
                         (coe MAlonzo.Code.Data.List.Base.du_length_304 v6)))
                   (coe v3)))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo.Haskell.updateDeposits
d_updateDeposits_1794 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1644 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_240 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2724 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateDeposits_1794 v0 ~v1 v2 v3 v4
  = du_updateDeposits_1794 v0 v2 v3 v4
du_updateDeposits_1794 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_240 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2724 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateDeposits_1794 v0 v1 v2 v3
  = coe
      du_updateCertDepositsUtxo_1770 (coe v0) (coe v1)
      (coe MAlonzo.Code.Ledger.Transaction.d_txcerts_2778 (coe v2))
      (coe
         du_updateProposalDeposits_1782 (coe v0)
         (coe MAlonzo.Code.Ledger.Transaction.d_txprop_2784 (coe v2))
         (coe MAlonzo.Code.Ledger.Transaction.d_txid_2798 (coe v2))
         (coe MAlonzo.Code.Ledger.PParams.d_govActionDeposit_352 (coe v1))
         (coe v3))
-- Ledger.Utxo.Haskell._.collectPhaseTwoScriptInputs
d_collectPhaseTwoScriptInputs_1872 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1644 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_240 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2826 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collectPhaseTwoScriptInputs_1872 v0 v1
  = coe
      MAlonzo.Code.Ledger.ScriptValidation.d_collectPhaseTwoScriptInputs_2266
      (coe v0) (coe v1)
-- Ledger.Utxo.Haskell._.evalScripts
d_evalScripts_1882 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1644 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2826 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Bool
d_evalScripts_1882 v0 v1
  = coe
      MAlonzo.Code.Ledger.ScriptValidation.d_evalScripts_2284 (coe v0)
      (coe v1)
-- _⊢_⇀⦇_,UTXOS⦈_
d__'8866'_'8640''10631'_'44'UTXOS'10632'__1955 a0 a1 a2 a3 a4 a5
  = ()
-- _⊢_⇀⦇_,UTXO⦈_
d__'8866'_'8640''10631'_'44'UTXO'10632'__1957 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Utxo.Haskell._⊢_⇀⦇_,UTXOS⦈_
d__'8866'_'8640''10631'_'44'UTXOS'10632'__1960 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'UTXOS'10632'__1960
  = C_Scripts'45'Yes_2040 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_Scripts'45'No_2120 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Utxo.Haskell._.txdonation
d_txdonation_1998 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1644 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1844 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1858 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2826 -> Integer
d_txdonation_1998 ~v0 ~v1 ~v2 v3 = du_txdonation_1998 v3
du_txdonation_1998 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2826 -> Integer
du_txdonation_1998 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txdonation_2786
      (coe MAlonzo.Code.Ledger.Transaction.d_body_2836 (coe v0))
-- Ledger.Utxo.Haskell._.txfee
d_txfee_2000 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1644 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1844 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1858 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2826 -> Integer
d_txfee_2000 ~v0 ~v1 ~v2 v3 = du_txfee_2000 v3
du_txfee_2000 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2826 -> Integer
du_txfee_2000 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txfee_2772
      (coe MAlonzo.Code.Ledger.Transaction.d_body_2836 (coe v0))
-- Ledger.Utxo.Haskell._.txins
d_txins_2004 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1644 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1844 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1858 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2826 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txins_2004 ~v0 ~v1 ~v2 v3 = du_txins_2004 v3
du_txins_2004 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2826 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_txins_2004 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txins_2766
      (coe MAlonzo.Code.Ledger.Transaction.d_body_2836 (coe v0))
-- Ledger.Utxo.Haskell._.pparams
d_pparams_2022 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1644 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1844 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1858 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2826 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_240
d_pparams_2022 ~v0 v1 ~v2 ~v3 = du_pparams_2022 v1
du_pparams_2022 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1844 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_240
du_pparams_2022 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_pparams_1854 (coe v0)
-- Ledger.Utxo.Haskell._.deposits
d_deposits_2030 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1644 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1844 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1858 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2826 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_2030 ~v0 ~v1 v2 ~v3 = du_deposits_2030 v2
du_deposits_2030 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1858 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_deposits_2030 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_deposits_1872 (coe v0)
-- Ledger.Utxo.Haskell._.donations
d_donations_2032 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1644 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1844 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1858 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2826 -> Integer
d_donations_2032 ~v0 ~v1 v2 ~v3 = du_donations_2032 v2
du_donations_2032 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1858 -> Integer
du_donations_2032 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_donations_1874 (coe v0)
-- Ledger.Utxo.Haskell._.fees
d_fees_2034 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1644 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1844 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1858 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2826 -> Integer
d_fees_2034 ~v0 ~v1 v2 ~v3 = du_fees_2034 v2
du_fees_2034 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1858 -> Integer
du_fees_2034 v0 = coe MAlonzo.Code.Ledger.Utxo.d_fees_1870 (coe v0)
-- Ledger.Utxo.Haskell._.utxo
d_utxo_2036 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1644 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1844 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1858 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2826 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2036 ~v0 ~v1 v2 ~v3 = du_utxo_2036 v2
du_utxo_2036 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1858 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxo_2036 v0 = coe MAlonzo.Code.Ledger.Utxo.d_utxo_1868 (coe v0)
-- Ledger.Utxo.Haskell._.collateral
d_collateral_2060 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1644 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1844 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1858 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2826 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateral_2060 ~v0 ~v1 ~v2 v3 = du_collateral_2060 v3
du_collateral_2060 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2826 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_collateral_2060 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_collateral_2800
      (coe MAlonzo.Code.Ledger.Transaction.d_body_2836 (coe v0))
-- Ledger.Utxo.Haskell._.pparams
d_pparams_2102 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1644 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1844 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1858 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2826 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_240
d_pparams_2102 ~v0 v1 ~v2 ~v3 = du_pparams_2102 v1
du_pparams_2102 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1844 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_240
du_pparams_2102 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_pparams_1854 (coe v0)
-- Ledger.Utxo.Haskell._.deposits
d_deposits_2110 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1644 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1844 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1858 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2826 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_2110 ~v0 ~v1 v2 ~v3 = du_deposits_2110 v2
du_deposits_2110 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1858 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_deposits_2110 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_deposits_1872 (coe v0)
-- Ledger.Utxo.Haskell._.donations
d_donations_2112 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1644 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1844 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1858 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2826 -> Integer
d_donations_2112 ~v0 ~v1 v2 ~v3 = du_donations_2112 v2
du_donations_2112 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1858 -> Integer
du_donations_2112 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_donations_1874 (coe v0)
-- Ledger.Utxo.Haskell._.fees
d_fees_2114 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1644 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1844 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1858 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2826 -> Integer
d_fees_2114 ~v0 ~v1 v2 ~v3 = du_fees_2114 v2
du_fees_2114 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1858 -> Integer
du_fees_2114 v0 = coe MAlonzo.Code.Ledger.Utxo.d_fees_1870 (coe v0)
-- Ledger.Utxo.Haskell._.utxo
d_utxo_2116 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1644 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1844 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1858 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2826 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2116 ~v0 ~v1 v2 ~v3 = du_utxo_2116 v2
du_utxo_2116 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1858 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxo_2116 v0 = coe MAlonzo.Code.Ledger.Utxo.d_utxo_1868 (coe v0)
-- Ledger.Utxo.Haskell._⊢_⇀⦇_,UTXO⦈_
d__'8866'_'8640''10631'_'44'UTXO'10632'__2122 a0 a1 a2 a3 a4 a5
  = ()
newtype T__'8866'_'8640''10631'_'44'UTXO'10632'__2122
  = C_UTXO'45'inductive_2216 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Utxo.Haskell._.body
d_body_2130 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1644 ->
  T_GeneralizeTel_13095 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2724
d_body_2130 ~v0 ~v1 v2 = du_body_2130 v2
du_body_2130 ::
  T_GeneralizeTel_13095 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2724
du_body_2130 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_body_2836
      (coe d_'46'generalizedField'45'tx_13087 v0)
-- Ledger.Utxo.Haskell._.curTreasury
d_curTreasury_2138 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1644 ->
  T_GeneralizeTel_13095 -> Maybe Integer
d_curTreasury_2138 ~v0 ~v1 v2 = du_curTreasury_2138 v2
du_curTreasury_2138 :: T_GeneralizeTel_13095 -> Maybe Integer
du_curTreasury_2138 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_curTreasury_2794
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2836
         (coe d_'46'generalizedField'45'tx_13087 v0))
-- Ledger.Utxo.Haskell._.mint
d_mint_2140 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1644 ->
  T_GeneralizeTel_13095 -> AgdaAny
d_mint_2140 ~v0 ~v1 v2 = du_mint_2140 v2
du_mint_2140 :: T_GeneralizeTel_13095 -> AgdaAny
du_mint_2140 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_mint_2774
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2836
         (coe d_'46'generalizedField'45'tx_13087 v0))
-- Ledger.Utxo.Haskell._.refInputs
d_refInputs_2142 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1644 ->
  T_GeneralizeTel_13095 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_2142 ~v0 ~v1 v2 = du_refInputs_2142 v2
du_refInputs_2142 ::
  T_GeneralizeTel_13095 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_refInputs_2142 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_refInputs_2768
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2836
         (coe d_'46'generalizedField'45'tx_13087 v0))
-- Ledger.Utxo.Haskell._.txNetworkId
d_txNetworkId_2150 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1644 ->
  T_GeneralizeTel_13095 -> Maybe AgdaAny
d_txNetworkId_2150 ~v0 ~v1 v2 = du_txNetworkId_2150 v2
du_txNetworkId_2150 :: T_GeneralizeTel_13095 -> Maybe AgdaAny
du_txNetworkId_2150 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txNetworkId_2792
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2836
         (coe d_'46'generalizedField'45'tx_13087 v0))
-- Ledger.Utxo.Haskell._.txins
d_txins_2160 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1644 ->
  T_GeneralizeTel_13095 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txins_2160 ~v0 ~v1 v2 = du_txins_2160 v2
du_txins_2160 ::
  T_GeneralizeTel_13095 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_txins_2160 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txins_2766
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2836
         (coe d_'46'generalizedField'45'tx_13087 v0))
-- Ledger.Utxo.Haskell._.txouts
d_txouts_2162 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1644 ->
  T_GeneralizeTel_13095 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txouts_2162 ~v0 ~v1 v2 = du_txouts_2162 v2
du_txouts_2162 ::
  T_GeneralizeTel_13095 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txouts_2162 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txouts_2770
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2836
         (coe d_'46'generalizedField'45'tx_13087 v0))
-- Ledger.Utxo.Haskell._.txsize
d_txsize_2166 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1644 ->
  T_GeneralizeTel_13095 -> Integer
d_txsize_2166 ~v0 ~v1 v2 = du_txsize_2166 v2
du_txsize_2166 :: T_GeneralizeTel_13095 -> Integer
du_txsize_2166 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txsize_2796
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2836
         (coe d_'46'generalizedField'45'tx_13087 v0))
-- Ledger.Utxo.Haskell._.txvldt
d_txvldt_2170 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1644 ->
  T_GeneralizeTel_13095 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txvldt_2170 ~v0 ~v1 v2 = du_txvldt_2170 v2
du_txvldt_2170 ::
  T_GeneralizeTel_13095 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txvldt_2170 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txvldt_2776
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2836
         (coe d_'46'generalizedField'45'tx_13087 v0))
-- Ledger.Utxo.Haskell._.txwdrls
d_txwdrls_2174 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1644 ->
  T_GeneralizeTel_13095 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_2174 ~v0 ~v1 v2 = du_txwdrls_2174 v2
du_txwdrls_2174 ::
  T_GeneralizeTel_13095 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txwdrls_2174 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txwdrls_2780
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2836
         (coe d_'46'generalizedField'45'tx_13087 v0))
-- Ledger.Utxo.Haskell._.pparams
d_pparams_2178 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1644 ->
  T_GeneralizeTel_13095 -> MAlonzo.Code.Ledger.PParams.T_PParams_240
d_pparams_2178 ~v0 ~v1 v2 = du_pparams_2178 v2
du_pparams_2178 ::
  T_GeneralizeTel_13095 -> MAlonzo.Code.Ledger.PParams.T_PParams_240
du_pparams_2178 v0
  = coe
      MAlonzo.Code.Ledger.Utxo.d_pparams_1854
      (coe d_'46'generalizedField'45'Γ_13089 v0)
-- Ledger.Utxo.Haskell._.slot
d_slot_2180 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1644 ->
  T_GeneralizeTel_13095 -> AgdaAny
d_slot_2180 ~v0 ~v1 v2 = du_slot_2180 v2
du_slot_2180 :: T_GeneralizeTel_13095 -> AgdaAny
du_slot_2180 v0
  = coe
      MAlonzo.Code.Ledger.Utxo.d_slot_1852
      (coe d_'46'generalizedField'45'Γ_13089 v0)
-- Ledger.Utxo.Haskell._.treasury
d_treasury_2182 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1644 ->
  T_GeneralizeTel_13095 -> Integer
d_treasury_2182 ~v0 ~v1 v2 = du_treasury_2182 v2
du_treasury_2182 :: T_GeneralizeTel_13095 -> Integer
du_treasury_2182 v0
  = coe
      MAlonzo.Code.Ledger.Utxo.d_treasury_1856
      (coe d_'46'generalizedField'45'Γ_13089 v0)
-- Ledger.Utxo.Haskell._.utxo
d_utxo_2192 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1644 ->
  T_GeneralizeTel_13095 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2192 ~v0 ~v1 v2 = du_utxo_2192 v2
du_utxo_2192 ::
  T_GeneralizeTel_13095 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxo_2192 v0
  = coe
      MAlonzo.Code.Ledger.Utxo.d_utxo_1868
      (coe d_'46'generalizedField'45's_13091 v0)
-- Ledger.Utxo.Haskell..generalizedField-tx
d_'46'generalizedField'45'tx_13087 ::
  T_GeneralizeTel_13095 -> MAlonzo.Code.Ledger.Transaction.T_Tx_2826
d_'46'generalizedField'45'tx_13087
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo.Haskell..generalizedField-Γ
d_'46'generalizedField'45'Γ_13089 ::
  T_GeneralizeTel_13095 -> MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1844
d_'46'generalizedField'45'Γ_13089 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo.Haskell..generalizedField-s
d_'46'generalizedField'45's_13091 ::
  T_GeneralizeTel_13095 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1858
d_'46'generalizedField'45's_13091 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo.Haskell..generalizedField-s'
d_'46'generalizedField'45's''_13093 ::
  T_GeneralizeTel_13095 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1858
d_'46'generalizedField'45's''_13093
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo.Haskell.GeneralizeTel
d_GeneralizeTel_13095 a0 a1 = ()
data T_GeneralizeTel_13095
  = C_mkGeneralizeTel_13097 MAlonzo.Code.Ledger.Transaction.T_Tx_2826
                            MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1844
                            MAlonzo.Code.Ledger.Utxo.T_UTxOState_1858
                            MAlonzo.Code.Ledger.Utxo.T_UTxOState_1858
