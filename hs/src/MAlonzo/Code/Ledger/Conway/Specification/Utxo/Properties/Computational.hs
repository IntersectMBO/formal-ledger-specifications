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

module MAlonzo.Code.Ledger.Conway.Specification.Utxo.Properties.Computational where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Bool
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Agda.Builtin.Maybe
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Builtin.String
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Axiom.Set
import qualified MAlonzo.Code.Axiom.Set.Map
import qualified MAlonzo.Code.Class.Bifunctor
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Class.DecEq.Instances
import qualified MAlonzo.Code.Class.Decidable.Core
import qualified MAlonzo.Code.Class.Decidable.Instances
import qualified MAlonzo.Code.Class.Functor.Core
import qualified MAlonzo.Code.Class.Functor.Instances
import qualified MAlonzo.Code.Class.IsSet
import qualified MAlonzo.Code.Class.Show.Core
import qualified MAlonzo.Code.Class.Show.Instances
import qualified MAlonzo.Code.Data.Irrelevant
import qualified MAlonzo.Code.Data.Nat.Properties
import qualified MAlonzo.Code.Data.Nat.Show
import qualified MAlonzo.Code.Data.Product.Base
import qualified MAlonzo.Code.Data.String.Base
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Function.Bundles
import qualified MAlonzo.Code.Interface.ComputationalRelation
import qualified MAlonzo.Code.Ledger.Conway.Specification.Abstract
import qualified MAlonzo.Code.Ledger.Conway.Specification.PParams
import qualified MAlonzo.Code.Ledger.Conway.Specification.Script.Base
import qualified MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base
import qualified MAlonzo.Code.Ledger.Conway.Specification.Transaction
import qualified MAlonzo.Code.Ledger.Conway.Specification.Utxo
import qualified MAlonzo.Code.Ledger.Core.Specification.Address
import qualified MAlonzo.Code.Ledger.Core.Specification.Crypto
import qualified MAlonzo.Code.Ledger.Core.Specification.Epoch
import qualified MAlonzo.Code.Ledger.Prelude
import qualified MAlonzo.Code.Prelude
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects
import qualified MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory

-- _.Dec-isVKey
d_Dec'45'isVKey_98 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isVKey_98 ~v0 = du_Dec'45'isVKey_98
du_Dec'45'isVKey_98 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'isVKey_98
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Dec'45'isVKey_294
-- _.Tx
d_Tx_616 a0 = ()
-- _.Tx.body
d_body_1930 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3614 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3434
d_body_1930 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3626
      (coe v0)
-- _.Tx.isValid
d_isValid_1932 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3614 ->
  Bool
d_isValid_1932 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_isValid_3632
      (coe v0)
-- _.Tx.txAD
d_txAD_1934 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3614 ->
  Maybe AgdaAny
d_txAD_1934 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txAD_3634
      (coe v0)
-- _.Tx.txsize
d_txsize_1936 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3614 ->
  Integer
d_txsize_1936 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txsize_3630
      (coe v0)
-- _.Tx.wits
d_wits_1938 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3614 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3592
d_wits_1938 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3628
      (coe v0)
-- Ledger.Conway.Specification.Utxo.Properties.Computational._._⊢_⇀⦇_,UTXOS⦈_
d__'8866'_'8640''10631'_'44'UTXOS'10632'__2024 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Specification.Utxo.Properties.Computational._._⊢_⇀⦇_,UTXO⦈_
d__'8866'_'8640''10631'_'44'UTXO'10632'__2026 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Specification.Utxo.Properties.Computational._.UTxOEnv
d_UTxOEnv_2066 a0 a1 = ()
-- Ledger.Conway.Specification.Utxo.Properties.Computational._.UTxOState
d_UTxOState_2070 a0 a1 = ()
-- Ledger.Conway.Specification.Utxo.Properties.Computational._.UTxOEnv.pparams
d_pparams_2168 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2480 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286
d_pparams_2168 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2490
      (coe v0)
-- Ledger.Conway.Specification.Utxo.Properties.Computational._.UTxOEnv.slot
d_slot_2170 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2480 ->
  AgdaAny
d_slot_2170 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_slot_2488 (coe v0)
-- Ledger.Conway.Specification.Utxo.Properties.Computational._.UTxOEnv.treasury
d_treasury_2172 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2480 ->
  Integer
d_treasury_2172 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_treasury_2492
      (coe v0)
-- Ledger.Conway.Specification.Utxo.Properties.Computational._.UTxOState.deposits
d_deposits_2176 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2496 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_2176 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_deposits_2510
      (coe v0)
-- Ledger.Conway.Specification.Utxo.Properties.Computational._.UTxOState.donations
d_donations_2178 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2496 ->
  Integer
d_donations_2178 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_donations_2512
      (coe v0)
-- Ledger.Conway.Specification.Utxo.Properties.Computational._.UTxOState.fees
d_fees_2180 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2496 ->
  Integer
d_fees_2180 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_fees_2508 (coe v0)
-- Ledger.Conway.Specification.Utxo.Properties.Computational._.UTxOState.utxo
d_utxo_2182 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2496 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2182 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2506 (coe v0)
-- Ledger.Conway.Specification.Utxo.Properties.Computational.Computational-UTXOS
d_Computational'45'UTXOS_2662 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2502 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'UTXOS_2662 v0 v1
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.C_MkComputational_412
      (d_computeProof_2758 (coe v0) (coe v1))
