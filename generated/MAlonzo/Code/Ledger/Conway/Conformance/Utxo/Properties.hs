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

module MAlonzo.Code.Ledger.Conway.Conformance.Utxo.Properties where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Bool
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Axiom.Set
import qualified MAlonzo.Code.Axiom.Set.Map
import qualified MAlonzo.Code.Class.Bifunctor
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Class.DecEq.Instances
import qualified MAlonzo.Code.Class.Decidable.Core
import qualified MAlonzo.Code.Class.Decidable.Instances
import qualified MAlonzo.Code.Class.Functor.Core
import qualified MAlonzo.Code.Data.Product.Base
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Function.Bundles
import qualified MAlonzo.Code.Interface.ComputationalRelation
import qualified MAlonzo.Code.Interface.IsSet
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Abstract
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Address
import qualified MAlonzo.Code.Ledger.Conway.Conformance.PParams
import qualified MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Transaction
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Utxo
import qualified MAlonzo.Code.Ledger.Prelude
import qualified MAlonzo.Code.Ledger.Set.Theory
import qualified MAlonzo.Code.Prelude
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects

-- Ledger.Conway.Conformance.Utxo.Properties._._⊢_⇀⦇_,UTXOS⦈_
d__'8866'_'8640''10631'_'44'UTXOS'10632'__1848 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Utxo.Properties._._⊢_⇀⦇_,UTXO⦈_
d__'8866'_'8640''10631'_'44'UTXO'10632'__1850 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Utxo.Properties._.Dec-inInterval
d_Dec'45'inInterval_1852 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1740 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'inInterval_1852 v0 ~v1 = du_Dec'45'inInterval_1852 v0
du_Dec'45'inInterval_1852 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'inInterval_1852 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Utxo.du_Dec'45'inInterval_2306
      (coe v0)
-- Ledger.Conway.Conformance.Utxo.Properties._.≟?
d_'8799''63'_1936 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1740 ->
  () ->
  Maybe AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_'8799''63'_1936 ~v0 ~v1 = du_'8799''63'_1936
du_'8799''63'_1936 ::
  () ->
  Maybe AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_'8799''63'_1936 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Utxo.du_'8799''63'_2668 v1
      v2 v3
-- Ledger.Conway.Conformance.Utxo.Properties.Computational-UTXOS
d_Computational'45'UTXOS_1994 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1740 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'UTXOS_1994 v0 v1
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.C_MkComputational_412
      (d_computeProof_2088 (coe v0) (coe v1))
