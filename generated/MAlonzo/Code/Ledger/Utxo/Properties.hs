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

module MAlonzo.Code.Ledger.Utxo.Properties where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Bool
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Agda.Builtin.Nat
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Builtin.String
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Algebra.Bundles
import qualified MAlonzo.Code.Algebra.Definitions.RawMagma
import qualified MAlonzo.Code.Axiom.Set
import qualified MAlonzo.Code.Axiom.Set.Map
import qualified MAlonzo.Code.Axiom.Set.Map.Dec
import qualified MAlonzo.Code.Axiom.Set.Properties
import qualified MAlonzo.Code.Axiom.Set.Sum
import qualified MAlonzo.Code.Class.Bifunctor
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Class.DecEq.Instances
import qualified MAlonzo.Code.Class.Decidable.Core
import qualified MAlonzo.Code.Class.Decidable.Instances
import qualified MAlonzo.Code.Class.Functor.Core
import qualified MAlonzo.Code.Class.Show.Core
import qualified MAlonzo.Code.Class.Show.Instances
import qualified MAlonzo.Code.Data.Integer.Base
import qualified MAlonzo.Code.Data.Irrelevant
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.List.Relation.Unary.All
import qualified MAlonzo.Code.Data.List.Relation.Unary.Any
import qualified MAlonzo.Code.Data.Nat.Base
import qualified MAlonzo.Code.Data.Nat.Properties
import qualified MAlonzo.Code.Data.Nat.Show
import qualified MAlonzo.Code.Data.Product.Base
import qualified MAlonzo.Code.Data.Product.Properties
import qualified MAlonzo.Code.Data.Rational.Base
import qualified MAlonzo.Code.Data.Sign.Base
import qualified MAlonzo.Code.Data.String.Base
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Data.Sum.Relation.Unary.All
import qualified MAlonzo.Code.Function.Bundles
import qualified MAlonzo.Code.Interface.ComputationalRelation
import qualified MAlonzo.Code.Interface.HasAdd
import qualified MAlonzo.Code.Interface.IsCommutativeMonoid
import qualified MAlonzo.Code.Interface.IsSet
import qualified MAlonzo.Code.Ledger.Abstract
import qualified MAlonzo.Code.Ledger.Address
import qualified MAlonzo.Code.Ledger.Certs
import qualified MAlonzo.Code.Ledger.Crypto
import qualified MAlonzo.Code.Ledger.GovernanceActions
import qualified MAlonzo.Code.Ledger.Interface.HasCoin
import qualified MAlonzo.Code.Ledger.PParams
import qualified MAlonzo.Code.Ledger.Prelude
import qualified MAlonzo.Code.Ledger.Script
import qualified MAlonzo.Code.Ledger.Set.Theory
import qualified MAlonzo.Code.Ledger.TokenAlgebra
import qualified MAlonzo.Code.Ledger.Transaction
import qualified MAlonzo.Code.Ledger.Types.Epoch
import qualified MAlonzo.Code.Ledger.Utxo
import qualified MAlonzo.Code.Prelude
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Syntax
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects

-- _._≈_
d__'8776'__16 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny -> AgdaAny -> ()
d__'8776'__16 = erased
-- _.DCert
d_DCert_74 a0 = ()
-- _.DepositPurpose
d_DepositPurpose_186 a0 = ()
-- _.GovProposal
d_GovProposal_222 a0 = ()
-- _.PParams
d_PParams_298 a0 = ()
-- _.Tx
d_Tx_440 a0 = ()
-- _.UTxO
d_UTxO_454 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_UTxO_454 = erased
-- _.Value
d_Value_472 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Value_472 = erased
-- _.addValue
d_addValue_494 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.HasAdd.T_HasAdd_6
d_addValue_494 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.du_addValue_226
      (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2232 (coe v0))
-- _.coin
d_coin_504 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny -> Integer
d_coin_504 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_coin_204
      (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2232 (coe v0))
-- Ledger.Utxo.Properties._._⊢_⇀⦇_,UTXOS⦈_
d__'8866'_'8640''10631'_'44'UTXOS'10632'__1652 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Utxo.Properties._._⊢_⇀⦇_,UTXO⦈_
d__'8866'_'8640''10631'_'44'UTXO'10632'__1654 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Utxo.Properties._.HasCoin-Map
d_HasCoin'45'Map_1658 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
d_HasCoin'45'Map_1658 ~v0 ~v1 = du_HasCoin'45'Map_1658
du_HasCoin'45'Map_1658 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
du_HasCoin'45'Map_1658 v0 v1
  = coe MAlonzo.Code.Ledger.Utxo.du_HasCoin'45'Map_1748 v1
-- Ledger.Utxo.Properties._.HasCoin-UTxOState
d_HasCoin'45'UTxOState_1662 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
d_HasCoin'45'UTxOState_1662 v0 ~v1
  = du_HasCoin'45'UTxOState_1662 v0
du_HasCoin'45'UTxOState_1662 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
du_HasCoin'45'UTxOState_1662 v0
  = coe
      MAlonzo.Code.Ledger.Utxo.du_HasCoin'45'UTxOState_2204 (coe v0)
-- Ledger.Utxo.Properties._.UTxOEnv
d_UTxOEnv_1676 a0 a1 = ()
-- Ledger.Utxo.Properties._.UTxOState
d_UTxOState_1678 a0 a1 = ()
-- Ledger.Utxo.Properties._.balance
d_balance_1680 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_balance_1680 v0 ~v1 = du_balance_1680 v0
du_balance_1680 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_balance_1680 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_balance_1900 (coe v0)
-- Ledger.Utxo.Properties._.cbalance
d_cbalance_1684 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_cbalance_1684 v0 ~v1 = du_cbalance_1684 v0
du_cbalance_1684 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_cbalance_1684 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_cbalance_1906 (coe v0)
-- Ledger.Utxo.Properties._.consumed
d_consumed_1692 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1864 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2736 -> AgdaAny
d_consumed_1692 v0 ~v1 = du_consumed_1692 v0
du_consumed_1692 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1864 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2736 -> AgdaAny
du_consumed_1692 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_consumed_2406 (coe v0)
-- Ledger.Utxo.Properties._.depositRefunds
d_depositRefunds_1694 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1864 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2736 -> Integer
d_depositRefunds_1694 v0 ~v1 = du_depositRefunds_1694 v0
du_depositRefunds_1694 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1864 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2736 -> Integer
du_depositRefunds_1694 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_depositRefunds_2390 (coe v0)
-- Ledger.Utxo.Properties._.newDeposits
d_newDeposits_1714 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1864 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2736 -> Integer
d_newDeposits_1714 v0 ~v1 = du_newDeposits_1714 v0
du_newDeposits_1714 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1864 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2736 -> Integer
du_newDeposits_1714 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_newDeposits_2398 (coe v0)
-- Ledger.Utxo.Properties._.outs
d_outs_1718 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2736 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_outs_1718 ~v0 ~v1 = du_outs_1718
du_outs_1718 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2736 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_outs_1718 = coe MAlonzo.Code.Ledger.Utxo.du_outs_1894
-- Ledger.Utxo.Properties._.produced
d_produced_1720 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1864 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2736 -> AgdaAny
d_produced_1720 v0 ~v1 = du_produced_1720 v0
du_produced_1720 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1864 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2736 -> AgdaAny
du_produced_1720 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_produced_2414 (coe v0)
-- Ledger.Utxo.Properties._.updateCertDeposits
d_updateCertDeposits_1726 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_834] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateCertDeposits_1726 v0 ~v1 = du_updateCertDeposits_1726 v0
du_updateCertDeposits_1726 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_834] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateCertDeposits_1726 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_updateCertDeposits_1942 (coe v0)
-- Ledger.Utxo.Properties._.updateDeposits
d_updateDeposits_1728 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2736 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateDeposits_1728 v0 ~v1 = du_updateDeposits_1728 v0
du_updateDeposits_1728 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2736 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateDeposits_1728 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_updateDeposits_1966 (coe v0)
-- Ledger.Utxo.Properties._.updateProposalDeposits
d_updateProposalDeposits_1730 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_754] ->
  AgdaAny ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateProposalDeposits_1730 v0 ~v1
  = du_updateProposalDeposits_1730 v0
du_updateProposalDeposits_1730 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_754] ->
  AgdaAny ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateProposalDeposits_1730 v0
  = coe
      MAlonzo.Code.Ledger.Utxo.du_updateProposalDeposits_1954 (coe v0)
-- Ledger.Utxo.Properties.Computational-UTXOS
d_Computational'45'UTXOS_1904 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'UTXOS_1904 v0 v1
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.C_MkComputational_412
      (d_computeProof_1998 (coe v0) (coe v1))
-- Ledger.Utxo.Properties._.go.computeProof
d_computeProof_1998 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1850 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1864 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2838 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
d_computeProof_1998 v0 v1 v2 v3 v4
  = let v5
          = coe
              MAlonzo.Code.Data.Product.Base.du__'44''8242'__84
              (MAlonzo.Code.Class.Decidable.Core.d_dec_16
                 (coe
                    MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                    (coe
                       MAlonzo.Code.Ledger.Utxo.d_Scripts'45'Yes'45'premises_2584 (coe v0)
                       (coe v1) (coe v2) (coe v3) (coe v4))))
              (MAlonzo.Code.Class.Decidable.Core.d_dec_16
                 (coe
                    MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                    (coe
                       MAlonzo.Code.Ledger.Utxo.d_Scripts'45'No'45'premises_2586 (coe v0)
                       (coe v1) (coe v2) (coe v3) (coe v4)))) in
    coe
      (case coe v5 of
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v6 v7
           -> case coe v6 of
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v8 v9
                  -> let v10
                           = coe
                               MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                               (coe ("isValid check failed" :: Data.Text.Text)) in
                     coe
                       (if coe v8
                          then case coe v9 of
                                 MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v11
                                   -> case coe v7 of
                                        MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v12 v13
                                          -> case coe v12 of
                                               MAlonzo.Code.Agda.Builtin.Bool.C_false_8
                                                 -> case coe v13 of
                                                      MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26
                                                        -> coe
                                                             MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                                             (coe
                                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Utxo.C_'10214'_'44'_'44'_'44'_'10215''7512'_1882
                                                                   (coe
                                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                      (coe
                                                                         MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                         (coe
                                                                            MAlonzo.Code.Axiom.Set.d_unions_184
                                                                            (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                            erased
                                                                            (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                               (coe
                                                                                  MAlonzo.Code.Axiom.Set.d_listing_204
                                                                                  (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                     (coe
                                                                                        MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                  erased
                                                                                  (coe
                                                                                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                     (coe
                                                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                        (coe
                                                                                           MAlonzo.Code.Axiom.Set.d_specification_174
                                                                                           (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                           erased
                                                                                           erased
                                                                                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Utxo.d_utxo_1874
                                                                                                 (coe
                                                                                                    v3)))
                                                                                           (coe
                                                                                              MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                                                                                              (MAlonzo.Code.Axiom.Set.d_sp_150
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                                                                              erased
                                                                                              erased
                                                                                              erased
                                                                                              (coe
                                                                                                 MAlonzo.Code.Axiom.Set.d_sp'45''172'_70
                                                                                                 (MAlonzo.Code.Axiom.Set.d_sp_150
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                                                                                 erased
                                                                                                 erased
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588
                                                                                                    MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                                                    erased
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1194
                                                                                                          (coe
                                                                                                             v0))
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1192
                                                                                                          (coe
                                                                                                             v0)))
                                                                                                    (MAlonzo.Code.Ledger.Transaction.d_txins_2778
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Ledger.Transaction.d_body_2848
                                                                                                          (coe
                                                                                                             v4)))))
                                                                                              (\ v15 ->
                                                                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                   (coe
                                                                                                      v15)))))
                                                                                     (coe
                                                                                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                        (coe
                                                                                           MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                           (coe
                                                                                              MAlonzo.Code.Axiom.Set.d_specification_174
                                                                                              (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                              erased
                                                                                              erased
                                                                                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Utxo.du_outs_1894
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Ledger.Transaction.d_body_2848
                                                                                                       (coe
                                                                                                          v4))))
                                                                                              (coe
                                                                                                 MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                                                                                                 (MAlonzo.Code.Axiom.Set.d_sp_150
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                                                                                 erased
                                                                                                 erased
                                                                                                 erased
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Axiom.Set.d_sp'45''172'_70
                                                                                                    (MAlonzo.Code.Axiom.Set.d_sp_150
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                                                                                    erased
                                                                                                    erased
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588
                                                                                                       MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                                                       erased
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1194
                                                                                                             (coe
                                                                                                                v0))
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1192
                                                                                                             (coe
                                                                                                                v0)))
                                                                                                       (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Axiom.Set.d_replacement_196
                                                                                                             (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                             erased
                                                                                                             erased
                                                                                                             (\ v15 ->
                                                                                                                MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                  (coe
                                                                                                                     v15))
                                                                                                             (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Axiom.Set.d_specification_174
                                                                                                                   (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                                      (coe
                                                                                                                         MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                                   erased
                                                                                                                   erased
                                                                                                                   (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                      (coe
                                                                                                                         MAlonzo.Code.Ledger.Utxo.d_utxo_1874
                                                                                                                         (coe
                                                                                                                            v3)))
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                                                                                                                      (MAlonzo.Code.Axiom.Set.d_sp_150
                                                                                                                         (coe
                                                                                                                            MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                                            (coe
                                                                                                                               MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                                                                                                      erased
                                                                                                                      erased
                                                                                                                      erased
                                                                                                                      (coe
                                                                                                                         MAlonzo.Code.Axiom.Set.d_sp'45''172'_70
                                                                                                                         (MAlonzo.Code.Axiom.Set.d_sp_150
                                                                                                                            (coe
                                                                                                                               MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                                               (coe
                                                                                                                                  MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                                                                                                         erased
                                                                                                                         erased
                                                                                                                         (coe
                                                                                                                            MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588
                                                                                                                            MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                                                                            erased
                                                                                                                            (coe
                                                                                                                               MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                                                                                                                               (coe
                                                                                                                                  MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1194
                                                                                                                                  (coe
                                                                                                                                     v0))
                                                                                                                               (coe
                                                                                                                                  MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1192
                                                                                                                                  (coe
                                                                                                                                     v0)))
                                                                                                                            (MAlonzo.Code.Ledger.Transaction.d_txins_2778
                                                                                                                               (coe
                                                                                                                                  MAlonzo.Code.Ledger.Transaction.d_body_2848
                                                                                                                                  (coe
                                                                                                                                     v4)))))
                                                                                                                      (\ v15 ->
                                                                                                                         MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                           (coe
                                                                                                                              v15)))))))))
                                                                                                 (\ v15 ->
                                                                                                    MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                      (coe
                                                                                                         v15)))))
                                                                                        (coe
                                                                                           MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))
                                                                      erased)
                                                                   (coe
                                                                      addInt
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Transaction.d_txfee_2784
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Transaction.d_body_2848
                                                                            (coe v4)))
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Utxo.d_fees_1876
                                                                         (coe v3)))
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Utxo.du_updateCertDeposits_1942
                                                                      (coe v0)
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Utxo.d_pparams_1860
                                                                         (coe v2))
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Transaction.d_txcerts_2790
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Transaction.d_body_2848
                                                                            (coe v4)))
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Utxo.du_updateProposalDeposits_1954
                                                                         (coe v0)
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Transaction.d_txprop_2796
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Transaction.d_body_2848
                                                                               (coe v4)))
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Transaction.d_txid_2810
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Transaction.d_body_2848
                                                                               (coe v4)))
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.PParams.d_govActionDeposit_356
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Utxo.d_pparams_1860
                                                                               (coe v2)))
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Utxo.d_deposits_1878
                                                                            (coe v3))))
                                                                   (coe
                                                                      addInt
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Transaction.d_txdonation_2798
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Transaction.d_body_2848
                                                                            (coe v4)))
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Utxo.d_donations_1880
                                                                         (coe v3))))
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Utxo.C_Scripts'45'Yes_2502
                                                                   v11))
                                                      _ -> coe v10
                                               _ -> coe v10
                                        _ -> MAlonzo.RTE.mazUnreachableError
                                 _ -> coe v10
                          else (case coe v9 of
                                  MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26
                                    -> case coe v7 of
                                         MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v12 v13
                                           -> case coe v12 of
                                                MAlonzo.Code.Agda.Builtin.Bool.C_true_10
                                                  -> case coe v13 of
                                                       MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v14
                                                         -> coe
                                                              MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Utxo.C_'10214'_'44'_'44'_'44'_'10215''7512'_1882
                                                                    (coe
                                                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                       (coe
                                                                          MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                          (coe
                                                                             MAlonzo.Code.Axiom.Set.d_specification_174
                                                                             (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                             erased erased
                                                                             (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Utxo.d_utxo_1874
                                                                                   (coe v3)))
                                                                             (coe
                                                                                MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                                                                                (MAlonzo.Code.Axiom.Set.d_sp_150
                                                                                   (coe
                                                                                      MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                                                                erased erased erased
                                                                                (coe
                                                                                   MAlonzo.Code.Axiom.Set.d_sp'45''172'_70
                                                                                   (MAlonzo.Code.Axiom.Set.d_sp_150
                                                                                      (coe
                                                                                         MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                         (coe
                                                                                            MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                                                                   erased erased
                                                                                   (coe
                                                                                      MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588
                                                                                      MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                                      erased
                                                                                      (coe
                                                                                         MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                                                                                         (coe
                                                                                            MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1194
                                                                                            (coe
                                                                                               v0))
                                                                                         (coe
                                                                                            MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1192
                                                                                            (coe
                                                                                               v0)))
                                                                                      (MAlonzo.Code.Ledger.Transaction.d_collateral_2812
                                                                                         (coe
                                                                                            MAlonzo.Code.Ledger.Transaction.d_body_2848
                                                                                            (coe
                                                                                               v4)))))
                                                                                (\ v15 ->
                                                                                   MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                     (coe v15)))))
                                                                       (coe
                                                                          (\ v15 v16 v17 v18 v19 ->
                                                                             coe
                                                                               MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                               (MAlonzo.Code.Ledger.Utxo.d_utxo_1874
                                                                                  (coe v3))
                                                                               v15 v16 v17
                                                                               (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                  (coe
                                                                                     MAlonzo.Code.Function.Bundles.d_from_1726
                                                                                     (coe
                                                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                        (coe
                                                                                           MAlonzo.Code.Axiom.Set.d_specification_174
                                                                                           (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                           erased
                                                                                           erased
                                                                                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Utxo.d_utxo_1874
                                                                                                 (coe
                                                                                                    v3)))
                                                                                           (coe
                                                                                              MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                                                                                              (MAlonzo.Code.Axiom.Set.d_sp_150
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                                                                              erased
                                                                                              erased
                                                                                              erased
                                                                                              (coe
                                                                                                 MAlonzo.Code.Axiom.Set.d_sp'45''172'_70
                                                                                                 (MAlonzo.Code.Axiom.Set.d_sp_150
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                                                                                 erased
                                                                                                 erased
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588
                                                                                                    MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                                                    erased
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1194
                                                                                                          (coe
                                                                                                             v0))
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1192
                                                                                                          (coe
                                                                                                             v0)))
                                                                                                    (MAlonzo.Code.Ledger.Transaction.d_collateral_2812
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Ledger.Transaction.d_body_2848
                                                                                                          (coe
                                                                                                             v4)))))
                                                                                              (\ v20 ->
                                                                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                   (coe
                                                                                                      v20))))
                                                                                        (coe
                                                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                           (coe v15)
                                                                                           (coe
                                                                                              v16)))
                                                                                     v18))
                                                                               (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                  (coe
                                                                                     MAlonzo.Code.Function.Bundles.d_from_1726
                                                                                     (coe
                                                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                        (coe
                                                                                           MAlonzo.Code.Axiom.Set.d_specification_174
                                                                                           (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                           erased
                                                                                           erased
                                                                                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Utxo.d_utxo_1874
                                                                                                 (coe
                                                                                                    v3)))
                                                                                           (coe
                                                                                              MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                                                                                              (MAlonzo.Code.Axiom.Set.d_sp_150
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                                                                              erased
                                                                                              erased
                                                                                              erased
                                                                                              (coe
                                                                                                 MAlonzo.Code.Axiom.Set.d_sp'45''172'_70
                                                                                                 (MAlonzo.Code.Axiom.Set.d_sp_150
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                                                                                 erased
                                                                                                 erased
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588
                                                                                                    MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                                                    erased
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1194
                                                                                                          (coe
                                                                                                             v0))
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1192
                                                                                                          (coe
                                                                                                             v0)))
                                                                                                    (MAlonzo.Code.Ledger.Transaction.d_collateral_2812
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Ledger.Transaction.d_body_2848
                                                                                                          (coe
                                                                                                             v4)))))
                                                                                              (\ v20 ->
                                                                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                   (coe
                                                                                                      v20))))
                                                                                        (coe
                                                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                           (coe v15)
                                                                                           (coe
                                                                                              v17)))
                                                                                     v19)))))
                                                                    (coe
                                                                       addInt
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Utxo.du_cbalance_1906
                                                                          (coe v0)
                                                                          (coe
                                                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                             (coe
                                                                                MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                (coe
                                                                                   MAlonzo.Code.Axiom.Set.d_specification_174
                                                                                   (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                   erased erased
                                                                                   (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Utxo.d_utxo_1874
                                                                                         (coe v3)))
                                                                                   (coe
                                                                                      MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                                                                                      (MAlonzo.Code.Axiom.Set.d_sp_150
                                                                                         (coe
                                                                                            MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                            (coe
                                                                                               MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                                                                      erased erased
                                                                                      erased
                                                                                      (coe
                                                                                         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588
                                                                                         MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                                         erased
                                                                                         (coe
                                                                                            MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                                                                                            (coe
                                                                                               MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1194
                                                                                               (coe
                                                                                                  v0))
                                                                                            (coe
                                                                                               MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1192
                                                                                               (coe
                                                                                                  v0)))
                                                                                         (MAlonzo.Code.Ledger.Transaction.d_collateral_2812
                                                                                            (coe
                                                                                               MAlonzo.Code.Ledger.Transaction.d_body_2848
                                                                                               (coe
                                                                                                  v4))))
                                                                                      (\ v15 ->
                                                                                         MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                           (coe
                                                                                              v15)))))
                                                                             (coe
                                                                                (\ v15 v16 v17 v18
                                                                                   v19 ->
                                                                                   coe
                                                                                     MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                     (MAlonzo.Code.Ledger.Utxo.d_utxo_1874
                                                                                        (coe v3))
                                                                                     v15 v16 v17
                                                                                     (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                        (coe
                                                                                           MAlonzo.Code.Function.Bundles.d_from_1726
                                                                                           (coe
                                                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                              (coe
                                                                                                 MAlonzo.Code.Axiom.Set.d_specification_174
                                                                                                 (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                 erased
                                                                                                 erased
                                                                                                 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Ledger.Utxo.d_utxo_1874
                                                                                                       (coe
                                                                                                          v3)))
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                                                                                                    (MAlonzo.Code.Axiom.Set.d_sp_150
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                                                                                    erased
                                                                                                    erased
                                                                                                    erased
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588
                                                                                                       MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                                                       erased
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1194
                                                                                                             (coe
                                                                                                                v0))
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1192
                                                                                                             (coe
                                                                                                                v0)))
                                                                                                       (MAlonzo.Code.Ledger.Transaction.d_collateral_2812
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Ledger.Transaction.d_body_2848
                                                                                                             (coe
                                                                                                                v4))))
                                                                                                    (\ v20 ->
                                                                                                       MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                         (coe
                                                                                                            v20))))
                                                                                              (coe
                                                                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                 (coe
                                                                                                    v15)
                                                                                                 (coe
                                                                                                    v16)))
                                                                                           v18))
                                                                                     (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                        (coe
                                                                                           MAlonzo.Code.Function.Bundles.d_from_1726
                                                                                           (coe
                                                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                              (coe
                                                                                                 MAlonzo.Code.Axiom.Set.d_specification_174
                                                                                                 (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                 erased
                                                                                                 erased
                                                                                                 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Ledger.Utxo.d_utxo_1874
                                                                                                       (coe
                                                                                                          v3)))
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                                                                                                    (MAlonzo.Code.Axiom.Set.d_sp_150
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                                                                                    erased
                                                                                                    erased
                                                                                                    erased
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588
                                                                                                       MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                                                       erased
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1194
                                                                                                             (coe
                                                                                                                v0))
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1192
                                                                                                             (coe
                                                                                                                v0)))
                                                                                                       (MAlonzo.Code.Ledger.Transaction.d_collateral_2812
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Ledger.Transaction.d_body_2848
                                                                                                             (coe
                                                                                                                v4))))
                                                                                                    (\ v20 ->
                                                                                                       MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                         (coe
                                                                                                            v20))))
                                                                                              (coe
                                                                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                 (coe
                                                                                                    v15)
                                                                                                 (coe
                                                                                                    v17)))
                                                                                           v19))))))
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Utxo.d_fees_1876
                                                                          (coe v3)))
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Utxo.d_deposits_1878
                                                                       (coe v3))
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Utxo.d_donations_1880
                                                                       (coe v3)))
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Utxo.C_Scripts'45'No_2582
                                                                    v14))
                                                       _ -> coe v10
                                                _ -> coe v10
                                         _ -> MAlonzo.RTE.mazUnreachableError
                                  _ -> coe v10))
                _ -> MAlonzo.RTE.mazUnreachableError
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Utxo.Properties._.go.completeness
d_completeness_2008 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1850 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1864 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2838 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1864 ->
  MAlonzo.Code.Ledger.Utxo.T__'8866'_'8640''10631'_'44'UTXOS'10632'__2422 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_completeness_2008 = erased
-- Ledger.Utxo.Properties.Computational-UTXO'
d_Computational'45'UTXO''_2038 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'UTXO''_2038 v0 v1
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.C_MkComputational_412
      (d_computeProof_2192 (coe v0) (coe v1))
