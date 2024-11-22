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

module MAlonzo.Code.Ledger.Conway.Conformance.Utxow.Properties where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Axiom.Set
import qualified MAlonzo.Code.Axiom.Set.Map
import qualified MAlonzo.Code.Class.Bifunctor
import qualified MAlonzo.Code.Class.Decidable.Core
import qualified MAlonzo.Code.Class.Decidable.Instances
import qualified MAlonzo.Code.Class.Functor.Core
import qualified MAlonzo.Code.Class.IsSet
import qualified MAlonzo.Code.Data.Sum
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Interface.ComputationalRelation
import qualified MAlonzo.Code.Interface.Hashable
import qualified MAlonzo.Code.Ledger.Abstract
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Utxo.Properties
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Utxow
import qualified MAlonzo.Code.Ledger.Crypto
import qualified MAlonzo.Code.Ledger.Prelude
import qualified MAlonzo.Code.Ledger.Script
import qualified MAlonzo.Code.Ledger.Transaction
import qualified MAlonzo.Code.Ledger.Utxo
import qualified MAlonzo.Code.Ledger.Utxow
import qualified MAlonzo.Code.Prelude
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects
import qualified MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory

-- Ledger.Conway.Conformance.Utxow.Properties._._⊢_⇀⦇_,UTXOW⦈_
d__'8866'_'8640''10631'_'44'UTXOW'10632'__1512 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Utxow.Properties.Computational-UTXOW
d_Computational'45'UTXOW_2026 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1734 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'UTXOW_2026 v0 v1
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.C_MkComputational_412
      (d_computeProof_2066 (coe v0) (coe v1))