-- Ledger.Conway.Conformance.Utxo.Properties._.go.computeProof
d_computeProof_2088 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1740 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Utxo.T_UTxOEnv_1942 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Utxo.T_UTxOState_1956 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2884 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
d_computeProof_2088 v0 v1 v2 v3 v4
  = let v5
          = coe
              MAlonzo.Code.Data.Product.Base.du__'44''8242'__84
              (MAlonzo.Code.Class.Decidable.Core.d_dec_16
                 (coe
                    MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                    (coe
                       MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_Scripts'45'Yes'45'premises_2278
                       (coe v0) (coe v1) (coe v2) (coe v3) (coe v4))))
              (MAlonzo.Code.Class.Decidable.Core.d_dec_16
                 (coe
                    MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                    (coe
                       MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_Scripts'45'No'45'premises_2280
                       (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)))) in
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
                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Utxo.C_'10214'_'44'_'44'_'44'_'10215''7512'_1974
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
                                                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_utxo_1966
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
                                                                                                          MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_DecEq'45'TxId_1220
                                                                                                          (coe
                                                                                                             v0))
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_DecEq'45'Ix_1218
                                                                                                          (coe
                                                                                                             v0)))
                                                                                                    (MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txins_2824
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2894
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
                                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Utxo.du_outs_2082
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2894
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
                                                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_DecEq'45'TxId_1220
                                                                                                             (coe
                                                                                                                v0))
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_DecEq'45'Ix_1218
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
                                                                                                                         MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_utxo_1966
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
                                                                                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_DecEq'45'TxId_1220
                                                                                                                                  (coe
                                                                                                                                     v0))
                                                                                                                               (coe
                                                                                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_DecEq'45'Ix_1218
                                                                                                                                  (coe
                                                                                                                                     v0)))
                                                                                                                            (MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txins_2824
                                                                                                                               (coe
                                                                                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2894
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
                                                                         MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txfee_2830
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2894
                                                                            (coe v4)))
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_fees_1968
                                                                         (coe v3)))
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Conway.Conformance.Utxo.du_updateCertDepositsUtxo_1866
                                                                      (coe v0)
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_pparams_1952
                                                                         (coe v2))
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txcerts_2836
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2894
                                                                            (coe v4)))
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Conway.Conformance.Utxo.du_updateProposalDeposits_1878
                                                                         (coe v0)
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txprop_2842
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2894
                                                                               (coe v4)))
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txid_2856
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2894
                                                                               (coe v4)))
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_govActionDeposit_376
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_pparams_1952
                                                                               (coe v2)))
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_deposits_1970
                                                                            (coe v3))))
                                                                   (coe
                                                                      addInt
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txdonation_2844
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2894
                                                                            (coe v4)))
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_donations_1972
                                                                         (coe v3))))
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Utxo.C_Scripts'45'Yes_2196
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
                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Utxo.C_'10214'_'44'_'44'_'44'_'10215''7512'_1974
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
                                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_utxo_1966
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
                                                                                            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_DecEq'45'TxId_1220
                                                                                            (coe
                                                                                               v0))
                                                                                         (coe
                                                                                            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_DecEq'45'Ix_1218
                                                                                            (coe
                                                                                               v0)))
                                                                                      (MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_collateral_2858
                                                                                         (coe
                                                                                            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2894
                                                                                            (coe
                                                                                               v4)))))
                                                                                (\ v15 ->
                                                                                   MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                     (coe v15)))))
                                                                       (coe
                                                                          (\ v15 v16 v17 v18 v19 ->
                                                                             coe
                                                                               MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                               (MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_utxo_1966
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
                                                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_utxo_1966
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
                                                                                                          MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_DecEq'45'TxId_1220
                                                                                                          (coe
                                                                                                             v0))
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_DecEq'45'Ix_1218
                                                                                                          (coe
                                                                                                             v0)))
                                                                                                    (MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_collateral_2858
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2894
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
                                                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_utxo_1966
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
                                                                                                          MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_DecEq'45'TxId_1220
                                                                                                          (coe
                                                                                                             v0))
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_DecEq'45'Ix_1218
                                                                                                          (coe
                                                                                                             v0)))
                                                                                                    (MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_collateral_2858
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2894
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
                                                                          MAlonzo.Code.Ledger.Conway.Conformance.Utxo.du_cbalance_2094
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
                                                                                         MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_utxo_1966
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
                                                                                               MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_DecEq'45'TxId_1220
                                                                                               (coe
                                                                                                  v0))
                                                                                            (coe
                                                                                               MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_DecEq'45'Ix_1218
                                                                                               (coe
                                                                                                  v0)))
                                                                                         (MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_collateral_2858
                                                                                            (coe
                                                                                               MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2894
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
                                                                                     (MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_utxo_1966
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
                                                                                                       MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_utxo_1966
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
                                                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_DecEq'45'TxId_1220
                                                                                                             (coe
                                                                                                                v0))
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_DecEq'45'Ix_1218
                                                                                                             (coe
                                                                                                                v0)))
                                                                                                       (MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_collateral_2858
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2894
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
                                                                                                       MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_utxo_1966
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
                                                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_DecEq'45'TxId_1220
                                                                                                             (coe
                                                                                                                v0))
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_DecEq'45'Ix_1218
                                                                                                             (coe
                                                                                                                v0)))
                                                                                                       (MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_collateral_2858
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2894
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
                                                                          MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_fees_1968
                                                                          (coe v3)))
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_deposits_1970
                                                                       (coe v3))
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_donations_1972
                                                                       (coe v3)))
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Utxo.C_Scripts'45'No_2276
                                                                    v14))
                                                       _ -> coe v10
                                                _ -> coe v10
                                         _ -> MAlonzo.RTE.mazUnreachableError
                                  _ -> coe v10))
                _ -> MAlonzo.RTE.mazUnreachableError
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Conway.Conformance.Utxo.Properties._.go.completeness
d_completeness_2098 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1740 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Utxo.T_UTxOEnv_1942 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Utxo.T_UTxOState_1956 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2884 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Utxo.T_UTxOState_1956 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Utxo.T__'8866'_'8640''10631'_'44'UTXOS'10632'__2116 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_completeness_2098 = erased
-- Ledger.Conway.Conformance.Utxo.Properties.Computational-UTXO
d_Computational'45'UTXO_2128 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1740 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'UTXO_2128 v0 v1
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.C_MkComputational_412
      (d_computeProof_2206 (coe v0) (coe v1))