-- Ledger.Utxo.Properties._.Go.genErr
d_genErr_2076 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1850 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1864 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2838 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
d_genErr_2076 v0 v1 v2 v3 v4 ~v5 = du_genErr_2076 v0 v1 v2 v3 v4
du_genErr_2076 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1850 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1864 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2838 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
du_genErr_2076 v0 v1 v2 v3 v4
  = let v5
          = coe
              MAlonzo.Code.Ledger.Prelude.du_dec'45'de'45'morgan_28
              (coe
                 MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_22
                 (coe
                    MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                    (coe
                       MAlonzo.Code.Ledger.Set.Theory.du_DecEq'45'ℙ_256
                       (coe
                          MAlonzo.Code.Ledger.Set.Theory.du_DecEq'45'ℙ_256
                          (coe
                             MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                             (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1194 (coe v0))
                             (coe
                                MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1192 (coe v0)))))
                    (coe
                       MAlonzo.Code.Ledger.Transaction.d_txins_2778
                       (coe MAlonzo.Code.Ledger.Transaction.d_body_2848 (coe v4)))
                    (coe
                       MAlonzo.Code.Axiom.Set.du_'8709'_430
                       (coe
                          MAlonzo.Code.Axiom.Set.d_th_1458
                          (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))))
                 (coe MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_18))
              erased in
    coe
      (case coe v5 of
         MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v6
           -> coe
                ("\172 TxBody.txins (Tx.body tx) \8802 \8709" :: Data.Text.Text)
         MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v6
           -> let v7
                    = coe
                        MAlonzo.Code.Ledger.Prelude.du_dec'45'de'45'morgan_28
                        (coe
                           MAlonzo.Code.Class.Decidable.Core.du_'8263''185'__110
                           (coe
                              (\ v7 ->
                                 coe
                                   MAlonzo.Code.Axiom.Set.d_all'63'_1598
                                   MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
                                   erased
                                   (coe
                                      MAlonzo.Code.Class.Decidable.Core.du_dec'185'_108
                                      (coe
                                         (\ v8 ->
                                            coe
                                              MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1660
                                              (coe
                                                 MAlonzo.Code.Axiom.Set.d__'8712''63'__1590
                                                 MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                 erased
                                                 (coe
                                                    MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                                                    (coe
                                                       MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1194
                                                       (coe v0))
                                                    (coe
                                                       MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1192
                                                       (coe v0))))
                                              (coe v8)
                                              (coe
                                                 MAlonzo.Code.Interface.IsSet.du_dom_540
                                                 (coe
                                                    MAlonzo.Code.Axiom.Set.d_th_1458
                                                    (coe
                                                       MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                 (coe
                                                    MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_548)
                                                 (coe
                                                    MAlonzo.Code.Ledger.Utxo.d_utxo_1874
                                                    (coe v3))))))
                                   v7))
                           (coe
                              MAlonzo.Code.Axiom.Set.du__'8746'__668
                              (coe
                                 MAlonzo.Code.Axiom.Set.d_th_1458
                                 (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                              (coe
                                 MAlonzo.Code.Ledger.Transaction.d_txins_2778
                                 (coe MAlonzo.Code.Ledger.Transaction.d_body_2848 (coe v4)))
                              (coe
                                 MAlonzo.Code.Ledger.Transaction.d_refInputs_2780
                                 (coe MAlonzo.Code.Ledger.Transaction.d_body_2848 (coe v4)))))
                        erased in
              coe
                (case coe v7 of
                   MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v8
                     -> coe
                          ("\172 TxBody.txins (Tx.body tx) \8838 dom (UTxOState.utxo s)"
                           ::
                           Data.Text.Text)
                   MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v8
                     -> let v9
                              = coe
                                  MAlonzo.Code.Ledger.Prelude.du_dec'45'de'45'morgan_28
                                  (coe
                                     MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                                     (coe
                                        MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                        (coe
                                           MAlonzo.Code.Ledger.Set.Theory.du_DecEq'45'ℙ_256
                                           (coe
                                              MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                                              (coe
                                                 MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1194
                                                 (coe v0))
                                              (coe
                                                 MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1192
                                                 (coe v0)))))
                                     (coe
                                        MAlonzo.Code.Axiom.Set.du__'8745'__692
                                        (coe
                                           MAlonzo.Code.Axiom.Set.d_th_1458
                                           (coe
                                              MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                        (coe
                                           MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588
                                           MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                           erased
                                           (coe
                                              MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                              MAlonzo.Code.Agda.Primitive.d_lzero_20 erased
                                              MAlonzo.Code.Agda.Primitive.d_lzero_20 erased
                                              (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1194
                                                 (coe v0))
                                              (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1192
                                                 (coe v0))))
                                        (coe
                                           MAlonzo.Code.Ledger.Transaction.d_txins_2778
                                           (coe
                                              MAlonzo.Code.Ledger.Transaction.d_body_2848 (coe v4)))
                                        (coe
                                           MAlonzo.Code.Ledger.Transaction.d_refInputs_2780
                                           (coe
                                              MAlonzo.Code.Ledger.Transaction.d_body_2848
                                              (coe v4))))
                                     (coe
                                        MAlonzo.Code.Axiom.Set.du_'8709'_430
                                        (coe
                                           MAlonzo.Code.Axiom.Set.d_th_1458
                                           (coe
                                              MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))))
                                  erased in
                        coe
                          (case coe v9 of
                             MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v10
                               -> coe ("\172 refInputs \8838 dom utxo " :: Data.Text.Text)
                             MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v10
                               -> let v11
                                        = coe
                                            MAlonzo.Code.Ledger.Prelude.du_dec'45'de'45'morgan_28
                                            (coe
                                               MAlonzo.Code.Ledger.Utxo.du_Dec'45'inInterval_2102
                                               (coe v0)
                                               (coe MAlonzo.Code.Ledger.Utxo.d_slot_1858 (coe v2))
                                               (coe
                                                  MAlonzo.Code.Ledger.Transaction.d_txvldt_2788
                                                  (coe
                                                     MAlonzo.Code.Ledger.Transaction.d_body_2848
                                                     (coe v4))))
                                            erased in
                                  coe
                                    (case coe v11 of
                                       MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v12
                                         -> coe
                                              ("\172 inInterval (UTxOEnv.slot \915) (txvldt (Tx.body tx))"
                                               ::
                                               Data.Text.Text)
                                       MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v12
                                         -> let v13
                                                  = coe
                                                      MAlonzo.Code.Ledger.Prelude.du_dec'45'de'45'morgan_28
                                                      (coe
                                                         MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                                                         (coe
                                                            MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                            (coe
                                                               MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Utxo.d_feesOK_2238
                                                            (coe v0) (coe v1)
                                                            (coe
                                                               MAlonzo.Code.Ledger.Utxo.d_pparams_1860
                                                               (coe v2))
                                                            (coe v4)
                                                            (coe
                                                               MAlonzo.Code.Ledger.Utxo.d_utxo_1874
                                                               (coe v3)))
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Bool.C_true_10))
                                                      erased in
                                            coe
                                              (case coe v13 of
                                                 MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v14
                                                   -> coe
                                                        ("\172 feesOK pp tx utxo \8801 true"
                                                         ::
                                                         Data.Text.Text)
                                                 MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v14
                                                   -> let v15
                                                            = coe
                                                                MAlonzo.Code.Ledger.Prelude.du_dec'45'de'45'morgan_28
                                                                (coe
                                                                   MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                                                                   (coe
                                                                      MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.TokenAlgebra.d_DecEq'45'Value_222
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2232
                                                                            (coe v0))))
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Utxo.du_consumed_2406
                                                                      (coe v0)
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Utxo.d_pparams_1860
                                                                         (coe v2))
                                                                      (coe v3)
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Transaction.d_body_2848
                                                                         (coe v4)))
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Utxo.du_produced_2414
                                                                      (coe v0)
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Utxo.d_pparams_1860
                                                                         (coe v2))
                                                                      (coe v3)
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Transaction.d_body_2848
                                                                         (coe v4))))
                                                                erased in
                                                      coe
                                                        (case coe v15 of
                                                           MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v16
                                                             -> coe
                                                                  MAlonzo.Code.Data.String.Base.d__'43''43'__20
                                                                  ("\172consumed (UTxOEnv.pparams \915) s (Tx.body tx) \8801 produced (UTxOEnv.pparams \915) s (Tx.body tx)"
                                                                   ::
                                                                   Data.Text.Text)
                                                                  (coe
                                                                     MAlonzo.Code.Data.String.Base.d__'43''43'__20
                                                                     ("\n  consumed =\t\t"
                                                                      ::
                                                                      Data.Text.Text)
                                                                     (coe
                                                                        MAlonzo.Code.Data.String.Base.d__'43''43'__20
                                                                        (coe
                                                                           MAlonzo.Code.Class.Show.Core.d_show_16
                                                                           MAlonzo.Code.Class.Show.Instances.d_Show'45'ℕ_32
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.TokenAlgebra.d_coin_204
                                                                              (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2232
                                                                                 (coe v0))
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Utxo.du_consumed_2406
                                                                                 (coe v0)
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Utxo.d_pparams_1860
                                                                                    (coe v2))
                                                                                 (coe v3)
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Transaction.d_body_2848
                                                                                    (coe v4)))))
                                                                        (coe
                                                                           MAlonzo.Code.Data.String.Base.d__'43''43'__20
                                                                           ("\n    ins  =\t\t"
                                                                            ::
                                                                            Data.Text.Text)
                                                                           (coe
                                                                              MAlonzo.Code.Data.String.Base.d__'43''43'__20
                                                                              (coe
                                                                                 MAlonzo.Code.Class.Show.Core.d_show_16
                                                                                 MAlonzo.Code.Class.Show.Instances.d_Show'45'ℕ_32
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.TokenAlgebra.d_coin_204
                                                                                    (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2232
                                                                                       (coe v0))
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Utxo.du_balance_1900
                                                                                       (coe v0)
                                                                                       (coe
                                                                                          MAlonzo.Code.Axiom.Set.Map.du__'8739'__1256
                                                                                          (coe
                                                                                             MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                          (coe
                                                                                             MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588
                                                                                             MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                                             erased
                                                                                             (coe
                                                                                                MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1194
                                                                                                   (coe
                                                                                                      v0))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1192
                                                                                                   (coe
                                                                                                      v0))))
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Utxo.d_utxo_1874
                                                                                             (coe
                                                                                                v3))
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Transaction.d_txins_2778
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Transaction.d_body_2848
                                                                                                (coe
                                                                                                   v4)))))))
                                                                              (coe
                                                                                 MAlonzo.Code.Data.String.Base.d__'43''43'__20
                                                                                 ("\n    mint =\t\t"
                                                                                  ::
                                                                                  Data.Text.Text)
                                                                                 (coe
                                                                                    MAlonzo.Code.Data.String.Base.d__'43''43'__20
                                                                                    (coe
                                                                                       MAlonzo.Code.Class.Show.Core.d_show_16
                                                                                       MAlonzo.Code.Class.Show.Instances.d_Show'45'ℕ_32
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.TokenAlgebra.d_coin_204
                                                                                          (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2232
                                                                                             (coe
                                                                                                v0))
                                                                                          (MAlonzo.Code.Ledger.Transaction.d_mint_2786
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Transaction.d_body_2848
                                                                                                (coe
                                                                                                   v4)))))
                                                                                    (coe
                                                                                       MAlonzo.Code.Data.String.Base.d__'43''43'__20
                                                                                       ("\n    depositRefunds =\t"
                                                                                        ::
                                                                                        Data.Text.Text)
                                                                                       (coe
                                                                                          MAlonzo.Code.Data.String.Base.d__'43''43'__20
                                                                                          (coe
                                                                                             MAlonzo.Code.Class.Show.Core.d_show_16
                                                                                             MAlonzo.Code.Class.Show.Instances.d_Show'45'ℕ_32
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.TokenAlgebra.d_coin_204
                                                                                                (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2232
                                                                                                   (coe
                                                                                                      v0))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.TokenAlgebra.d_inject_206
                                                                                                   (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2232
                                                                                                      (coe
                                                                                                         v0))
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Utxo.du_depositRefunds_2390
                                                                                                      (coe
                                                                                                         v0)
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Utxo.d_pparams_1860
                                                                                                         (coe
                                                                                                            v2))
                                                                                                      (coe
                                                                                                         v3)
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Transaction.d_body_2848
                                                                                                         (coe
                                                                                                            v4))))))
                                                                                          (coe
                                                                                             MAlonzo.Code.Data.String.Base.d__'43''43'__20
                                                                                             ("\n  produced =\t\t"
                                                                                              ::
                                                                                              Data.Text.Text)
                                                                                             (coe
                                                                                                MAlonzo.Code.Data.String.Base.d__'43''43'__20
                                                                                                (coe
                                                                                                   MAlonzo.Code.Class.Show.Core.d_show_16
                                                                                                   MAlonzo.Code.Class.Show.Instances.d_Show'45'ℕ_32
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.TokenAlgebra.d_coin_204
                                                                                                      (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2232
                                                                                                         (coe
                                                                                                            v0))
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Utxo.du_produced_2414
                                                                                                         (coe
                                                                                                            v0)
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Utxo.d_pparams_1860
                                                                                                            (coe
                                                                                                               v2))
                                                                                                         (coe
                                                                                                            v3)
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Transaction.d_body_2848
                                                                                                            (coe
                                                                                                               v4)))))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Data.String.Base.d__'43''43'__20
                                                                                                   ("\n    outs =\t\t"
                                                                                                    ::
                                                                                                    Data.Text.Text)
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Data.String.Base.d__'43''43'__20
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Class.Show.Core.d_show_16
                                                                                                         MAlonzo.Code.Class.Show.Instances.d_Show'45'ℕ_32
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.TokenAlgebra.d_coin_204
                                                                                                            (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2232
                                                                                                               (coe
                                                                                                                  v0))
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Utxo.du_balance_1900
                                                                                                               (coe
                                                                                                                  v0)
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Utxo.du_outs_1894
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Transaction.d_body_2848
                                                                                                                     (coe
                                                                                                                        v4))))))
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Data.String.Base.d__'43''43'__20
                                                                                                         ("\n    fee  =\t\t"
                                                                                                          ::
                                                                                                          Data.Text.Text)
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Data.String.Base.d__'43''43'__20
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Data.Nat.Show.d_show_56
                                                                                                               (MAlonzo.Code.Ledger.Transaction.d_txfee_2784
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Transaction.d_body_2848
                                                                                                                     (coe
                                                                                                                        v4))))
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Data.String.Base.d__'43''43'__20
                                                                                                               ("\n    newDeposits  =\t"
                                                                                                                ::
                                                                                                                Data.Text.Text)
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Data.String.Base.d__'43''43'__20
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Data.Nat.Show.d_show_56
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Utxo.du_newDeposits_2398
                                                                                                                        (coe
                                                                                                                           v0)
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Utxo.d_pparams_1860
                                                                                                                           (coe
                                                                                                                              v2))
                                                                                                                        (coe
                                                                                                                           v3)
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Transaction.d_body_2848
                                                                                                                           (coe
                                                                                                                              v4))))
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Data.String.Base.d__'43''43'__20
                                                                                                                     ("\n    donation  =\t\t"
                                                                                                                      ::
                                                                                                                      Data.Text.Text)
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Data.Nat.Show.d_show_56
                                                                                                                        (MAlonzo.Code.Ledger.Transaction.d_txdonation_2798
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Ledger.Transaction.d_body_2848
                                                                                                                              (coe
                                                                                                                                 v4)))))))))))))))))))))
                                                           MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v16
                                                             -> let v17
                                                                      = coe
                                                                          MAlonzo.Code.Ledger.Prelude.du_dec'45'de'45'morgan_28
                                                                          (coe
                                                                             MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                                                                             (coe
                                                                                MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                                                (coe
                                                                                   MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.TokenAlgebra.d_coin_204
                                                                                (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2232
                                                                                   (coe v0))
                                                                                (MAlonzo.Code.Ledger.Transaction.d_mint_2786
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.Transaction.d_body_2848
                                                                                      (coe v4))))
                                                                             (coe (0 :: Integer)))
                                                                          erased in
                                                                coe
                                                                  (case coe v17 of
                                                                     MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v18
                                                                       -> coe
                                                                            ("\172 coin (TxBody.mint (Tx.body tx)) \8801 0"
                                                                             ::
                                                                             Data.Text.Text)
                                                                     MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v18
                                                                       -> let v19
                                                                                = coe
                                                                                    MAlonzo.Code.Ledger.Prelude.du_dec'45'de'45'morgan_28
                                                                                    (coe
                                                                                       MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
                                                                                       (coe
                                                                                          MAlonzo.Code.Data.Nat.Properties.d__'8804''63'__2802
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Transaction.d_txsize_2808
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Transaction.d_body_2848
                                                                                                (coe
                                                                                                   v4)))
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.PParams.d_maxTxSize_306
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Utxo.d_pparams_1860
                                                                                                (coe
                                                                                                   v2)))))
                                                                                    erased in
                                                                          coe
                                                                            (case coe v19 of
                                                                               MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v20
                                                                                 -> coe
                                                                                      ("\172(TxBody.txsize (Tx.body tx) Data.Nat.Base.\8804 maxTxSize (UTxOEnv.pparams \915))"
                                                                                       ::
                                                                                       Data.Text.Text)
                                                                               MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v20
                                                                                 -> let v21
                                                                                          = coe
                                                                                              MAlonzo.Code.Ledger.Prelude.du_dec'45'de'45'morgan_28
                                                                                              (coe
                                                                                                 MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
                                                                                                 (coe
                                                                                                    (\ v21 ->
                                                                                                       coe
                                                                                                         MAlonzo.Code.Axiom.Set.d_all'63'_1598
                                                                                                         MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                                                         erased
                                                                                                         erased
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Class.Decidable.Core.du_dec'185'_108
                                                                                                            (coe
                                                                                                               (\ v22 ->
                                                                                                                  coe
                                                                                                                    MAlonzo.Code.Ledger.TokenAlgebra.d_Dec'45''8804''7511'_224
                                                                                                                    (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2232
                                                                                                                       (coe
                                                                                                                          v0))
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Ledger.TokenAlgebra.d_inject_206
                                                                                                                       (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2232
                                                                                                                          (coe
                                                                                                                             v0))
                                                                                                                       (mulInt
                                                                                                                          (coe
                                                                                                                             MAlonzo.Code.Ledger.Utxo.du_utxoEntrySize_1846
                                                                                                                             (coe
                                                                                                                                v0)
                                                                                                                             (coe
                                                                                                                                MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                                                                (coe
                                                                                                                                   v22)))
                                                                                                                          (coe
                                                                                                                             MAlonzo.Code.Ledger.PParams.d_minUTxOValue_334
                                                                                                                             (coe
                                                                                                                                MAlonzo.Code.Ledger.Utxo.d_pparams_1860
                                                                                                                                (coe
                                                                                                                                   v2)))))
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Ledger.Transaction.du_getValue'688'_2872
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                                                          (coe
                                                                                                                             v22))))))
                                                                                                         v21))
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Axiom.Set.Map.du_mapValues_864
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Ledger.Transaction.d_txOutHash_2862
                                                                                                          (coe
                                                                                                             v0))
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Ledger.Transaction.d_txouts_2782
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Ledger.Transaction.d_body_2848
                                                                                                             (coe
                                                                                                                v4))))))
                                                                                              erased in
                                                                                    coe
                                                                                      (case coe
                                                                                              v21 of
                                                                                         MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v22
                                                                                           -> coe
                                                                                                ("\8704[ (_ , txout) \8712 txouts .proj\8321 ] inject (utxoEntrySize txout * coinsPerUTxOByte pp) \8804\7511 getValue txout"
                                                                                                 ::
                                                                                                 Data.Text.Text)
                                                                                         MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v22
                                                                                           -> let v23
                                                                                                    = coe
                                                                                                        MAlonzo.Code.Ledger.Prelude.du_dec'45'de'45'morgan_28
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Class.Decidable.Core.du_'8263''185'__110
                                                                                                           (coe
                                                                                                              (\ v23 ->
                                                                                                                 coe
                                                                                                                   MAlonzo.Code.Axiom.Set.d_all'63'_1598
                                                                                                                   MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                                                                   erased
                                                                                                                   erased
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Class.Decidable.Core.du_dec'185'_108
                                                                                                                      (coe
                                                                                                                         (\ v24 ->
                                                                                                                            coe
                                                                                                                              MAlonzo.Code.Ledger.TokenAlgebra.d_Dec'45''8804''7511'_224
                                                                                                                              (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2276
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Ledger.Abstract.d_serSize_1664
                                                                                                                                    v1
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Ledger.Transaction.du_getValue'688'_2872
                                                                                                                                       (coe
                                                                                                                                          MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                                                                          (coe
                                                                                                                                             v24))))
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Ledger.PParams.d_maxValSize_314
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Ledger.Utxo.d_pparams_1860
                                                                                                                                       (coe
                                                                                                                                          MAlonzo.Code.Ledger.Utxo.d_pparams_1990
                                                                                                                                          (coe
                                                                                                                                             v2)))))
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Ledger.Transaction.du_getValue'688'_2936
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                                                                    (coe
                                                                                                                                       v24))))))
                                                                                                                   v23))
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                              (coe
                                                                                                                 MAlonzo.Code.Axiom.Set.Map.du_mapValues_864
                                                                                                                 (coe
                                                                                                                    MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                                 (coe
                                                                                                                    MAlonzo.Code.Ledger.Transaction.d_txOutHash_2862
                                                                                                                    (coe
                                                                                                                       v0))
                                                                                                                 (coe
                                                                                                                    MAlonzo.Code.Ledger.Transaction.d_txouts_2782
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Ledger.Transaction.d_body_2848
                                                                                                                       (coe
                                                                                                                          v4))))))
                                                                                                        erased in
                                                                                              coe
                                                                                                (case coe
                                                                                                        v23 of
                                                                                                   MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v24
                                                                                                     -> coe
                                                                                                          ("\8704[ (_ , txout) \8712 txouts .proj\8321 ] serSize (getValue txout) \8804 maxValSize pp"
                                                                                                           ::
                                                                                                           Data.Text.Text)
                                                                                                   MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v24
                                                                                                     -> let v25
                                                                                                              = coe
                                                                                                                  MAlonzo.Code.Ledger.Prelude.du_dec'45'de'45'morgan_28
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Class.Decidable.Core.du_'8263''185'__110
                                                                                                                     (coe
                                                                                                                        (\ v25 ->
                                                                                                                           coe
                                                                                                                             MAlonzo.Code.Axiom.Set.d_all'63'_1598
                                                                                                                             MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                                                                             erased
                                                                                                                             erased
                                                                                                                             (coe
                                                                                                                                MAlonzo.Code.Class.Decidable.Core.du_dec'185'_108
                                                                                                                                (coe
                                                                                                                                   (\ v26 ->
                                                                                                                                      coe
                                                                                                                                        MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_74
                                                                                                                                        (coe
                                                                                                                                           MAlonzo.Code.Ledger.Abstract.d_serSize_1770
                                                                                                                                           v1
                                                                                                                                           (coe
                                                                                                                                              MAlonzo.Code.Ledger.Transaction.du_getValue'688'_2936
                                                                                                                                              (coe
                                                                                                                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                                                                                 (coe
                                                                                                                                                    v26))))
                                                                                                                                        (MAlonzo.Code.Ledger.PParams.d_maxValSize_322
                                                                                                                                           (coe
                                                                                                                                              MAlonzo.Code.Ledger.Utxo.d_pparams_1990
                                                                                                                                              (coe
                                                                                                                                                 v2))))))
                                                                                                                             v25))
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Interface.IsSet.du_range_542
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_548)
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Axiom.Set.Map.du_mapValues_864
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Ledger.Transaction.d_txOutHash_2862
                                                                                                                              (coe
                                                                                                                                 v0))
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Ledger.Transaction.d_txouts_2782
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Ledger.Transaction.d_body_2848
                                                                                                                                 (coe
                                                                                                                                    v4))))))
                                                                                                                  erased in
                                                                                                        coe
                                                                                                          (case coe
                                                                                                                  v25 of
                                                                                                             MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v26
                                                                                                               -> coe
                                                                                                                    ("\8704[ (a , _) \8712 range txouts ] Sum.All (const \8868) (\955 a \8594 a .BootstrapAddr.attrsSize \8804 64) a"
                                                                                                                     ::
                                                                                                                     Data.Text.Text)
                                                                                                             MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v26
                                                                                                               -> coe
                                                                                                                    ("something else broke"
                                                                                                                     ::
                                                                                                                     Data.Text.Text)
                                                                                                             _ -> MAlonzo.RTE.mazUnreachableError)
                                                                                                   _ -> MAlonzo.RTE.mazUnreachableError)
                                                                                         _ -> MAlonzo.RTE.mazUnreachableError)
                                                                               _ -> MAlonzo.RTE.mazUnreachableError)
                                                                     _ -> MAlonzo.RTE.mazUnreachableError)
                                                           _ -> MAlonzo.RTE.mazUnreachableError)
                                                 _ -> MAlonzo.RTE.mazUnreachableError)
                                       _ -> MAlonzo.RTE.mazUnreachableError)
                             _ -> MAlonzo.RTE.mazUnreachableError)
                   _ -> MAlonzo.RTE.mazUnreachableError)
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Utxo.Properties._.Go.computeProofH
d_computeProofH_2156 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1850 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1864 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2838 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
d_computeProofH_2156 v0 v1 v2 v3 v4 v5
  = case coe v5 of
      MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v6 v7
        -> if coe v6
             then case coe v7 of
                    MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v8
                      -> case coe v8 of
                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v9 v10
                             -> case coe v10 of
                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v11 v12
                                    -> case coe v12 of
                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v13 v14
                                           -> case coe v14 of
                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v15 v16
                                                  -> case coe v16 of
                                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v17 v18
                                                         -> case coe v18 of
                                                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v19 v20
                                                                -> case coe v20 of
                                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v21 v22
                                                                       -> case coe v22 of
                                                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v23 v24
                                                                              -> case coe v24 of
                                                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v25 v26
                                                                                     -> case coe
                                                                                               v26 of
                                                                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v27 v28
                                                                                            -> case coe
                                                                                                      v28 of
                                                                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v29 v30
                                                                                                   -> case coe
                                                                                                             v30 of
                                                                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v31 v32
                                                                                                          -> case coe
                                                                                                                    v32 of
                                                                                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v33 v34
                                                                                                                 -> case coe
                                                                                                                           v34 of
                                                                                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v35 v36
                                                                                                                        -> coe
                                                                                                                             MAlonzo.Code.Class.Functor.Core.d__'60''36''62'__20
                                                                                                                             (coe
                                                                                                                                MAlonzo.Code.Interface.ComputationalRelation.du_Functor'45'ComputationResult_138)
                                                                                                                             ()
                                                                                                                             erased
                                                                                                                             ()
                                                                                                                             erased
                                                                                                                             (coe
                                                                                                                                MAlonzo.Code.Class.Bifunctor.du_map'8322''8242'_54
                                                                                                                                (coe
                                                                                                                                   MAlonzo.Code.Class.Bifunctor.du_Bifunctor'45'Σ_72)
                                                                                                                                (coe
                                                                                                                                   (\ v37
                                                                                                                                      v38 ->
                                                                                                                                      coe
                                                                                                                                        MAlonzo.Code.Ledger.Utxo.C_UTXO'45'inductive_2730
                                                                                                                                        (coe
                                                                                                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                           (coe
                                                                                                                                              v9)
                                                                                                                                           (coe
                                                                                                                                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                              (coe
                                                                                                                                                 v11)
                                                                                                                                              (coe
                                                                                                                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                 (coe
                                                                                                                                                    v13)
                                                                                                                                                 (coe
                                                                                                                                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                    (coe
                                                                                                                                                       v15)
                                                                                                                                                    (coe
                                                                                                                                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                       (coe
                                                                                                                                                          v17)
                                                                                                                                                       (coe
                                                                                                                                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                          (coe
                                                                                                                                                             v19)
                                                                                                                                                          (coe
                                                                                                                                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                             (coe
                                                                                                                                                                v21)
                                                                                                                                                             (coe
                                                                                                                                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                (coe
                                                                                                                                                                   v23)
                                                                                                                                                                (coe
                                                                                                                                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                   (coe
                                                                                                                                                                      v25)
                                                                                                                                                                   (coe
                                                                                                                                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                      (coe
                                                                                                                                                                         v27)
                                                                                                                                                                      (coe
                                                                                                                                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                         (coe
                                                                                                                                                                            v29)
                                                                                                                                                                         (coe
                                                                                                                                                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                            (coe
                                                                                                                                                                               v31)
                                                                                                                                                                            (coe
                                                                                                                                                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                               (coe
                                                                                                                                                                                  v33)
                                                                                                                                                                               (coe
                                                                                                                                                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                                  (coe
                                                                                                                                                                                     v35)
                                                                                                                                                                                  (coe
                                                                                                                                                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                                     (coe
                                                                                                                                                                                        v36)
                                                                                                                                                                                     (coe
                                                                                                                                                                                        v38)))))))))))))))))))
                                                                                                                             (d_computeProof_1998
                                                                                                                                (coe
                                                                                                                                   v0)
                                                                                                                                (coe
                                                                                                                                   v1)
                                                                                                                                (coe
                                                                                                                                   v2)
                                                                                                                                (coe
                                                                                                                                   v3)
                                                                                                                                (coe
                                                                                                                                   v4))
                                                                                                                      _ -> MAlonzo.RTE.mazUnreachableError
                                                                                                               _ -> MAlonzo.RTE.mazUnreachableError
                                                                                                        _ -> MAlonzo.RTE.mazUnreachableError
                                                                                                 _ -> MAlonzo.RTE.mazUnreachableError
                                                                                          _ -> MAlonzo.RTE.mazUnreachableError
                                                                                   _ -> MAlonzo.RTE.mazUnreachableError
                                                                            _ -> MAlonzo.RTE.mazUnreachableError
                                                                     _ -> MAlonzo.RTE.mazUnreachableError
                                                              _ -> MAlonzo.RTE.mazUnreachableError
                                                       _ -> MAlonzo.RTE.mazUnreachableError
                                                _ -> MAlonzo.RTE.mazUnreachableError
                                         _ -> MAlonzo.RTE.mazUnreachableError
                                  _ -> MAlonzo.RTE.mazUnreachableError
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             else coe
                    seq (coe v7)
                    (coe
                       MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                       (coe du_genErr_2076 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo.Properties._.Go.computeProof
d_computeProof_2192 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1850 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1864 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2838 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
d_computeProof_2192 v0 v1 v2 v3 v4
  = coe
      d_computeProofH_2156 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
      (coe
         MAlonzo.Code.Class.Decidable.Core.d_dec_16
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
            (coe
               MAlonzo.Code.Ledger.Utxo.d_UTXO'45'premises_2772 (coe v0) (coe v1)
               (coe v4) (coe v2) (coe v3))))
-- Ledger.Utxo.Properties._.Go.completeness
d_completeness_2196 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1850 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1864 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2838 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1864 ->
  MAlonzo.Code.Ledger.Utxo.T__'8866'_'8640''10631'_'44'UTXO'10632'__1884 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_completeness_2196 = erased
-- Ledger.Utxo.Properties.Computational-UTXO
d_Computational'45'UTXO_2364 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'UTXO_2364 v0 v1
  = coe d_Computational'45'UTXO''_2038 (coe v0) (coe v1)
-- Ledger.Utxo.Properties.∙-homo-Coin
d_'8729''45'homo'45'Coin_2390 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'homo'45'Coin_2390 = erased
-- Ledger.Utxo.Properties.balance-cong
d_balance'45'cong_2392 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_balance'45'cong_2392 v0 ~v1 v2 v3 v4
  = du_balance'45'cong_2392 v0 v2 v3 v4
du_balance'45'cong_2392 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_balance'45'cong_2392 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Sum.du_indexedSum'7504''45'cong_982
      (coe
         MAlonzo.Code.Interface.IsCommutativeMonoid.du_fromCommMonoid''_40
         (coe
            MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'IsCommutativeMonoid''_120
            (coe
               MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2232 (coe v0))))
      (coe
         MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
         (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1194 (coe v0))
         (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1192 (coe v0)))
      (coe
         MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
         (coe
            MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''8846'_166
            (coe
               MAlonzo.Code.Ledger.Address.du_DecEq'45'BaseAddr_190
               (coe
                  MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_276
                  (coe
                     MAlonzo.Code.Ledger.Transaction.d_globalConstants_1210 (coe v0)))
               (coe
                  MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                  (coe
                     MAlonzo.Code.Ledger.Crypto.d_khs_200
                     (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1234 (coe v0))))
               (coe
                  MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                  (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1234 (coe v0))))
            (coe
               MAlonzo.Code.Ledger.Address.du_DecEq'45'BootstrapAddr_192
               (coe
                  MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_276
                  (coe
                     MAlonzo.Code.Ledger.Transaction.d_globalConstants_1210 (coe v0)))
               (coe
                  MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                  (coe
                     MAlonzo.Code.Ledger.Crypto.d_khs_200
                     (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1234 (coe v0))))
               (coe
                  MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                  (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1234 (coe v0)))))
         (coe
            MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
            (MAlonzo.Code.Ledger.TokenAlgebra.d_DecEq'45'Value_222
               (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2276 (coe v0)))
            (coe
               MAlonzo.Code.Ledger.TokenAlgebra.d_DecEq'45'Value_222
               (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2232 (coe v0)))
            (coe
               MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
               (coe
                  MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                  (coe
                     MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''8846'_166
                     (coe
                        MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_26
                        (coe
                           MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40
                           (coe
                              MAlonzo.Code.Ledger.Script.d_Data'688'_190
                              (coe
                                 MAlonzo.Code.Ledger.Script.d_ps_454
                                 (coe
                                    MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1806
                                    (coe v0))))))
                     (coe
                        MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                        (coe
                           MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40
                           (coe
                              MAlonzo.Code.Ledger.Script.d_Data'688'_190
                              (coe
                                 MAlonzo.Code.Ledger.Script.d_ps_454
                                 (coe
                                    MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1806
                                    (coe v0))))))))
               (coe
                  MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                  (coe
                     MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                     (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1234 (coe v0)))))))
      (\ v4 ->
         coe
           MAlonzo.Code.Ledger.Transaction.du_getValue'688'_2872
           (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v4)))
      (coe
         MAlonzo.Code.Ledger.Set.Theory.du__'7584''7504'_1116
         (coe
            MAlonzo.Code.Axiom.Set.Map.du_mapValues_864
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1458
               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
            (coe MAlonzo.Code.Ledger.Transaction.d_txOutHash_2862 (coe v0))
            (coe v1)))
      (coe
         MAlonzo.Code.Ledger.Set.Theory.du__'7584''7504'_1116
         (coe
            MAlonzo.Code.Axiom.Set.Map.du_mapValues_864
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1458
               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
            (coe MAlonzo.Code.Ledger.Transaction.d_txOutHash_2862 (coe v0))
            (coe v2)))
      (coe
         MAlonzo.Code.Axiom.Set.Properties.du_map'45''8801''7497'_416
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1458
            (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
         (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v1))
         (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2))
         (coe
            MAlonzo.Code.Data.Product.Base.du_map'8322'_150
            (coe
               (\ v4 ->
                  MAlonzo.Code.Ledger.Transaction.d_txOutHash_2862 (coe v0))))
         (coe v3))