-- Ledger.Conway.Conformance.Utxow.Properties._.Go.computeProof
d_computeProof_2066 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1734 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1934 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1948 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2672 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
d_computeProof_2066 v0 v1 v2 v3 v4
  = let v5
          = MAlonzo.Code.Class.Decidable.Core.d_dec_16
              (coe
                 MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                 (coe
                    MAlonzo.Code.Ledger.Conway.Conformance.Utxow.du_UTXOW'45'inductive'45'premises_2290
                    (coe v0) (coe v4) (coe v3))) in
    coe
      (case coe v5 of
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
                                                                          -> coe
                                                                               MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                                               (coe
                                                                                  MAlonzo.Code.Interface.ComputationalRelation.du_Functor'45'ComputationResult_138)
                                                                               () erased () erased
                                                                               (coe
                                                                                  MAlonzo.Code.Class.Bifunctor.du_map'8322''8242'_54
                                                                                  (coe
                                                                                     MAlonzo.Code.Class.Bifunctor.du_Bifunctor'45'Σ_72)
                                                                                  (coe
                                                                                     (\ v23 v24 ->
                                                                                        coe
                                                                                          MAlonzo.Code.Ledger.Conway.Conformance.Utxow.C_UTXOW'45'inductive_2264
                                                                                          (coe
                                                                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                             (coe
                                                                                                (\ v25 ->
                                                                                                   coe
                                                                                                     v9
                                                                                                     v25))
                                                                                             (coe
                                                                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                (coe
                                                                                                   (\ v25 ->
                                                                                                      coe
                                                                                                        v11
                                                                                                        v25))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                   (coe
                                                                                                      (\ v25 ->
                                                                                                         coe
                                                                                                           v13
                                                                                                           v25))
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                      (coe
                                                                                                         v15)
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                         (coe
                                                                                                            (\ v25 ->
                                                                                                               coe
                                                                                                                 v17
                                                                                                                 v25))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                            (coe
                                                                                                               (\ v25 ->
                                                                                                                  coe
                                                                                                                    v19
                                                                                                                    v25))
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                               (coe
                                                                                                                  (\ v25 ->
                                                                                                                     coe
                                                                                                                       v21
                                                                                                                       v25))
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                  (coe
                                                                                                                     v22)
                                                                                                                  (coe
                                                                                                                     v24))))))))))))
                                                                               (MAlonzo.Code.Ledger.Conway.Conformance.Utxo.Properties.d_computeProof_2330
                                                                                  (coe v0) (coe v1)
                                                                                  (coe v2) (coe v3)
                                                                                  (coe v4))
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
                                     MAlonzo.Code.Ledger.Prelude.du_dec'45'de'45'morgan_8
                                     (coe
                                        MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1634
                                        (coe
                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                        (coe
                                           (\ v8 ->
                                              coe
                                                MAlonzo.Code.Ledger.Crypto.d_Dec'45'isSigned_116
                                                (MAlonzo.Code.Ledger.Crypto.d_pkk_172
                                                   (coe
                                                      MAlonzo.Code.Ledger.Transaction.d_crypto_1248
                                                      (coe v0)))
                                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v8))
                                                (coe
                                                   MAlonzo.Code.Ledger.Transaction.d_txidBytes_2376
                                                   v0
                                                   (MAlonzo.Code.Ledger.Transaction.d_txid_2644
                                                      (coe
                                                         MAlonzo.Code.Ledger.Transaction.d_body_2682
                                                         (coe v4))))
                                                (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                   (coe v8))))
                                        (coe
                                           MAlonzo.Code.Axiom.Set.Map.du__'738'_550
                                           (coe
                                              MAlonzo.Code.Ledger.Transaction.d_vkSigs_2662
                                              (coe
                                                 MAlonzo.Code.Ledger.Transaction.d_wits_2684
                                                 (coe v4)))))
                                     erased in
                           coe
                             (case coe v8 of
                                MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v9
                                  -> coe
                                       ("\172\nClass.IsSet.All-syntax (.Axiom.Set.Theory\7496.th List-Model\7496)\n(\955 .patternInTele0 \8594\n   .PKKScheme.isSigned\n   (.Crypto.pkk (.TransactionStructure.crypto txs))\n   (.proj\8321 .patternInTele0)\n   (.TransactionStructure.txidBytes txs\n    (.TransactionStructure.TxBody.txid\n     (.TransactionStructure.Tx.body tx)))\n   (.proj\8322 .patternInTele0))\n(.TransactionStructure.TxWitnesses.vkSigs\n (.TransactionStructure.Tx.wits tx))"
                                        ::
                                        Data.Text.Text)
                                MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v9
                                  -> let v10
                                           = coe
                                               MAlonzo.Code.Ledger.Prelude.du_dec'45'de'45'morgan_8
                                               (coe
                                                  MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1634
                                                  (coe
                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                  (coe
                                                     (\ v10 ->
                                                        coe
                                                          MAlonzo.Code.Ledger.Script.d_Dec'45'validP1Script_108
                                                          (MAlonzo.Code.Ledger.Script.d_p1s_428
                                                             (coe
                                                                MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1816
                                                                (coe v0)))
                                                          (coe
                                                             MAlonzo.Code.Axiom.Set.du_map_398
                                                             (MAlonzo.Code.Axiom.Set.d_th_1470
                                                                (coe
                                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                             (MAlonzo.Code.Interface.Hashable.d_hash_16
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_28
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Transaction.d_crypto_1248
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
                                                                   MAlonzo.Code.Ledger.Transaction.d_vkSigs_2662
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Transaction.d_wits_2684
                                                                      (coe v4)))))
                                                          (MAlonzo.Code.Ledger.Transaction.d_txvldt_2622
                                                             (coe
                                                                MAlonzo.Code.Ledger.Transaction.d_body_2682
                                                                (coe v4)))
                                                          v10))
                                                  (coe
                                                     MAlonzo.Code.Axiom.Set.du_mapPartial_576
                                                     (MAlonzo.Code.Axiom.Set.d_th_1470
                                                        (coe
                                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                     (coe MAlonzo.Code.Data.Sum.du_isInj'8321'_24)
                                                     (MAlonzo.Code.Ledger.Transaction.d_txscripts_2782
                                                        (coe v0) (coe v4)
                                                        (coe
                                                           MAlonzo.Code.Ledger.Utxo.d_utxo_1958
                                                           (coe v3)))))
                                               erased in
                                     coe
                                       (case coe v10 of
                                          MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v11
                                            -> coe
                                                 ("\172\nClass.IsSet.All-syntax (.Axiom.Set.Theory\7496.th List-Model\7496)\n(.Ledger.Script.P1ScriptStructure.validP1Script\n (.Ledger.Script.ScriptStructure.p1s\n  (.TransactionStructure.scriptStructure txs))\n (Axiom.Set.Theory.map (.Axiom.Set.Theory\7496.th List-Model\7496)\n  (.Hashable.hash\n   (.isHashableSet.T-Hashable\n    (.Crypto.khs (.TransactionStructure.crypto txs))))\n  (Class.IsSet.dom (.Axiom.Set.Theory\7496.th List-Model\7496)\n   (.TransactionStructure.TxWitnesses.vkSigs\n    (.TransactionStructure.Tx.wits tx))))\n (.TransactionStructure.TxBody.txvldt\n  (.TransactionStructure.Tx.body tx)))\n(Axiom.Set.Theory.mapPartial (.Axiom.Set.Theory\7496.th List-Model\7496)\n isInj\8321\n (TransactionStructure.txscripts txs tx\n  (.Ledger.Utxo.UTxOState.utxo s)))"
                                                  ::
                                                  Data.Text.Text)
                                          MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v11
                                            -> let v12
                                                     = coe
                                                         MAlonzo.Code.Ledger.Prelude.du_dec'45'de'45'morgan_8
                                                         (coe
                                                            MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1634
                                                            (coe
                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                            (coe
                                                               (\ v12 ->
                                                                  coe
                                                                    MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1672
                                                                    (coe
                                                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Transaction.d_crypto_1248
                                                                             (coe v0))))
                                                                    (coe v12)
                                                                    (coe
                                                                       MAlonzo.Code.Axiom.Set.du_map_398
                                                                       (MAlonzo.Code.Axiom.Set.d_th_1470
                                                                          (coe
                                                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                       (MAlonzo.Code.Interface.Hashable.d_hash_16
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_28
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Transaction.d_crypto_1248
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
                                                                             MAlonzo.Code.Ledger.Transaction.d_vkSigs_2662
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Transaction.d_wits_2684
                                                                                (coe v4)))))))
                                                            (coe
                                                               MAlonzo.Code.Ledger.Utxow.du_witsVKeyNeeded_2296
                                                               v0
                                                               (MAlonzo.Code.Ledger.Utxo.d_utxo_1958
                                                                  (coe v3))
                                                               (MAlonzo.Code.Ledger.Transaction.d_body_2682
                                                                  (coe v4))))
                                                         erased in
                                               coe
                                                 (case coe v12 of
                                                    MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v13
                                                      -> coe
                                                           ("\172\n(.Axiom.Set.Theory\7496.th List-Model\7496 Axiom.Set.Theory.\8838\n Ledger.Utxow.witsVKeyNeeded txs abs (.Ledger.Utxo.UTxOState.utxo s)\n (.TransactionStructure.Tx.body tx))\n(Axiom.Set.Theory.map (.Axiom.Set.Theory\7496.th List-Model\7496)\n (.Hashable.hash\n  (.isHashableSet.T-Hashable\n   (.Crypto.khs (.TransactionStructure.crypto txs))))\n (Class.IsSet.dom (.Axiom.Set.Theory\7496.th List-Model\7496)\n  (.TransactionStructure.TxWitnesses.vkSigs\n   (.TransactionStructure.Tx.wits tx))))"
                                                            ::
                                                            Data.Text.Text)
                                                    MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v13
                                                      -> let v14
                                                               = coe
                                                                   MAlonzo.Code.Ledger.Prelude.du_dec'45'de'45'morgan_8
                                                                   (coe
                                                                      MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                                                                      (coe
                                                                         MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1634
                                                                         (coe
                                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                                         (coe
                                                                            (\ v14 ->
                                                                               coe
                                                                                 MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1672
                                                                                 (coe
                                                                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Transaction.d_crypto_1248
                                                                                       (coe v0)))
                                                                                 (coe v14)
                                                                                 (coe
                                                                                    MAlonzo.Code.Axiom.Set.du_map_398
                                                                                    (MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                       (coe
                                                                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                    (MAlonzo.Code.Interface.Hashable.d_hash_16
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Script.du_Hashable'45'Script_526
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1816
                                                                                             (coe
                                                                                                v0))))
                                                                                    (MAlonzo.Code.Ledger.Transaction.d_scripts_2664
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Transaction.d_wits_2684
                                                                                          (coe
                                                                                             v4))))))
                                                                         (coe
                                                                            MAlonzo.Code.Axiom.Set.du__'65340'__730
                                                                            (coe
                                                                               MAlonzo.Code.Axiom.Set.d_th_1470
                                                                               (coe
                                                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                            (coe
                                                                               MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600
                                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                               erased
                                                                               (MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Transaction.d_crypto_1248
                                                                                     (coe v0))))
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Utxow.du_scriptsNeeded_2298
                                                                               v0
                                                                               (MAlonzo.Code.Ledger.Utxo.d_utxo_1958
                                                                                  (coe v3))
                                                                               (MAlonzo.Code.Ledger.Transaction.d_body_2682
                                                                                  (coe v4)))
                                                                            (coe
                                                                               MAlonzo.Code.Axiom.Set.du_map_398
                                                                               (MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                  (coe
                                                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                               (MAlonzo.Code.Interface.Hashable.d_hash_16
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Script.du_Hashable'45'Script_526
                                                                                     (coe
                                                                                        MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1816
                                                                                        (coe v0))))
                                                                               (MAlonzo.Code.Ledger.Transaction.d_refScripts_2730
                                                                                  (coe v0) (coe v4)
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Utxo.d_utxo_1958
                                                                                     (coe v3))))))
                                                                      (coe
                                                                         MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1634
                                                                         (coe
                                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                                         (coe
                                                                            (\ v14 ->
                                                                               coe
                                                                                 MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1672
                                                                                 (coe
                                                                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Transaction.d_crypto_1248
                                                                                       (coe v0)))
                                                                                 (coe v14)
                                                                                 (coe
                                                                                    MAlonzo.Code.Axiom.Set.du__'65340'__730
                                                                                    (coe
                                                                                       MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                       (coe
                                                                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                    (coe
                                                                                       MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600
                                                                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                                       erased
                                                                                       (MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Transaction.d_crypto_1248
                                                                                             (coe
                                                                                                v0))))
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Utxow.du_scriptsNeeded_2298
                                                                                       v0
                                                                                       (MAlonzo.Code.Ledger.Utxo.d_utxo_1958
                                                                                          (coe v3))
                                                                                       (MAlonzo.Code.Ledger.Transaction.d_body_2682
                                                                                          (coe v4)))
                                                                                    (coe
                                                                                       MAlonzo.Code.Axiom.Set.du_map_398
                                                                                       (MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                          (coe
                                                                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                       (MAlonzo.Code.Interface.Hashable.d_hash_16
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Script.du_Hashable'45'Script_526
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1816
                                                                                                (coe
                                                                                                   v0))))
                                                                                       (MAlonzo.Code.Ledger.Transaction.d_refScripts_2730
                                                                                          (coe v0)
                                                                                          (coe v4)
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Utxo.d_utxo_1958
                                                                                             (coe
                                                                                                v3)))))))
                                                                         (coe
                                                                            MAlonzo.Code.Axiom.Set.du_map_398
                                                                            (MAlonzo.Code.Axiom.Set.d_th_1470
                                                                               (coe
                                                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                            (MAlonzo.Code.Interface.Hashable.d_hash_16
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Script.du_Hashable'45'Script_526
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1816
                                                                                     (coe v0))))
                                                                            (MAlonzo.Code.Ledger.Transaction.d_scripts_2664
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Transaction.d_wits_2684
                                                                                  (coe v4))))))
                                                                   erased in
                                                         coe
                                                           (case coe v14 of
                                                              MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v15
                                                                -> coe
                                                                     ("\172\n(.Axiom.Set.Theory\7496.th List-Model\7496 Axiom.Set.Theory.\8801\7497\n (.Axiom.Set.Theory\7496.th List-Model\7496 Axiom.Set.Theory.Intersection.\65340\n  .Axiom.Set.Theory\7496.\8712-sp List-Model\7496)\n (Ledger.Utxow.scriptsNeeded txs abs (.Ledger.Utxo.UTxOState.utxo s)\n  (.TransactionStructure.Tx.body tx))\n (Axiom.Set.Theory.map (.Axiom.Set.Theory\7496.th List-Model\7496)\n  (.Hashable.hash\n   (Ledger.Script.ScriptStructure.Hashable-Script\n    (.TransactionStructure.scriptStructure txs)))\n  (TransactionStructure.refScripts txs tx\n   (.Ledger.Utxo.UTxOState.utxo s))))\n(Axiom.Set.Theory.map (.Axiom.Set.Theory\7496.th List-Model\7496)\n (.Hashable.hash\n  (Ledger.Script.ScriptStructure.Hashable-Script\n   (.TransactionStructure.scriptStructure txs)))\n (.TransactionStructure.TxWitnesses.scripts\n  (.TransactionStructure.Tx.wits tx)))"
                                                                      ::
                                                                      Data.Text.Text)
                                                              MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v15
                                                                -> let v16
                                                                         = coe
                                                                             MAlonzo.Code.Ledger.Prelude.du_dec'45'de'45'morgan_8
                                                                             (coe
                                                                                MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1634
                                                                                (coe
                                                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                                                (coe
                                                                                   (\ v16 ->
                                                                                      coe
                                                                                        MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1672
                                                                                        (coe
                                                                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                                                        (coe
                                                                                           MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Script.d_Data'688'_190
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Script.d_ps_452
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1816
                                                                                                       (coe
                                                                                                          v0))))))
                                                                                        (coe v16)
                                                                                        (coe
                                                                                           MAlonzo.Code.Class.IsSet.du_dom_548
                                                                                           (coe
                                                                                              MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                              (coe
                                                                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                           (coe
                                                                                              MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Transaction.d_txdats_2666
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Transaction.d_wits_2684
                                                                                                 (coe
                                                                                                    v4))))))
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Utxo.du_getInputHashes_1860
                                                                                   (coe v0) (coe v4)
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.Utxo.d_utxo_1958
                                                                                      (coe v3))))
                                                                             erased in
                                                                   coe
                                                                     (case coe v16 of
                                                                        MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v17
                                                                          -> coe
                                                                               ("\172\n(.Axiom.Set.Theory\7496.th List-Model\7496 Axiom.Set.Theory.\8838\n Ledger.Utxo.getInputHashes txs abs tx\n (.Ledger.Utxo.UTxOState.utxo s))\n(Class.IsSet.dom (.Axiom.Set.Theory\7496.th List-Model\7496)\n (.TransactionStructure.TxWitnesses.txdats\n  (.TransactionStructure.Tx.wits tx)))"
                                                                                ::
                                                                                Data.Text.Text)
                                                                        MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v17
                                                                          -> let v18
                                                                                   = coe
                                                                                       MAlonzo.Code.Ledger.Prelude.du_dec'45'de'45'morgan_8
                                                                                       (coe
                                                                                          MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1634
                                                                                          (coe
                                                                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                                                          (coe
                                                                                             (\ v18 ->
                                                                                                coe
                                                                                                  MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1672
                                                                                                  (coe
                                                                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Ledger.Script.d_Data'688'_190
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Ledger.Script.d_ps_452
                                                                                                              (coe
                                                                                                                 MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1816
                                                                                                                 (coe
                                                                                                                    v0))))))
                                                                                                  (coe
                                                                                                     v18)
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Axiom.Set.du__'8746'__680
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                                        (coe
                                                                                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Ledger.Utxo.du_getInputHashes_1860
                                                                                                        (coe
                                                                                                           v0)
                                                                                                        (coe
                                                                                                           v4)
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Ledger.Utxo.d_utxo_1958
                                                                                                           (coe
                                                                                                              v3)))
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Axiom.Set.du__'8746'__680
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                                           (coe
                                                                                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Ledger.Utxo.du_getDataHashes_1856
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Class.IsSet.du_range_550
                                                                                                              (coe
                                                                                                                 MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                                                 (coe
                                                                                                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                              (coe
                                                                                                                 MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                                                                                                              (coe
                                                                                                                 MAlonzo.Code.Ledger.Transaction.d_txouts_2616
                                                                                                                 (coe
                                                                                                                    MAlonzo.Code.Ledger.Transaction.d_body_2682
                                                                                                                    (coe
                                                                                                                       v4)))))
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Ledger.Utxo.du_getDataHashes_1856
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Class.IsSet.du_range_550
                                                                                                              (coe
                                                                                                                 MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                                                 (coe
                                                                                                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                              (coe
                                                                                                                 MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                                                                                                              (coe
                                                                                                                 MAlonzo.Code.Axiom.Set.Map.du__'8739'__1342
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
                                                                                                                       MAlonzo.Code.Agda.Primitive.d_lzero_20
                                                                                                                       erased
                                                                                                                       MAlonzo.Code.Agda.Primitive.d_lzero_20
                                                                                                                       erased
                                                                                                                       (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1208
                                                                                                                          (coe
                                                                                                                             v0))
                                                                                                                       (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1206
                                                                                                                          (coe
                                                                                                                             v0))))
                                                                                                                 (coe
                                                                                                                    MAlonzo.Code.Ledger.Utxo.d_utxo_1958
                                                                                                                    (coe
                                                                                                                       v3))
                                                                                                                 (coe
                                                                                                                    MAlonzo.Code.Ledger.Transaction.d_refInputs_2614
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Ledger.Transaction.d_body_2682
                                                                                                                       (coe
                                                                                                                          v4))))))))))
                                                                                          (coe
                                                                                             MAlonzo.Code.Class.IsSet.du_dom_548
                                                                                             (coe
                                                                                                MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                                (coe
                                                                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                             (coe
                                                                                                MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Transaction.d_txdats_2666
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Transaction.d_wits_2684
                                                                                                   (coe
                                                                                                      v4)))))
                                                                                       erased in
                                                                             coe
                                                                               (case coe v18 of
                                                                                  MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v19
                                                                                    -> coe
                                                                                         ("\172\n(.Axiom.Set.Theory\7496.th List-Model\7496 Axiom.Set.Theory.\8838\n Class.IsSet.dom (.Axiom.Set.Theory\7496.th List-Model\7496)\n (.TransactionStructure.TxWitnesses.txdats\n  (.TransactionStructure.Tx.wits tx)))\n((.Axiom.Set.Theory\7496.th List-Model\7496 Axiom.Set.Theory.\8746\n  Ledger.Utxo.getInputHashes txs abs tx\n  (.Ledger.Utxo.UTxOState.utxo s))\n ((.Axiom.Set.Theory\7496.th List-Model\7496 Axiom.Set.Theory.\8746\n   Ledger.Utxo.getDataHashes txs abs\n   (Class.IsSet.range (.Axiom.Set.Theory\7496.th List-Model\7496)\n    (.TransactionStructure.TxBody.txouts\n     (.TransactionStructure.Tx.body tx))))\n  (Ledger.Utxo.getDataHashes txs abs\n   (Class.IsSet.range (.Axiom.Set.Theory\7496.th List-Model\7496)\n    ((.Axiom.Set.Theory\7496.th List-Model\7496 Axiom.Set.Map.Restriction\7504.\8739\n      .Axiom.Set.Theory\7496.\8712-sp List-Model\7496)\n     (.Ledger.Utxo.UTxOState.utxo s)\n     (.TransactionStructure.TxBody.refInputs\n      (.TransactionStructure.Tx.body tx)))))))"
                                                                                          ::
                                                                                          Data.Text.Text)
                                                                                  MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v19
                                                                                    -> let v20
                                                                                             = coe
                                                                                                 MAlonzo.Code.Ledger.Prelude.du_dec'45'de'45'morgan_8
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1634
                                                                                                    (coe
                                                                                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                                                                    (coe
                                                                                                       (\ v20 ->
                                                                                                          coe
                                                                                                            MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1672
                                                                                                            (coe
                                                                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Script.d_DecEq'45'Language_214
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Script.d_ps_452
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1816
                                                                                                                     (coe
                                                                                                                        v0))))
                                                                                                            (coe
                                                                                                               v20)
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Utxow.du_allowedLanguages_2160
                                                                                                               (coe
                                                                                                                  v0)
                                                                                                               (coe
                                                                                                                  v4)
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Utxo.d_utxo_1958
                                                                                                                  (coe
                                                                                                                     v3)))))
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Ledger.Utxow.du_languages_2144
                                                                                                       (coe
                                                                                                          v0)
                                                                                                       (coe
                                                                                                          v4)
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Ledger.Utxo.d_utxo_1958
                                                                                                          (coe
                                                                                                             v3))))
                                                                                                 erased in
                                                                                       coe
                                                                                         (case coe
                                                                                                 v20 of
                                                                                            MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v21
                                                                                              -> coe
                                                                                                   ("\172\n(.Axiom.Set.Theory\7496.th List-Model\7496 Axiom.Set.Theory.\8838\n Ledger.Utxow.languages txs abs tx (.Ledger.Utxo.UTxOState.utxo s))\n(Ledger.Utxow.allowedLanguages txs abs tx\n (.Ledger.Utxo.UTxOState.utxo s))"
                                                                                                    ::
                                                                                                    Data.Text.Text)
                                                                                            MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v21
                                                                                              -> coe
                                                                                                   ("\172\n.TransactionStructure.TxBody.txADhash\n(.TransactionStructure.Tx.body tx)\n\8801\nFunctor.fmap Functor-Maybe\n(.Hashable.hash\n (.isHashableSet.T-Hashable\n  (.TransactionStructure.adHashingScheme txs)))\n(.TransactionStructure.Tx.txAD tx)"
                                                                                                    ::
                                                                                                    Data.Text.Text)
                                                                                            _ -> MAlonzo.RTE.mazUnreachableError)
                                                                                  _ -> MAlonzo.RTE.mazUnreachableError)
                                                                        _ -> MAlonzo.RTE.mazUnreachableError)
                                                              _ -> MAlonzo.RTE.mazUnreachableError)
                                                    _ -> MAlonzo.RTE.mazUnreachableError)
                                          _ -> MAlonzo.RTE.mazUnreachableError)
                                _ -> MAlonzo.RTE.mazUnreachableError)))
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Conway.Conformance.Utxow.Properties._.Go.completeness
d_completeness_2090 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1734 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1934 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1948 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2672 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1948 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Utxow.T__'8866'_'8640''10631'_'44'UTXOW'10632'__2158 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_completeness_2090 = erased