-- Ledger.Conway.Conformance.Utxo.Properties._.Go.computeProofH
d_computeProofH_2168 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1740 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Utxo.T_UTxOEnv_1942 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Utxo.T_UTxOState_1956 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2884 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
d_computeProofH_2168 v0 v1 v2 v3 v4 v5
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
                                                                                                                        -> case coe
                                                                                                                                  v36 of
                                                                                                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v37 v38
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
                                                                                                                                          (\ v39
                                                                                                                                             v40 ->
                                                                                                                                             coe
                                                                                                                                               MAlonzo.Code.Ledger.Conway.Conformance.Utxo.C_UTXO'45'inductive_2784
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
                                                                                                                                                                                               v37)
                                                                                                                                                                                            (coe
                                                                                                                                                                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                                               (coe
                                                                                                                                                                                                  v38)
                                                                                                                                                                                               (coe
                                                                                                                                                                                                  v40))))))))))))))))))))
                                                                                                                                    (d_computeProof_2088
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
                    _ -> MAlonzo.RTE.mazUnreachableError
             else coe
                    seq (coe v7)
                    (coe
                       MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                       (let v8
                              = coe
                                  MAlonzo.Code.Ledger.Prelude.du_dec'45'de'45'morgan_28
                                  (coe
                                     MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_22
                                     (coe
                                        MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                                        (coe
                                           MAlonzo.Code.Ledger.Set.Theory.du_DecEq'45'ℙ_256
                                           (coe
                                              MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 ()
                                              erased () erased
                                              (MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_DecEq'45'TxId_1220
                                                 (coe v0))
                                              (MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_DecEq'45'Ix_1218
                                                 (coe v0))))
                                        (coe
                                           MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txins_2824
                                           (coe
                                              MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2894
                                              (coe v4)))
                                        (coe
                                           MAlonzo.Code.Axiom.Set.du_'8709'_430
                                           (coe
                                              MAlonzo.Code.Axiom.Set.d_th_1458
                                              (coe
                                                 MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))))
                                     (coe
                                        MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_18))
                                  erased in
                        coe
                          (case coe v8 of
                             MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v9
                               -> coe
                                    ("\172\n.TransactionStructure.TxBody.txins\n(.TransactionStructure.Tx.body tx)\n\8802\n.HasEmptySet.\8709\n(Interface.HasEmptySet.Instances.HasEmptySet-Set\n (.Axiom.Set.Theory\7496.th List-Model\7496))"
                                     ::
                                     Data.Text.Text)
                             MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v9
                               -> let v10
                                        = coe
                                            MAlonzo.Code.Ledger.Prelude.du_dec'45'de'45'morgan_28
                                            (coe
                                               MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1622
                                               (coe
                                                  MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)
                                               (coe
                                                  (\ v10 ->
                                                     coe
                                                       MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1660
                                                       (coe
                                                          MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)
                                                       (coe
                                                          MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                          () erased () erased
                                                          (MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_DecEq'45'TxId_1220
                                                             (coe v0))
                                                          (MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_DecEq'45'Ix_1218
                                                             (coe v0)))
                                                       (coe v10)
                                                       (coe
                                                          MAlonzo.Code.Interface.IsSet.du_dom_540
                                                          (coe
                                                             MAlonzo.Code.Axiom.Set.d_th_1458
                                                             (coe
                                                                MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                          (coe
                                                             MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_548)
                                                          (coe
                                                             MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_utxo_1966
                                                             (coe v3)))))
                                               (coe
                                                  MAlonzo.Code.Axiom.Set.du__'8746'__668
                                                  (coe
                                                     MAlonzo.Code.Axiom.Set.d_th_1458
                                                     (coe
                                                        MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txins_2824
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2894
                                                        (coe v4)))
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_refInputs_2826
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2894
                                                        (coe v4)))))
                                            erased in
                                  coe
                                    (case coe v10 of
                                       MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v11
                                         -> coe
                                              ("\172\n(.Axiom.Set.Theory\7496.th List-Model\7496 Axiom.Set.Theory.\8838\n (.Axiom.Set.Theory\7496.th List-Model\7496 Axiom.Set.Theory.\8746\n  .TransactionStructure.TxBody.txins\n  (.TransactionStructure.Tx.body tx))\n (.TransactionStructure.TxBody.refInputs\n  (.TransactionStructure.Tx.body tx)))\n(Interface.IsSet.dom (.Axiom.Set.Theory\7496.th List-Model\7496)\n (.Ledger.Conway.Conformance.Utxo.UTxOState.utxo s))"
                                               ::
                                               Data.Text.Text)
                                       MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v11
                                         -> let v12
                                                  = coe
                                                      MAlonzo.Code.Ledger.Prelude.du_dec'45'de'45'morgan_28
                                                      (coe
                                                         MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                                                         (coe
                                                            MAlonzo.Code.Ledger.Set.Theory.du_DecEq'45'ℙ_256
                                                            (coe
                                                               MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                               () erased () erased
                                                               (MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_DecEq'45'TxId_1220
                                                                  (coe v0))
                                                               (MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_DecEq'45'Ix_1218
                                                                  (coe v0))))
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
                                                                  MAlonzo.Code.Agda.Primitive.d_lzero_20
                                                                  erased
                                                                  MAlonzo.Code.Agda.Primitive.d_lzero_20
                                                                  erased
                                                                  (MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_DecEq'45'TxId_1220
                                                                     (coe v0))
                                                                  (MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_DecEq'45'Ix_1218
                                                                     (coe v0))))
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txins_2824
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2894
                                                                  (coe v4)))
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_refInputs_2826
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2894
                                                                  (coe v4))))
                                                         (coe
                                                            MAlonzo.Code.Axiom.Set.du_'8709'_430
                                                            (coe
                                                               MAlonzo.Code.Axiom.Set.d_th_1458
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))))
                                                      erased in
                                            coe
                                              (case coe v12 of
                                                 MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v13
                                                   -> coe
                                                        ("\172\n(.Axiom.Set.Theory\7496.th List-Model\7496 Axiom.Set.Theory.Intersection.\8745\n .Axiom.Set.Theory\7496.\8712-sp List-Model\7496)\n(.TransactionStructure.TxBody.txins\n (.TransactionStructure.Tx.body tx))\n(.TransactionStructure.TxBody.refInputs\n (.TransactionStructure.Tx.body tx))\n\8801\n.HasEmptySet.\8709\n(Interface.HasEmptySet.Instances.HasEmptySet-Set\n (.Axiom.Set.Theory\7496.th List-Model\7496))"
                                                         ::
                                                         Data.Text.Text)
                                                 MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v13
                                                   -> let v14
                                                            = coe
                                                                MAlonzo.Code.Ledger.Prelude.du_dec'45'de'45'morgan_28
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Utxo.du_Dec'45'inInterval_2306
                                                                   (coe v0)
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_slot_1950
                                                                      (coe v2))
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txvldt_2834
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2894
                                                                         (coe v4))))
                                                                erased in
                                                      coe
                                                        (case coe v14 of
                                                           MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v15
                                                             -> coe
                                                                  ("\172\nLedger.Conway.Conformance.Utxo.inInterval txs abs\n(.Ledger.Conway.Conformance.Utxo.UTxOEnv.slot \915)\n(.TransactionStructure.TxBody.txvldt\n (.TransactionStructure.Tx.body tx))"
                                                                   ::
                                                                   Data.Text.Text)
                                                           MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v15
                                                             -> let v16
                                                                      = coe
                                                                          MAlonzo.Code.Ledger.Prelude.du_dec'45'de'45'morgan_28
                                                                          (coe
                                                                             MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                                                                             (coe
                                                                                MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_feesOK_2442
                                                                                (coe v0) (coe v1)
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_pparams_1952
                                                                                   (coe v2))
                                                                                (coe v4)
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_utxo_1966
                                                                                   (coe v3)))
                                                                             (coe
                                                                                MAlonzo.Code.Agda.Builtin.Bool.C_true_10))
                                                                          erased in
                                                                coe
                                                                  (case coe v16 of
                                                                     MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v17
                                                                       -> coe
                                                                            ("\172\nLedger.Conway.Conformance.Utxo.feesOK txs abs\n(.Ledger.Conway.Conformance.Utxo.UTxOEnv.pparams \915) tx\n(.Ledger.Conway.Conformance.Utxo.UTxOState.utxo s)\n\8801 true"
                                                                             ::
                                                                             Data.Text.Text)
                                                                     MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v17
                                                                       -> let v18
                                                                                = coe
                                                                                    MAlonzo.Code.Ledger.Prelude.du_dec'45'de'45'morgan_28
                                                                                    (coe
                                                                                       MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.d_DecEq'45'Value_226
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_tokenAlgebra_2280
                                                                                             (coe
                                                                                                v0)))
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Conway.Conformance.Utxo.du_consumed_2626
                                                                                          (coe v0)
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_pparams_1952
                                                                                             (coe
                                                                                                v2))
                                                                                          (coe v3)
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2894
                                                                                             (coe
                                                                                                v4)))
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Conway.Conformance.Utxo.du_produced_2634
                                                                                          (coe v0)
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_pparams_1952
                                                                                             (coe
                                                                                                v2))
                                                                                          (coe v3)
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2894
                                                                                             (coe
                                                                                                v4))))
                                                                                    erased in
                                                                          coe
                                                                            (case coe v18 of
                                                                               MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v19
                                                                                 -> coe
                                                                                      ("\172\nLedger.Conway.Conformance.Utxo.consumed txs abs\n(.Ledger.Conway.Conformance.Utxo.UTxOEnv.pparams \915) s\n(.TransactionStructure.Tx.body tx)\n\8801\nLedger.Conway.Conformance.Utxo.produced txs abs\n(.Ledger.Conway.Conformance.Utxo.UTxOEnv.pparams \915) s\n(.TransactionStructure.Tx.body tx)"
                                                                                       ::
                                                                                       Data.Text.Text)
                                                                               MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v19
                                                                                 -> let v20
                                                                                          = coe
                                                                                              MAlonzo.Code.Ledger.Prelude.du_dec'45'de'45'morgan_28
                                                                                              (coe
                                                                                                 MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.d_coin_208
                                                                                                    (MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_tokenAlgebra_2280
                                                                                                       (coe
                                                                                                          v0))
                                                                                                    (MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_mint_2832
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2894
                                                                                                          (coe
                                                                                                             v4))))
                                                                                                 (coe
                                                                                                    (0 ::
                                                                                                       Integer)))
                                                                                              erased in
                                                                                    coe
                                                                                      (case coe
                                                                                              v20 of
                                                                                         MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v21
                                                                                           -> coe
                                                                                                ("\172\n.Ledger.Conway.Conformance.TokenAlgebra.TokenAlgebra.coin\n(.TransactionStructure.tokenAlgebra txs)\n(.TransactionStructure.TxBody.mint\n (.TransactionStructure.Tx.body tx))\n\8801 0"
                                                                                                 ::
                                                                                                 Data.Text.Text)
                                                                                         MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v21
                                                                                           -> let v22
                                                                                                    = coe
                                                                                                        MAlonzo.Code.Ledger.Prelude.du_dec'45'de'45'morgan_28
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_74
                                                                                                           (MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txsize_2854
                                                                                                              (coe
                                                                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2894
                                                                                                                 (coe
                                                                                                                    v4)))
                                                                                                           (MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxTxSize_318
                                                                                                              (coe
                                                                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_pparams_1952
                                                                                                                 (coe
                                                                                                                    v2))))
                                                                                                        erased in
                                                                                              coe
                                                                                                (case coe
                                                                                                        v22 of
                                                                                                   MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v23
                                                                                                     -> coe
                                                                                                          ("\172\n(\8469-hasPreorder HasPreorder.\8804\n .TransactionStructure.TxBody.txsize\n (.TransactionStructure.Tx.body tx))\n(.Ledger.Conway.Conformance.PParams.PParams.maxTxSize\n (.Ledger.Conway.Conformance.Utxo.UTxOEnv.pparams \915))"
                                                                                                           ::
                                                                                                           Data.Text.Text)
                                                                                                   MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v23
                                                                                                     -> let v24
                                                                                                              = coe
                                                                                                                  MAlonzo.Code.Ledger.Prelude.du_dec'45'de'45'morgan_28
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_74
                                                                                                                     (MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_refScriptsSize_2098
                                                                                                                        (coe
                                                                                                                           v0)
                                                                                                                        (coe
                                                                                                                           v1)
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_utxo_1966
                                                                                                                           (coe
                                                                                                                              v3))
                                                                                                                        (coe
                                                                                                                           v4))
                                                                                                                     (MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxRefScriptSizePerTx_346
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_pparams_1952
                                                                                                                           (coe
                                                                                                                              v2))))
                                                                                                                  erased in
                                                                                                        coe
                                                                                                          (case coe
                                                                                                                  v24 of
                                                                                                             MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v25
                                                                                                               -> coe
                                                                                                                    ("\172\n(\8469-hasPreorder HasPreorder.\8804\n Ledger.Conway.Conformance.Utxo.refScriptsSize txs abs\n (.Ledger.Conway.Conformance.Utxo.UTxOState.utxo s) tx)\n(.Ledger.Conway.Conformance.PParams.PParams.maxRefScriptSizePerTx\n (.Ledger.Conway.Conformance.Utxo.UTxOEnv.pparams \915))"
                                                                                                                     ::
                                                                                                                     Data.Text.Text)
                                                                                                             MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v25
                                                                                                               -> let v26
                                                                                                                        = coe
                                                                                                                            MAlonzo.Code.Ledger.Prelude.du_dec'45'de'45'morgan_28
                                                                                                                            (coe
                                                                                                                               MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1622
                                                                                                                               (coe
                                                                                                                                  MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)
                                                                                                                               (coe
                                                                                                                                  (\ v26 ->
                                                                                                                                     coe
                                                                                                                                       MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.d_Dec'45''8804''7511'_228
                                                                                                                                       (MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_tokenAlgebra_2280
                                                                                                                                          (coe
                                                                                                                                             v0))
                                                                                                                                       (coe
                                                                                                                                          MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.d_inject_210
                                                                                                                                          (MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_tokenAlgebra_2280
                                                                                                                                             (coe
                                                                                                                                                v0))
                                                                                                                                          (mulInt
                                                                                                                                             (coe
                                                                                                                                                MAlonzo.Code.Ledger.Conway.Conformance.Utxo.du_utxoEntrySize_2644
                                                                                                                                                (coe
                                                                                                                                                   v0)
                                                                                                                                                (coe
                                                                                                                                                   MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                                                                                   (coe
                                                                                                                                                      v26)))
                                                                                                                                             (coe
                                                                                                                                                MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_minUTxOValue_354
                                                                                                                                                (coe
                                                                                                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_pparams_1952
                                                                                                                                                   (coe
                                                                                                                                                      v2)))))
                                                                                                                                       (coe
                                                                                                                                          MAlonzo.Code.Ledger.Conway.Conformance.Transaction.du_getValue'688'_2918
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                                                                             (coe
                                                                                                                                                v26)))))
                                                                                                                               (coe
                                                                                                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                  (coe
                                                                                                                                     MAlonzo.Code.Axiom.Set.Map.du_mapValues_864
                                                                                                                                     (coe
                                                                                                                                        MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                                                        (coe
                                                                                                                                           MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                                                     (coe
                                                                                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txOutHash_2908
                                                                                                                                        (coe
                                                                                                                                           v0))
                                                                                                                                     (coe
                                                                                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txouts_2828
                                                                                                                                        (coe
                                                                                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2894
                                                                                                                                           (coe
                                                                                                                                              v4))))))
                                                                                                                            erased in
                                                                                                                  coe
                                                                                                                    (case coe
                                                                                                                            v26 of
                                                                                                                       MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v27
                                                                                                                         -> coe
                                                                                                                              ("\172\nInterface.IsSet.All-syntax (.Axiom.Set.Theory\7496.th List-Model\7496)\n(\955 .patternInTele0 \8594\n   (.TransactionStructure.tokenAlgebra txs\n    Ledger.Conway.Conformance.TokenAlgebra.TokenAlgebra.\8804\7511\n    .Ledger.Conway.Conformance.TokenAlgebra.TokenAlgebra.inject\n    (.TransactionStructure.tokenAlgebra txs)\n    (Ledger.Conway.Conformance.Utxo.utxoEntrySize txs abs\n     (.proj\8322 .patternInTele0)\n     *\n     .Ledger.Conway.Conformance.PParams.PParams.minUTxOValue\n     (.Ledger.Conway.Conformance.Utxo.UTxOEnv.pparams \915)))\n   (TransactionStructure.getValue\688 txs (.proj\8322 .patternInTele0)))\n(.proj\8321\n (Axiom.Set.Map.mapValues (.Axiom.Set.Theory\7496.th List-Model\7496)\n  (TransactionStructure.txOutHash txs)\n  (.TransactionStructure.TxBody.txouts\n   (.TransactionStructure.Tx.body tx))))"
                                                                                                                               ::
                                                                                                                               Data.Text.Text)
                                                                                                                       MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v27
                                                                                                                         -> let v28
                                                                                                                                  = coe
                                                                                                                                      MAlonzo.Code.Ledger.Prelude.du_dec'45'de'45'morgan_28
                                                                                                                                      (coe
                                                                                                                                         MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1622
                                                                                                                                         (coe
                                                                                                                                            MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)
                                                                                                                                         (coe
                                                                                                                                            (\ v28 ->
                                                                                                                                               coe
                                                                                                                                                 MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_74
                                                                                                                                                 (coe
                                                                                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Abstract.d_serSize_1754
                                                                                                                                                    v1
                                                                                                                                                    (coe
                                                                                                                                                       MAlonzo.Code.Ledger.Conway.Conformance.Transaction.du_getValue'688'_2918
                                                                                                                                                       (coe
                                                                                                                                                          MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                                                                                          (coe
                                                                                                                                                             v28))))
                                                                                                                                                 (MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxValSize_326
                                                                                                                                                    (coe
                                                                                                                                                       MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_pparams_1952
                                                                                                                                                       (coe
                                                                                                                                                          v2)))))
                                                                                                                                         (coe
                                                                                                                                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                            (coe
                                                                                                                                               MAlonzo.Code.Axiom.Set.Map.du_mapValues_864
                                                                                                                                               (coe
                                                                                                                                                  MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                                                                  (coe
                                                                                                                                                     MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                                                               (coe
                                                                                                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txOutHash_2908
                                                                                                                                                  (coe
                                                                                                                                                     v0))
                                                                                                                                               (coe
                                                                                                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txouts_2828
                                                                                                                                                  (coe
                                                                                                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2894
                                                                                                                                                     (coe
                                                                                                                                                        v4))))))
                                                                                                                                      erased in
                                                                                                                            coe
                                                                                                                              (case coe
                                                                                                                                      v28 of
                                                                                                                                 MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v29
                                                                                                                                   -> coe
                                                                                                                                        ("\172\nInterface.IsSet.All-syntax (.Axiom.Set.Theory\7496.th List-Model\7496)\n(\955 .patternInTele0 \8594\n   (\8469-hasPreorder HasPreorder.\8804\n    .AbstractFunctions.serSize abs\n    (TransactionStructure.getValue\688 txs (.proj\8322 .patternInTele0)))\n   (.Ledger.Conway.Conformance.PParams.PParams.maxValSize\n    (.Ledger.Conway.Conformance.Utxo.UTxOEnv.pparams \915)))\n(.proj\8321\n (Axiom.Set.Map.mapValues (.Axiom.Set.Theory\7496.th List-Model\7496)\n  (TransactionStructure.txOutHash txs)\n  (.TransactionStructure.TxBody.txouts\n   (.TransactionStructure.Tx.body tx))))"
                                                                                                                                         ::
                                                                                                                                         Data.Text.Text)
                                                                                                                                 MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v29
                                                                                                                                   -> let v30
                                                                                                                                            = coe
                                                                                                                                                MAlonzo.Code.Ledger.Prelude.du_dec'45'de'45'morgan_28
                                                                                                                                                (coe
                                                                                                                                                   MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1622
                                                                                                                                                   (coe
                                                                                                                                                      MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)
                                                                                                                                                   (coe
                                                                                                                                                      (\ v30 ->
                                                                                                                                                         coe
                                                                                                                                                           MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8846'All_28
                                                                                                                                                           (coe
                                                                                                                                                              (\ v31 ->
                                                                                                                                                                 MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8868'_20))
                                                                                                                                                           (coe
                                                                                                                                                              (\ v31 ->
                                                                                                                                                                 coe
                                                                                                                                                                   MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_74
                                                                                                                                                                   (MAlonzo.Code.Ledger.Conway.Conformance.Address.d_attrsSize_78
                                                                                                                                                                      (coe
                                                                                                                                                                         v31))
                                                                                                                                                                   (64 ::
                                                                                                                                                                      Integer)))
                                                                                                                                                           (coe
                                                                                                                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                                              (coe
                                                                                                                                                                 v30))))
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
                                                                                                                                                            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txOutHash_2908
                                                                                                                                                            (coe
                                                                                                                                                               v0))
                                                                                                                                                         (coe
                                                                                                                                                            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txouts_2828
                                                                                                                                                            (coe
                                                                                                                                                               MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2894
                                                                                                                                                               (coe
                                                                                                                                                                  v4))))))
                                                                                                                                                erased in
                                                                                                                                      coe
                                                                                                                                        (case coe
                                                                                                                                                v30 of
                                                                                                                                           MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v31
                                                                                                                                             -> coe
                                                                                                                                                  ("\172\nInterface.IsSet.All-syntax (.Axiom.Set.Theory\7496.th List-Model\7496)\n(\955 .patternInTele0 \8594\n   Data.Sum.Relation.Unary.All.All (const \8868)\n   (\955 a \8594\n      (\8469-hasPreorder HasPreorder.\8804\n       .Ledger.Conway.Conformance.Address.BootstrapAddr.attrsSize a)\n      64)\n   (.proj\8321 .patternInTele0))\n(Interface.IsSet.range (.Axiom.Set.Theory\7496.th List-Model\7496)\n (Axiom.Set.Map.mapValues (.Axiom.Set.Theory\7496.th List-Model\7496)\n  (TransactionStructure.txOutHash txs)\n  (.TransactionStructure.TxBody.txouts\n   (.TransactionStructure.Tx.body tx))))"
                                                                                                                                                   ::
                                                                                                                                                   Data.Text.Text)
                                                                                                                                           MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v31
                                                                                                                                             -> let v32
                                                                                                                                                      = coe
                                                                                                                                                          MAlonzo.Code.Ledger.Prelude.du_dec'45'de'45'morgan_28
                                                                                                                                                          (coe
                                                                                                                                                             MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1622
                                                                                                                                                             (coe
                                                                                                                                                                MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)
                                                                                                                                                             (coe
                                                                                                                                                                (\ v32 ->
                                                                                                                                                                   coe
                                                                                                                                                                     MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                                                                                                                                                                     (coe
                                                                                                                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.d_DecEq'45'Netw_280
                                                                                                                                                                        (coe
                                                                                                                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_globalConstants_1236
                                                                                                                                                                           (coe
                                                                                                                                                                              v0)))
                                                                                                                                                                     (coe
                                                                                                                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Address.du_netId_116
                                                                                                                                                                        (coe
                                                                                                                                                                           MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                                                           (coe
                                                                                                                                                                              v32)))
                                                                                                                                                                     (coe
                                                                                                                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_networkId_2396
                                                                                                                                                                        (coe
                                                                                                                                                                           v0))))
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
                                                                                                                                                                      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txOutHash_2908
                                                                                                                                                                      (coe
                                                                                                                                                                         v0))
                                                                                                                                                                   (coe
                                                                                                                                                                      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txouts_2828
                                                                                                                                                                      (coe
                                                                                                                                                                         MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2894
                                                                                                                                                                         (coe
                                                                                                                                                                            v4))))))
                                                                                                                                                          erased in
                                                                                                                                                coe
                                                                                                                                                  (case coe
                                                                                                                                                          v32 of
                                                                                                                                                     MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v33
                                                                                                                                                       -> coe
                                                                                                                                                            ("\172\nInterface.IsSet.All-syntax (.Axiom.Set.Theory\7496.th List-Model\7496)\n(\955 .patternInTele0 \8594\n   Ledger.Conway.Conformance.Address.netId\n   (.Ledger.Conway.Conformance.Types.Epoch.GlobalConstants.Network\n    (.TransactionStructure.globalConstants txs))\n   (.Ledger.Conway.Conformance.Crypto.isHashableSet.THash\n    (.Ledger.Conway.Conformance.Crypto.Crypto.khs\n     (.TransactionStructure.crypto txs)))\n   (.Ledger.Conway.Conformance.Crypto.Crypto.ScriptHash\n    (.TransactionStructure.crypto txs))\n   (.proj\8321 .patternInTele0)\n   \8801 .TransactionStructure.networkId txs)\n(Interface.IsSet.range (.Axiom.Set.Theory\7496.th List-Model\7496)\n (Axiom.Set.Map.mapValues (.Axiom.Set.Theory\7496.th List-Model\7496)\n  (TransactionStructure.txOutHash txs)\n  (.TransactionStructure.TxBody.txouts\n   (.TransactionStructure.Tx.body tx))))"
                                                                                                                                                             ::
                                                                                                                                                             Data.Text.Text)
                                                                                                                                                     MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v33
                                                                                                                                                       -> let v34
                                                                                                                                                                = coe
                                                                                                                                                                    MAlonzo.Code.Ledger.Prelude.du_dec'45'de'45'morgan_28
                                                                                                                                                                    (coe
                                                                                                                                                                       MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1622
                                                                                                                                                                       (coe
                                                                                                                                                                          MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)
                                                                                                                                                                       (coe
                                                                                                                                                                          (\ v34 ->
                                                                                                                                                                             coe
                                                                                                                                                                               MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                                                                                                                                                                               (coe
                                                                                                                                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.d_DecEq'45'Netw_280
                                                                                                                                                                                  (coe
                                                                                                                                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_globalConstants_1236
                                                                                                                                                                                     (coe
                                                                                                                                                                                        v0)))
                                                                                                                                                                               (coe
                                                                                                                                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Address.d_net_86
                                                                                                                                                                                  (coe
                                                                                                                                                                                     v34))
                                                                                                                                                                               (coe
                                                                                                                                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_networkId_2396
                                                                                                                                                                                  (coe
                                                                                                                                                                                     v0))))
                                                                                                                                                                       (coe
                                                                                                                                                                          MAlonzo.Code.Interface.IsSet.du_dom_540
                                                                                                                                                                          (coe
                                                                                                                                                                             MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                                                                                             (coe
                                                                                                                                                                                MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                                                                                          (coe
                                                                                                                                                                             MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_548)
                                                                                                                                                                          (coe
                                                                                                                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txwdrls_2838
                                                                                                                                                                             (coe
                                                                                                                                                                                MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2894
                                                                                                                                                                                (coe
                                                                                                                                                                                   v4)))))
                                                                                                                                                                    erased in
                                                                                                                                                          coe
                                                                                                                                                            (case coe
                                                                                                                                                                    v34 of
                                                                                                                                                               MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v35
                                                                                                                                                                 -> coe
                                                                                                                                                                      ("\172\nInterface.IsSet.All-syntax (.Axiom.Set.Theory\7496.th List-Model\7496)\n(\955 a \8594\n   .Ledger.Conway.Conformance.Address.RwdAddr.net a \8801\n   .TransactionStructure.networkId txs)\n(Interface.IsSet.dom (.Axiom.Set.Theory\7496.th List-Model\7496)\n (.TransactionStructure.TxBody.txwdrls\n  (.TransactionStructure.Tx.body tx)))"
                                                                                                                                                                       ::
                                                                                                                                                                       Data.Text.Text)
                                                                                                                                                               MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v35
                                                                                                                                                                 -> let v36
                                                                                                                                                                          = coe
                                                                                                                                                                              MAlonzo.Code.Ledger.Prelude.du_dec'45'de'45'morgan_28
                                                                                                                                                                              (coe
                                                                                                                                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Utxo.du_'8799''63'_2668
                                                                                                                                                                                 (coe
                                                                                                                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txNetworkId_2850
                                                                                                                                                                                    (coe
                                                                                                                                                                                       MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2894
                                                                                                                                                                                       (coe
                                                                                                                                                                                          v4)))
                                                                                                                                                                                 (coe
                                                                                                                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_networkId_2396
                                                                                                                                                                                    (coe
                                                                                                                                                                                       v0))
                                                                                                                                                                                 (coe
                                                                                                                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.d_DecEq'45'Netw_280
                                                                                                                                                                                    (coe
                                                                                                                                                                                       MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_globalConstants_1236
                                                                                                                                                                                       (coe
                                                                                                                                                                                          v0))))
                                                                                                                                                                              erased in
                                                                                                                                                                    coe
                                                                                                                                                                      (case coe
                                                                                                                                                                              v36 of
                                                                                                                                                                         MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v37
                                                                                                                                                                           -> coe
                                                                                                                                                                                ("\172\n(txs Ledger.Conway.Conformance.Utxo.\8801? abs)\n(.TransactionStructure.TxBody.txNetworkId\n (.TransactionStructure.Tx.body tx))\n(.TransactionStructure.networkId txs)"
                                                                                                                                                                                 ::
                                                                                                                                                                                 Data.Text.Text)
                                                                                                                                                                         MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v37
                                                                                                                                                                           -> coe
                                                                                                                                                                                ("\172\n(txs Ledger.Conway.Conformance.Utxo.\8801? abs)\n(.TransactionStructure.TxBody.curTreasury\n (.TransactionStructure.Tx.body tx))\n(.Ledger.Conway.Conformance.Utxo.UTxOEnv.treasury \915)"
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
                                                           _ -> MAlonzo.RTE.mazUnreachableError)
                                                 _ -> MAlonzo.RTE.mazUnreachableError)
                                       _ -> MAlonzo.RTE.mazUnreachableError)
                             _ -> MAlonzo.RTE.mazUnreachableError)))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxo.Properties._.Go.computeProof
d_computeProof_2206 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1740 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Utxo.T_UTxOEnv_1942 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Utxo.T_UTxOState_1956 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2884 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
d_computeProof_2206 v0 v1 v2 v3 v4
  = coe
      d_computeProofH_2168 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
      (coe
         MAlonzo.Code.Class.Decidable.Core.d_dec_16
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_UTXO'45'premises_2828
               (coe v0) (coe v1) (coe v4) (coe v2) (coe v3))))
-- Ledger.Conway.Conformance.Utxo.Properties._.Go.completeness
d_completeness_2210 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1740 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Utxo.T_UTxOEnv_1942 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Utxo.T_UTxOState_1956 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2884 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Utxo.T_UTxOState_1956 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Utxo.T__'8866'_'8640''10631'_'44'UTXO'10632'__2690 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_completeness_2210 = erased