-- Ledger.Utxo.Properties.balance-cong-coin
d_balance'45'cong'45'coin_2400 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_balance'45'cong'45'coin_2400 = erased
-- Ledger.Utxo.Properties.balance-∪
d_balance'45''8746'_2412 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_balance'45''8746'_2412 = erased
-- Ledger.Utxo.Properties._._.newTxid⇒disj
d_newTxid'8658'disj_2536 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2736 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_newTxid'8658'disj_2536 ~v0 ~v1 ~v2 ~v3 ~v4
  = du_newTxid'8658'disj_2536
du_newTxid'8658'disj_2536 :: MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_newTxid'8658'disj_2536
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_disjoint'8658'disjoint''_910
-- Ledger.Utxo.Properties._._.consumedCoinEquality
d_consumedCoinEquality_2552 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2736 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1864 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_consumedCoinEquality_2552 = erased
-- Ledger.Utxo.Properties._._.producedCoinEquality
d_producedCoinEquality_2568 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2736 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1864 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_producedCoinEquality_2568 = erased
-- Ledger.Utxo.Properties._._.balValueToCoin
d_balValueToCoin_2582 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2736 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1864 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_balValueToCoin_2582 = erased
-- Ledger.Utxo.Properties.posPart-negPart≡x
d_posPart'45'negPart'8801'x_2594 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_posPart'45'negPart'8801'x_2594 = erased
-- Ledger.Utxo.Properties._._.collateral
d_collateral_2636 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2838 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateral_2636 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_collateral_2636 v9
du_collateral_2636 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2838 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_collateral_2636 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_collateral_2812
      (coe MAlonzo.Code.Ledger.Transaction.d_body_2848 (coe v0))
-- Ledger.Utxo.Properties._._.mint
d_mint_2640 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer -> MAlonzo.Code.Ledger.Transaction.T_Tx_2838 -> AgdaAny
d_mint_2640 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_mint_2640 v9
du_mint_2640 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2838 -> AgdaAny
du_mint_2640 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_mint_2786
      (coe MAlonzo.Code.Ledger.Transaction.d_body_2848 (coe v0))
-- Ledger.Utxo.Properties._._.txdonation
d_txdonation_2654 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer -> MAlonzo.Code.Ledger.Transaction.T_Tx_2838 -> Integer
d_txdonation_2654 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_txdonation_2654 v9
du_txdonation_2654 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2838 -> Integer
du_txdonation_2654 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txdonation_2798
      (coe MAlonzo.Code.Ledger.Transaction.d_body_2848 (coe v0))
-- Ledger.Utxo.Properties._._.txfee
d_txfee_2656 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer -> MAlonzo.Code.Ledger.Transaction.T_Tx_2838 -> Integer
d_txfee_2656 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_txfee_2656 v9
du_txfee_2656 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2838 -> Integer
du_txfee_2656 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txfee_2784
      (coe MAlonzo.Code.Ledger.Transaction.d_body_2848 (coe v0))
-- Ledger.Utxo.Properties._._.txid
d_txid_2658 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer -> MAlonzo.Code.Ledger.Transaction.T_Tx_2838 -> AgdaAny
d_txid_2658 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_txid_2658 v9
du_txid_2658 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2838 -> AgdaAny
du_txid_2658 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txid_2810
      (coe MAlonzo.Code.Ledger.Transaction.d_body_2848 (coe v0))
-- Ledger.Utxo.Properties._._.txins
d_txins_2660 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2838 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txins_2660 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_txins_2660 v9
du_txins_2660 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2838 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_txins_2660 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txins_2778
      (coe MAlonzo.Code.Ledger.Transaction.d_body_2848 (coe v0))
-- Ledger.Utxo.Properties._.DepositHelpers.pp
d_pp_2716 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2838 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1850 ->
  MAlonzo.Code.Ledger.Utxo.T__'8866'_'8640''10631'_'44'UTXO'10632'__1884 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pp_2716 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 v10 ~v11 ~v12
  = du_pp_2716 v10
du_pp_2716 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1850 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244
du_pp_2716 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_pparams_1860 (coe v0)
-- Ledger.Utxo.Properties._.DepositHelpers.dep
d_dep_2718 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2838 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1850 ->
  MAlonzo.Code.Ledger.Utxo.T__'8866'_'8640''10631'_'44'UTXO'10632'__1884 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  Integer
d_dep_2718 v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 ~v7 ~v8 ~v9 ~v10 ~v11 ~v12
           ~v13
  = du_dep_2718 v0 v6
du_dep_2718 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_dep_2718 v0 v1
  = coe
      MAlonzo.Code.Ledger.Set.Theory.du_indexedSum'7515'''_1160
      (coe
         MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_826
         (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2350 (coe v0)))
      (coe
         MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
         (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2688))
      (coe
         MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
         (coe
            MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3334))
      (coe (\ v2 -> v2)) (coe v1)
-- Ledger.Utxo.Properties._.DepositHelpers.uDep
d_uDep_2720 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2838 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1850 ->
  MAlonzo.Code.Ledger.Utxo.T__'8866'_'8640''10631'_'44'UTXO'10632'__1884 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  Integer
d_uDep_2720 v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 ~v7 ~v8 ~v9 v10 v11 ~v12 ~v13
  = du_uDep_2720 v0 v6 v10 v11
du_uDep_2720 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2838 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1850 -> Integer
du_uDep_2720 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Set.Theory.du_indexedSum'7515'''_1160
      (coe
         MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_826
         (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2350 (coe v0)))
      (coe
         MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
         (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2688))
      (coe
         MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
         (coe
            MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3334))
      (coe (\ v4 -> v4))
      (coe
         MAlonzo.Code.Ledger.Utxo.du_updateDeposits_1966 (coe v0)
         (coe MAlonzo.Code.Ledger.Utxo.d_pparams_1860 (coe v3))
         (coe MAlonzo.Code.Ledger.Transaction.d_body_2848 (coe v2))
         (coe v1))
-- Ledger.Utxo.Properties._.DepositHelpers.Δdep
d_Δdep_2722 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2838 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1850 ->
  MAlonzo.Code.Ledger.Utxo.T__'8866'_'8640''10631'_'44'UTXO'10632'__1884 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  Integer
d_Δdep_2722 v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 ~v7 ~v8 ~v9 v10 v11 ~v12 ~v13
  = du_Δdep_2722 v0 v6 v10 v11
du_Δdep_2722 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2838 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1850 -> Integer
du_Δdep_2722 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Utxo.du_depositsChange_2072 (coe v0)
      (coe MAlonzo.Code.Ledger.Utxo.d_pparams_1860 (coe v3))
      (coe MAlonzo.Code.Ledger.Transaction.d_body_2848 (coe v2)) (coe v1)
-- Ledger.Utxo.Properties._.DepositHelpers.utxoSt
d_utxoSt_2724 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2838 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1850 ->
  MAlonzo.Code.Ledger.Utxo.T__'8866'_'8640''10631'_'44'UTXO'10632'__1884 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1864
d_utxoSt_2724 ~v0 v1 ~v2 v3 ~v4 v5 ~v6 v7 ~v8 ~v9 ~v10 ~v11 ~v12
  = du_utxoSt_2724 v1 v3 v5 v7
du_utxoSt_2724 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1864
du_utxoSt_2724 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Utxo.C_'10214'_'44'_'44'_'44'_'10215''7512'_1882
      (coe v0) (coe v1) (coe v2) (coe v3)
-- Ledger.Utxo.Properties._.DepositHelpers.ref
d_ref_2726 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2838 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1850 ->
  MAlonzo.Code.Ledger.Utxo.T__'8866'_'8640''10631'_'44'UTXO'10632'__1884 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  Integer
d_ref_2726 v0 ~v1 v2 ~v3 v4 ~v5 v6 ~v7 v8 ~v9 v10 v11 ~v12 ~v13
  = du_ref_2726 v0 v2 v4 v6 v8 v10 v11
du_ref_2726 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2838 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1850 -> Integer
du_ref_2726 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Ledger.Utxo.du_depositRefunds_2390 (coe v0)
      (coe MAlonzo.Code.Ledger.Utxo.d_pparams_1860 (coe v6))
      (coe
         MAlonzo.Code.Ledger.Utxo.C_'10214'_'44'_'44'_'44'_'10215''7512'_1882
         (coe v1) (coe v2) (coe v3) (coe v4))
      (coe MAlonzo.Code.Ledger.Transaction.d_body_2848 (coe v5))
-- Ledger.Utxo.Properties._.DepositHelpers.tot
d_tot_2728 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2838 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1850 ->
  MAlonzo.Code.Ledger.Utxo.T__'8866'_'8640''10631'_'44'UTXO'10632'__1884 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  Integer
d_tot_2728 v0 ~v1 v2 ~v3 v4 ~v5 v6 ~v7 v8 ~v9 v10 v11 ~v12 ~v13
  = du_tot_2728 v0 v2 v4 v6 v8 v10 v11
du_tot_2728 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2838 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1850 -> Integer
du_tot_2728 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Ledger.Utxo.du_newDeposits_2398 (coe v0)
      (coe MAlonzo.Code.Ledger.Utxo.d_pparams_1860 (coe v6))
      (coe
         MAlonzo.Code.Ledger.Utxo.C_'10214'_'44'_'44'_'44'_'10215''7512'_1882
         (coe v1) (coe v2) (coe v3) (coe v4))
      (coe MAlonzo.Code.Ledger.Transaction.d_body_2848 (coe v5))
-- Ledger.Utxo.Properties._.DepositHelpers.h
d_h_2730 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2838 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1850 ->
  MAlonzo.Code.Ledger.Utxo.T__'8866'_'8640''10631'_'44'UTXO'10632'__1884 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_h_2730 = erased
-- Ledger.Utxo.Properties._.DepositHelpers.newBal'
d_newBal''_2736 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2838 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1850 ->
  MAlonzo.Code.Ledger.Utxo.T__'8866'_'8640''10631'_'44'UTXO'10632'__1884 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Ledger.Utxo.T__'8866'_'8640''10631'_'44'UTXO'10632'__1884 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_newBal''_2736 = erased
-- Ledger.Utxo.Properties._.DepositHelpers.newBal
d_newBal_2740 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2838 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1850 ->
  MAlonzo.Code.Ledger.Utxo.T__'8866'_'8640''10631'_'44'UTXO'10632'__1884 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_newBal_2740 = erased
-- Ledger.Utxo.Properties._.DepositHelpers.noMintAda'
d_noMintAda''_2742 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2838 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1850 ->
  MAlonzo.Code.Ledger.Utxo.T__'8866'_'8640''10631'_'44'UTXO'10632'__1884 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Ledger.Utxo.T__'8866'_'8640''10631'_'44'UTXO'10632'__1884 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_noMintAda''_2742 = erased
-- Ledger.Utxo.Properties._.DepositHelpers.noMintAda
d_noMintAda_2746 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2838 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1850 ->
  MAlonzo.Code.Ledger.Utxo.T__'8866'_'8640''10631'_'44'UTXO'10632'__1884 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_noMintAda_2746 = erased
-- Ledger.Utxo.Properties._.DepositHelpers.remDepTot
d_remDepTot_2748 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2838 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1850 ->
  MAlonzo.Code.Ledger.Utxo.T__'8866'_'8640''10631'_'44'UTXO'10632'__1884 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  Integer
d_remDepTot_2748 v0 ~v1 v2 ~v3 v4 ~v5 v6 ~v7 v8 ~v9 v10 v11 ~v12
                 ~v13
  = du_remDepTot_2748 v0 v2 v4 v6 v8 v10 v11
du_remDepTot_2748 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2838 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1850 -> Integer
du_remDepTot_2748 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Agda.Builtin.Nat.d__'45'__22
      (coe
         MAlonzo.Code.Ledger.Set.Theory.du_indexedSum'7515'''_1160
         (coe
            MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_826
            (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2350 (coe v0)))
         (coe
            MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
            (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2688))
         (coe
            MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
            (coe
               MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3334))
         (coe (\ v7 -> v7)) (coe v3))
      (coe
         du_ref_2726 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
         (coe v6))
-- Ledger.Utxo.Properties._.DepositHelpers.deposits-change'
d_deposits'45'change''_2750 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2838 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1850 ->
  MAlonzo.Code.Ledger.Utxo.T__'8866'_'8640''10631'_'44'UTXO'10632'__1884 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_deposits'45'change''_2750 = erased
-- Ledger.Utxo.Properties._.DepositHelpers.dep-ref
d_dep'45'ref_2752 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2838 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1850 ->
  MAlonzo.Code.Ledger.Utxo.T__'8866'_'8640''10631'_'44'UTXO'10632'__1884 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_dep'45'ref_2752 = erased