-- Ledger.Conway.Specification.Utxo.Properties.Computational._._.go.computeProof
d_computeProof_2758 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2502 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2480 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2496 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3614 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
d_computeProof_2758 v0 v1 v2 v3 v4
  = let v5
          = coe
              MAlonzo.Code.Data.Product.Base.du__'44''8242'__84
              (MAlonzo.Code.Class.Decidable.Core.d_dec_16
                 (coe
                    MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_Scripts'45'Yes'45'premises_3448
                       (coe v0) (coe v1) (coe v2) (coe v4)
                       (coe
                          MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2506 (coe v3))
                       (coe
                          MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_deposits_2510
                          (coe v3)))))
              (MAlonzo.Code.Class.Decidable.Core.d_dec_16
                 (coe
                    MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_Scripts'45'No'45'premises_3450
                       (coe v0) (coe v1) (coe v2) (coe v4)
                       (coe
                          MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2506
                          (coe v3))))) in
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
                                                                   MAlonzo.Code.Ledger.Conway.Specification.Utxo.C_'10214'_'44'_'44'_'44'_'10215''7512'_2514
                                                                   (coe
                                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                      (coe
                                                                         MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                         (coe
                                                                            MAlonzo.Code.Axiom.Set.d_unions_224
                                                                            (MAlonzo.Code.Axiom.Set.d_th_1516
                                                                               (coe
                                                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                            erased
                                                                            (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                               (coe
                                                                                  MAlonzo.Code.Axiom.Set.d_listing_244
                                                                                  (MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                     (coe
                                                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                  erased
                                                                                  (coe
                                                                                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                     (coe
                                                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                        (coe
                                                                                           MAlonzo.Code.Axiom.Set.d_specification_214
                                                                                           (MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                              (coe
                                                                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                           erased
                                                                                           erased
                                                                                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2506
                                                                                                 (coe
                                                                                                    v3)))
                                                                                           (coe
                                                                                              MAlonzo.Code.Axiom.Set.d_sp'45''8728'_74
                                                                                              (MAlonzo.Code.Axiom.Set.d_sp_188
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                                    (coe
                                                                                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                                                              erased
                                                                                              erased
                                                                                              erased
                                                                                              (coe
                                                                                                 MAlonzo.Code.Axiom.Set.d_sp'45''172'_76
                                                                                                 (MAlonzo.Code.Axiom.Set.d_sp_188
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                                       (coe
                                                                                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                                                                 erased
                                                                                                 erased
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                                                                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                                                    erased
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_182
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'TxId_1350
                                                                                                          (coe
                                                                                                             v0))
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Ix_1348
                                                                                                          (coe
                                                                                                             v0)))
                                                                                                    (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txIns_3472
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3626
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
                                                                                              MAlonzo.Code.Axiom.Set.d_specification_214
                                                                                              (MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                                 (coe
                                                                                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                              erased
                                                                                              erased
                                                                                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_outs_2560
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3626
                                                                                                       (coe
                                                                                                          v4))))
                                                                                              (coe
                                                                                                 MAlonzo.Code.Axiom.Set.d_sp'45''8728'_74
                                                                                                 (MAlonzo.Code.Axiom.Set.d_sp_188
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                                       (coe
                                                                                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                                                                 erased
                                                                                                 erased
                                                                                                 erased
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Axiom.Set.d_sp'45''172'_76
                                                                                                    (MAlonzo.Code.Axiom.Set.d_sp_188
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                                          (coe
                                                                                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                                                                    erased
                                                                                                    erased
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                                                                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                                                       erased
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_182
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'TxId_1350
                                                                                                             (coe
                                                                                                                v0))
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Ix_1348
                                                                                                             (coe
                                                                                                                v0)))
                                                                                                       (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Axiom.Set.d_replacement_236
                                                                                                             (MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                             erased
                                                                                                             erased
                                                                                                             (\ v15 ->
                                                                                                                MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                  (coe
                                                                                                                     v15))
                                                                                                             (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Axiom.Set.d_specification_214
                                                                                                                   (MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                                                      (coe
                                                                                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                                   erased
                                                                                                                   erased
                                                                                                                   (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                      (coe
                                                                                                                         MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2506
                                                                                                                         (coe
                                                                                                                            v3)))
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Axiom.Set.d_sp'45''8728'_74
                                                                                                                      (MAlonzo.Code.Axiom.Set.d_sp_188
                                                                                                                         (coe
                                                                                                                            MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                                                            (coe
                                                                                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                                                                                      erased
                                                                                                                      erased
                                                                                                                      erased
                                                                                                                      (coe
                                                                                                                         MAlonzo.Code.Axiom.Set.d_sp'45''172'_76
                                                                                                                         (MAlonzo.Code.Axiom.Set.d_sp_188
                                                                                                                            (coe
                                                                                                                               MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                                                               (coe
                                                                                                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                                                                                         erased
                                                                                                                         erased
                                                                                                                         (coe
                                                                                                                            MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                                                                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                                                                            erased
                                                                                                                            (coe
                                                                                                                               MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_182
                                                                                                                               (coe
                                                                                                                                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'TxId_1350
                                                                                                                                  (coe
                                                                                                                                     v0))
                                                                                                                               (coe
                                                                                                                                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Ix_1348
                                                                                                                                  (coe
                                                                                                                                     v0)))
                                                                                                                            (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txIns_3472
                                                                                                                               (coe
                                                                                                                                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3626
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
                                                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txFee_3484
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3626
                                                                            (coe v4)))
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_fees_2508
                                                                         (coe v3)))
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_updateCertDeposits_2880
                                                                      (coe v0)
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2490
                                                                         (coe v2))
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txCerts_3482
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3626
                                                                            (coe v4)))
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_updateProposalDeposits_2958
                                                                         (coe v0)
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txGovProposals_3496
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3626
                                                                               (coe v4)))
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txId_3480
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3626
                                                                               (coe v4)))
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionDeposit_422
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2490
                                                                               (coe v2)))
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_deposits_2510
                                                                            (coe v3))))
                                                                   (coe
                                                                      addInt
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txDonation_3492
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3626
                                                                            (coe v4)))
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_donations_2512
                                                                         (coe v3))))
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Conway.Specification.Utxo.C_Scripts'45'Yes_3390
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
                                                                    MAlonzo.Code.Ledger.Conway.Specification.Utxo.C_'10214'_'44'_'44'_'44'_'10215''7512'_2514
                                                                    (coe
                                                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                       (coe
                                                                          MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                          (coe
                                                                             MAlonzo.Code.Axiom.Set.d_specification_214
                                                                             (MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                (coe
                                                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                             erased erased
                                                                             (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2506
                                                                                   (coe v3)))
                                                                             (coe
                                                                                MAlonzo.Code.Axiom.Set.d_sp'45''8728'_74
                                                                                (MAlonzo.Code.Axiom.Set.d_sp_188
                                                                                   (coe
                                                                                      MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                      (coe
                                                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                                                erased erased erased
                                                                                (coe
                                                                                   MAlonzo.Code.Axiom.Set.d_sp'45''172'_76
                                                                                   (MAlonzo.Code.Axiom.Set.d_sp_188
                                                                                      (coe
                                                                                         MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                         (coe
                                                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                                                   erased erased
                                                                                   (coe
                                                                                      MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                                      erased
                                                                                      (coe
                                                                                         MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_182
                                                                                         (coe
                                                                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'TxId_1350
                                                                                            (coe
                                                                                               v0))
                                                                                         (coe
                                                                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Ix_1348
                                                                                            (coe
                                                                                               v0)))
                                                                                      (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_collateralInputs_3476
                                                                                         (coe
                                                                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3626
                                                                                            (coe
                                                                                               v4)))))
                                                                                (\ v15 ->
                                                                                   MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                     (coe v15)))))
                                                                       (coe
                                                                          (\ v15 v16 v17 v18 v19 ->
                                                                             coe
                                                                               MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                               (MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2506
                                                                                  (coe v3))
                                                                               v15 v16 v17
                                                                               (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                  (coe
                                                                                     MAlonzo.Code.Function.Bundles.d_from_1870
                                                                                     (coe
                                                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                        (coe
                                                                                           MAlonzo.Code.Axiom.Set.d_specification_214
                                                                                           (MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                              (coe
                                                                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                           erased
                                                                                           erased
                                                                                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2506
                                                                                                 (coe
                                                                                                    v3)))
                                                                                           (coe
                                                                                              MAlonzo.Code.Axiom.Set.d_sp'45''8728'_74
                                                                                              (MAlonzo.Code.Axiom.Set.d_sp_188
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                                    (coe
                                                                                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                                                              erased
                                                                                              erased
                                                                                              erased
                                                                                              (coe
                                                                                                 MAlonzo.Code.Axiom.Set.d_sp'45''172'_76
                                                                                                 (MAlonzo.Code.Axiom.Set.d_sp_188
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                                       (coe
                                                                                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                                                                 erased
                                                                                                 erased
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                                                                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                                                    erased
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_182
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'TxId_1350
                                                                                                          (coe
                                                                                                             v0))
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Ix_1348
                                                                                                          (coe
                                                                                                             v0)))
                                                                                                    (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_collateralInputs_3476
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3626
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
                                                                                     MAlonzo.Code.Function.Bundles.d_from_1870
                                                                                     (coe
                                                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                        (coe
                                                                                           MAlonzo.Code.Axiom.Set.d_specification_214
                                                                                           (MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                              (coe
                                                                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                           erased
                                                                                           erased
                                                                                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2506
                                                                                                 (coe
                                                                                                    v3)))
                                                                                           (coe
                                                                                              MAlonzo.Code.Axiom.Set.d_sp'45''8728'_74
                                                                                              (MAlonzo.Code.Axiom.Set.d_sp_188
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                                    (coe
                                                                                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                                                              erased
                                                                                              erased
                                                                                              erased
                                                                                              (coe
                                                                                                 MAlonzo.Code.Axiom.Set.d_sp'45''172'_76
                                                                                                 (MAlonzo.Code.Axiom.Set.d_sp_188
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                                       (coe
                                                                                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                                                                 erased
                                                                                                 erased
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                                                                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                                                    erased
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_182
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'TxId_1350
                                                                                                          (coe
                                                                                                             v0))
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Ix_1348
                                                                                                          (coe
                                                                                                             v0)))
                                                                                                    (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_collateralInputs_3476
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3626
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
                                                                          MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_cbalance_2572
                                                                          (coe v0)
                                                                          (coe
                                                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                             (coe
                                                                                MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                (coe
                                                                                   MAlonzo.Code.Axiom.Set.d_specification_214
                                                                                   (MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                      (coe
                                                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                   erased erased
                                                                                   (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2506
                                                                                         (coe v3)))
                                                                                   (coe
                                                                                      MAlonzo.Code.Axiom.Set.d_sp'45''8728'_74
                                                                                      (MAlonzo.Code.Axiom.Set.d_sp_188
                                                                                         (coe
                                                                                            MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                            (coe
                                                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                                                      erased erased
                                                                                      erased
                                                                                      (coe
                                                                                         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                                         erased
                                                                                         (coe
                                                                                            MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_182
                                                                                            (coe
                                                                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'TxId_1350
                                                                                               (coe
                                                                                                  v0))
                                                                                            (coe
                                                                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Ix_1348
                                                                                               (coe
                                                                                                  v0)))
                                                                                         (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_collateralInputs_3476
                                                                                            (coe
                                                                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3626
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
                                                                                     (MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2506
                                                                                        (coe v3))
                                                                                     v15 v16 v17
                                                                                     (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                        (coe
                                                                                           MAlonzo.Code.Function.Bundles.d_from_1870
                                                                                           (coe
                                                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                              (coe
                                                                                                 MAlonzo.Code.Axiom.Set.d_specification_214
                                                                                                 (MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                                    (coe
                                                                                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                 erased
                                                                                                 erased
                                                                                                 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2506
                                                                                                       (coe
                                                                                                          v3)))
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Axiom.Set.d_sp'45''8728'_74
                                                                                                    (MAlonzo.Code.Axiom.Set.d_sp_188
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                                          (coe
                                                                                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                                                                    erased
                                                                                                    erased
                                                                                                    erased
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                                                                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                                                       erased
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_182
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'TxId_1350
                                                                                                             (coe
                                                                                                                v0))
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Ix_1348
                                                                                                             (coe
                                                                                                                v0)))
                                                                                                       (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_collateralInputs_3476
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3626
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
                                                                                           MAlonzo.Code.Function.Bundles.d_from_1870
                                                                                           (coe
                                                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                              (coe
                                                                                                 MAlonzo.Code.Axiom.Set.d_specification_214
                                                                                                 (MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                                    (coe
                                                                                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                 erased
                                                                                                 erased
                                                                                                 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2506
                                                                                                       (coe
                                                                                                          v3)))
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Axiom.Set.d_sp'45''8728'_74
                                                                                                    (MAlonzo.Code.Axiom.Set.d_sp_188
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                                          (coe
                                                                                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                                                                    erased
                                                                                                    erased
                                                                                                    erased
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                                                                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                                                       erased
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_182
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'TxId_1350
                                                                                                             (coe
                                                                                                                v0))
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Ix_1348
                                                                                                             (coe
                                                                                                                v0)))
                                                                                                       (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_collateralInputs_3476
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3626
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
                                                                          MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_fees_2508
                                                                          (coe v3)))
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_deposits_2510
                                                                       (coe v3))
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_donations_2512
                                                                       (coe v3)))
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Conway.Specification.Utxo.C_Scripts'45'No_3446
                                                                    v14))
                                                       _ -> coe v10
                                                _ -> coe v10
                                         _ -> MAlonzo.RTE.mazUnreachableError
                                  _ -> coe v10))
                _ -> MAlonzo.RTE.mazUnreachableError
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Conway.Specification.Utxo.Properties.Computational._._.go.completeness
d_completeness_2768 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2502 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2480 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2496 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3614 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2496 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T__'8866'_'8640''10631'_'44'UTXOS'10632'__3334 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_completeness_2768 = erased
-- Ledger.Conway.Specification.Utxo.Properties.Computational.Computational-UTXO'
d_Computational'45'UTXO''_2798 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2502 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'UTXO''_2798 v0 v1
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.C_MkComputational_412
      (d_computeProof_2958 (coe v0) (coe v1))
-- Ledger.Conway.Specification.Utxo.Properties.Computational._.Go.genErr
d_genErr_2836 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2502 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2480 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2496 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3614 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
d_genErr_2836 v0 v1 v2 v3 v4 ~v5 = du_genErr_2836 v0 v1 v2 v3 v4
du_genErr_2836 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2502 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2480 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2496 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3614 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
du_genErr_2836 v0 v1 v2 v3 v4
  = let v5
          = coe
              MAlonzo.Code.Ledger.Prelude.du_dec'45'de'45'morgan_192
              (coe
                 MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_12
                 (coe
                    MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
                    (coe
                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_DecEq'45'ℙ_1244
                       (coe
                          MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                          (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'TxId_1350
                             (coe v0))
                          (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Ix_1348
                             (coe v0))))
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txIns_3472
                       (coe
                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3626
                          (coe v4)))
                    (coe
                       MAlonzo.Code.Axiom.Set.du_'8709'_470
                       (coe
                          MAlonzo.Code.Axiom.Set.d_th_1516
                          (coe
                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))))
                 (coe MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_8))
              erased in
    coe
      (case coe v5 of
         MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v6
           -> coe
                ("\172 TxBody.txIns (Tx.body tx) \8802 \8709" :: Data.Text.Text)
         MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v6
           -> let v7
                    = coe
                        MAlonzo.Code.Ledger.Prelude.du_dec'45'de'45'morgan_192
                        (coe
                           MAlonzo.Code.Class.Decidable.Core.du_'8263''185'__74
                           (coe
                              (\ v7 ->
                                 coe
                                   MAlonzo.Code.Axiom.Set.d_all'63'_1658
                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                   erased erased
                                   (coe
                                      MAlonzo.Code.Class.Decidable.Core.du_dec'185'_72
                                      (coe
                                         (\ v8 ->
                                            coe
                                              MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1720
                                              (coe
                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                              (coe
                                                 MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 ()
                                                 erased () erased
                                                 (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'TxId_1350
                                                    (coe v0))
                                                 (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Ix_1348
                                                    (coe v0)))
                                              (coe v8)
                                              (coe
                                                 MAlonzo.Code.Class.IsSet.du_dom_586
                                                 (coe
                                                    MAlonzo.Code.Axiom.Set.d_th_1516
                                                    (coe
                                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                 (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                                 (coe
                                                    MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2506
                                                    (coe v3))))))
                                   v7))
                           (coe
                              MAlonzo.Code.Axiom.Set.du__'8746'__708
                              (coe
                                 MAlonzo.Code.Axiom.Set.d_th_1516
                                 (coe
                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txIns_3472
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3626
                                    (coe v4)))
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_refInputs_3474
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3626
                                    (coe v4)))))
                        erased in
              coe
                (case coe v7 of
                   MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v8
                     -> coe
                          ("\172 TxBody.txIns (Tx.body tx) \8838 dom (UTxOOf s)"
                           ::
                           Data.Text.Text)
                   MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v8
                     -> let v9
                              = coe
                                  MAlonzo.Code.Ledger.Prelude.du_dec'45'de'45'morgan_192
                                  (coe
                                     MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__102
                                     (coe
                                        MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                        (coe
                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_DecEq'45'ℙ_1244
                                           (coe
                                              MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 ()
                                              erased () erased
                                              (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'TxId_1350
                                                 (coe v0))
                                              (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Ix_1348
                                                 (coe v0)))))
                                     (coe
                                        MAlonzo.Code.Axiom.Set.du__'8745'__732
                                        (coe
                                           MAlonzo.Code.Axiom.Set.d_th_1516
                                           (coe
                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                        (coe
                                           MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                           erased
                                           (coe
                                              MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                              MAlonzo.Code.Agda.Primitive.d_lzero_20 erased
                                              MAlonzo.Code.Agda.Primitive.d_lzero_20 erased
                                              (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'TxId_1350
                                                 (coe v0))
                                              (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Ix_1348
                                                 (coe v0))))
                                        (coe
                                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txIns_3472
                                           (coe
                                              MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3626
                                              (coe v4)))
                                        (coe
                                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_refInputs_3474
                                           (coe
                                              MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3626
                                              (coe v4))))
                                     (coe
                                        MAlonzo.Code.Axiom.Set.du_'8709'_470
                                        (coe
                                           MAlonzo.Code.Axiom.Set.d_th_1516
                                           (coe
                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))))
                                  erased in
                        coe
                          (case coe v9 of
                             MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v10
                               -> coe ("\172 refInputs \8838 dom utxo " :: Data.Text.Text)
                             MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v10
                               -> let v11
                                        = coe
                                            MAlonzo.Code.Ledger.Prelude.du_dec'45'de'45'morgan_192
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_Dec'45'inInterval_3098
                                               (coe v0)
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_slot_2488
                                                  (coe v2))
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txVldt_3488
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3626
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
                                                      MAlonzo.Code.Ledger.Prelude.du_dec'45'de'45'morgan_192
                                                      (coe
                                                         MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
                                                         (coe
                                                            MAlonzo.Code.Data.Nat.Properties.d__'8804''63'__2920
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_minfee_2582
                                                               (coe v0) (coe v1)
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2490
                                                                  (coe v2))
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2506
                                                                  (coe v3))
                                                               (coe v4))
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txFee_3484
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3626
                                                                  (coe v4)))))
                                                      erased in
                                            coe
                                              (case coe v13 of
                                                 MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v14
                                                   -> coe
                                                        ("\172 feesOK pp tx utxo" :: Data.Text.Text)
                                                 MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v14
                                                   -> let v15
                                                            = coe
                                                                MAlonzo.Code.Ledger.Prelude.du_dec'45'de'45'morgan_192
                                                                (coe
                                                                   MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_12
                                                                   (coe
                                                                      MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_12
                                                                      (coe
                                                                         MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
                                                                         (coe
                                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_DecEq'45'ℙ_1244
                                                                            (coe
                                                                               MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                                               () erased () erased
                                                                               (coe
                                                                                  MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                                                  () erased ()
                                                                                  erased
                                                                                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Tag_22
                                                                                  (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Ix_1348
                                                                                     (coe v0)))
                                                                               (coe
                                                                                  MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                                                  () erased ()
                                                                                  erased
                                                                                  (MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'T_30
                                                                                     (coe
                                                                                        MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
                                                                                        (coe
                                                                                           MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_204
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2048
                                                                                                 (coe
                                                                                                    v0))))))
                                                                                  (MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'ExUnits_242
                                                                                     (coe
                                                                                        MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
                                                                                        (coe
                                                                                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2048
                                                                                           (coe
                                                                                              v0)))))))
                                                                         (coe
                                                                            MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txrdmrs_3608
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3628
                                                                                  (coe v4))))
                                                                         (coe
                                                                            MAlonzo.Code.Axiom.Set.du_'8709'_470
                                                                            (coe
                                                                               MAlonzo.Code.Axiom.Set.d_th_1516
                                                                               (coe
                                                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))))
                                                                      (coe
                                                                         MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_8))
                                                                   (coe
                                                                      MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                                                                      (coe
                                                                         MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
                                                                         (coe
                                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                                         (coe
                                                                            (\ v15 ->
                                                                               coe
                                                                                 MAlonzo.Code.Ledger.Core.Specification.Address.du_Dec'45'isVKey_294
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Core.Specification.Address.du_payCred_262
                                                                                    (coe
                                                                                       MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                       (coe v15)))))
                                                                         (coe
                                                                            MAlonzo.Code.Class.IsSet.du_range_588
                                                                            (coe
                                                                               MAlonzo.Code.Axiom.Set.d_th_1516
                                                                               (coe
                                                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                            (coe
                                                                               MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                                                            (coe
                                                                               MAlonzo.Code.Axiom.Set.Map.du__'8739'__1626
                                                                               (coe
                                                                                  MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                  (coe
                                                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                               (coe
                                                                                  MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                                  erased
                                                                                  (coe
                                                                                     MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_182
                                                                                     (coe
                                                                                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'TxId_1350
                                                                                        (coe v0))
                                                                                     (coe
                                                                                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Ix_1348
                                                                                        (coe v0))))
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2506
                                                                                  (coe v3))
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_collateralInputs_3476
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3626
                                                                                     (coe v4))))))
                                                                      (coe
                                                                         MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                                                                         (coe
                                                                            MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                                                                            (coe
                                                                               MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
                                                                               (coe
                                                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                                               (coe
                                                                                  (\ v15 ->
                                                                                     coe
                                                                                       MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1720
                                                                                       (coe
                                                                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1400
                                                                                             (coe
                                                                                                v0)))
                                                                                       (coe v15)
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_coinPolicies_3204
                                                                                          (coe
                                                                                             v0))))
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_policies_218
                                                                                  (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2536
                                                                                     (coe v0))
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_balance'8242'_3272
                                                                                     (coe v0)
                                                                                     (coe v4)
                                                                                     (coe
                                                                                        MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2506
                                                                                        (coe v3)))))
                                                                            (coe
                                                                               MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
                                                                               (coe
                                                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                                               (coe
                                                                                  (\ v15 ->
                                                                                     coe
                                                                                       MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1720
                                                                                       (coe
                                                                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1400
                                                                                             (coe
                                                                                                v0)))
                                                                                       (coe v15)
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_policies_218
                                                                                          (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2536
                                                                                             (coe
                                                                                                v0))
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_balance'8242'_3272
                                                                                             (coe
                                                                                                v0)
                                                                                             (coe
                                                                                                v4)
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2506
                                                                                                (coe
                                                                                                   v3))))))
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_coinPolicies_3204
                                                                                  (coe v0))))
                                                                         (coe
                                                                            MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                                                                            (coe
                                                                               MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_34
                                                                               (mulInt
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txFee_3484
                                                                                     (coe
                                                                                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3626
                                                                                        (coe v4)))
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Conway.Specification.PParams.d_collateralPercentage_408
                                                                                     (coe
                                                                                        MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2490
                                                                                        (coe v2))))
                                                                               (mulInt
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coin_214
                                                                                     (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2536
                                                                                        (coe v0))
                                                                                     (coe
                                                                                        MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_balance'8242'_3272
                                                                                        (coe v0)
                                                                                        (coe v4)
                                                                                        (coe
                                                                                           MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2506
                                                                                           (coe
                                                                                              v3))))
                                                                                  (coe
                                                                                     (100 ::
                                                                                        Integer))))
                                                                            (coe
                                                                               MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_12
                                                                               (coe
                                                                                  MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
                                                                                  (coe
                                                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_DecEq'45'ℙ_1244
                                                                                     (coe
                                                                                        MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                                                        () erased ()
                                                                                        erased
                                                                                        (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'TxId_1350
                                                                                           (coe v0))
                                                                                        (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Ix_1348
                                                                                           (coe
                                                                                              v0))))
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_collateralInputs_3476
                                                                                     (coe
                                                                                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3626
                                                                                        (coe v4)))
                                                                                  (coe
                                                                                     MAlonzo.Code.Axiom.Set.du_'8709'_470
                                                                                     (coe
                                                                                        MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                        (coe
                                                                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))))
                                                                               (coe
                                                                                  MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_8))))))
                                                                erased in
                                                      coe
                                                        (case coe v15 of
                                                           MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v16
                                                             -> coe
                                                                  MAlonzo.Code.Data.String.Base.d__'43''43'__20
                                                                  ("\172consumed (UTxOEnv.pparams \915) s (Tx.body tx) \8801 produced (PParamsOf \915) s (Tx.body tx)"
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
                                                                           MAlonzo.Code.Class.Show.Instances.d_Show'45'ℕ_36
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coin_214
                                                                              (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2536
                                                                                 (coe v0))
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_consumed_3302
                                                                                 (coe v0)
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2490
                                                                                    (coe v2))
                                                                                 (coe v3)
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3626
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
                                                                                 MAlonzo.Code.Class.Show.Instances.d_Show'45'ℕ_36
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coin_214
                                                                                    (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2536
                                                                                       (coe v0))
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_balance_2566
                                                                                       (coe v0)
                                                                                       (coe
                                                                                          MAlonzo.Code.Axiom.Set.Map.du__'8739'__1626
                                                                                          (coe
                                                                                             MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                             (coe
                                                                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                          (coe
                                                                                             MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                                                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                                             erased
                                                                                             (coe
                                                                                                MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_182
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'TxId_1350
                                                                                                   (coe
                                                                                                      v0))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Ix_1348
                                                                                                   (coe
                                                                                                      v0))))
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2506
                                                                                             (coe
                                                                                                v3))
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txIns_3472
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3626
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
                                                                                       MAlonzo.Code.Class.Show.Instances.d_Show'45'ℕ_36
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coin_214
                                                                                          (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2536
                                                                                             (coe
                                                                                                v0))
                                                                                          (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_mint_3502
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3626
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
                                                                                             MAlonzo.Code.Class.Show.Instances.d_Show'45'ℕ_36
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coin_214
                                                                                                (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2536
                                                                                                   (coe
                                                                                                      v0))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_inject_216
                                                                                                   (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2536
                                                                                                      (coe
                                                                                                         v0))
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_depositRefunds_3286
                                                                                                      (coe
                                                                                                         v0)
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2490
                                                                                                         (coe
                                                                                                            v2))
                                                                                                      (coe
                                                                                                         v3)
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3626
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
                                                                                                   MAlonzo.Code.Class.Show.Instances.d_Show'45'ℕ_36
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coin_214
                                                                                                      (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2536
                                                                                                         (coe
                                                                                                            v0))
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_produced_3310
                                                                                                         (coe
                                                                                                            v0)
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2490
                                                                                                            (coe
                                                                                                               v2))
                                                                                                         (coe
                                                                                                            v3)
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3626
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
                                                                                                         MAlonzo.Code.Class.Show.Instances.d_Show'45'ℕ_36
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coin_214
                                                                                                            (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2536
                                                                                                               (coe
                                                                                                                  v0))
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_balance_2566
                                                                                                               (coe
                                                                                                                  v0)
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_outs_2560
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3626
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
                                                                                                               (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txFee_3484
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3626
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
                                                                                                                        MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_newDeposits_3294
                                                                                                                        (coe
                                                                                                                           v0)
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2490
                                                                                                                           (coe
                                                                                                                              v2))
                                                                                                                        (coe
                                                                                                                           v3)
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3626
                                                                                                                           (coe
                                                                                                                              v4))))
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Data.String.Base.d__'43''43'__20
                                                                                                                     ("\n    donation  =\t\t"
                                                                                                                      ::
                                                                                                                      Data.Text.Text)
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Data.Nat.Show.d_show_56
                                                                                                                        (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txDonation_3492
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3626
                                                                                                                              (coe
                                                                                                                                 v4)))))))))))))))))))))
                                                           MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v16
                                                             -> let v17
                                                                      = coe
                                                                          MAlonzo.Code.Ledger.Prelude.du_dec'45'de'45'morgan_192
                                                                          (coe
                                                                             MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__102
                                                                             (coe
                                                                                MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_DecEq'45'Value_228
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2536
                                                                                      (coe v0))))
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_consumed_3302
                                                                                (coe v0)
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2490
                                                                                   (coe v2))
                                                                                (coe v3)
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3626
                                                                                   (coe v4)))
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_produced_3310
                                                                                (coe v0)
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2490
                                                                                   (coe v2))
                                                                                (coe v3)
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3626
                                                                                   (coe v4))))
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
                                                                                    MAlonzo.Code.Ledger.Prelude.du_dec'45'de'45'morgan_192
                                                                                    (coe
                                                                                       MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__102
                                                                                       (coe
                                                                                          MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                                                          (coe
                                                                                             MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coin_214
                                                                                          (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2536
                                                                                             (coe
                                                                                                v0))
                                                                                          (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_mint_3502
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3626
                                                                                                (coe
                                                                                                   v4))))
                                                                                       (coe
                                                                                          (0 ::
                                                                                             Integer)))
                                                                                    erased in
                                                                          coe
                                                                            (case coe v19 of
                                                                               MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v20
                                                                                 -> coe
                                                                                      ("\172((Tx.txsize tx) Data.Nat.Base.\8804 maxTxSize (UTxOEnv.pparams \915))"
                                                                                       ::
                                                                                       Data.Text.Text)
                                                                               MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v20
                                                                                 -> let v21
                                                                                          = coe
                                                                                              MAlonzo.Code.Ledger.Prelude.du_dec'45'de'45'morgan_192
                                                                                              (coe
                                                                                                 MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_12
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_12
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
                                                                                                             (coe
                                                                                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                                                                             (coe
                                                                                                                (\ v21 ->
                                                                                                                   coe
                                                                                                                     MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1720
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                                                                                        ()
                                                                                                                        erased
                                                                                                                        ()
                                                                                                                        erased
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                                                                                           ()
                                                                                                                           erased
                                                                                                                           ()
                                                                                                                           erased
                                                                                                                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Tag_22
                                                                                                                           (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Ix_1348
                                                                                                                              (coe
                                                                                                                                 v0)))
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                                                                                           ()
                                                                                                                           erased
                                                                                                                           ()
                                                                                                                           erased
                                                                                                                           (MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'T_30
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_204
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
                                                                                                                                       (coe
                                                                                                                                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2048
                                                                                                                                          (coe
                                                                                                                                             v0))))))
                                                                                                                           (MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'ExUnits_242
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2048
                                                                                                                                    (coe
                                                                                                                                       v0))))))
                                                                                                                     (coe
                                                                                                                        v21)
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txrdmrs_3608
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3628
                                                                                                                              (coe
                                                                                                                                 v4))))))
                                                                                                             (coe
                                                                                                                MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Axiom.Set.Map.du_'8709''7504'_598
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                                                      (coe
                                                                                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))))
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
                                                                                                             (coe
                                                                                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                                                                             (coe
                                                                                                                (\ v21 ->
                                                                                                                   coe
                                                                                                                     MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1720
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                                                                                        ()
                                                                                                                        erased
                                                                                                                        ()
                                                                                                                        erased
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                                                                                           ()
                                                                                                                           erased
                                                                                                                           ()
                                                                                                                           erased
                                                                                                                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Tag_22
                                                                                                                           (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Ix_1348
                                                                                                                              (coe
                                                                                                                                 v0)))
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                                                                                           ()
                                                                                                                           erased
                                                                                                                           ()
                                                                                                                           erased
                                                                                                                           (MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'T_30
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_204
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
                                                                                                                                       (coe
                                                                                                                                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2048
                                                                                                                                          (coe
                                                                                                                                             v0))))))
                                                                                                                           (MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'ExUnits_242
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2048
                                                                                                                                    (coe
                                                                                                                                       v0))))))
                                                                                                                     (coe
                                                                                                                        v21)
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Axiom.Set.Map.du_'8709''7504'_598
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))))))
                                                                                                             (coe
                                                                                                                MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txrdmrs_3608
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3628
                                                                                                                      (coe
                                                                                                                         v4))))))
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_8))
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_12
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                                                                                                             (coe
                                                                                                                MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Slot_88
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1778
                                                                                                                   (coe
                                                                                                                      v0))))
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                                             (coe
                                                                                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txVldt_3488
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3626
                                                                                                                   (coe
                                                                                                                      v4)))))
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_8)))
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_12
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                                                                                                             (coe
                                                                                                                MAlonzo.Code.Ledger.Conway.Specification.Abstract.d_DecEq'45'UTCTime_2526
                                                                                                                (coe
                                                                                                                   v1))))
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                                                                          MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6
                                                                                                          MAlonzo.Code.Agda.Primitive.d_lzero_20
                                                                                                          erased
                                                                                                          MAlonzo.Code.Agda.Primitive.d_lzero_20
                                                                                                          erased
                                                                                                          (MAlonzo.Code.Ledger.Conway.Specification.Abstract.d_epochInfoSlotToUTCTime_2540
                                                                                                             (coe
                                                                                                                v1))
                                                                                                          (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                                             (coe
                                                                                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txVldt_3488
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3626
                                                                                                                   (coe
                                                                                                                      v4)))))
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18))
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_8)))
                                                                                              erased in
                                                                                    coe
                                                                                      (case coe
                                                                                              v21 of
                                                                                         MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v22
                                                                                           -> coe
                                                                                                ("\8704[ (_ , txout) \8712 txOuts .proj\8321 ] inject (utxoEntrySize txout * coinsPerUTxOByte pp) \8804\7511 getValue txout"
                                                                                                 ::
                                                                                                 Data.Text.Text)
                                                                                         MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v22
                                                                                           -> let v23
                                                                                                    = coe
                                                                                                        MAlonzo.Code.Ledger.Prelude.du_dec'45'de'45'morgan_192
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Data.Nat.Properties.d__'8804''63'__2920
                                                                                                              (coe
                                                                                                                 MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txsize_3630
                                                                                                                 (coe
                                                                                                                    v4))
                                                                                                              (coe
                                                                                                                 MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxSize_360
                                                                                                                 (coe
                                                                                                                    MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2490
                                                                                                                    (coe
                                                                                                                       v2)))))
                                                                                                        erased in
                                                                                              coe
                                                                                                (case coe
                                                                                                        v23 of
                                                                                                   MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v24
                                                                                                     -> coe
                                                                                                          ("\8704[ (_ , txout) \8712 txOuts .proj\8321 ] serSize (getValue txout) \8804 maxValSize pp"
                                                                                                           ::
                                                                                                           Data.Text.Text)
                                                                                                   MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v24
                                                                                                     -> let v25
                                                                                                              = coe
                                                                                                                  MAlonzo.Code.Ledger.Prelude.du_dec'45'de'45'morgan_192
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Data.Nat.Properties.d__'8804''63'__2920
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_refScriptsSize_2576
                                                                                                                           (coe
                                                                                                                              v0)
                                                                                                                           (coe
                                                                                                                              v1)
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2506
                                                                                                                              (coe
                                                                                                                                 v3))
                                                                                                                           (coe
                                                                                                                              v4))
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerTx_392
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2490
                                                                                                                              (coe
                                                                                                                                 v2)))))
                                                                                                                  erased in
                                                                                                        coe
                                                                                                          (case coe
                                                                                                                  v25 of
                                                                                                             MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v26
                                                                                                               -> coe
                                                                                                                    ("\8704[ (a , _) \8712 range txOuts ] Sum.All (const \8868) (\955 a \8594 a .BootstrapAddr.attrsSize \8804 64) a"
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
-- Ledger.Conway.Specification.Utxo.Properties.Computational._.Go.computeProofH
d_computeProofH_2916 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2502 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2480 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2496 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3614 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
d_computeProofH_2916 v0 v1 v2 v3 v4 v5
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
                                                                                                                               -> case coe
                                                                                                                                         v38 of
                                                                                                                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v39 v40
                                                                                                                                      -> case coe
                                                                                                                                                v40 of
                                                                                                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v41 v42
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
                                                                                                                                                        MAlonzo.Code.Class.Bifunctor.du_Bifunctor'45'Σ_74)
                                                                                                                                                     (coe
                                                                                                                                                        (\ v43
                                                                                                                                                           v44 ->
                                                                                                                                                           coe
                                                                                                                                                             MAlonzo.Code.Ledger.Conway.Specification.Utxo.C_UTXO'45'inductive_3546
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
                                                                                                                                                                                                                v39)
                                                                                                                                                                                                             (coe
                                                                                                                                                                                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                                                                (coe
                                                                                                                                                                                                                   v41)
                                                                                                                                                                                                                (coe
                                                                                                                                                                                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                                                                   (coe
                                                                                                                                                                                                                      v42)
                                                                                                                                                                                                                   (coe
                                                                                                                                                                                                                      v44))))))))))))))))))))))
                                                                                                                                                  (d_computeProof_2758
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
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             else coe
                    seq (coe v7)
                    (coe
                       MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                       (coe du_genErr_2836 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Utxo.Properties.Computational._.Go.computeProof
d_computeProof_2958 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2502 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2480 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2496 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3614 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
d_computeProof_2958 v0 v1 v2 v3 v4
  = coe
      d_computeProofH_2916 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
      (coe
         MAlonzo.Code.Class.Decidable.Core.d_dec_16
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_UTXO'45'premises_3594
               (coe v0) (coe v1) (coe v2) (coe v3) (coe v4))))
-- Ledger.Conway.Specification.Utxo.Properties.Computational._.Go.completeness
d_completeness_2962 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2502 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2480 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2496 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3614 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2496 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T__'8866'_'8640''10631'_'44'UTXO'10632'__2550 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_completeness_2962 = erased
-- Ledger.Conway.Specification.Utxo.Properties.Computational.Computational-UTXO
d_Computational'45'UTXO_3154 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2502 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'UTXO_3154 v0 v1
  = coe d_Computational'45'UTXO''_2798 (coe v0) (coe v1)
-- Ledger.Conway.Specification.Utxo.Properties.Computational.UTXO-step
d_UTXO'45'step_3164 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2502 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2480 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2496 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3614 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
d_UTXO'45'step_3164 v0 v1
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.du_compute_274
      (coe d_Computational'45'UTXO_3154 (coe v0) (coe v1))
-- Ledger.Conway.Specification.Utxo.Properties.Computational.UTXO-step-computes-UTXO
d_UTXO'45'step'45'computes'45'UTXO_3166 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2502 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2480 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2496 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3614 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2496 ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_UTXO'45'step'45'computes'45'UTXO_3166 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.du_'8801''45'success'8660'STS_300
      (coe d_Computational'45'UTXO_3154 (coe v0) (coe v1)) (coe v2)
      (coe v3) (coe v4) (coe v5)