-- Ledger.Utxo.Properties._.DepositHelpers.ref-tot-0
d_ref'45'tot'45'0_2768 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2838 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1850 ->
  MAlonzo.Code.Ledger.Utxo.T__'8866'_'8640''10631'_'44'UTXO'10632'__1884 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  (MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ref'45'tot'45'0_2768 = erased
-- Ledger.Utxo.Properties._.DepositHelpers.ref≤dep
d_ref'8804'dep_2784 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2838 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1850 ->
  MAlonzo.Code.Ledger.Utxo.T__'8866'_'8640''10631'_'44'UTXO'10632'__1884 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_ref'8804'dep_2784 v0 ~v1 v2 ~v3 v4 ~v5 v6 ~v7 v8 ~v9 v10 v11 ~v12
                    ~v13
  = du_ref'8804'dep_2784 v0 v2 v4 v6 v8 v10 v11
du_ref'8804'dep_2784 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2838 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1850 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_ref'8804'dep_2784 v0 v1 v2 v3 v4 v5 v6
  = let v7
          = coe
              MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_168
              erased
              (\ v7 ->
                 coe
                   MAlonzo.Code.Data.Nat.Properties.du_'8801''8658''8801''7495'_2678
                   (coe
                      du_ref_2870 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                      (coe v6)))
              (coe
                 MAlonzo.Code.Relation.Nullary.Decidable.Core.d_T'63'_66
                 (coe
                    eqInt
                    (coe
                       du_ref_2726 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                       (coe v6))
                    (coe (0 :: Integer)))) in
    coe
      (case coe v7 of
         MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v8 v9
           -> if coe v8
                then coe
                       seq (coe v9) (coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26)
                else coe
                       seq (coe v9)
                       (coe
                          MAlonzo.Code.Data.Nat.Properties.du_'8804''8243''8658''8804'_6224
                          (let v10
                                 = MAlonzo.Code.Data.Integer.Base.d_sign_24
                                     (let v10
                                            = coe
                                                MAlonzo.Code.Data.List.Base.du_foldr_216
                                                (coe
                                                   (\ v10 ->
                                                      addInt
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                           (coe v10))))
                                                (coe (0 :: Integer))
                                                (coe
                                                   MAlonzo.Code.Data.List.Base.du_deduplicate_898
                                                   (coe
                                                      MAlonzo.Code.Data.Product.Properties.du_'8801''45'dec_78
                                                      (coe
                                                         MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                         (coe
                                                            MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_826
                                                            (coe
                                                               MAlonzo.Code.Ledger.Transaction.d_govStructure_2350
                                                               (coe v0))))
                                                      (coe
                                                         (\ v10 v11 v12 ->
                                                            coe
                                                              MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_168
                                                              erased
                                                              (\ v13 ->
                                                                 coe
                                                                   MAlonzo.Code.Data.Nat.Properties.du_'8801''8658''8801''7495'_2678
                                                                   (coe v11))
                                                              (coe
                                                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                 (coe eqInt (coe v11) (coe v12))
                                                                 (coe
                                                                    MAlonzo.Code.Relation.Nullary.Reflects.d_T'45'reflects_66
                                                                    (coe
                                                                       eqInt (coe v11)
                                                                       (coe v12)))))))
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                      (coe
                                                         MAlonzo.Code.Ledger.Set.Theory.du_finiteness_218
                                                         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                            (coe
                                                               MAlonzo.Code.Ledger.Utxo.du_updateCertDeposits_1942
                                                               (coe v0)
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Utxo.d_pparams_1860
                                                                  (coe v6))
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Transaction.d_txcerts_2790
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Transaction.d_body_2848
                                                                     (coe v5)))
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Utxo.du_updateProposalDeposits_1954
                                                                  (coe v0)
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Transaction.d_txprop_2796
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Transaction.d_body_2848
                                                                        (coe v5)))
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Transaction.d_txid_2810
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Transaction.d_body_2848
                                                                        (coe v5)))
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.PParams.d_govActionDeposit_356
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Utxo.d_pparams_1860
                                                                        (coe v6)))
                                                                  (coe v3))))))) in
                                      coe
                                        (let v11
                                               = coe
                                                   MAlonzo.Code.Data.List.Base.du_foldr_216
                                                   (coe
                                                      (\ v11 ->
                                                         addInt
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                              (coe v11))))
                                                   (coe (0 :: Integer))
                                                   (coe
                                                      MAlonzo.Code.Data.List.Base.du_deduplicate_898
                                                      (coe
                                                         MAlonzo.Code.Data.Product.Properties.du_'8801''45'dec_78
                                                         (coe
                                                            MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                            (coe
                                                               MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_826
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Transaction.d_govStructure_2350
                                                                  (coe v0))))
                                                         (coe
                                                            (\ v11 v12 v13 ->
                                                               coe
                                                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_168
                                                                 erased
                                                                 (\ v14 ->
                                                                    coe
                                                                      MAlonzo.Code.Data.Nat.Properties.du_'8801''8658''8801''7495'_2678
                                                                      (coe v12))
                                                                 (coe
                                                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                    (coe eqInt (coe v12) (coe v13))
                                                                    (coe
                                                                       MAlonzo.Code.Relation.Nullary.Reflects.d_T'45'reflects_66
                                                                       (coe
                                                                          eqInt (coe v12)
                                                                          (coe v13)))))))
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                         (coe
                                                            MAlonzo.Code.Ledger.Set.Theory.du_finiteness_218
                                                            (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                               (coe v3))))) in
                                         coe
                                           (let v12
                                                  = ltInt
                                                      (coe
                                                         MAlonzo.Code.Data.List.Base.du_foldr_216
                                                         (coe
                                                            (\ v12 ->
                                                               addInt
                                                                 (coe
                                                                    MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                    (coe v12))))
                                                         (coe (0 :: Integer))
                                                         (coe
                                                            MAlonzo.Code.Data.List.Base.du_deduplicate_898
                                                            (coe
                                                               MAlonzo.Code.Data.Product.Properties.du_'8801''45'dec_78
                                                               (coe
                                                                  MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_826
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Transaction.d_govStructure_2350
                                                                        (coe v0))))
                                                               (coe
                                                                  (\ v12 v13 v14 ->
                                                                     coe
                                                                       MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_168
                                                                       erased
                                                                       (\ v15 ->
                                                                          coe
                                                                            MAlonzo.Code.Data.Nat.Properties.du_'8801''8658''8801''7495'_2678
                                                                            (coe v13))
                                                                       (coe
                                                                          MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                          (coe
                                                                             eqInt (coe v13)
                                                                             (coe v14))
                                                                          (coe
                                                                             MAlonzo.Code.Relation.Nullary.Reflects.d_T'45'reflects_66
                                                                             (coe
                                                                                eqInt (coe v13)
                                                                                (coe v14)))))))
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Set.Theory.du_finiteness_218
                                                                  (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Utxo.du_updateCertDeposits_1942
                                                                        (coe v0)
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Utxo.d_pparams_1860
                                                                           (coe v6))
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Transaction.d_txcerts_2790
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Transaction.d_body_2848
                                                                              (coe v5)))
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Utxo.du_updateProposalDeposits_1954
                                                                           (coe v0)
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Transaction.d_txprop_2796
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Transaction.d_body_2848
                                                                                 (coe v5)))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Transaction.d_txid_2810
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Transaction.d_body_2848
                                                                                 (coe v5)))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.PParams.d_govActionDeposit_356
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Utxo.d_pparams_1860
                                                                                 (coe v6)))
                                                                           (coe v3))))))))
                                                      (coe
                                                         MAlonzo.Code.Data.List.Base.du_foldr_216
                                                         (coe
                                                            (\ v12 ->
                                                               addInt
                                                                 (coe
                                                                    MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                    (coe v12))))
                                                         (coe (0 :: Integer))
                                                         (coe
                                                            MAlonzo.Code.Data.List.Base.du_deduplicate_898
                                                            (coe
                                                               MAlonzo.Code.Data.Product.Properties.du_'8801''45'dec_78
                                                               (coe
                                                                  MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_826
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Transaction.d_govStructure_2350
                                                                        (coe v0))))
                                                               (coe
                                                                  (\ v12 v13 v14 ->
                                                                     coe
                                                                       MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_168
                                                                       erased
                                                                       (\ v15 ->
                                                                          coe
                                                                            MAlonzo.Code.Data.Nat.Properties.du_'8801''8658''8801''7495'_2678
                                                                            (coe v13))
                                                                       (coe
                                                                          MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                          (coe
                                                                             eqInt (coe v13)
                                                                             (coe v14))
                                                                          (coe
                                                                             MAlonzo.Code.Relation.Nullary.Reflects.d_T'45'reflects_66
                                                                             (coe
                                                                                eqInt (coe v13)
                                                                                (coe v14)))))))
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Set.Theory.du_finiteness_218
                                                                  (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                     (coe v3)))))) in
                                            coe
                                              (if coe v12
                                                 then coe
                                                        MAlonzo.Code.Data.Integer.Base.d_'45'__252
                                                        (coe subInt (coe v11) (coe v10))
                                                 else coe subInt (coe v10) (coe v11))))) in
                           coe
                             (let v11
                                    = MAlonzo.Code.Data.Integer.Base.d_'8739'_'8739'_18
                                        (let v11
                                               = coe
                                                   MAlonzo.Code.Data.List.Base.du_foldr_216
                                                   (coe
                                                      (\ v11 ->
                                                         addInt
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                              (coe v11))))
                                                   (coe (0 :: Integer))
                                                   (coe
                                                      MAlonzo.Code.Data.List.Base.du_deduplicate_898
                                                      (coe
                                                         MAlonzo.Code.Data.Product.Properties.du_'8801''45'dec_78
                                                         (coe
                                                            MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                            (coe
                                                               MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_826
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Transaction.d_govStructure_2350
                                                                  (coe v0))))
                                                         (coe
                                                            (\ v11 v12 v13 ->
                                                               coe
                                                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_168
                                                                 erased
                                                                 (\ v14 ->
                                                                    coe
                                                                      MAlonzo.Code.Data.Nat.Properties.du_'8801''8658''8801''7495'_2678
                                                                      (coe v12))
                                                                 (coe
                                                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                    (coe eqInt (coe v12) (coe v13))
                                                                    (coe
                                                                       MAlonzo.Code.Relation.Nullary.Reflects.d_T'45'reflects_66
                                                                       (coe
                                                                          eqInt (coe v12)
                                                                          (coe v13)))))))
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                         (coe
                                                            MAlonzo.Code.Ledger.Set.Theory.du_finiteness_218
                                                            (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Utxo.du_updateCertDeposits_1942
                                                                  (coe v0)
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Utxo.d_pparams_1860
                                                                     (coe v6))
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Transaction.d_txcerts_2790
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Transaction.d_body_2848
                                                                        (coe v5)))
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Utxo.du_updateProposalDeposits_1954
                                                                     (coe v0)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Transaction.d_txprop_2796
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Transaction.d_body_2848
                                                                           (coe v5)))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Transaction.d_txid_2810
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Transaction.d_body_2848
                                                                           (coe v5)))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.PParams.d_govActionDeposit_356
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Utxo.d_pparams_1860
                                                                           (coe v6)))
                                                                     (coe v3))))))) in
                                         coe
                                           (let v12
                                                  = coe
                                                      MAlonzo.Code.Data.List.Base.du_foldr_216
                                                      (coe
                                                         (\ v12 ->
                                                            addInt
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                 (coe v12))))
                                                      (coe (0 :: Integer))
                                                      (coe
                                                         MAlonzo.Code.Data.List.Base.du_deduplicate_898
                                                         (coe
                                                            MAlonzo.Code.Data.Product.Properties.du_'8801''45'dec_78
                                                            (coe
                                                               MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_826
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Transaction.d_govStructure_2350
                                                                     (coe v0))))
                                                            (coe
                                                               (\ v12 v13 v14 ->
                                                                  coe
                                                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_168
                                                                    erased
                                                                    (\ v15 ->
                                                                       coe
                                                                         MAlonzo.Code.Data.Nat.Properties.du_'8801''8658''8801''7495'_2678
                                                                         (coe v13))
                                                                    (coe
                                                                       MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                       (coe
                                                                          eqInt (coe v13) (coe v14))
                                                                       (coe
                                                                          MAlonzo.Code.Relation.Nullary.Reflects.d_T'45'reflects_66
                                                                          (coe
                                                                             eqInt (coe v13)
                                                                             (coe v14)))))))
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                            (coe
                                                               MAlonzo.Code.Ledger.Set.Theory.du_finiteness_218
                                                               (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                  (coe v3))))) in
                                            coe
                                              (let v13
                                                     = ltInt
                                                         (coe
                                                            MAlonzo.Code.Data.List.Base.du_foldr_216
                                                            (coe
                                                               (\ v13 ->
                                                                  addInt
                                                                    (coe
                                                                       MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                       (coe v13))))
                                                            (coe (0 :: Integer))
                                                            (coe
                                                               MAlonzo.Code.Data.List.Base.du_deduplicate_898
                                                               (coe
                                                                  MAlonzo.Code.Data.Product.Properties.du_'8801''45'dec_78
                                                                  (coe
                                                                     MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_826
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Transaction.d_govStructure_2350
                                                                           (coe v0))))
                                                                  (coe
                                                                     (\ v13 v14 v15 ->
                                                                        coe
                                                                          MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_168
                                                                          erased
                                                                          (\ v16 ->
                                                                             coe
                                                                               MAlonzo.Code.Data.Nat.Properties.du_'8801''8658''8801''7495'_2678
                                                                               (coe v14))
                                                                          (coe
                                                                             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                             (coe
                                                                                eqInt (coe v14)
                                                                                (coe v15))
                                                                             (coe
                                                                                MAlonzo.Code.Relation.Nullary.Reflects.d_T'45'reflects_66
                                                                                (coe
                                                                                   eqInt (coe v14)
                                                                                   (coe v15)))))))
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Set.Theory.du_finiteness_218
                                                                     (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Utxo.du_updateCertDeposits_1942
                                                                           (coe v0)
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Utxo.d_pparams_1860
                                                                              (coe v6))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Transaction.d_txcerts_2790
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Transaction.d_body_2848
                                                                                 (coe v5)))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Utxo.du_updateProposalDeposits_1954
                                                                              (coe v0)
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Transaction.d_txprop_2796
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Transaction.d_body_2848
                                                                                    (coe v5)))
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Transaction.d_txid_2810
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Transaction.d_body_2848
                                                                                    (coe v5)))
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.PParams.d_govActionDeposit_356
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Utxo.d_pparams_1860
                                                                                    (coe v6)))
                                                                              (coe v3))))))))
                                                         (coe
                                                            MAlonzo.Code.Data.List.Base.du_foldr_216
                                                            (coe
                                                               (\ v13 ->
                                                                  addInt
                                                                    (coe
                                                                       MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                       (coe v13))))
                                                            (coe (0 :: Integer))
                                                            (coe
                                                               MAlonzo.Code.Data.List.Base.du_deduplicate_898
                                                               (coe
                                                                  MAlonzo.Code.Data.Product.Properties.du_'8801''45'dec_78
                                                                  (coe
                                                                     MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_826
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Transaction.d_govStructure_2350
                                                                           (coe v0))))
                                                                  (coe
                                                                     (\ v13 v14 v15 ->
                                                                        coe
                                                                          MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_168
                                                                          erased
                                                                          (\ v16 ->
                                                                             coe
                                                                               MAlonzo.Code.Data.Nat.Properties.du_'8801''8658''8801''7495'_2678
                                                                               (coe v14))
                                                                          (coe
                                                                             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                             (coe
                                                                                eqInt (coe v14)
                                                                                (coe v15))
                                                                             (coe
                                                                                MAlonzo.Code.Relation.Nullary.Reflects.d_T'45'reflects_66
                                                                                (coe
                                                                                   eqInt (coe v14)
                                                                                   (coe v15)))))))
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Set.Theory.du_finiteness_218
                                                                     (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                        (coe v3)))))) in
                                               coe
                                                 (if coe v13
                                                    then coe
                                                           MAlonzo.Code.Data.Integer.Base.d_'45'__252
                                                           (coe subInt (coe v12) (coe v11))
                                                    else coe subInt (coe v11) (coe v12))))) in
                              coe
                                (case coe v10 of
                                   MAlonzo.Code.Data.Sign.Base.C_'45'_8 -> coe v11
                                   _ -> coe (0 :: Integer))))
                          (coe
                             MAlonzo.Code.Algebra.Definitions.RawMagma.C__'44'__40
                             (coe du_uDep_2720 (coe v0) (coe v3) (coe v5) (coe v6))
                             (coe
                                MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
                                (\ v10 v11 v12 -> v12)
                                (addInt
                                   (coe
                                      du_ref_2726 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                      (coe v5) (coe v6))
                                   (coe du_uDep_2720 (coe v0) (coe v3) (coe v5) (coe v6)))
                                (coe du_dep_2718 (coe v0) (coe v3))
                                (coe
                                   MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
                                   erased
                                   (addInt
                                      (coe
                                         du_ref_2726 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                         (coe v5) (coe v6))
                                      (coe du_uDep_2720 (coe v0) (coe v3) (coe v5) (coe v6)))
                                   (addInt
                                      (coe
                                         du_ref_2726 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                         (coe v5) (coe v6))
                                      (coe du_uDep_2720 (coe v0) (coe v3) (coe v5) (coe v6)))
                                   (coe du_dep_2718 (coe v0) (coe v3))
                                   (coe
                                      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
                                      erased
                                      (addInt
                                         (coe
                                            du_ref_2726 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                            (coe v5) (coe v6))
                                         (coe du_uDep_2720 (coe v0) (coe v3) (coe v5) (coe v6)))
                                      (coe du_dep_2718 (coe v0) (coe v3))
                                      (coe du_dep_2718 (coe v0) (coe v3))
                                      (coe
                                         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                                         erased (coe du_dep_2718 (coe v0) (coe v3)))
                                      erased)
                                   erased))))
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Utxo.Properties._.DepositHelpers.deposits-change
d_deposits'45'change_2798 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2838 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1850 ->
  MAlonzo.Code.Ledger.Utxo.T__'8866'_'8640''10631'_'44'UTXO'10632'__1884 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_deposits'45'change_2798 = erased
-- Ledger.Utxo.Properties._.DepositHelpers.split-balance
d_split'45'balance_2802 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2838 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1850 ->
  MAlonzo.Code.Ledger.Utxo.T__'8866'_'8640''10631'_'44'UTXO'10632'__1884 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_split'45'balance_2802 = erased
-- Ledger.Utxo.Properties._.DepositHelpers._.utxo-ref-prop-worker
d_utxo'45'ref'45'prop'45'worker_2852 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2838 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1850 ->
  MAlonzo.Code.Ledger.Utxo.T__'8866'_'8640''10631'_'44'UTXO'10632'__1884 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_utxo'45'ref'45'prop'45'worker_2852 = erased
-- Ledger.Utxo.Properties._.DepositHelpers.utxo-ref-prop
d_utxo'45'ref'45'prop_2862 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2838 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1850 ->
  MAlonzo.Code.Ledger.Utxo.T__'8866'_'8640''10631'_'44'UTXO'10632'__1884 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_utxo'45'ref'45'prop_2862 = erased
-- Ledger.Utxo.Properties._.DepositHelpers.rearrange0
d_rearrange0_2866 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2838 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1850 ->
  MAlonzo.Code.Ledger.Utxo.T__'8866'_'8640''10631'_'44'UTXO'10632'__1884 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_rearrange0_2866 = erased
-- Ledger.Utxo.Properties._.DepositHelpers._.pov-scripts-worker
d_pov'45'scripts'45'worker_2892 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2838 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1850 ->
  MAlonzo.Code.Ledger.Utxo.T__'8866'_'8640''10631'_'44'UTXO'10632'__1884 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_pov'45'scripts'45'worker_2892 = erased
-- Ledger.Utxo.Properties._.DepositHelpers.pov-scripts
d_pov'45'scripts_2904 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2838 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1850 ->
  MAlonzo.Code.Ledger.Utxo.T__'8866'_'8640''10631'_'44'UTXO'10632'__1884 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_pov'45'scripts_2904 = erased
-- Ledger.Utxo.Properties._.DepositHelpers.pov-no-scripts
d_pov'45'no'45'scripts_2908 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2838 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1850 ->
  MAlonzo.Code.Ledger.Utxo.T__'8866'_'8640''10631'_'44'UTXO'10632'__1884 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_pov'45'no'45'scripts_2908 = erased
-- Ledger.Utxo.Properties.UTXO-step
d_UTXO'45'step_2916 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1850 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1864 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2838 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
d_UTXO'45'step_2916 v0 v1
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.du_compute_274
      (coe d_Computational'45'UTXO_2364 (coe v0) (coe v1))
-- Ledger.Utxo.Properties.UTXO-step-computes-UTXO
d_UTXO'45'step'45'computes'45'UTXO_2918 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1850 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1864 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2838 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1864 ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_UTXO'45'step'45'computes'45'UTXO_2918 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.du_'8801''45'success'8660'STS_300
      (coe d_Computational'45'UTXO_2364 (coe v0) (coe v1)) (coe v2)
      (coe v3) (coe v4) (coe v5)
-- Ledger.Utxo.Properties.pov
d_pov_2920 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2838 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1850 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Ledger.Utxo.T__'8866'_'8640''10631'_'44'UTXO'10632'__1884 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_pov_2920 = erased
-- Ledger.Utxo.Properties.isRefundCert
d_isRefundCert_2958 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  MAlonzo.Code.Ledger.Certs.T_DCert_834 -> Bool
d_isRefundCert_2958 ~v0 ~v1 v2 = du_isRefundCert_2958 v2
du_isRefundCert_2958 ::
  MAlonzo.Code.Ledger.Certs.T_DCert_834 -> Bool
du_isRefundCert_2958 v0
  = let v1 = coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8 in
    coe
      (case coe v0 of
         MAlonzo.Code.Ledger.Certs.C_dereg_838 v2 v3
           -> coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10
         MAlonzo.Code.Ledger.Certs.C_deregdrep_846 v2 v3
           -> coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10
         _ -> coe v1)
-- Ledger.Utxo.Properties.noRefundCert
d_noRefundCert_2964 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_834] -> ()
d_noRefundCert_2964 = erased
-- Ledger.Utxo.Properties.fin∘list[]
d_fin'8728'list'91''93'_2972 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  () -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_fin'8728'list'91''93'_2972 = erased
-- Ledger.Utxo.Properties.fin∘list∷[]
d_fin'8728'list'8759''91''93'_2978 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  () -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_fin'8728'list'8759''91''93'_2978 = erased
-- Ledger.Utxo.Properties.coin∅
d_coin'8709'_2980 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'8709'_2980 = erased
-- Ledger.Utxo.Properties.getCoin-singleton
d_getCoin'45'singleton_3016 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_getCoin'45'singleton_3016 = erased
-- Ledger.Utxo.Properties._.getCoin∪⁺∅≡id
d_getCoin'8746''8314''8709''8801'id_3036 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
    MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
    MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
   MAlonzo.Code.Data.Nat.Base.T__'8804'__22) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_getCoin'8746''8314''8709''8801'id_3036 = erased
-- Ledger.Utxo.Properties._.getCoin∣∅≡id
d_getCoin'8739''8709''8801'id_3048 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
    MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
    MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
   MAlonzo.Code.Data.Nat.Base.T__'8804'__22) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_getCoin'8739''8709''8801'id_3048 = erased
-- Ledger.Utxo.Properties._.getCoin∪⁺∅∣∅id
d_getCoin'8746''8314''8709''8739''8709'id_3054 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
    MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
    MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
   MAlonzo.Code.Data.Nat.Base.T__'8804'__22) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_getCoin'8746''8314''8709''8739''8709'id_3054 = erased
-- Ledger.Utxo.Properties._.∪⁺singleton≡
d_'8746''8314'singleton'8801'_3066 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
    MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
    MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
   MAlonzo.Code.Data.Nat.Base.T__'8804'__22) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8746''8314'singleton'8801'_3066 = erased
-- Ledger.Utxo.Properties._._.≤updatePropDeps
d_'8804'updatePropDeps_3092 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
    MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
    MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
   MAlonzo.Code.Data.Nat.Base.T__'8804'__22) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  Integer ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_754] ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'8804'updatePropDeps_3092 v0 ~v1 ~v2 ~v3 v4 v5 v6 v7
  = du_'8804'updatePropDeps_3092 v0 v4 v5 v6 v7
du_'8804'updatePropDeps_3092 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  Integer ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_754] ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_'8804'updatePropDeps_3092 v0 v1 v2 v3 v4
  = case coe v4 of
      []
        -> coe
             MAlonzo.Code.Data.Nat.Properties.du_'8804''45'reflexive_2772
             (coe
                MAlonzo.Code.Ledger.Set.Theory.du_indexedSum'7515'''_1160
                (coe
                   MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_826
                   (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2350 (coe v0)))
                (coe
                   MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                   (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2688))
                (coe
                   MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
                   (coe
                      MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3334))
                (coe (\ v5 -> v5)) (coe v1))
      (:) v5 v6
        -> coe
             MAlonzo.Code.Data.Nat.Properties.du_'8804''45'trans_2784
             (coe
                du_'8804'updatePropDeps_3092 (coe v0) (coe v1) (coe v2) (coe v3)
                (coe v6))
             (coe
                MAlonzo.Code.Data.Nat.Properties.du_'8804''45'trans_2784
                (coe
                   MAlonzo.Code.Data.Nat.Properties.du_m'8804'm'43'n_3482
                   (coe
                      MAlonzo.Code.Ledger.Set.Theory.du_indexedSum'7515'''_1160
                      (coe
                         MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_826
                         (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2350 (coe v0)))
                      (coe
                         MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                         (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2688))
                      (coe
                         MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
                         (coe
                            MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3334))
                      (coe (\ v7 -> v7))
                      (coe
                         MAlonzo.Code.Ledger.Utxo.du_updateProposalDeposits_1954 (coe v0)
                         (coe v6) (coe v2) (coe v3) (coe v1))))
                (coe
                   MAlonzo.Code.Data.Nat.Properties.du_'8804''45'reflexive_2772
                   (coe
                      addInt
                      (coe
                         MAlonzo.Code.Ledger.Set.Theory.du_indexedSum'7515'''_1160
                         (coe
                            MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_826
                            (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2350 (coe v0)))
                         (coe
                            MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                            (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2688))
                         (coe
                            MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
                            (coe
                               MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3334))
                         (coe (\ v7 -> v7))
                         (coe
                            MAlonzo.Code.Ledger.Utxo.du_updateProposalDeposits_1954 (coe v0)
                            (coe v6) (coe v2) (coe v3) (coe v1)))
                      (coe v3))))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo.Properties._._.updatePropDeps≡
d_updatePropDeps'8801'_3100 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
    MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
    MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
   MAlonzo.Code.Data.Nat.Base.T__'8804'__22) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  Integer ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_754] ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_updatePropDeps'8801'_3100 = erased
-- Ledger.Utxo.Properties._.≤certDeps
d_'8804'certDeps_3124 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
    MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
    MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
   MAlonzo.Code.Data.Nat.Base.T__'8804'__22) ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_834] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'8804'certDeps_3124 v0 ~v1 ~v2 ~v3 ~v4 v5 v6
  = du_'8804'certDeps_3124 v0 v5 v6
du_'8804'certDeps_3124 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_'8804'certDeps_3124 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_start_96
         (coe MAlonzo.Code.Data.Nat.Properties.d_'8804''45'isPreorder_2810)
         (\ v3 v4 v5 ->
            coe MAlonzo.Code.Data.Nat.Properties.du_'60''8658''8804'_2854 v5))
      (coe
         MAlonzo.Code.Ledger.Set.Theory.du_indexedSum'7515'''_1160
         (coe
            MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_826
            (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2350 (coe v0)))
         (coe
            MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
            (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2688))
         (coe
            MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
            (coe
               MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3334))
         (coe (\ v3 -> v3)) (coe v1))
      (coe
         MAlonzo.Code.Ledger.Set.Theory.du_indexedSum'7515'''_1160
         (coe
            MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_826
            (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2350 (coe v0)))
         (coe
            MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
            (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2688))
         (coe
            MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
            (coe
               MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3334))
         (coe (\ v3 -> v3))
         (let v3
                = MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_826
                    (coe
                       MAlonzo.Code.Ledger.Transaction.d_govStructure_2350 (coe v0)) in
          coe
            (coe
               MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1264
               (coe
                  MAlonzo.Code.Axiom.Set.d_th_1458
                  (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
               (coe
                  MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588
                  MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased v3)
               (coe
                  MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__496
                  MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                  (coe
                     MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
                     (coe
                        MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3204))
                  (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_826
                     (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2350 (coe v0)))
                  v1
                  (coe
                     MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_732
                     (coe
                        MAlonzo.Code.Axiom.Set.d_th_1458
                        (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                     (coe v2)))
               (coe
                  MAlonzo.Code.Axiom.Set.du_'8709'_430
                  (coe
                     MAlonzo.Code.Axiom.Set.d_th_1458
                     (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))))))
      (let v3
             = MAlonzo.Code.Data.Nat.Properties.d_'8804''45'isPreorder_2810 in
       coe
         (let v4
                = \ v4 v5 v6 v7 v8 ->
                    coe
                      MAlonzo.Code.Data.Nat.Properties.du_'8804''45''60''45'trans_2986 v7
                      v8 in
          coe
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8804'_308
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8804''45'go_138
                  (coe v3) (coe v4))
               (coe
                  MAlonzo.Code.Ledger.Set.Theory.du_indexedSum'7515'''_1160
                  (coe
                     MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_826
                     (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2350 (coe v0)))
                  (coe
                     MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                     (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2688))
                  (coe
                     MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
                     (coe
                        MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3334))
                  (coe (\ v5 -> v5)) (coe v1))
               (addInt
                  (coe
                     MAlonzo.Code.Ledger.Set.Theory.du_indexedSum'7515'''_1160
                     (coe
                        MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_826
                        (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2350 (coe v0)))
                     (coe
                        MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                        (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2688))
                     (coe
                        MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
                        (coe
                           MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3334))
                     (coe (\ v5 -> v5)) (coe v1))
                  (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v2)))
               (coe
                  MAlonzo.Code.Ledger.Set.Theory.du_indexedSum'7515'''_1160
                  (coe
                     MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_826
                     (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2350 (coe v0)))
                  (coe
                     MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                     (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2688))
                  (coe
                     MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
                     (coe
                        MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3334))
                  (coe (\ v5 -> v5))
                  (let v5
                         = MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_826
                             (coe
                                MAlonzo.Code.Ledger.Transaction.d_govStructure_2350 (coe v0)) in
                   coe
                     (coe
                        MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1264
                        (coe
                           MAlonzo.Code.Axiom.Set.d_th_1458
                           (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                        (coe
                           MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588
                           MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased v5)
                        (coe
                           MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__496
                           MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                           (coe
                              MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
                              (coe
                                 MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3204))
                           (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_826
                              (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2350 (coe v0)))
                           v1
                           (coe
                              MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_732
                              (coe
                                 MAlonzo.Code.Axiom.Set.d_th_1458
                                 (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                              (coe v2)))
                        (coe
                           MAlonzo.Code.Axiom.Set.du_'8709'_430
                           (coe
                              MAlonzo.Code.Axiom.Set.d_th_1458
                              (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))))))
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
                  (\ v5 v6 v7 v8 v9 -> v9)
                  (addInt
                     (coe
                        MAlonzo.Code.Ledger.Set.Theory.du_indexedSum'7515'''_1160
                        (coe
                           MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_826
                           (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2350 (coe v0)))
                        (coe
                           MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                           (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2688))
                        (coe
                           MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
                           (coe
                              MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3334))
                        (coe (\ v5 -> v5)) (coe v1))
                     (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v2)))
                  (coe
                     MAlonzo.Code.Ledger.Set.Theory.du_indexedSum'7515'''_1160
                     (coe
                        MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_826
                        (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2350 (coe v0)))
                     (coe
                        MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                        (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2688))
                     (coe
                        MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
                        (coe
                           MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3334))
                     (coe (\ v5 -> v5))
                     (coe
                        MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__496
                        MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                        (coe
                           MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
                           (coe
                              MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3204))
                        (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_826
                           (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2350 (coe v0)))
                        v1
                        (coe
                           MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_732
                           (coe
                              MAlonzo.Code.Axiom.Set.d_th_1458
                              (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                           (coe
                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                              (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2))
                              (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v2))))))
                  (coe
                     MAlonzo.Code.Ledger.Set.Theory.du_indexedSum'7515'''_1160
                     (coe
                        MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_826
                        (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2350 (coe v0)))
                     (coe
                        MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                        (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2688))
                     (coe
                        MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
                        (coe
                           MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3334))
                     (coe (\ v5 -> v5))
                     (let v5
                            = MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_826
                                (coe
                                   MAlonzo.Code.Ledger.Transaction.d_govStructure_2350 (coe v0)) in
                      coe
                        (coe
                           MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1264
                           (coe
                              MAlonzo.Code.Axiom.Set.d_th_1458
                              (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                           (coe
                              MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588
                              MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased v5)
                           (coe
                              MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__496
                              MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                              (coe
                                 MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
                                 (coe
                                    MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3204))
                              (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_826
                                 (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2350 (coe v0)))
                              v1
                              (coe
                                 MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_732
                                 (coe
                                    MAlonzo.Code.Axiom.Set.d_th_1458
                                    (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                 (coe v2)))
                           (coe
                              MAlonzo.Code.Axiom.Set.du_'8709'_430
                              (coe
                                 MAlonzo.Code.Axiom.Set.d_th_1458
                                 (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))))))
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
                     (\ v5 v6 v7 v8 v9 -> v9)
                     (coe
                        MAlonzo.Code.Ledger.Set.Theory.du_indexedSum'7515'''_1160
                        (coe
                           MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_826
                           (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2350 (coe v0)))
                        (coe
                           MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                           (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2688))
                        (coe
                           MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
                           (coe
                              MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3334))
                        (coe (\ v5 -> v5))
                        (coe
                           MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__496
                           MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                           (coe
                              MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
                              (coe
                                 MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3204))
                           (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_826
                              (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2350 (coe v0)))
                           v1
                           (coe
                              MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_732
                              (coe
                                 MAlonzo.Code.Axiom.Set.d_th_1458
                                 (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2))
                                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v2))))))
                     (coe
                        MAlonzo.Code.Ledger.Set.Theory.du_indexedSum'7515'''_1160
                        (coe
                           MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_826
                           (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2350 (coe v0)))
                        (coe
                           MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                           (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2688))
                        (coe
                           MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
                           (coe
                              MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3334))
                        (coe (\ v5 -> v5))
                        (coe
                           MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1264
                           (coe
                              MAlonzo.Code.Axiom.Set.d_th_1458
                              (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                           (coe
                              MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588
                              MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
                              (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_826
                                 (coe
                                    MAlonzo.Code.Ledger.Transaction.d_govStructure_2350 (coe v0))))
                           (coe
                              MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__496
                              MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                              (coe
                                 MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
                                 (coe
                                    MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3204))
                              (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_826
                                 (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2350 (coe v0)))
                              v1
                              (coe
                                 MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_732
                                 (coe
                                    MAlonzo.Code.Axiom.Set.d_th_1458
                                    (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                    (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2))
                                    (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v2)))))
                           (coe
                              MAlonzo.Code.Axiom.Set.du_'8709'_430
                              (coe
                                 MAlonzo.Code.Axiom.Set.d_th_1458
                                 (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))))
                     (coe
                        MAlonzo.Code.Ledger.Set.Theory.du_indexedSum'7515'''_1160
                        (coe
                           MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_826
                           (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2350 (coe v0)))
                        (coe
                           MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                           (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2688))
                        (coe
                           MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
                           (coe
                              MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3334))
                        (coe (\ v5 -> v5))
                        (let v5
                               = MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_826
                                   (coe
                                      MAlonzo.Code.Ledger.Transaction.d_govStructure_2350
                                      (coe v0)) in
                         coe
                           (coe
                              MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1264
                              (coe
                                 MAlonzo.Code.Axiom.Set.d_th_1458
                                 (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                              (coe
                                 MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588
                                 MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased v5)
                              (coe
                                 MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__496
                                 MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                 (coe
                                    MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
                                    (coe
                                       MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3204))
                                 (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_826
                                    (coe
                                       MAlonzo.Code.Ledger.Transaction.d_govStructure_2350
                                       (coe v0)))
                                 v1
                                 (coe
                                    MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_732
                                    (coe
                                       MAlonzo.Code.Axiom.Set.d_th_1458
                                       (coe
                                          MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                    (coe v2)))
                              (coe
                                 MAlonzo.Code.Axiom.Set.du_'8709'_430
                                 (coe
                                    MAlonzo.Code.Axiom.Set.d_th_1458
                                    (coe
                                       MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))))))
                     (let v5
                            = MAlonzo.Code.Data.Nat.Properties.d_'8804''45'isPreorder_2810 in
                      coe
                        (coe
                           MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                           (coe
                              MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                              (coe v5))
                           (coe
                              MAlonzo.Code.Ledger.Set.Theory.du_indexedSum'7515'''_1160
                              (coe
                                 MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_826
                                 (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2350 (coe v0)))
                              (coe
                                 MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                                 (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2688))
                              (coe
                                 MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
                                 (coe
                                    MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3334))
                              (coe (\ v6 -> v6))
                              (coe
                                 MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1264
                                 (coe
                                    MAlonzo.Code.Axiom.Set.d_th_1458
                                    (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                 (coe
                                    MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588
                                    MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
                                    (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_826
                                       (coe
                                          MAlonzo.Code.Ledger.Transaction.d_govStructure_2350
                                          (coe v0))))
                                 (coe
                                    MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__496
                                    MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                    (coe
                                       MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
                                       (coe
                                          MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3204))
                                    (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_826
                                       (coe
                                          MAlonzo.Code.Ledger.Transaction.d_govStructure_2350
                                          (coe v0)))
                                    v1
                                    (coe
                                       MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_732
                                       (coe
                                          MAlonzo.Code.Axiom.Set.d_th_1458
                                          (coe
                                             MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                          (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2))
                                          (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v2)))))
                                 (coe
                                    MAlonzo.Code.Axiom.Set.du_'8709'_430
                                    (coe
                                       MAlonzo.Code.Axiom.Set.d_th_1458
                                       (coe
                                          MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))))))
                     erased)
                  erased)
               (coe
                  MAlonzo.Code.Data.Nat.Properties.du_m'8804'm'43'n_3482
                  (coe
                     MAlonzo.Code.Ledger.Set.Theory.du_indexedSum'7515'''_1160
                     (coe
                        MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_826
                        (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2350 (coe v0)))
                     (coe
                        MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                        (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2688))
                     (coe
                        MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
                        (coe
                           MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3334))
                     (coe (\ v5 -> v5)) (coe v1))))))
-- Ledger.Utxo.Properties._.≤updateCertDeps
d_'8804'updateCertDeps_3140 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
    MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
    MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
   MAlonzo.Code.Data.Nat.Base.T__'8804'__22) ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_834] ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.All.T_All_44 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'8804'updateCertDeps_3140 v0 ~v1 ~v2 ~v3 v4 v5 v6 v7
  = du_'8804'updateCertDeps_3140 v0 v4 v5 v6 v7
du_'8804'updateCertDeps_3140 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_834] ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.All.T_All_44 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_'8804'updateCertDeps_3140 v0 v1 v2 v3 v4
  = case coe v1 of
      []
        -> coe
             MAlonzo.Code.Data.Nat.Properties.du_'8804''45'reflexive_2772
             (coe
                MAlonzo.Code.Ledger.Set.Theory.du_indexedSum'7515'''_1160
                (coe
                   MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_826
                   (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2350 (coe v0)))
                (coe
                   MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                   (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2688))
                (coe
                   MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
                   (coe
                      MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3334))
                (coe (\ v5 -> v5)) (coe v3))
      (:) v5 v6
        -> case coe v4 of
             MAlonzo.Code.Data.List.Relation.Unary.All.C__'8759'__60 v9 v10
               -> case coe v5 of
                    MAlonzo.Code.Ledger.Certs.C_delegate_836 v11 v12 v13 v14
                      -> coe
                           MAlonzo.Code.Data.Nat.Properties.du_'8804''45'trans_2784
                           (coe
                              du_'8804'updateCertDeps_3140 (coe v0) (coe v6) (coe v2) (coe v3)
                              (coe v10))
                           (coe
                              du_'8804'certDeps_3124 (coe v0)
                              (coe
                                 MAlonzo.Code.Ledger.Utxo.du_updateCertDeposits_1942 (coe v0)
                                 (coe v2) (coe v6) (coe v3))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                 (coe MAlonzo.Code.Ledger.Certs.C_CredentialDeposit_816 (coe v11))
                                 (coe v14)))
                    MAlonzo.Code.Ledger.Certs.C_regpool_840 v11 v12
                      -> coe
                           MAlonzo.Code.Data.Nat.Properties.du_'8804''45'trans_2784
                           (coe
                              du_'8804'updateCertDeps_3140 (coe v0) (coe v6) (coe v2) (coe v3)
                              (coe v10))
                           (coe
                              du_'8804'certDeps_3124 (coe v0)
                              (coe
                                 MAlonzo.Code.Ledger.Utxo.du_updateCertDeposits_1942 (coe v0)
                                 (coe v2) (coe v6) (coe v3))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                 (coe MAlonzo.Code.Ledger.Certs.C_PoolDeposit_818 (coe v11))
                                 (coe MAlonzo.Code.Ledger.PParams.d_poolDeposit_326 (coe v2))))
                    MAlonzo.Code.Ledger.Certs.C_retirepool_842 v11 v12
                      -> coe
                           MAlonzo.Code.Data.Nat.Properties.du_'8804''45'trans_2784
                           (coe
                              du_'8804'updateCertDeps_3140 (coe v0) (coe v6) (coe v2) (coe v3)
                              (coe v10))
                           (coe
                              MAlonzo.Code.Data.Nat.Properties.du_'8804''45'reflexive_2772
                              (coe
                                 MAlonzo.Code.Ledger.Set.Theory.du_indexedSum'7515'''_1160
                                 (coe
                                    MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_826
                                    (coe
                                       MAlonzo.Code.Ledger.Transaction.d_govStructure_2350
                                       (coe v0)))
                                 (coe
                                    MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                                    (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2688))
                                 (coe
                                    MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
                                    (coe
                                       MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3334))
                                 (coe (\ v13 -> v13))
                                 (coe
                                    MAlonzo.Code.Ledger.Utxo.du_updateCertDeposits_1942 (coe v0)
                                    (coe v2) (coe v6) (coe v3))))
                    MAlonzo.Code.Ledger.Certs.C_regdrep_844 v11 v12 v13
                      -> coe
                           MAlonzo.Code.Data.Nat.Properties.du_'8804''45'trans_2784
                           (coe
                              du_'8804'updateCertDeps_3140 (coe v0) (coe v6) (coe v2) (coe v3)
                              (coe v10))
                           (coe
                              du_'8804'certDeps_3124 (coe v0)
                              (coe
                                 MAlonzo.Code.Ledger.Utxo.du_updateCertDeposits_1942 (coe v0)
                                 (coe v2) (coe v6) (coe v3))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                 (coe MAlonzo.Code.Ledger.Certs.C_DRepDeposit_820 (coe v11))
                                 (coe v12)))
                    MAlonzo.Code.Ledger.Certs.C_ccreghot_848 v11 v12
                      -> coe
                           MAlonzo.Code.Data.Nat.Properties.du_'8804''45'trans_2784
                           (coe
                              du_'8804'updateCertDeps_3140 (coe v0) (coe v6) (coe v2) (coe v3)
                              (coe v10))
                           (coe
                              MAlonzo.Code.Data.Nat.Properties.du_'8804''45'reflexive_2772
                              (coe
                                 MAlonzo.Code.Ledger.Set.Theory.du_indexedSum'7515'''_1160
                                 (coe
                                    MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_826
                                    (coe
                                       MAlonzo.Code.Ledger.Transaction.d_govStructure_2350
                                       (coe v0)))
                                 (coe
                                    MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                                    (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2688))
                                 (coe
                                    MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
                                    (coe
                                       MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3334))
                                 (coe (\ v13 -> v13))
                                 (coe
                                    MAlonzo.Code.Ledger.Utxo.du_updateCertDeposits_1942 (coe v0)
                                    (coe v2) (coe v6) (coe v3))))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo.Properties._._.body
d_body_3170 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
    MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
    MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
   MAlonzo.Code.Data.Nat.Base.T__'8804'__22) ->
  T_GeneralizeTel_846685 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2736
d_body_3170 ~v0 ~v1 ~v2 ~v3 v4 = du_body_3170 v4
du_body_3170 ::
  T_GeneralizeTel_846685 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2736
du_body_3170 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_body_2848
      (coe d_'46'generalizedField'45'tx_846671 v0)
-- Ledger.Utxo.Properties._._.txcerts
d_txcerts_3192 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
    MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
    MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
   MAlonzo.Code.Data.Nat.Base.T__'8804'__22) ->
  T_GeneralizeTel_846685 -> [MAlonzo.Code.Ledger.Certs.T_DCert_834]
d_txcerts_3192 ~v0 ~v1 ~v2 ~v3 v4 = du_txcerts_3192 v4
du_txcerts_3192 ::
  T_GeneralizeTel_846685 -> [MAlonzo.Code.Ledger.Certs.T_DCert_834]
du_txcerts_3192 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txcerts_2790
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2848
         (coe d_'46'generalizedField'45'tx_846671 v0))
-- Ledger.Utxo.Properties._._.txprop
d_txprop_3204 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
    MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
    MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
   MAlonzo.Code.Data.Nat.Base.T__'8804'__22) ->
  T_GeneralizeTel_846685 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_754]
d_txprop_3204 ~v0 ~v1 ~v2 ~v3 v4 = du_txprop_3204 v4
du_txprop_3204 ::
  T_GeneralizeTel_846685 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_754]
du_txprop_3204 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txprop_2796
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2848
         (coe d_'46'generalizedField'45'tx_846671 v0))
-- Ledger.Utxo.Properties._._.govActionDeposit
d_govActionDeposit_3244 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
    MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
    MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
   MAlonzo.Code.Data.Nat.Base.T__'8804'__22) ->
  T_GeneralizeTel_846685 -> Integer
d_govActionDeposit_3244 ~v0 ~v1 ~v2 ~v3 v4
  = du_govActionDeposit_3244 v4
du_govActionDeposit_3244 :: T_GeneralizeTel_846685 -> Integer
du_govActionDeposit_3244 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_govActionDeposit_356
      (coe
         MAlonzo.Code.Ledger.Utxo.d_pparams_1860
         (coe d_'46'generalizedField'45'Γ_846673 v0))
-- Ledger.Utxo.Properties._._.deposits
d_deposits_3280 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
    MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
    MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
   MAlonzo.Code.Data.Nat.Base.T__'8804'__22) ->
  T_GeneralizeTel_846685 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_3280 ~v0 ~v1 ~v2 ~v3 v4 = du_deposits_3280 v4
du_deposits_3280 ::
  T_GeneralizeTel_846685 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_deposits_3280 v0
  = coe
      MAlonzo.Code.Ledger.Utxo.d_deposits_1878
      (coe d_'46'generalizedField'45'utxoState_846675 v0)
-- Ledger.Utxo.Properties._._.donations
d_donations_3282 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
    MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
    MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
   MAlonzo.Code.Data.Nat.Base.T__'8804'__22) ->
  T_GeneralizeTel_846685 -> Integer
d_donations_3282 ~v0 ~v1 ~v2 ~v3 v4 = du_donations_3282 v4
du_donations_3282 :: T_GeneralizeTel_846685 -> Integer
du_donations_3282 v0
  = coe
      MAlonzo.Code.Ledger.Utxo.d_donations_1880
      (coe d_'46'generalizedField'45'utxoState_846675 v0)
-- Ledger.Utxo.Properties._._.fees
d_fees_3284 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
    MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
    MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
   MAlonzo.Code.Data.Nat.Base.T__'8804'__22) ->
  T_GeneralizeTel_846685 -> Integer
d_fees_3284 ~v0 ~v1 ~v2 ~v3 v4 = du_fees_3284 v4
du_fees_3284 :: T_GeneralizeTel_846685 -> Integer
du_fees_3284 v0
  = coe
      MAlonzo.Code.Ledger.Utxo.d_fees_1876
      (coe d_'46'generalizedField'45'utxoState_846675 v0)
-- Ledger.Utxo.Properties._._.utxo
d_utxo_3286 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
    MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
    MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
   MAlonzo.Code.Data.Nat.Base.T__'8804'__22) ->
  T_GeneralizeTel_846685 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_3286 ~v0 ~v1 ~v2 ~v3 v4 = du_utxo_3286 v4
du_utxo_3286 ::
  T_GeneralizeTel_846685 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxo_3286 v0
  = coe
      MAlonzo.Code.Ledger.Utxo.d_utxo_1874
      (coe d_'46'generalizedField'45'utxoState_846675 v0)
-- Ledger.Utxo.Properties._.gmsc
d_gmsc_3288 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
    MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
    MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
   MAlonzo.Code.Data.Nat.Base.T__'8804'__22) ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2838 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1850 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1864 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Ledger.Utxo.T__'8866'_'8640''10631'_'44'UTXO'10632'__1884 ->
  MAlonzo.Code.Data.List.Relation.Unary.All.T_All_44 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_gmsc_3288 v0 ~v1 ~v2 ~v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
  = du_gmsc_3288 v0 v4 v5 v6 v7 v8 v9 v10 v11 v12
du_gmsc_3288 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2838 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1850 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1864 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Ledger.Utxo.T__'8866'_'8640''10631'_'44'UTXO'10632'__1884 ->
  MAlonzo.Code.Data.List.Relation.Unary.All.T_All_44 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_gmsc_3288 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9
  = case coe v8 of
      MAlonzo.Code.Ledger.Utxo.C_UTXO'45'inductive_2730 v14
        -> case coe v14 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v15 v16
               -> case coe v16 of
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v17 v18
                      -> case coe v18 of
                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v19 v20
                             -> case coe v20 of
                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v21 v22
                                    -> case coe v22 of
                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v23 v24
                                           -> case coe v24 of
                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v25 v26
                                                  -> case coe v26 of
                                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v27 v28
                                                         -> case coe v28 of
                                                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v29 v30
                                                                -> case coe v30 of
                                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v31 v32
                                                                       -> case coe v32 of
                                                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v33 v34
                                                                              -> case coe v34 of
                                                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v35 v36
                                                                                     -> case coe
                                                                                               v36 of
                                                                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v37 v38
                                                                                            -> case coe
                                                                                                      v38 of
                                                                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v39 v40
                                                                                                   -> case coe
                                                                                                             v40 of
                                                                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v41 v42
                                                                                                          -> coe
                                                                                                               seq
                                                                                                               (coe
                                                                                                                  v42)
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_start_96
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Data.Nat.Properties.d_'8804''45'isPreorder_2680)
                                                                                                                     (\ v43
                                                                                                                        v44
                                                                                                                        v45 ->
                                                                                                                        coe
                                                                                                                          MAlonzo.Code.Data.Nat.Properties.du_'60''8658''8804'_2724
                                                                                                                          v45))
                                                                                                                  (mulInt
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Data.List.Base.du_length_304
                                                                                                                        (let v43
                                                                                                                               = coe
                                                                                                                                   C_mkGeneralizeTel_846687
                                                                                                                                   (coe
                                                                                                                                      v1)
                                                                                                                                   (coe
                                                                                                                                      v2)
                                                                                                                                   (coe
                                                                                                                                      v3)
                                                                                                                                   (coe
                                                                                                                                      v4)
                                                                                                                                   (coe
                                                                                                                                      v5)
                                                                                                                                   (coe
                                                                                                                                      v6)
                                                                                                                                   (coe
                                                                                                                                      v7) in
                                                                                                                         coe
                                                                                                                           (MAlonzo.Code.Ledger.Transaction.d_txprop_2796
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Ledger.Transaction.d_body_2848
                                                                                                                                 (coe
                                                                                                                                    d_'46'generalizedField'45'tx_846671
                                                                                                                                    v43)))))
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.PParams.d_govActionDeposit_356
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Utxo.d_pparams_1860
                                                                                                                           (coe
                                                                                                                              d_'46'generalizedField'45'Γ_846673
                                                                                                                              (coe
                                                                                                                                 C_mkGeneralizeTel_846687
                                                                                                                                 (coe
                                                                                                                                    v1)
                                                                                                                                 (coe
                                                                                                                                    v2)
                                                                                                                                 (coe
                                                                                                                                    v3)
                                                                                                                                 (coe
                                                                                                                                    v4)
                                                                                                                                 (coe
                                                                                                                                    v5)
                                                                                                                                 (coe
                                                                                                                                    v6)
                                                                                                                                 (coe
                                                                                                                                    v7))))))
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.TokenAlgebra.d_coin_204
                                                                                                                     (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2232
                                                                                                                        (coe
                                                                                                                           v0))
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Utxo.du_consumed_2406
                                                                                                                        (coe
                                                                                                                           v0)
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Utxo.d_pparams_1860
                                                                                                                           (coe
                                                                                                                              v2))
                                                                                                                        (coe
                                                                                                                           v3)
                                                                                                                        (let v43
                                                                                                                               = coe
                                                                                                                                   C_mkGeneralizeTel_846687
                                                                                                                                   (coe
                                                                                                                                      v1)
                                                                                                                                   (coe
                                                                                                                                      v2)
                                                                                                                                   (coe
                                                                                                                                      v3)
                                                                                                                                   (coe
                                                                                                                                      v4)
                                                                                                                                   (coe
                                                                                                                                      v5)
                                                                                                                                   (coe
                                                                                                                                      v6)
                                                                                                                                   (coe
                                                                                                                                      v7) in
                                                                                                                         coe
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Ledger.Transaction.d_body_2848
                                                                                                                              (coe
                                                                                                                                 d_'46'generalizedField'45'tx_846671
                                                                                                                                 v43)))))
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''728'_452
                                                                                                                     (\ v43
                                                                                                                        v44
                                                                                                                        v45
                                                                                                                        v46
                                                                                                                        v47 ->
                                                                                                                        v47)
                                                                                                                     (mulInt
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Data.List.Base.du_length_304
                                                                                                                           (MAlonzo.Code.Ledger.Transaction.d_txprop_2796
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Ledger.Transaction.d_body_2848
                                                                                                                                 (coe
                                                                                                                                    v1))))
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.PParams.d_govActionDeposit_356
                                                                                                                           (coe
                                                                                                                              du_pp_3308
                                                                                                                              (coe
                                                                                                                                 v2))))
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Agda.Builtin.Nat.d__'45'__22
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Set.Theory.du_indexedSum'7515'''_1160
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_826
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Ledger.Transaction.d_govStructure_2350
                                                                                                                                 (coe
                                                                                                                                    v0)))
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558))
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3204))
                                                                                                                           (coe
                                                                                                                              (\ v43 ->
                                                                                                                                 v43))
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Ledger.Utxo.du_updateProposalDeposits_1954
                                                                                                                              (coe
                                                                                                                                 v0)
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Ledger.Transaction.d_txprop_2796
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Ledger.Transaction.d_body_2848
                                                                                                                                    (coe
                                                                                                                                       v1)))
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Ledger.Transaction.d_txid_2810
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Ledger.Transaction.d_body_2848
                                                                                                                                    (coe
                                                                                                                                       v1)))
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Ledger.PParams.d_govActionDeposit_356
                                                                                                                                 (coe
                                                                                                                                    du_pp_3308
                                                                                                                                    (coe
                                                                                                                                       v2)))
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Ledger.Utxo.d_deposits_1878
                                                                                                                                 (coe
                                                                                                                                    v3))))
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Set.Theory.du_indexedSum'7515'''_1160
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_826
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Ledger.Transaction.d_govStructure_2350
                                                                                                                                 (coe
                                                                                                                                    v0)))
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558))
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3204))
                                                                                                                           (coe
                                                                                                                              (\ v43 ->
                                                                                                                                 v43))
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Ledger.Utxo.d_deposits_1878
                                                                                                                              (coe
                                                                                                                                 v3))))
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.TokenAlgebra.d_coin_204
                                                                                                                        (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2232
                                                                                                                           (coe
                                                                                                                              v0))
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Utxo.du_consumed_2406
                                                                                                                           (coe
                                                                                                                              v0)
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Ledger.Utxo.d_pparams_1860
                                                                                                                              (coe
                                                                                                                                 v2))
                                                                                                                           (coe
                                                                                                                              v3)
                                                                                                                           (let v43
                                                                                                                                  = coe
                                                                                                                                      C_mkGeneralizeTel_846687
                                                                                                                                      (coe
                                                                                                                                         v1)
                                                                                                                                      (coe
                                                                                                                                         v2)
                                                                                                                                      (coe
                                                                                                                                         v3)
                                                                                                                                      (coe
                                                                                                                                         v4)
                                                                                                                                      (coe
                                                                                                                                         v5)
                                                                                                                                      (coe
                                                                                                                                         v6)
                                                                                                                                      (coe
                                                                                                                                         v7) in
                                                                                                                            coe
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Ledger.Transaction.d_body_2848
                                                                                                                                 (coe
                                                                                                                                    d_'46'generalizedField'45'tx_846671
                                                                                                                                    v43)))))
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8804'_308
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8804''45'go_138
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Data.Nat.Properties.d_'8804''45'isPreorder_2680)
                                                                                                                           (\ v43
                                                                                                                              v44
                                                                                                                              v45
                                                                                                                              v46
                                                                                                                              v47 ->
                                                                                                                              coe
                                                                                                                                MAlonzo.Code.Data.Nat.Properties.du_'8804''45''60''45'trans_2856
                                                                                                                                v46
                                                                                                                                v47))
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Agda.Builtin.Nat.d__'45'__22
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Ledger.Set.Theory.du_indexedSum'7515'''_1160
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_826
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Ledger.Transaction.d_govStructure_2350
                                                                                                                                    (coe
                                                                                                                                       v0)))
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558))
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3204))
                                                                                                                              (coe
                                                                                                                                 (\ v43 ->
                                                                                                                                    v43))
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Ledger.Utxo.du_updateProposalDeposits_1954
                                                                                                                                 (coe
                                                                                                                                    v0)
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Ledger.Transaction.d_txprop_2796
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Ledger.Transaction.d_body_2848
                                                                                                                                       (coe
                                                                                                                                          v1)))
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Ledger.Transaction.d_txid_2810
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Ledger.Transaction.d_body_2848
                                                                                                                                       (coe
                                                                                                                                          v1)))
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Ledger.PParams.d_govActionDeposit_356
                                                                                                                                    (coe
                                                                                                                                       du_pp_3308
                                                                                                                                       (coe
                                                                                                                                          v2)))
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Ledger.Utxo.d_deposits_1878
                                                                                                                                    (coe
                                                                                                                                       v3))))
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Ledger.Set.Theory.du_indexedSum'7515'''_1160
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_826
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Ledger.Transaction.d_govStructure_2350
                                                                                                                                    (coe
                                                                                                                                       v0)))
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558))
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3204))
                                                                                                                              (coe
                                                                                                                                 (\ v43 ->
                                                                                                                                    v43))
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Ledger.Utxo.d_deposits_1878
                                                                                                                                 (coe
                                                                                                                                    v3))))
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Agda.Builtin.Nat.d__'45'__22
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Ledger.Set.Theory.du_indexedSum'7515'''_1160
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_826
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Ledger.Transaction.d_govStructure_2350
                                                                                                                                    (coe
                                                                                                                                       v0)))
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558))
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3204))
                                                                                                                              (coe
                                                                                                                                 (\ v43 ->
                                                                                                                                    v43))
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Ledger.Utxo.du_updateDeposits_1966
                                                                                                                                 (coe
                                                                                                                                    v0)
                                                                                                                                 (coe
                                                                                                                                    du_pp_3308
                                                                                                                                    (coe
                                                                                                                                       v2))
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Ledger.Transaction.d_body_2848
                                                                                                                                    (coe
                                                                                                                                       v1))
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Ledger.Utxo.d_deposits_1878
                                                                                                                                    (coe
                                                                                                                                       v3))))
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Ledger.Set.Theory.du_indexedSum'7515'''_1160
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_826
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Ledger.Transaction.d_govStructure_2350
                                                                                                                                    (coe
                                                                                                                                       v0)))
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558))
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3204))
                                                                                                                              (coe
                                                                                                                                 (\ v43 ->
                                                                                                                                    v43))
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Ledger.Utxo.d_deposits_1878
                                                                                                                                 (coe
                                                                                                                                    v3))))
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.TokenAlgebra.d_coin_204
                                                                                                                           (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2232
                                                                                                                              (coe
                                                                                                                                 v0))
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Ledger.Utxo.du_consumed_2406
                                                                                                                              (coe
                                                                                                                                 v0)
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Ledger.Utxo.d_pparams_1860
                                                                                                                                 (coe
                                                                                                                                    v2))
                                                                                                                              (coe
                                                                                                                                 v3)
                                                                                                                              (let v43
                                                                                                                                     = coe
                                                                                                                                         C_mkGeneralizeTel_846687
                                                                                                                                         (coe
                                                                                                                                            v1)
                                                                                                                                         (coe
                                                                                                                                            v2)
                                                                                                                                         (coe
                                                                                                                                            v3)
                                                                                                                                         (coe
                                                                                                                                            v4)
                                                                                                                                         (coe
                                                                                                                                            v5)
                                                                                                                                         (coe
                                                                                                                                            v6)
                                                                                                                                         (coe
                                                                                                                                            v7) in
                                                                                                                               coe
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Ledger.Transaction.d_body_2848
                                                                                                                                    (coe
                                                                                                                                       d_'46'generalizedField'45'tx_846671
                                                                                                                                       v43)))))
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
                                                                                                                           (\ v43
                                                                                                                              v44
                                                                                                                              v45
                                                                                                                              v46
                                                                                                                              v47 ->
                                                                                                                              v47)
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Agda.Builtin.Nat.d__'45'__22
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Ledger.Set.Theory.du_indexedSum'7515'''_1160
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_826
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Ledger.Transaction.d_govStructure_2350
                                                                                                                                       (coe
                                                                                                                                          v0)))
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558))
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3204))
                                                                                                                                 (coe
                                                                                                                                    (\ v43 ->
                                                                                                                                       v43))
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Ledger.Utxo.du_updateDeposits_1966
                                                                                                                                    (coe
                                                                                                                                       v0)
                                                                                                                                    (coe
                                                                                                                                       du_pp_3308
                                                                                                                                       (coe
                                                                                                                                          v2))
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Ledger.Transaction.d_body_2848
                                                                                                                                       (coe
                                                                                                                                          v1))
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Ledger.Utxo.d_deposits_1878
                                                                                                                                       (coe
                                                                                                                                          v3))))
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Ledger.Set.Theory.du_indexedSum'7515'''_1160
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_826
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Ledger.Transaction.d_govStructure_2350
                                                                                                                                       (coe
                                                                                                                                          v0)))
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558))
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3204))
                                                                                                                                 (coe
                                                                                                                                    (\ v43 ->
                                                                                                                                       v43))
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Ledger.Utxo.d_deposits_1878
                                                                                                                                    (coe
                                                                                                                                       v3))))
                                                                                                                           (coe
                                                                                                                              du_newDeps_3432
                                                                                                                              (coe
                                                                                                                                 v0)
                                                                                                                              (coe
                                                                                                                                 v1)
                                                                                                                              (coe
                                                                                                                                 v2)
                                                                                                                              (coe
                                                                                                                                 v3))
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Ledger.TokenAlgebra.d_coin_204
                                                                                                                              (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2232
                                                                                                                                 (coe
                                                                                                                                    v0))
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Ledger.Utxo.du_consumed_2406
                                                                                                                                 (coe
                                                                                                                                    v0)
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Ledger.Utxo.d_pparams_1860
                                                                                                                                    (coe
                                                                                                                                       v2))
                                                                                                                                 (coe
                                                                                                                                    v3)
                                                                                                                                 (let v43
                                                                                                                                        = coe
                                                                                                                                            C_mkGeneralizeTel_846687
                                                                                                                                            (coe
                                                                                                                                               v1)
                                                                                                                                            (coe
                                                                                                                                               v2)
                                                                                                                                            (coe
                                                                                                                                               v3)
                                                                                                                                            (coe
                                                                                                                                               v4)
                                                                                                                                            (coe
                                                                                                                                               v5)
                                                                                                                                            (coe
                                                                                                                                               v6)
                                                                                                                                            (coe
                                                                                                                                               v7) in
                                                                                                                                  coe
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Ledger.Transaction.d_body_2848
                                                                                                                                       (coe
                                                                                                                                          d_'46'generalizedField'45'tx_846671
                                                                                                                                          v43)))))
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8804'_308
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8804''45'go_138
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Data.Nat.Properties.d_'8804''45'isPreorder_2680)
                                                                                                                                 (\ v43
                                                                                                                                    v44
                                                                                                                                    v45
                                                                                                                                    v46
                                                                                                                                    v47 ->
                                                                                                                                    coe
                                                                                                                                      MAlonzo.Code.Data.Nat.Properties.du_'8804''45''60''45'trans_2856
                                                                                                                                      v46
                                                                                                                                      v47))
                                                                                                                              (coe
                                                                                                                                 du_newDeps_3432
                                                                                                                                 (coe
                                                                                                                                    v0)
                                                                                                                                 (coe
                                                                                                                                    v1)
                                                                                                                                 (coe
                                                                                                                                    v2)
                                                                                                                                 (coe
                                                                                                                                    v3))
                                                                                                                              (addInt
                                                                                                                                 (coe
                                                                                                                                    addInt
                                                                                                                                    (coe
                                                                                                                                       addInt
                                                                                                                                       (coe
                                                                                                                                          du_newDeps_3432
                                                                                                                                          (coe
                                                                                                                                             v0)
                                                                                                                                          (coe
                                                                                                                                             v1)
                                                                                                                                          (coe
                                                                                                                                             v2)
                                                                                                                                          (coe
                                                                                                                                             v3))
                                                                                                                                       (coe
                                                                                                                                          MAlonzo.Code.Ledger.Transaction.d_txdonation_2798
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Ledger.Transaction.d_body_2848
                                                                                                                                             (coe
                                                                                                                                                v1))))
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Ledger.Transaction.d_txfee_2784
                                                                                                                                       (coe
                                                                                                                                          MAlonzo.Code.Ledger.Transaction.d_body_2848
                                                                                                                                          (coe
                                                                                                                                             v1))))
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Ledger.TokenAlgebra.d_coin_204
                                                                                                                                    (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2232
                                                                                                                                       (coe
                                                                                                                                          v0))
                                                                                                                                    (coe
                                                                                                                                       du_balOut_3438
                                                                                                                                       (coe
                                                                                                                                          v0)
                                                                                                                                       (coe
                                                                                                                                          v1))))
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Ledger.TokenAlgebra.d_coin_204
                                                                                                                                 (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2232
                                                                                                                                    (coe
                                                                                                                                       v0))
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Ledger.Utxo.du_consumed_2406
                                                                                                                                    (coe
                                                                                                                                       v0)
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Ledger.Utxo.d_pparams_1860
                                                                                                                                       (coe
                                                                                                                                          v2))
                                                                                                                                    (coe
                                                                                                                                       v3)
                                                                                                                                    (let v43
                                                                                                                                           = coe
                                                                                                                                               C_mkGeneralizeTel_846687
                                                                                                                                               (coe
                                                                                                                                                  v1)
                                                                                                                                               (coe
                                                                                                                                                  v2)
                                                                                                                                               (coe
                                                                                                                                                  v3)
                                                                                                                                               (coe
                                                                                                                                                  v4)
                                                                                                                                               (coe
                                                                                                                                                  v5)
                                                                                                                                               (coe
                                                                                                                                                  v6)
                                                                                                                                               (coe
                                                                                                                                                  v7) in
                                                                                                                                     coe
                                                                                                                                       (coe
                                                                                                                                          MAlonzo.Code.Ledger.Transaction.d_body_2848
                                                                                                                                          (coe
                                                                                                                                             d_'46'generalizedField'45'tx_846671
                                                                                                                                             v43)))))
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
                                                                                                                                 (\ v43
                                                                                                                                    v44
                                                                                                                                    v45
                                                                                                                                    v46
                                                                                                                                    v47 ->
                                                                                                                                    v47)
                                                                                                                                 (addInt
                                                                                                                                    (coe
                                                                                                                                       addInt
                                                                                                                                       (coe
                                                                                                                                          addInt
                                                                                                                                          (coe
                                                                                                                                             du_newDeps_3432
                                                                                                                                             (coe
                                                                                                                                                v0)
                                                                                                                                             (coe
                                                                                                                                                v1)
                                                                                                                                             (coe
                                                                                                                                                v2)
                                                                                                                                             (coe
                                                                                                                                                v3))
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Ledger.Transaction.d_txdonation_2798
                                                                                                                                             (coe
                                                                                                                                                MAlonzo.Code.Ledger.Transaction.d_body_2848
                                                                                                                                                (coe
                                                                                                                                                   v1))))
                                                                                                                                       (coe
                                                                                                                                          MAlonzo.Code.Ledger.Transaction.d_txfee_2784
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Ledger.Transaction.d_body_2848
                                                                                                                                             (coe
                                                                                                                                                v1))))
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Ledger.TokenAlgebra.d_coin_204
                                                                                                                                       (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2232
                                                                                                                                          (coe
                                                                                                                                             v0))
                                                                                                                                       (coe
                                                                                                                                          du_balOut_3438
                                                                                                                                          (coe
                                                                                                                                             v0)
                                                                                                                                          (coe
                                                                                                                                             v1))))
                                                                                                                                 (addInt
                                                                                                                                    (coe
                                                                                                                                       addInt
                                                                                                                                       (coe
                                                                                                                                          addInt
                                                                                                                                          (coe
                                                                                                                                             du_newDeps_3432
                                                                                                                                             (coe
                                                                                                                                                v0)
                                                                                                                                             (coe
                                                                                                                                                v1)
                                                                                                                                             (coe
                                                                                                                                                v2)
                                                                                                                                             (coe
                                                                                                                                                v3))
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Ledger.Transaction.d_txdonation_2798
                                                                                                                                             (coe
                                                                                                                                                MAlonzo.Code.Ledger.Transaction.d_body_2848
                                                                                                                                                (coe
                                                                                                                                                   v1))))
                                                                                                                                       (coe
                                                                                                                                          MAlonzo.Code.Ledger.Transaction.d_txfee_2784
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Ledger.Transaction.d_body_2848
                                                                                                                                             (coe
                                                                                                                                                v1))))
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Ledger.TokenAlgebra.d_coin_204
                                                                                                                                       (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2232
                                                                                                                                          (coe
                                                                                                                                             v0))
                                                                                                                                       (coe
                                                                                                                                          du_balOut_3438
                                                                                                                                          (coe
                                                                                                                                             v0)
                                                                                                                                          (coe
                                                                                                                                             v1))))
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Ledger.TokenAlgebra.d_coin_204
                                                                                                                                    (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2232
                                                                                                                                       (coe
                                                                                                                                          v0))
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Ledger.Utxo.du_consumed_2406
                                                                                                                                       (coe
                                                                                                                                          v0)
                                                                                                                                       (coe
                                                                                                                                          MAlonzo.Code.Ledger.Utxo.d_pparams_1860
                                                                                                                                          (coe
                                                                                                                                             v2))
                                                                                                                                       (coe
                                                                                                                                          v3)
                                                                                                                                       (let v43
                                                                                                                                              = coe
                                                                                                                                                  C_mkGeneralizeTel_846687
                                                                                                                                                  (coe
                                                                                                                                                     v1)
                                                                                                                                                  (coe
                                                                                                                                                     v2)
                                                                                                                                                  (coe
                                                                                                                                                     v3)
                                                                                                                                                  (coe
                                                                                                                                                     v4)
                                                                                                                                                  (coe
                                                                                                                                                     v5)
                                                                                                                                                  (coe
                                                                                                                                                     v6)
                                                                                                                                                  (coe
                                                                                                                                                     v7) in
                                                                                                                                        coe
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Ledger.Transaction.d_body_2848
                                                                                                                                             (coe
                                                                                                                                                d_'46'generalizedField'45'tx_846671
                                                                                                                                                v43)))))
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
                                                                                                                                    (\ v43
                                                                                                                                       v44
                                                                                                                                       v45
                                                                                                                                       v46
                                                                                                                                       v47 ->
                                                                                                                                       v47)
                                                                                                                                    (addInt
                                                                                                                                       (coe
                                                                                                                                          addInt
                                                                                                                                          (coe
                                                                                                                                             addInt
                                                                                                                                             (coe
                                                                                                                                                du_newDeps_3432
                                                                                                                                                (coe
                                                                                                                                                   v0)
                                                                                                                                                (coe
                                                                                                                                                   v1)
                                                                                                                                                (coe
                                                                                                                                                   v2)
                                                                                                                                                (coe
                                                                                                                                                   v3))
                                                                                                                                             (coe
                                                                                                                                                MAlonzo.Code.Ledger.Transaction.d_txdonation_2798
                                                                                                                                                (coe
                                                                                                                                                   MAlonzo.Code.Ledger.Transaction.d_body_2848
                                                                                                                                                   (coe
                                                                                                                                                      v1))))
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Ledger.Transaction.d_txfee_2784
                                                                                                                                             (coe
                                                                                                                                                MAlonzo.Code.Ledger.Transaction.d_body_2848
                                                                                                                                                (coe
                                                                                                                                                   v1))))
                                                                                                                                       (coe
                                                                                                                                          MAlonzo.Code.Ledger.TokenAlgebra.d_coin_204
                                                                                                                                          (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2232
                                                                                                                                             (coe
                                                                                                                                                v0))
                                                                                                                                          (coe
                                                                                                                                             du_balOut_3438
                                                                                                                                             (coe
                                                                                                                                                v0)
                                                                                                                                             (coe
                                                                                                                                                v1))))
                                                                                                                                    (addInt
                                                                                                                                       (coe
                                                                                                                                          addInt
                                                                                                                                          (coe
                                                                                                                                             addInt
                                                                                                                                             (coe
                                                                                                                                                du_newDeps_3432
                                                                                                                                                (coe
                                                                                                                                                   v0)
                                                                                                                                                (coe
                                                                                                                                                   v1)
                                                                                                                                                (coe
                                                                                                                                                   v2)
                                                                                                                                                (coe
                                                                                                                                                   v3))
                                                                                                                                             (coe
                                                                                                                                                MAlonzo.Code.Ledger.Transaction.d_txdonation_2798
                                                                                                                                                (coe
                                                                                                                                                   MAlonzo.Code.Ledger.Transaction.d_body_2848
                                                                                                                                                   (coe
                                                                                                                                                      v1))))
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Ledger.Transaction.d_txfee_2784
                                                                                                                                             (coe
                                                                                                                                                MAlonzo.Code.Ledger.Transaction.d_body_2848
                                                                                                                                                (coe
                                                                                                                                                   v1))))
                                                                                                                                       (coe
                                                                                                                                          MAlonzo.Code.Ledger.TokenAlgebra.d_coin_204
                                                                                                                                          (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2232
                                                                                                                                             (coe
                                                                                                                                                v0))
                                                                                                                                          (coe
                                                                                                                                             du_balOut_3438
                                                                                                                                             (coe
                                                                                                                                                v0)
                                                                                                                                             (coe
                                                                                                                                                v1))))
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Ledger.TokenAlgebra.d_coin_204
                                                                                                                                       (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2232
                                                                                                                                          (coe
                                                                                                                                             v0))
                                                                                                                                       (coe
                                                                                                                                          MAlonzo.Code.Ledger.Utxo.du_consumed_2406
                                                                                                                                          (coe
                                                                                                                                             v0)
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Ledger.Utxo.d_pparams_1860
                                                                                                                                             (coe
                                                                                                                                                v2))
                                                                                                                                          (coe
                                                                                                                                             v3)
                                                                                                                                          (let v43
                                                                                                                                                 = coe
                                                                                                                                                     C_mkGeneralizeTel_846687
                                                                                                                                                     (coe
                                                                                                                                                        v1)
                                                                                                                                                     (coe
                                                                                                                                                        v2)
                                                                                                                                                     (coe
                                                                                                                                                        v3)
                                                                                                                                                     (coe
                                                                                                                                                        v4)
                                                                                                                                                     (coe
                                                                                                                                                        v5)
                                                                                                                                                     (coe
                                                                                                                                                        v6)
                                                                                                                                                     (coe
                                                                                                                                                        v7) in
                                                                                                                                           coe
                                                                                                                                             (coe
                                                                                                                                                MAlonzo.Code.Ledger.Transaction.d_body_2848
                                                                                                                                                (coe
                                                                                                                                                   d_'46'generalizedField'45'tx_846671
                                                                                                                                                   v43)))))
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''728'_452
                                                                                                                                       (\ v43
                                                                                                                                          v44
                                                                                                                                          v45
                                                                                                                                          v46
                                                                                                                                          v47 ->
                                                                                                                                          v47)
                                                                                                                                       (addInt
                                                                                                                                          (coe
                                                                                                                                             addInt
                                                                                                                                             (coe
                                                                                                                                                addInt
                                                                                                                                                (coe
                                                                                                                                                   du_newDeps_3432
                                                                                                                                                   (coe
                                                                                                                                                      v0)
                                                                                                                                                   (coe
                                                                                                                                                      v1)
                                                                                                                                                   (coe
                                                                                                                                                      v2)
                                                                                                                                                   (coe
                                                                                                                                                      v3))
                                                                                                                                                (coe
                                                                                                                                                   MAlonzo.Code.Ledger.Transaction.d_txdonation_2798
                                                                                                                                                   (coe
                                                                                                                                                      MAlonzo.Code.Ledger.Transaction.d_body_2848
                                                                                                                                                      (coe
                                                                                                                                                         v1))))
                                                                                                                                             (coe
                                                                                                                                                MAlonzo.Code.Ledger.Transaction.d_txfee_2784
                                                                                                                                                (coe
                                                                                                                                                   MAlonzo.Code.Ledger.Transaction.d_body_2848
                                                                                                                                                   (coe
                                                                                                                                                      v1))))
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Ledger.TokenAlgebra.d_coin_204
                                                                                                                                             (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2232
                                                                                                                                                (coe
                                                                                                                                                   v0))
                                                                                                                                             (coe
                                                                                                                                                du_balOut_3438
                                                                                                                                                (coe
                                                                                                                                                   v0)
                                                                                                                                                (coe
                                                                                                                                                   v1))))
                                                                                                                                       (addInt
                                                                                                                                          (coe
                                                                                                                                             addInt
                                                                                                                                             (coe
                                                                                                                                                addInt
                                                                                                                                                (coe
                                                                                                                                                   du_newDeps_3432
                                                                                                                                                   (coe
                                                                                                                                                      v0)
                                                                                                                                                   (coe
                                                                                                                                                      v1)
                                                                                                                                                   (coe
                                                                                                                                                      v2)
                                                                                                                                                   (coe
                                                                                                                                                      v3))
                                                                                                                                                (coe
                                                                                                                                                   MAlonzo.Code.Ledger.Transaction.d_txdonation_2798
                                                                                                                                                   (coe
                                                                                                                                                      MAlonzo.Code.Ledger.Transaction.d_body_2848
                                                                                                                                                      (coe
                                                                                                                                                         v1))))
                                                                                                                                             (coe
                                                                                                                                                MAlonzo.Code.Ledger.Transaction.d_txfee_2784
                                                                                                                                                (coe
                                                                                                                                                   MAlonzo.Code.Ledger.Transaction.d_body_2848
                                                                                                                                                   (coe
                                                                                                                                                      v1))))
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Ledger.TokenAlgebra.d_coin_204
                                                                                                                                             (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2232
                                                                                                                                                (coe
                                                                                                                                                   v0))
                                                                                                                                             (coe
                                                                                                                                                du_balOut_3438
                                                                                                                                                (coe
                                                                                                                                                   v0)
                                                                                                                                                (coe
                                                                                                                                                   v1))))
                                                                                                                                       (coe
                                                                                                                                          MAlonzo.Code.Ledger.TokenAlgebra.d_coin_204
                                                                                                                                          (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2232
                                                                                                                                             (coe
                                                                                                                                                v0))
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Ledger.Utxo.du_consumed_2406
                                                                                                                                             (coe
                                                                                                                                                v0)
                                                                                                                                             (coe
                                                                                                                                                MAlonzo.Code.Ledger.Utxo.d_pparams_1860
                                                                                                                                                (coe
                                                                                                                                                   v2))
                                                                                                                                             (coe
                                                                                                                                                v3)
                                                                                                                                             (let v43
                                                                                                                                                    = coe
                                                                                                                                                        C_mkGeneralizeTel_846687
                                                                                                                                                        (coe
                                                                                                                                                           v1)
                                                                                                                                                        (coe
                                                                                                                                                           v2)
                                                                                                                                                        (coe
                                                                                                                                                           v3)
                                                                                                                                                        (coe
                                                                                                                                                           v4)
                                                                                                                                                        (coe
                                                                                                                                                           v5)
                                                                                                                                                        (coe
                                                                                                                                                           v6)
                                                                                                                                                        (coe
                                                                                                                                                           v7) in
                                                                                                                                              coe
                                                                                                                                                (coe
                                                                                                                                                   MAlonzo.Code.Ledger.Transaction.d_body_2848
                                                                                                                                                   (coe
                                                                                                                                                      d_'46'generalizedField'45'tx_846671
                                                                                                                                                      v43)))))
                                                                                                                                       (coe
                                                                                                                                          MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''728'_452
                                                                                                                                          (\ v43
                                                                                                                                             v44
                                                                                                                                             v45
                                                                                                                                             v46
                                                                                                                                             v47 ->
                                                                                                                                             v47)
                                                                                                                                          (addInt
                                                                                                                                             (coe
                                                                                                                                                addInt
                                                                                                                                                (coe
                                                                                                                                                   addInt
                                                                                                                                                   (coe
                                                                                                                                                      du_newDeps_3432
                                                                                                                                                      (coe
                                                                                                                                                         v0)
                                                                                                                                                      (coe
                                                                                                                                                         v1)
                                                                                                                                                      (coe
                                                                                                                                                         v2)
                                                                                                                                                      (coe
                                                                                                                                                         v3))
                                                                                                                                                   (coe
                                                                                                                                                      MAlonzo.Code.Ledger.Transaction.d_txdonation_2798
                                                                                                                                                      (coe
                                                                                                                                                         MAlonzo.Code.Ledger.Transaction.d_body_2848
                                                                                                                                                         (coe
                                                                                                                                                            v1))))
                                                                                                                                                (coe
                                                                                                                                                   MAlonzo.Code.Ledger.Transaction.d_txfee_2784
                                                                                                                                                   (coe
                                                                                                                                                      MAlonzo.Code.Ledger.Transaction.d_body_2848
                                                                                                                                                      (coe
                                                                                                                                                         v1))))
                                                                                                                                             (coe
                                                                                                                                                MAlonzo.Code.Ledger.TokenAlgebra.d_coin_204
                                                                                                                                                (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2232
                                                                                                                                                   (coe
                                                                                                                                                      v0))
                                                                                                                                                (coe
                                                                                                                                                   du_balOut_3438
                                                                                                                                                   (coe
                                                                                                                                                      v0)
                                                                                                                                                   (coe
                                                                                                                                                      v1))))
                                                                                                                                          (addInt
                                                                                                                                             (coe
                                                                                                                                                v6)
                                                                                                                                             (coe
                                                                                                                                                v7) in
                                                                                                                                   coe
                                                                                                                                     (coe
                                                                                                                                        MAlonzo.Code.Ledger.Transaction.d_body_2912
                                                                                                                                        (coe
                                                                                                                                           d_'46'generalizedField'45'tx_952023
                                                                                                                                           (coe
                                                                                                                                              v45))))))
                                                                                                                            (coe
                                                                                                                               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8804'_308
                                                                                                                               (coe
                                                                                                                                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8804''45'go_138
                                                                                                                                  (coe
                                                                                                                                     MAlonzo.Code.Data.Nat.Properties.d_'8804''45'isPreorder_2810)
                                                                                                                                  (\ v45
                                                                                                                                     v46
                                                                                                                                     v47
                                                                                                                                     v48
                                                                                                                                     v49 ->
                                                                                                                                     coe
                                                                                                                                       MAlonzo.Code.Data.Nat.Properties.du_'8804''45''60''45'trans_2986
                                                                                                                                       v48
                                                                                                                                       v49))
                                                                                                                               (coe
                                                                                                                                  MAlonzo.Code.Agda.Builtin.Nat.d__'45'__22
                                                                                                                                  (coe
                                                                                                                                     MAlonzo.Code.Ledger.Set.Theory.du_indexedSum'7515'''_1162
                                                                                                                                     (coe
                                                                                                                                        MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_848
                                                                                                                                        (coe
                                                                                                                                           MAlonzo.Code.Ledger.Transaction.d_govStructure_2394
                                                                                                                                           (coe
                                                                                                                                              v0)))
                                                                                                                                     (coe
                                                                                                                                        MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                                                                                                                                        (coe
                                                                                                                                           MAlonzo.Code.Data.Nat.Properties.d__'8799'__2688))
                                                                                                                                     (coe
                                                                                                                                        MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
                                                                                                                                        (coe
                                                                                                                                           MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3334))
                                                                                                                                     (coe
                                                                                                                                        (\ v45 ->
                                                                                                                                           v45))
                                                                                                                                     (coe
                                                                                                                                        MAlonzo.Code.Ledger.Utxo.du_updateProposalDeposits_2092
                                                                                                                                        (coe
                                                                                                                                           v0)
                                                                                                                                        (coe
                                                                                                                                           MAlonzo.Code.Ledger.Transaction.d_txprop_2860
                                                                                                                                           (coe
                                                                                                                                              MAlonzo.Code.Ledger.Transaction.d_body_2912
                                                                                                                                              (coe
                                                                                                                                                 v1)))
                                                                                                                                        (coe
                                                                                                                                           MAlonzo.Code.Ledger.Transaction.d_txid_2874
                                                                                                                                           (coe
                                                                                                                                              MAlonzo.Code.Ledger.Transaction.d_body_2912
                                                                                                                                              (coe
                                                                                                                                                 v1)))
                                                                                                                                        (coe
                                                                                                                                           MAlonzo.Code.Ledger.PParams.d_govActionDeposit_372
                                                                                                                                           (coe
                                                                                                                                              du_pp_3520
                                                                                                                                              (coe
                                                                                                                                                 v2)))
                                                                                                                                        (coe
                                                                                                                                           MAlonzo.Code.Ledger.Utxo.d_deposits_2008
                                                                                                                                           (coe
                                                                                                                                              v3))))
                                                                                                                                  (coe
                                                                                                                                     MAlonzo.Code.Ledger.Set.Theory.du_indexedSum'7515'''_1162
                                                                                                                                     (coe
                                                                                                                                        MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_848
                                                                                                                                        (coe
                                                                                                                                           MAlonzo.Code.Ledger.Transaction.d_govStructure_2394
                                                                                                                                           (coe
                                                                                                                                              v0)))
                                                                                                                                     (coe
                                                                                                                                        MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                                                                                                                                        (coe
                                                                                                                                           MAlonzo.Code.Data.Nat.Properties.d__'8799'__2688))
                                                                                                                                     (coe
                                                                                                                                        MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
                                                                                                                                        (coe
                                                                                                                                           MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3334))
                                                                                                                                     (coe
                                                                                                                                        (\ v45 ->
                                                                                                                                           v45))
                                                                                                                                     (coe
                                                                                                                                        MAlonzo.Code.Ledger.Utxo.d_deposits_2008
                                                                                                                                        (coe
                                                                                                                                           v3))))
                                                                                                                               (coe
                                                                                                                                  MAlonzo.Code.Agda.Builtin.Nat.d__'45'__22
                                                                                                                                  (coe
                                                                                                                                     MAlonzo.Code.Ledger.Set.Theory.du_indexedSum'7515'''_1162
                                                                                                                                     (coe
                                                                                                                                        MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_848
                                                                                                                                        (coe
                                                                                                                                           MAlonzo.Code.Ledger.Transaction.d_govStructure_2394
                                                                                                                                           (coe
                                                                                                                                              v0)))
                                                                                                                                     (coe
                                                                                                                                        MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                                                                                                                                        (coe
                                                                                                                                           MAlonzo.Code.Data.Nat.Properties.d__'8799'__2688))
                                                                                                                                     (coe
                                                                                                                                        MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
                                                                                                                                        (coe
                                                                                                                                           MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3334))
                                                                                                                                     (coe
                                                                                                                                        (\ v45 ->
                                                                                                                                           v45))
                                                                                                                                     (coe
                                                                                                                                        MAlonzo.Code.Ledger.Utxo.du_updateDeposits_2104
                                                                                                                                        (coe
                                                                                                                                           v0)
                                                                                                                                        (coe
                                                                                                                                           du_pp_3520
                                                                                                                                           (coe
                                                                                                                                              v2))
                                                                                                                                        (coe
                                                                                                                                           MAlonzo.Code.Ledger.Transaction.d_body_2912
                                                                                                                                           (coe
                                                                                                                                              v1))
                                                                                                                                        (coe
                                                                                                                                           MAlonzo.Code.Ledger.Utxo.d_deposits_2008
                                                                                                                                           (coe
                                                                                                                                              v3))))
                                                                                                                                  (coe
                                                                                                                                     MAlonzo.Code.Ledger.Set.Theory.du_indexedSum'7515'''_1162
                                                                                                                                     (coe
                                                                                                                                        MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_848
                                                                                                                                        (coe
                                                                                                                                           MAlonzo.Code.Ledger.Transaction.d_govStructure_2394
                                                                                                                                           (coe
                                                                                                                                              v0)))
                                                                                                                                     (coe
                                                                                                                                        MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                                                                                                                                        (coe
                                                                                                                                           MAlonzo.Code.Data.Nat.Properties.d__'8799'__2688))
                                                                                                                                     (coe
                                                                                                                                        MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
                                                                                                                                        (coe
                                                                                                                                           MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3334))
                                                                                                                                     (coe
                                                                                                                                        (\ v45 ->
                                                                                                                                           v45))
                                                                                                                                     (coe
                                                                                                                                        MAlonzo.Code.Ledger.Utxo.d_deposits_2008
                                                                                                                                        (coe
                                                                                                                                           v3))))
                                                                                                                               (coe
                                                                                                                                  MAlonzo.Code.Ledger.TokenAlgebra.d_coin_204
                                                                                                                                  (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2276
                                                                                                                                     (coe
                                                                                                                                        v0))
                                                                                                                                  (coe
                                                                                                                                     MAlonzo.Code.Ledger.Utxo.du_consumed_2552
                                                                                                                                     (coe
                                                                                                                                        v0)
                                                                                                                                     (coe
                                                                                                                                        MAlonzo.Code.Ledger.Utxo.d_pparams_1990
                                                                                                                                        (coe
                                                                                                                                           v2))
                                                                                                                                     (coe
                                                                                                                                        v3)
                                                                                                                                     (let v45
                                                                                                                                            = coe
                                                                                                                                                C_mkGeneralizeTel_952039
                                                                                                                                                (coe
                                                                                                                                                   du_newDeps_3432
                                                                                                                                                   (coe
                                                                                                                                                      v0)
                                                                                                                                                   (coe
                                                                                                                                                      v1)
                                                                                                                                                   (coe
                                                                                                                                                      v2)
                                                                                                                                                   (coe
                                                                                                                                                      v3))
                                                                                                                                                (coe
                                                                                                                                                   MAlonzo.Code.Ledger.Transaction.d_txdonation_2798
                                                                                                                                                   (coe
                                                                                                                                                      MAlonzo.Code.Ledger.Transaction.d_body_2848
                                                                                                                                                      (coe
                                                                                                                                                         v1))))
                                                                                                                                             (coe
                                                                                                                                                MAlonzo.Code.Ledger.TokenAlgebra.d_coin_204
                                                                                                                                                (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2232
                                                                                                                                                   (coe
                                                                                                                                                      v5)
                                                                                                                                                   (coe
                                                                                                                                                      MAlonzo.Code.Ledger.TokenAlgebra.du_Value'45'CommutativeMonoid_122
                                                                                                                                                      (coe
                                                                                                                                                         MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2232
                                                                                                                                                         (coe
                                                                                                                                                            v0)))
                                                                                                                                                   (coe
                                                                                                                                                      du_balOut_3438
                                                                                                                                                      (coe
                                                                                                                                                         v0)
                                                                                                                                                      (coe
                                                                                                                                                         v1))
                                                                                                                                                   (coe
                                                                                                                                                      MAlonzo.Code.Ledger.TokenAlgebra.d_inject_206
                                                                                                                                                      (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2232
                                                                                                                                                         (coe
                                                                                                                                                            v0))
                                                                                                                                                      (MAlonzo.Code.Ledger.Transaction.d_txfee_2784
                                                                                                                                                         (coe
                                                                                                                                                            MAlonzo.Code.Ledger.Transaction.d_body_2848
                                                                                                                                                            (coe
                                                                                                                                                               v1)))))))
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Ledger.TokenAlgebra.d_coin_204
                                                                                                                                             (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2232
                                                                                                                                                (coe
                                                                                                                                                   v0))
                                                                                                                                             (coe
                                                                                                                                                MAlonzo.Code.Ledger.Utxo.du_consumed_2406
                                                                                                                                                (coe
                                                                                                                                                   v0)
                                                                                                                                                (coe
                                                                                                                                                   MAlonzo.Code.Ledger.Utxo.d_pparams_1860
                                                                                                                                                   (coe
                                                                                                                                                      v2))
                                                                                                                                                (coe
                                                                                                                                                   v3)
                                                                                                                                                (let v43
                                                                                                                                                       = coe
                                                                                                                                                           C_mkGeneralizeTel_846687
                                                                                                                                                           (coe
                                                                                                                                                              v1)
                                                                                                                                                           (coe
                                                                                                                                                              v2)
                                                                                                                                                           (coe
                                                                                                                                                              v3)
                                                                                                                                                           (coe
                                                                                                                                                              v4)
                                                                                                                                                           (coe
                                                                                                                                                              v5)
                                                                                                                                                           (coe
                                                                                                                                                              v6)
                                                                                                                                                           (coe
                                                                                                                                                              v7) in
                                                                                                                                                 coe
                                                                                                                                                   (coe
                                                                                                                                                      MAlonzo.Code.Ledger.Transaction.d_body_2848
                                                                                                                                                      (coe
                                                                                                                                                         d_'46'generalizedField'45'tx_846671
                                                                                                                                                         v43)))))
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''728'_452
                                                                                                                                             (\ v43
                                                                                                                                                v44
                                                                                                                                                v45
                                                                                                                                                v46
                                                                                                                                                v47 ->
                                                                                                                                                v47)
                                                                                                                                             (addInt
                                                                                                                                                (coe
                                                                                                                                                   addInt
                                                                                                                                                   (coe
                                                                                                                                                      du_newDeps_3432
                                                                                                                                                      (coe
                                                                                                                                                         v0)
                                                                                                                                                      (coe
                                                                                                                                                         v1)
                                                                                                                                                      (coe
                                                                                                                                                         v2)
                                                                                                                                                      (coe
                                                                                                                                                         v3))
                                                                                                                                                   (coe
                                                                                                                                                      MAlonzo.Code.Ledger.Transaction.d_txdonation_2798
                                                                                                                                                      (coe
                                                                                                                                                         MAlonzo.Code.Ledger.Transaction.d_body_2848
                                                                                                                                                         (coe
                                                                                                                                                            v1))))
                                                                                                                                                (coe
                                                                                                                                                   MAlonzo.Code.Ledger.TokenAlgebra.d_coin_204
                                                                                                                                                   (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2232
                                                                                                                                                      (coe
                                                                                                                                                         v0))
                                                                                                                                                   (coe
                                                                                                                                                      MAlonzo.Code.Algebra.Bundles.d__'8729'__840
                                                                                                                                                      (coe
                                                                                                                                                         MAlonzo.Code.Ledger.TokenAlgebra.du_Value'45'CommutativeMonoid_122
                                                                                                                                                         (coe
                                                                                                                                                            MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2232
                                                                                                                                                            (coe
                                                                                                                                                               v0)))
                                                                                                                                                      (coe
                                                                                                                                                         du_balOut_3438
                                                                                                                                                         (coe
                                                                                                                                                            v3)
                                                                                                                                                         (coe
                                                                                                                                                            v1))
                                                                                                                                                      (coe
                                                                                                                                                         MAlonzo.Code.Ledger.TokenAlgebra.d_inject_206
                                                                                                                                                         (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2232
                                                                                                                                                            (coe
                                                                                                                                                               v0))
                                                                                                                                                         (MAlonzo.Code.Ledger.Transaction.d_txfee_2784
                                                                                                                                                            (coe
                                                                                                                                                               MAlonzo.Code.Ledger.Transaction.d_body_2848
                                                                                                                                                               (coe
                                                                                                                                                                  v1)))))))
                                                                                                                                             (addInt
                                                                                                                                                (coe
                                                                                                                                                   MAlonzo.Code.Ledger.Transaction.d_txdonation_2798
                                                                                                                                                   (coe
                                                                                                                                                      MAlonzo.Code.Ledger.Transaction.d_body_2848
                                                                                                                                                      (coe
                                                                                                                                                         v1)))
                                                                                                                                                (coe
                                                                                                                                                   MAlonzo.Code.Ledger.TokenAlgebra.d_coin_204
                                                                                                                                                   (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2232
                                                                                                                                                      (coe
                                                                                                                                                         v0))
                                                                                                                                                   (coe
                                                                                                                                                      MAlonzo.Code.Algebra.Bundles.d__'8729'__840
                                                                                                                                                      (coe
                                                                                                                                                         MAlonzo.Code.Ledger.TokenAlgebra.du_Value'45'CommutativeMonoid_122
                                                                                                                                                         (coe
                                                                                                                                                            MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2232
                                                                                                                                                            (coe
                                                                                                                                                               v0)))
                                                                                                                                                      (coe
                                                                                                                                                         MAlonzo.Code.Algebra.Bundles.d__'8729'__840
                                                                                                                                                         (coe
                                                                                                                                                            MAlonzo.Code.Ledger.TokenAlgebra.du_Value'45'CommutativeMonoid_122
                                                                                                                                                            (coe
                                                                                                                                                               MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2232
                                                                                                                                                               (coe
                                                                                                                                                                  v0)))
                                                                                                                                                         (coe
                                                                                                                                                            du_balOut_3438
                                                                                                                                                            (coe
                                                                                                                                                               v0)
                                                                                                                                                            (coe
                                                                                                                                                               v1))
                                                                                                                                                         (coe
                                                                                                                                                            MAlonzo.Code.Ledger.TokenAlgebra.d_inject_206
                                                                                                                                                            (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2232
                                                                                                                                                               (coe
                                                                                                                                                                  v0))
                                                                                                                                                            (MAlonzo.Code.Ledger.Transaction.d_txfee_2784
                                                                                                                                                               (coe
                                                                                                                                                                  MAlonzo.Code.Ledger.Transaction.d_body_2848
                                                                                                                                                                  (coe
                                                                                                                                                                     v1)))))
                                                                                                                                                      (coe
                                                                                                                                                         MAlonzo.Code.Ledger.TokenAlgebra.d_inject_206
                                                                                                                                                         (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2232
                                                                                                                                                            (coe
                                                                                                                                                               v0))
                                                                                                                                                         (coe
                                                                                                                                                            du_newDeps_3432
                                                                                                                                                            (coe
                                                                                                                                                               v0)
                                                                                                                                                            (coe
                                                                                                                                                               v1)
                                                                                                                                                            (coe
                                                                                                                                                               v2)
                                                                                                                                                            (coe
                                                                                                                                                               v3))))))
                                                                                                                                             (coe
                                                                                                                                                MAlonzo.Code.Ledger.TokenAlgebra.d_coin_204
                                                                                                                                                (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2232
                                                                                                                                                   (coe
                                                                                                                                                      v0))
                                                                                                                                                (coe
                                                                                                                                                   MAlonzo.Code.Ledger.Utxo.du_consumed_2406
                                                                                                                                                   (coe
                                                                                                                                                      v0)
                                                                                                                                                   (coe
                                                                                                                                                      MAlonzo.Code.Ledger.Utxo.d_pparams_1860
                                                                                                                                                      (coe
                                                                                                                                                         v2))
                                                                                                                                                   (coe
                                                                                                                                                      v3)
                                                                                                                                                   (let v43
                                                                                                                                                          = coe
                                                                                                                                                              C_mkGeneralizeTel_846687
                                                                                                                                                              (coe
                                                                                                                                                                 v1)
                                                                                                                                                              (coe
                                                                                                                                                                 v2)
                                                                                                                                                              (coe
                                                                                                                                                                 v3)
                                                                                                                                                              (coe
                                                                                                                                                                 v4)
                                                                                                                                                              (coe
                                                                                                                                                                 v5)
                                                                                                                                                              (coe
                                                                                                                                                                 v6)
                                                                                                                                                              (coe
                                                                                                                                                                 v7) in
                                                                                                                                                    coe
                                                                                                                                                      (coe
                                                                                                                                                         MAlonzo.Code.Ledger.Transaction.d_body_2848
                                                                                                                                                         (coe
                                                                                                                                                            d_'46'generalizedField'45'tx_846671
                                                                                                                                                            v43)))))
                                                                                                                                             (coe
                                                                                                                                                MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''728'_452
                                                                                                                                                (\ v43
                                                                                                                                                   v44
                                                                                                                                                   v45
                                                                                                                                                   v46
                                                                                                                                                   v47 ->
                                                                                                                                                   v47)
                                                                                                                                                (addInt
                                                                                                                                                   (coe
                                                                                                                                                      MAlonzo.Code.Ledger.Transaction.d_txdonation_2798
                                                                                                                                                      (coe
                                                                                                                                                         MAlonzo.Code.Ledger.Transaction.d_body_2848
                                                                                                                                                         (coe
                                                                                                                                                            v1)))
                                                                                                                                                   (coe
                                                                                                                                                      MAlonzo.Code.Ledger.TokenAlgebra.d_coin_204
                                                                                                                                                      (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2232
                                                                                                                                                         (coe
                                                                                                                                                            v0))
                                                                                                                                                      (coe
                                                                                                                                                         MAlonzo.Code.Algebra.Bundles.d__'8729'__840
                                                                                                                                                         (coe
                                                                                                                                                            MAlonzo.Code.Ledger.TokenAlgebra.du_Value'45'CommutativeMonoid_122
                                                                                                                                                            (coe
                                                                                                                                                               MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2232
                                                                                                                                                               (coe
                                                                                                                                                                  v0)))
                                                                                                                                                         (coe
                                                                                                                                                            MAlonzo.Code.Algebra.Bundles.d__'8729'__840
                                                                                                                                                            (coe
                                                                                                                                                               MAlonzo.Code.Ledger.TokenAlgebra.du_Value'45'CommutativeMonoid_122
                                                                                                                                                               (coe
                                                                                                                                                                  MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2232
                                                                                                                                                                  (coe
                                                                                                                                                                     v0)))
                                                                                                                                                            (coe
                                                                                                                                                               du_balOut_3438
                                                                                                                                                               (coe
                                                                                                                                                                  v0)
                                                                                                                                                               (coe
                                                                                                                                                                  v1))
                                                                                                                                                            (coe
                                                                                                                                                               MAlonzo.Code.Ledger.TokenAlgebra.d_inject_206
                                                                                                                                                               (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2232
                                                                                                                                                                  (coe
                                                                                                                                                                     v0))
                                                                                                                                                               (MAlonzo.Code.Ledger.Transaction.d_txfee_2784
                                                                                                                                                                  (coe
                                                                                                                                                                     MAlonzo.Code.Ledger.Transaction.d_body_2848
                                                                                                                                                                     (coe
                                                                                                                                                                        v1)))))
                                                                                                                                                         (coe
                                                                                                                                                            MAlonzo.Code.Ledger.TokenAlgebra.d_inject_206
                                                                                                                                                            (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2232
                                                                                                                                                               (coe
                                                                                                                                                                  v0))
                                                                                                                                                            (coe
                                                                                                                                                               du_newDeps_3432
                                                                                                                                                               (coe
                                                                                                                                                                  v0)
                                                                                                                                                               (coe
                                                                                                                                                                  v1)
                                                                                                                                                               (coe
                                                                                                                                                                  v2)
                                                                                                                                                               (coe
                                                                                                                                                                  v3))))))
                                                                                                                                                (coe
                                                                                                                                                   MAlonzo.Code.Ledger.TokenAlgebra.d_coin_204
                                                                                                                                                   (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2232
                                                                                                                                                      (coe
                                                                                                                                                         v0))
                                                                                                                                                   (coe
                                                                                                                                                      MAlonzo.Code.Algebra.Bundles.d__'8729'__840
                                                                                                                                                      (coe
                                                                                                                                                         MAlonzo.Code.Ledger.TokenAlgebra.du_Value'45'CommutativeMonoid_122
                                                                                                                                                         (coe
                                                                                                                                                            MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2232
                                                                                                                                                            (coe
                                                                                                                                                               v0)))
                                                                                                                                                      (coe
                                                                                                                                                         MAlonzo.Code.Algebra.Bundles.d__'8729'__840
                                                                                                                                                         (coe
                                                                                                                                                            MAlonzo.Code.Ledger.TokenAlgebra.du_Value'45'CommutativeMonoid_122
                                                                                                                                                            (coe
                                                                                                                                                               MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2232
                                                                                                                                                               (coe
                                                                                                                                                                  v4)
                                                                                                                                                               (coe
                                                                                                                                                                  MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2232
                                                                                                                                                                  (coe
                                                                                                                                                                     v0)))
                                                                                                                                                            (coe
                                                                                                                                                               du_balOut_3438
                                                                                                                                                               (coe
                                                                                                                                                                  v6)
                                                                                                                                                               (coe
                                                                                                                                                                  v1))
                                                                                                                                                            (coe
                                                                                                                                                               MAlonzo.Code.Ledger.TokenAlgebra.d_inject_206
                                                                                                                                                               (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2232
                                                                                                                                                                  (coe
                                                                                                                                                                     v0))
                                                                                                                                                               (MAlonzo.Code.Ledger.Transaction.d_txfee_2784
                                                                                                                                                                  (coe
                                                                                                                                                                     MAlonzo.Code.Ledger.Transaction.d_body_2848
                                                                                                                                                                     (coe
                                                                                                                                                                        v1)))))
                                                                                                                                                         (coe
                                                                                                                                                            MAlonzo.Code.Ledger.TokenAlgebra.d_inject_206
                                                                                                                                                            (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2232
                                                                                                                                                               (coe
                                                                                                                                                                  v0))
                                                                                                                                                            (coe
                                                                                                                                                               du_newDeps_3432
                                                                                                                                                               (coe
                                                                                                                                                                  v0)
                                                                                                                                                               (coe
                                                                                                                                                                  v1)
                                                                                                                                                               (coe
                                                                                                                                                                  v2)
                                                                                                                                                               (coe
                                                                                                                                                                  v3))))
                                                                                                                                                      (coe
                                                                                                                                                         MAlonzo.Code.Ledger.TokenAlgebra.d_inject_206
                                                                                                                                                         (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2232
                                                                                                                                                            (coe
                                                                                                                                                               v0))
                                                                                                                                                         (MAlonzo.Code.Ledger.Transaction.d_txdonation_2798
                                                                                                                                                            (coe
                                                                                                                                                               MAlonzo.Code.Ledger.Transaction.d_body_2848
                                                                                                                                                               (coe
                                                                                                                                                                  v1))))))
                                                                                                                                                (coe
                                                                                                                                                   MAlonzo.Code.Ledger.TokenAlgebra.d_coin_204
                                                                                                                                                   (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2232
                                                                                                                                                      (coe
                                                                                                                                                         v0))
                                                                                                                                                   (coe
                                                                                                                                                      MAlonzo.Code.Ledger.Utxo.du_consumed_2406
                                                                                                                                                      (coe
                                                                                                                                                         v0)
                                                                                                                                                      (coe
                                                                                                                                                         MAlonzo.Code.Ledger.Utxo.d_pparams_1860
                                                                                                                                                         (coe
                                                                                                                                                            v2))
                                                                                                                                                      (coe
                                                                                                                                                         v3)
                                                                                                                                                      (let v43
                                                                                                                                                             = coe
                                                                                                                                                                 C_mkGeneralizeTel_846687
                                                                                                                                                                 (coe
                                                                                                                                                                    v1)
                                                                                                                                                                 (coe
                                                                                                                                                                    v2)
                                                                                                                                                                 (coe
                                                                                                                                                                    v3)
                                                                                                                                                                 (coe
                                                                                                                                                                    v4)
                                                                                                                                                                 (coe
                                                                                                                                                                    v5)
                                                                                                                                                                 (coe
                                                                                                                                                                    v6)
                                                                                                                                                                 (coe
                                                                                                                                                                    v7) in
                                                                                                                                                       coe
                                                                                                                                                         (coe
                                                                                                                                                            MAlonzo.Code.Ledger.Transaction.d_body_2848
                                                                                                                                                            (coe
                                                                                                                                                               d_'46'generalizedField'45'tx_846671
                                                                                                                                                               v43)))))
                                                                                                                                                (coe
                                                                                                                                                   MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''728'_452
                                                                                                                                                   (\ v43
                                                                                                                                                      v44
                                                                                                                                                      v45
                                                                                                                                                      v46
                                                                                                                                                      v47 ->
                                                                                                                                                      v47)
                                                                                                                                                   (coe
                                                                                                                                                      MAlonzo.Code.Ledger.TokenAlgebra.d_coin_204
                                                                                                                                                      (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2232
                                                                                                                                                         (coe
                                                                                                                                                            v0))
                                                                                                                                                      (coe
                                                                                                                                                         MAlonzo.Code.Algebra.Bundles.d__'8729'__840
                                                                                                                                                         (coe
                                                                                                                                                            MAlonzo.Code.Ledger.TokenAlgebra.du_Value'45'CommutativeMonoid_122
                                                                                                                                                            (coe
                                                                                                                                                               MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2232
                                                                                                                                                               (coe
                                                                                                                                                                  v0)))
                                                                                                                                                         (coe
                                                                                                                                                            MAlonzo.Code.Algebra.Bundles.d__'8729'__840
                                                                                                                                                            (coe
                                                                                                                                                               MAlonzo.Code.Ledger.TokenAlgebra.du_Value'45'CommutativeMonoid_122
                                                                                                                                                               (coe
                                                                                                                                                                  MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2232
                                                                                                                                                                  (coe
                                                                                                                                                                     v0)))
                                                                                                                                                            (coe
                                                                                                                                                               MAlonzo.Code.Algebra.Bundles.d__'8729'__840
                                                                                                                                                               (coe
                                                                                                                                                                  MAlonzo.Code.Ledger.TokenAlgebra.du_Value'45'CommutativeMonoid_122
                                                                                                                                                                  (coe
                                                                                                                                                                     MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2232
                                                                                                                                                                     (coe
                                                                                                                                                                        v0)))
                                                                                                                                                               (coe
                                                                                                                                                                  du_balOut_3438
                                                                                                                                                                  (coe
                                                                                                                                                                     v0)
                                                                                                                                                                  (coe
                                                                                                                                                                     v1))
                                                                                                                                                               (coe
                                                                                                                                                                  MAlonzo.Code.Ledger.TokenAlgebra.d_inject_206
                                                                                                                                                                  (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2232
                                                                                                                                                                     (coe
                                                                                                                                                                        v0))
                                                                                                                                                                  (MAlonzo.Code.Ledger.Transaction.d_txfee_2784
                                                                                                                                                                     (coe
                                                                                                                                                                        MAlonzo.Code.Ledger.Transaction.d_body_2848
                                                                                                                                                                        (coe
                                                                                                                                                                           v1)))))
                                                                                                                                                            (coe
                                                                                                                                                               MAlonzo.Code.Ledger.TokenAlgebra.d_inject_206
                                                                                                                                                               (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2232
                                                                                                                                                                  (coe
                                                                                                                                                                     v0))
                                                                                                                                                               (coe
                                                                                                                                                                  du_newDeps_3432
                                                                                                                                                                  (coe
                                                                                                                                                                     v0)
                                                                                                                                                                  (coe
                                                                                                                                                                     v1)
                                                                                                                                                                  (coe
                                                                                                                                                                     v2)
                                                                                                                                                                  (coe
                                                                                                                                                                     v3))))
                                                                                                                                                         (coe
                                                                                                                                                            MAlonzo.Code.Ledger.TokenAlgebra.d_inject_206
                                                                                                                                                            (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2232
                                                                                                                                                               (coe
                                                                                                                                                                  v0))
                                                                                                                                                            (MAlonzo.Code.Ledger.Transaction.d_txdonation_2798
                                                                                                                                                               (coe
                                                                                                                                                                  MAlonzo.Code.Ledger.Transaction.d_body_2848
                                                                                                                                                                  (coe
                                                                                                                                                                     v1))))))
                                                                                                                                                   (coe
                                                                                                                                                      MAlonzo.Code.Ledger.TokenAlgebra.d_coin_204
                                                                                                                                                      (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2232
                                                                                                                                                         (coe
                                                                                                                                                            v0))
                                                                                                                                                      (coe
                                                                                                                                                         MAlonzo.Code.Algebra.Bundles.d__'8729'__840
                                                                                                                                                         (coe
                                                                                                                                                            MAlonzo.Code.Ledger.TokenAlgebra.du_Value'45'CommutativeMonoid_122
                                                                                                                                                            (coe
                                                                                                                                                               MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2232
                                                                                                                                                               (coe
                                                                                                                                                                  v0)))
                                                                                                                                                         (coe
                                                                                                                                                            MAlonzo.Code.Algebra.Bundles.d__'8729'__840
                                                                                                                                                            (coe
                                                                                                                                                               MAlonzo.Code.Ledger.TokenAlgebra.du_Value'45'CommutativeMonoid_122
                                                                                                                                                               (coe
                                                                                                                                                                  MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2232
                                                                                                                                                                  (coe
                                                                                                                                                                     v0)))
                                                                                                                                                            (coe
                                                                                                                                                               du_balIn_3436
                                                                                                                                                               (coe
                                                                                                                                                                  v0)
                                                                                                                                                               (coe
                                                                                                                                                                  v1)
                                                                                                                                                               (coe
                                                                                                                                                                  v3))
                                                                                                                                                            (MAlonzo.Code.Ledger.Transaction.d_mint_2786
                                                                                                                                                               (coe
                                                                                                                                                                  MAlonzo.Code.Ledger.Transaction.d_body_2848
                                                                                                                                                                  (coe
                                                                                                                                                                     v1))))
                                                                                                                                                         (coe
                                                                                                                                                            MAlonzo.Code.Ledger.TokenAlgebra.d_inject_206
                                                                                                                                                            (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2232
                                                                                                                                                               (coe
                                                                                                                                                                  v0))
                                                                                                                                                            (coe
                                                                                                                                                               du_refunds_3434
                                                                                                                                                               (coe
                                                                                                                                                                  v0)
                                                                                                                                                               (coe
                                                                                                                                                                  v1)
                                                                                                                                                               (coe
                                                                                                                                                                  v2)
                                                                                                                                                               (coe
                                                                                                                                                                  v3)))))
                                                                                                                                                   (coe
                                                                                                                                                      MAlonzo.Code.Ledger.TokenAlgebra.d_coin_204
                                                                                                                                                      (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2232
                                                                                                                                                         (coe
                                                                                                                                                            v0))
                                                                                                                                                      (coe
                                                                                                                                                         MAlonzo.Code.Ledger.Utxo.du_consumed_2406
                                                                                                                                                         (coe
                                                                                                                                                            v0)
                                                                                                                                                         (coe
                                                                                                                                                            MAlonzo.Code.Ledger.Utxo.d_pparams_1860
                                                                                                                                                            (coe
                                                                                                                                                               v2))
                                                                                                                                                         (coe
                                                                                                                                                            v3)
                                                                                                                                                         (let v43
                                                                                                                                                                = coe
                                                                                                                                                                    C_mkGeneralizeTel_846687
                                                                                                                                                                    (coe
                                                                                                                                                                       v1)
                                                                                                                                                                    (coe
                                                                                                                                                                       v2)
                                                                                                                                                                    (coe
                                                                                                                                                                       v3)
                                                                                                                                                                    (coe
                                                                                                                                                                       v4)
                                                                                                                                                                    (coe
                                                                                                                                                                       v5)
                                                                                                                                                                    (coe
                                                                                                                                                                       v6)
                                                                                                                                                                    (coe
                                                                                                                                                                       v7) in
                                                                                                                                                          coe
                                                                                                                                                            (coe
                                                                                                                                                               MAlonzo.Code.Ledger.Transaction.d_body_2848
                                                                                                                                                               (coe
                                                                                                                                                                  d_'46'generalizedField'45'tx_846671
                                                                                                                                                                  v43)))))
                                                                                                                                                   (let v43
                                                                                                                                                          = MAlonzo.Code.Data.Nat.Properties.d_'8804''45'isPreorder_2680 in
                                                                                                                                                    coe
                                                                                                                                                      (coe
                                                                                                                                                         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                                                                                                                                                         (coe
                                                                                                                                                            MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                                                                                                                                                            (coe
                                                                                                                                                               v43))
                                                                                                                                                         (coe
                                                                                                                                                            MAlonzo.Code.Ledger.TokenAlgebra.d_coin_204
                                                                                                                                                            (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2232
                                                                                                                                                               (coe
                                                                                                                                                                  v0))
                                                                                                                                                            (coe
                                                                                                                                                               MAlonzo.Code.Algebra.Bundles.d__'8729'__840
                                                                                                                                                               (coe
                                                                                                                                                                  MAlonzo.Code.Ledger.TokenAlgebra.du_Value'45'CommutativeMonoid_122
                                                                                                                                                                  (coe
                                                                                                                                                                     MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2232
                                                                                                                                                                     (coe
                                                                                                                                                                        v0)))
                                                                                                                                                               (coe
                                                                                                                                                                  MAlonzo.Code.Algebra.Bundles.d__'8729'__840
                                                                                                                                                                  (coe
                                                                                                                                                                     MAlonzo.Code.Ledger.TokenAlgebra.du_Value'45'CommutativeMonoid_122
                                                                                                                                                                     (coe
                                                                                                                                                                        MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2232
                                                                                                                                                                        (coe
                                                                                                                                                                           v0)))
                                                                                                                                                                  (coe
                                                                                                                                                                     du_balIn_3436
                                                                                                                                                                     (coe
                                                                                                                                                                        v0)
                                                                                                                                                                     (coe
                                                                                                                                                                        v1)
                                                                                                                                                                     (coe
                                                                                                                                                                        v3))
                                                                                                                                                                  (MAlonzo.Code.Ledger.Transaction.d_mint_2786
                                                                                                                                                                     (coe
                                                                                                                                                                        MAlonzo.Code.Ledger.Transaction.d_body_2848
                                                                                                                                                                        (coe
                                                                                                                                                                           v1))))
                                                                                                                                                               (coe
                                                                                                                                                                  MAlonzo.Code.Ledger.TokenAlgebra.d_inject_206
                                                                                                                                                                  (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2232
                                                                                                                                                                     (coe
                                                                                                                                                                        v0))
                                                                                                                                                                  (coe
                                                                                                                                                                     du_refunds_3434
                                                                                                                                                                     (coe
                                                                                                                                                                        v0)
                                                                                                                                                                     (coe
                                                                                                                                                                        v1)
                                                                                                                                                                     (coe
                                                                                                                                                                        v2)
                                                                                                                                                                     (coe
                                                                                                                                                                        v3)))))))
                                                                                                                                                   erased)
                                                                                                                                                erased)
                                                                                                                                             erased)
                                                                                                                                          erased)
                                                                                                                                       erased)
                                                                                                                                    erased)
                                                                                                                                 erased)
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Data.Nat.Properties.du_m'8804'n'43'm_3364
                                                                                                                                 (coe
                                                                                                                                    du_newDeps_3432
                                                                                                                                    (coe
                                                                                                                                       v0)
                                                                                                                                    (coe
                                                                                                                                       v1)
                                                                                                                                    (coe
                                                                                                                                       v2)
                                                                                                                                    (coe
                                                                                                                                       v3))))
                                                                                                                           erased)
                                                                                                                        (MAlonzo.Code.Data.Nat.Properties.d_'8760''45'mono'737''45''8804'_4962
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Ledger.Set.Theory.du_indexedSum'7515'''_1160
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_826
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Ledger.Transaction.d_govStructure_2350
                                                                                                                                    (coe
                                                                                                                                       v0)))
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558))
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3204))
                                                                                                                              (coe
                                                                                                                                 (\ v43 ->
                                                                                                                                    v43))
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Ledger.Utxo.du_updateProposalDeposits_1954
                                                                                                                                 (coe
                                                                                                                                    v0)
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Ledger.Transaction.d_txprop_2796
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Ledger.Transaction.d_body_2848
                                                                                                                                       (coe
                                                                                                                                          v1)))
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Ledger.Transaction.d_txid_2810
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Ledger.Transaction.d_body_2848
                                                                                                                                       (coe
                                                                                                                                          v1)))
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Ledger.PParams.d_govActionDeposit_356
                                                                                                                                    (coe
                                                                                                                                       du_pp_3308
                                                                                                                                       (coe
                                                                                                                                          v2)))
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Ledger.Utxo.d_deposits_1878
                                                                                                                                    (coe
                                                                                                                                       v3))))
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Ledger.Set.Theory.du_indexedSum'7515'''_1160
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_826
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Ledger.Transaction.d_govStructure_2350
                                                                                                                                    (coe
                                                                                                                                       v0)))
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558))
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3204))
                                                                                                                              (coe
                                                                                                                                 (\ v43 ->
                                                                                                                                    v43))
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Ledger.Utxo.du_updateCertDeposits_1942
                                                                                                                                 (coe
                                                                                                                                    v0)
                                                                                                                                 (coe
                                                                                                                                    du_pp_3308
                                                                                                                                    (coe
                                                                                                                                       v2))
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Ledger.Transaction.d_txcerts_2790
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Ledger.Transaction.d_body_2848
                                                                                                                                       (coe
                                                                                                                                          v1)))
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Ledger.Utxo.du_updateProposalDeposits_1954
                                                                                                                                    (coe
                                                                                                                                       v0)
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Ledger.Transaction.d_txprop_2796
                                                                                                                                       (coe
                                                                                                                                          MAlonzo.Code.Ledger.Transaction.d_body_2848
                                                                                                                                          (coe
                                                                                                                                             v1)))
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Ledger.Transaction.d_txid_2810
                                                                                                                                       (coe
                                                                                                                                          MAlonzo.Code.Ledger.Transaction.d_body_2848
                                                                                                                                          (coe
                                                                                                                                             v1)))
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Ledger.PParams.d_govActionDeposit_356
                                                                                                                                       (coe
                                                                                                                                          du_pp_3308
                                                                                                                                          (coe
                                                                                                                                             v2)))
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Ledger.Utxo.d_deposits_1878
                                                                                                                                       (coe
                                                                                                                                          v3)))))
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Ledger.Set.Theory.du_indexedSum'7515'''_1160
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_826
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Ledger.Transaction.d_govStructure_2350
                                                                                                                                    (coe
                                                                                                                                       v0)))
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558))
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3204))
                                                                                                                              (coe
                                                                                                                                 (\ v43 ->
                                                                                                                                    v43))
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Ledger.Utxo.d_deposits_1878
                                                                                                                                 (coe
                                                                                                                                    v3)))
                                                                                                                           (coe
                                                                                                                              du_'8804'updateCertDeps_3140
                                                                                                                              (coe
                                                                                                                                 v0)
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Ledger.Transaction.d_txcerts_2790
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Ledger.Transaction.d_body_2848
                                                                                                                                    (coe
                                                                                                                                       v1)))
                                                                                                                              (coe
                                                                                                                                 du_pp_3308
                                                                                                                                 (coe
                                                                                                                                    v2))
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Ledger.Utxo.du_updateProposalDeposits_1954
                                                                                                                                 (coe
                                                                                                                                    v0)
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Ledger.Transaction.d_txprop_2796
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Ledger.Transaction.d_body_2848
                                                                                                                                       (coe
                                                                                                                                          v1)))
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Ledger.Transaction.d_txid_2810
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Ledger.Transaction.d_body_2848
                                                                                                                                       (coe
                                                                                                                                          v1)))
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Ledger.PParams.d_govActionDeposit_356
                                                                                                                                    (coe
                                                                                                                                       du_pp_3308
                                                                                                                                       (coe
                                                                                                                                          v2)))
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Ledger.Utxo.d_deposits_1878
                                                                                                                                    (coe
                                                                                                                                       v3)))
                                                                                                                              (coe
                                                                                                                                 v9))))
                                                                                                                     erased))
                                                                                                        _ -> MAlonzo.RTE.mazUnreachableError
                                                                                                 _ -> MAlonzo.RTE.mazUnreachableError
                                                                                          _ -> MAlonzo.RTE.mazUnreachableError
                                                                                   _ -> MAlonzo.RTE.mazUnreachableError
                                                                            _ -> MAlonzo.RTE.mazUnreachableError
                                                                     _ -> MAlonzo.RTE.mazUnreachableError
                                                              _ -> MAlonzo.RTE.mazUnreachableError
                                                       _ -> MAlonzo.RTE.mazUnreachableError
                                                _ -> MAlonzo.RTE.mazUnreachableError
                                         _ -> MAlonzo.RTE.mazUnreachableError
                                  _ -> MAlonzo.RTE.mazUnreachableError
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo.Properties._._.pp
d_pp_3308 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
    MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
    MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
   MAlonzo.Code.Data.Nat.Base.T__'8804'__22) ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2838 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1850 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1864 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  (MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Ledger.Utxo.T_inInterval_2082 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 -> AgdaAny) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Nat.Base.T__'8804'__22) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Sum.Relation.Unary.All.T_All_44) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  (MAlonzo.Code.Ledger.Address.T_RwdAddr_76 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  MAlonzo.Code.Ledger.Utxo.T__'8801''63'__2598 ->
  MAlonzo.Code.Ledger.Utxo.T__'8801''63'__2598 ->
  MAlonzo.Code.Ledger.Utxo.T__'8866'_'8640''10631'_'44'UTXOS'10632'__2422 ->
  MAlonzo.Code.Data.List.Relation.Unary.All.T_All_44 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pp_3308 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8 ~v9 ~v10 ~v11 ~v12
          ~v13 ~v14 ~v15 ~v16 ~v17 ~v18 ~v19 ~v20 ~v21 ~v22 ~v23 ~v24 ~v25
          ~v26 ~v27
  = du_pp_3308 v5
du_pp_3308 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1850 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244
du_pp_3308 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_pparams_1860 (coe v0)
-- Ledger.Utxo.Properties._._.newDeps
d_newDeps_3432 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
    MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
    MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
   MAlonzo.Code.Data.Nat.Base.T__'8804'__22) ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2838 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1850 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1864 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  (MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Ledger.Utxo.T_inInterval_2082 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 -> AgdaAny) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Nat.Base.T__'8804'__22) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Sum.Relation.Unary.All.T_All_44) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  (MAlonzo.Code.Ledger.Address.T_RwdAddr_76 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  MAlonzo.Code.Ledger.Utxo.T__'8801''63'__2598 ->
  MAlonzo.Code.Ledger.Utxo.T__'8801''63'__2598 ->
  MAlonzo.Code.Ledger.Utxo.T__'8866'_'8640''10631'_'44'UTXOS'10632'__2422 ->
  MAlonzo.Code.Data.List.Relation.Unary.All.T_All_44 -> Integer
d_newDeps_3432 v0 ~v1 ~v2 ~v3 v4 v5 v6 ~v7 ~v8 ~v9 ~v10 ~v11 ~v12
               ~v13 ~v14 ~v15 ~v16 ~v17 ~v18 ~v19 ~v20 ~v21 ~v22 ~v23 ~v24 ~v25
               ~v26 ~v27
  = du_newDeps_3432 v0 v4 v5 v6
du_newDeps_3432 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2838 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1850 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1864 -> Integer
du_newDeps_3432 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Utxo.du_newDeposits_2398 (coe v0)
      (coe du_pp_3308 (coe v2)) (coe v3)
      (coe MAlonzo.Code.Ledger.Transaction.d_body_2848 (coe v1))
-- Ledger.Utxo.Properties._._.refunds
d_refunds_3434 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
    MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
    MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
   MAlonzo.Code.Data.Nat.Base.T__'8804'__22) ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2838 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1850 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1864 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  (MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Ledger.Utxo.T_inInterval_2082 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 -> AgdaAny) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Nat.Base.T__'8804'__22) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Sum.Relation.Unary.All.T_All_44) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  (MAlonzo.Code.Ledger.Address.T_RwdAddr_76 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  MAlonzo.Code.Ledger.Utxo.T__'8801''63'__2598 ->
  MAlonzo.Code.Ledger.Utxo.T__'8801''63'__2598 ->
  MAlonzo.Code.Ledger.Utxo.T__'8866'_'8640''10631'_'44'UTXOS'10632'__2422 ->
  MAlonzo.Code.Data.List.Relation.Unary.All.T_All_44 -> Integer
d_refunds_3434 v0 ~v1 ~v2 ~v3 v4 v5 v6 ~v7 ~v8 ~v9 ~v10 ~v11 ~v12
               ~v13 ~v14 ~v15 ~v16 ~v17 ~v18 ~v19 ~v20 ~v21 ~v22 ~v23 ~v24 ~v25
               ~v26 ~v27
  = du_refunds_3434 v0 v4 v5 v6
du_refunds_3434 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2838 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1850 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1864 -> Integer
du_refunds_3434 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Utxo.du_depositRefunds_2390 (coe v0)
      (coe du_pp_3308 (coe v2)) (coe v3)
      (coe MAlonzo.Code.Ledger.Transaction.d_body_2848 (coe v1))
-- Ledger.Utxo.Properties._._.balIn
d_balIn_3436 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
    MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
    MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
   MAlonzo.Code.Data.Nat.Base.T__'8804'__22) ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2838 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1850 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1864 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  (MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Ledger.Utxo.T_inInterval_2082 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 -> AgdaAny) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Nat.Base.T__'8804'__22) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Sum.Relation.Unary.All.T_All_44) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  (MAlonzo.Code.Ledger.Address.T_RwdAddr_76 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  MAlonzo.Code.Ledger.Utxo.T__'8801''63'__2598 ->
  MAlonzo.Code.Ledger.Utxo.T__'8801''63'__2598 ->
  MAlonzo.Code.Ledger.Utxo.T__'8866'_'8640''10631'_'44'UTXOS'10632'__2422 ->
  MAlonzo.Code.Data.List.Relation.Unary.All.T_All_44 -> AgdaAny
d_balIn_3436 v0 ~v1 ~v2 ~v3 v4 ~v5 v6 ~v7 ~v8 ~v9 ~v10 ~v11 ~v12
             ~v13 ~v14 ~v15 ~v16 ~v17 ~v18 ~v19 ~v20 ~v21 ~v22 ~v23 ~v24 ~v25
             ~v26 ~v27
  = du_balIn_3436 v0 v4 v6
du_balIn_3436 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2838 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1864 -> AgdaAny
du_balIn_3436 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Utxo.du_balance_1900 (coe v0)
      (coe
         MAlonzo.Code.Axiom.Set.Map.du__'8739'__1256
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1458
            (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
         (coe
            MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588
            MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
            (coe
               MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
               (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1194 (coe v0))
               (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1192 (coe v0))))
         (coe MAlonzo.Code.Ledger.Utxo.d_utxo_1874 (coe v2))
         (coe
            MAlonzo.Code.Ledger.Transaction.d_txins_2778
            (coe MAlonzo.Code.Ledger.Transaction.d_body_2848 (coe v1))))
-- Ledger.Utxo.Properties._._.balOut
d_balOut_3438 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
    MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
    MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
   MAlonzo.Code.Data.Nat.Base.T__'8804'__22) ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2838 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1850 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1864 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  (MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Ledger.Utxo.T_inInterval_2082 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 -> AgdaAny) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Nat.Base.T__'8804'__22) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Sum.Relation.Unary.All.T_All_44) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  (MAlonzo.Code.Ledger.Address.T_RwdAddr_76 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  MAlonzo.Code.Ledger.Utxo.T__'8801''63'__2598 ->
  MAlonzo.Code.Ledger.Utxo.T__'8801''63'__2598 ->
  MAlonzo.Code.Ledger.Utxo.T__'8866'_'8640''10631'_'44'UTXOS'10632'__2422 ->
  MAlonzo.Code.Data.List.Relation.Unary.All.T_All_44 -> AgdaAny
d_balOut_3438 v0 ~v1 ~v2 ~v3 v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 ~v11 ~v12
              ~v13 ~v14 ~v15 ~v16 ~v17 ~v18 ~v19 ~v20 ~v21 ~v22 ~v23 ~v24 ~v25
              ~v26 ~v27
  = du_balOut_3438 v0 v4
du_balOut_3438 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2838 -> AgdaAny
du_balOut_3438 v0 v1
  = coe
      MAlonzo.Code.Ledger.Utxo.du_balance_1900 (coe v0)
      (coe
         MAlonzo.Code.Ledger.Utxo.du_outs_1894
         (coe MAlonzo.Code.Ledger.Transaction.d_body_2848 (coe v1)))
-- Ledger.Utxo.Properties._..generalizedField-tx
d_'46'generalizedField'45'tx_846671 ::
  T_GeneralizeTel_846685 -> MAlonzo.Code.Ledger.Transaction.T_Tx_2838
d_'46'generalizedField'45'tx_846671
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo.Properties._..generalizedField-Γ
d_'46'generalizedField'45'Γ_846673 ::
  T_GeneralizeTel_846685 -> MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1850
d_'46'generalizedField'45'Γ_846673
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo.Properties._..generalizedField-utxoState
d_'46'generalizedField'45'utxoState_846675 ::
  T_GeneralizeTel_846685 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1864
d_'46'generalizedField'45'utxoState_846675
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo.Properties._..generalizedField-utxo'
d_'46'generalizedField'45'utxo''_846677 ::
  T_GeneralizeTel_846685 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'utxo''_846677
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo.Properties._..generalizedField-fees'
d_'46'generalizedField'45'fees''_846679 ::
  T_GeneralizeTel_846685 -> Integer
d_'46'generalizedField'45'fees''_846679
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo.Properties._..generalizedField-deposits'
d_'46'generalizedField'45'deposits''_846681 ::
  T_GeneralizeTel_846685 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'deposits''_846681
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo.Properties._..generalizedField-donations'
d_'46'generalizedField'45'donations''_846683 ::
  T_GeneralizeTel_846685 -> Integer
d_'46'generalizedField'45'donations''_846683
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo.Properties._.GeneralizeTel
d_GeneralizeTel_846685 a0 a1 a2 a3 = ()
data T_GeneralizeTel_846685
  = C_mkGeneralizeTel_846687 MAlonzo.Code.Ledger.Transaction.T_Tx_2838
                             MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1850
                             MAlonzo.Code.Ledger.Utxo.T_UTxOState_1864
                             MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 Integer
                             MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 Integer
