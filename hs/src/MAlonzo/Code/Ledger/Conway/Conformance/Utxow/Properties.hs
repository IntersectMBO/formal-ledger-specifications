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
import qualified MAlonzo.Code.Agda.Builtin.Maybe
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Builtin.Unit
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Axiom.Set
import qualified MAlonzo.Code.Axiom.Set.Map
import qualified MAlonzo.Code.Class.Bifunctor
import qualified MAlonzo.Code.Class.Decidable.Core
import qualified MAlonzo.Code.Class.Decidable.Instances
import qualified MAlonzo.Code.Class.Functor.Core
import qualified MAlonzo.Code.Class.IsSet
import qualified MAlonzo.Code.Class.ToBool
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Interface.ComputationalRelation
import qualified MAlonzo.Code.Interface.Hashable
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Utxo.Properties
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Utxow
import qualified MAlonzo.Code.Ledger.Conway.Specification.Abstract
import qualified MAlonzo.Code.Ledger.Conway.Specification.Script.Base
import qualified MAlonzo.Code.Ledger.Conway.Specification.Script.Validation
import qualified MAlonzo.Code.Ledger.Conway.Specification.Transaction
import qualified MAlonzo.Code.Ledger.Conway.Specification.Utxo
import qualified MAlonzo.Code.Ledger.Conway.Specification.Utxow
import qualified MAlonzo.Code.Ledger.Core.Specification.Address
import qualified MAlonzo.Code.Ledger.Core.Specification.Crypto
import qualified MAlonzo.Code.Level
import qualified MAlonzo.Code.Prelude
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects
import qualified MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory
import qualified MAlonzo.Code.QstdlibZ45Zmeta.Tactic.GenError

-- Ledger.Conway.Conformance.Utxow.Properties._._⊢_⇀⦇_,UTXOW⦈_
d__'8866'_'8640''10631'_'44'UTXOW'10632'__1816 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Utxow.Properties.Computational-UTXOW
d_Computational'45'UTXOW_1912 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2250 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'UTXOW_1912 v0 v1
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.C_MkComputational_412
      (d_computeProof_1952 (coe v0) (coe v1))
-- Ledger.Conway.Conformance.Utxow.Properties._.Go.computeProof
d_computeProof_1952 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2250 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2336 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2352 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3392 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
d_computeProof_1952 v0 v1 v2 v3 v4
  = let v5
          = MAlonzo.Code.Class.Decidable.Core.d_dec_16
              (coe
                 MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                 (coe
                    MAlonzo.Code.Ledger.Conway.Conformance.Utxow.du_UTXOW'45'inductive'45'premises_2770
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
                                                                                     MAlonzo.Code.Class.Bifunctor.du_Bifunctor'45'Σ_74)
                                                                                  (coe
                                                                                     (\ v23 v24 ->
                                                                                        coe
                                                                                          MAlonzo.Code.Ledger.Conway.Conformance.Utxow.C_UTXOW'45'inductive_2744
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
                                                                                                                     v22)
                                                                                                                  (coe
                                                                                                                     v24))))))))))))
                                                                               (MAlonzo.Code.Ledger.Conway.Conformance.Utxo.Properties.d_computeProof_2842
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
                                     MAlonzo.Code.QstdlibZ45Zmeta.Tactic.GenError.du_dec'45'de'45'morgan_10
                                     (coe
                                        MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1644
                                        (coe
                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                        (coe
                                           (\ v8 ->
                                              coe
                                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Dec'45'isSigned_120
                                                (MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_178
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                                      (coe v0)))
                                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v8))
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txidBytes_2492
                                                   v0
                                                   (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txId_3258
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3404
                                                         (coe v4))))
                                                (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                   (coe v8))))
                                        (coe
                                           MAlonzo.Code.Axiom.Set.Map.du__'738'_554
                                           (coe
                                              MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_vkSigs_3380
                                              (coe
                                                 MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3406
                                                 (coe v4)))))
                                     erased in
                           coe
                             (case coe v8 of
                                MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v9
                                  -> coe
                                       ("\172\nClass.IsSet.All-syntax (.Axiom.Set.Theory\7496.th List-Model\7496)\n(\955 .patternInTele0 \8594\n   .PKKScheme.isSigned\n   (.CryptoStructure.pkk (.TransactionStructure.cryptoStructure txs))\n   (.proj\8321 .patternInTele0)\n   (.TransactionStructure.txidBytes txs\n    (.TransactionStructure.TxBody.txId\n     (.TransactionStructure.Tx.body tx)))\n   (.proj\8322 .patternInTele0))\n(.TransactionStructure.TxWitnesses.vkSigs\n (.TransactionStructure.Tx.wits tx))"
                                        ::
                                        Data.Text.Text)
                                MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v9
                                  -> let v10
                                           = coe
                                               MAlonzo.Code.QstdlibZ45Zmeta.Tactic.GenError.du_dec'45'de'45'morgan_10
                                               (coe
                                                  MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1644
                                                  (coe
                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                  (coe
                                                     (\ v10 ->
                                                        coe
                                                          MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_12
                                                          (coe
                                                             MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1682
                                                             (coe
                                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                             (coe
                                                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                                                   (coe v0)))
                                                             (coe
                                                                MAlonzo.Code.Interface.Hashable.d_hash_16
                                                                (MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Hashable'45'P1Script_118
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_p1s_302
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1896
                                                                         (coe v0))))
                                                                v10)
                                                             (coe
                                                                MAlonzo.Code.Axiom.Set.du_mapPartial_578
                                                                (MAlonzo.Code.Axiom.Set.d_th_1480
                                                                   (coe
                                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                (\ v11 ->
                                                                   coe
                                                                     MAlonzo.Code.Ledger.Core.Specification.Address.du_isScriptObj_56
                                                                     (coe
                                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                        (coe v11)))
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_credsNeeded_2564
                                                                   (coe v0)
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2362
                                                                      (coe v3))
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3404
                                                                      (coe v4)))))
                                                          (coe
                                                             MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Dec'45'validP1Script_116
                                                             (MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_p1s_302
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1896
                                                                   (coe v0)))
                                                             (coe
                                                                MAlonzo.Code.Axiom.Set.du_map_400
                                                                (MAlonzo.Code.Axiom.Set.d_th_1480
                                                                   (coe
                                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                (MAlonzo.Code.Interface.Hashable.d_hash_16
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                                                            (coe v0)))))
                                                                (coe
                                                                   MAlonzo.Code.Class.IsSet.du_dom_562
                                                                   (coe
                                                                      MAlonzo.Code.Axiom.Set.d_th_1480
                                                                      (coe
                                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                   (coe
                                                                      MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570)
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_vkSigs_3380
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3406
                                                                         (coe v4)))))
                                                             (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txVldt_3266
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3404
                                                                   (coe v4)))
                                                             v10)))
                                                  (coe
                                                     MAlonzo.Code.Axiom.Set.du_mapPartial_578
                                                     (MAlonzo.Code.Axiom.Set.d_th_1480
                                                        (coe
                                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_toP1Script_412)
                                                     (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txscripts_3520
                                                        (coe v0) (coe v4)
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2362
                                                           (coe v3)))))
                                               erased in
                                     coe
                                       (case coe v10 of
                                          MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v11
                                            -> coe
                                                 ("\172\nClass.IsSet.All-syntax (.Axiom.Set.Theory\7496.th List-Model\7496)\n(\955 s\8321 \8594\n   (z\n    : (Class.IsSet.IsSet-Set (.Axiom.Set.Theory\7496.th List-Model\7496)\n       Class.IsSet.IsSet.\8712\n       .Hashable.hash\n       (.Ledger.Conway.Specification.Script.Base.P1ScriptStructure.Hashable-P1Script\n        (.Ledger.Conway.Specification.Script.Base.ScriptStructure.p1s\n         (.TransactionStructure.scriptStructure txs)))\n       s\8321)\n      (Axiom.Set.Theory.mapPartial (.Axiom.Set.Theory\7496.th List-Model\7496)\n       (\955 x \8594\n          Ledger.Core.Specification.Address.isScriptObj\n          (.Ledger.Core.Specification.Epoch.GlobalConstants.Network\n           (.TransactionStructure.globalConstants txs))\n          (.isHashableSet.THash\n           (.CryptoStructure.khs (.TransactionStructure.cryptoStructure txs)))\n          (.CryptoStructure.ScriptHash\n           (.TransactionStructure.cryptoStructure txs))\n          (.proj\8322 x))\n       (Ledger.Conway.Specification.Script.Validation.credsNeeded txs abs\n        (.Ledger.Conway.Specification.Utxo.UTxOState.utxo s)\n        (.TransactionStructure.Tx.body tx)))) \8594\n   .Ledger.Conway.Specification.Script.Base.P1ScriptStructure.validP1Script\n   (.Ledger.Conway.Specification.Script.Base.ScriptStructure.p1s\n    (.TransactionStructure.scriptStructure txs))\n   (Axiom.Set.Theory.map (.Axiom.Set.Theory\7496.th List-Model\7496)\n    (.Hashable.hash\n     (.isHashableSet.T-Hashable\n      (.CryptoStructure.khs\n       (.TransactionStructure.cryptoStructure txs))))\n    (Class.IsSet.dom (.Axiom.Set.Theory\7496.th List-Model\7496)\n     (.TransactionStructure.TxWitnesses.vkSigs\n      (.TransactionStructure.Tx.wits tx))))\n   (.TransactionStructure.TxBody.txVldt\n    (.TransactionStructure.Tx.body tx))\n   s\8321)\n(Axiom.Set.Theory.mapPartial (.Axiom.Set.Theory\7496.th List-Model\7496)\n (Ledger.Conway.Specification.Script.Base.ScriptStructure.toP1Script\n  (.TransactionStructure.scriptStructure txs))\n (TransactionStructure.txscripts txs tx\n  (.Ledger.Conway.Specification.Utxo.UTxOState.utxo s)))"
                                                  ::
                                                  Data.Text.Text)
                                          MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v11
                                            -> let v12
                                                     = coe
                                                         MAlonzo.Code.QstdlibZ45Zmeta.Tactic.GenError.du_dec'45'de'45'morgan_10
                                                         (coe
                                                            MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1644
                                                            (coe
                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                            (coe
                                                               (\ v12 ->
                                                                  coe
                                                                    MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1682
                                                                    (coe
                                                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                                                             (coe v0))))
                                                                    (coe v12)
                                                                    (coe
                                                                       MAlonzo.Code.Axiom.Set.du_map_400
                                                                       (MAlonzo.Code.Axiom.Set.d_th_1480
                                                                          (coe
                                                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                       (MAlonzo.Code.Interface.Hashable.d_hash_16
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                                                                   (coe v0)))))
                                                                       (coe
                                                                          MAlonzo.Code.Class.IsSet.du_dom_562
                                                                          (coe
                                                                             MAlonzo.Code.Axiom.Set.d_th_1480
                                                                             (coe
                                                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                          (coe
                                                                             MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570)
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_vkSigs_3380
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3406
                                                                                (coe v4)))))))
                                                            (coe
                                                               MAlonzo.Code.Axiom.Set.du_mapPartial_578
                                                               (MAlonzo.Code.Axiom.Set.d_th_1480
                                                                  (coe
                                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                               (\ v12 ->
                                                                  coe
                                                                    MAlonzo.Code.Ledger.Core.Specification.Address.du_isKeyHashObj_46
                                                                    (coe
                                                                       MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                       (coe v12)))
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_credsNeeded_2564
                                                                  (coe v0)
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2362
                                                                     (coe v3))
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3404
                                                                     (coe v4)))))
                                                         erased in
                                               coe
                                                 (case coe v12 of
                                                    MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v13
                                                      -> coe
                                                           ("\172\n(HasSubset-Set HasSubset.\8838\n Axiom.Set.Theory.mapPartial (.Axiom.Set.Theory\7496.th List-Model\7496)\n (\955 x \8594\n    Ledger.Core.Specification.Address.isKeyHashObj\n    (.Ledger.Core.Specification.Epoch.GlobalConstants.Network\n     (.TransactionStructure.globalConstants txs))\n    (.isHashableSet.THash\n     (.CryptoStructure.khs (.TransactionStructure.cryptoStructure txs)))\n    (.CryptoStructure.ScriptHash\n     (.TransactionStructure.cryptoStructure txs))\n    (.proj\8322 x))\n (Ledger.Conway.Specification.Script.Validation.credsNeeded txs abs\n  (.Ledger.Conway.Specification.Utxo.UTxOState.utxo s)\n  (.TransactionStructure.Tx.body tx)))\n(Axiom.Set.Theory.map (.Axiom.Set.Theory\7496.th List-Model\7496)\n (.Hashable.hash\n  (.isHashableSet.T-Hashable\n   (.CryptoStructure.khs\n    (.TransactionStructure.cryptoStructure txs))))\n (Class.IsSet.dom (.Axiom.Set.Theory\7496.th List-Model\7496)\n  (.TransactionStructure.TxWitnesses.vkSigs\n   (.TransactionStructure.Tx.wits tx))))"
                                                            ::
                                                            Data.Text.Text)
                                                    MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v13
                                                      -> let v14
                                                               = coe
                                                                   MAlonzo.Code.QstdlibZ45Zmeta.Tactic.GenError.du_dec'45'de'45'morgan_10
                                                                   (coe
                                                                      MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                                                                      (coe
                                                                         MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1644
                                                                         (coe
                                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                                         (coe
                                                                            (\ v14 ->
                                                                               coe
                                                                                 MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1682
                                                                                 (coe
                                                                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                                                                       (coe v0)))
                                                                                 (coe v14)
                                                                                 (coe
                                                                                    MAlonzo.Code.Axiom.Set.du_map_400
                                                                                    (MAlonzo.Code.Axiom.Set.d_th_1480
                                                                                       (coe
                                                                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                    (MAlonzo.Code.Interface.Hashable.d_hash_16
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_Hashable'45'Script_398
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1896
                                                                                             (coe
                                                                                                v0))))
                                                                                    (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scripts_3382
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3406
                                                                                          (coe
                                                                                             v4))))))
                                                                         (coe
                                                                            MAlonzo.Code.Axiom.Set.du__'65340'__732
                                                                            (coe
                                                                               MAlonzo.Code.Axiom.Set.d_th_1480
                                                                               (coe
                                                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                            (coe
                                                                               MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                               erased
                                                                               (MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                                                                     (coe v0))))
                                                                            (coe
                                                                               MAlonzo.Code.Axiom.Set.du_mapPartial_578
                                                                               (MAlonzo.Code.Axiom.Set.d_th_1480
                                                                                  (coe
                                                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                               (\ v14 ->
                                                                                  coe
                                                                                    MAlonzo.Code.Ledger.Core.Specification.Address.du_isScriptObj_56
                                                                                    (coe
                                                                                       MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                       (coe v14)))
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_credsNeeded_2564
                                                                                  (coe v0)
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2362
                                                                                     (coe v3))
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3404
                                                                                     (coe v4))))
                                                                            (coe
                                                                               MAlonzo.Code.Axiom.Set.du_map_400
                                                                               (MAlonzo.Code.Axiom.Set.d_th_1480
                                                                                  (coe
                                                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                               (MAlonzo.Code.Interface.Hashable.d_hash_16
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_Hashable'45'Script_398
                                                                                     (coe
                                                                                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1896
                                                                                        (coe v0))))
                                                                               (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_refScripts_3472
                                                                                  (coe v0) (coe v4)
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2362
                                                                                     (coe v3))))))
                                                                      (coe
                                                                         MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1644
                                                                         (coe
                                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                                         (coe
                                                                            (\ v14 ->
                                                                               coe
                                                                                 MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1682
                                                                                 (coe
                                                                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                                                                       (coe v0)))
                                                                                 (coe v14)
                                                                                 (coe
                                                                                    MAlonzo.Code.Axiom.Set.du__'65340'__732
                                                                                    (coe
                                                                                       MAlonzo.Code.Axiom.Set.d_th_1480
                                                                                       (coe
                                                                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                    (coe
                                                                                       MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                                                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                                       erased
                                                                                       (MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                                                                             (coe
                                                                                                v0))))
                                                                                    (coe
                                                                                       MAlonzo.Code.Axiom.Set.du_mapPartial_578
                                                                                       (MAlonzo.Code.Axiom.Set.d_th_1480
                                                                                          (coe
                                                                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                       (\ v15 ->
                                                                                          coe
                                                                                            MAlonzo.Code.Ledger.Core.Specification.Address.du_isScriptObj_56
                                                                                            (coe
                                                                                               MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                               (coe
                                                                                                  v15)))
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_credsNeeded_2564
                                                                                          (coe v0)
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2362
                                                                                             (coe
                                                                                                v3))
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3404
                                                                                             (coe
                                                                                                v4))))
                                                                                    (coe
                                                                                       MAlonzo.Code.Axiom.Set.du_map_400
                                                                                       (MAlonzo.Code.Axiom.Set.d_th_1480
                                                                                          (coe
                                                                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                       (MAlonzo.Code.Interface.Hashable.d_hash_16
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_Hashable'45'Script_398
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1896
                                                                                                (coe
                                                                                                   v0))))
                                                                                       (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_refScripts_3472
                                                                                          (coe v0)
                                                                                          (coe v4)
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2362
                                                                                             (coe
                                                                                                v3)))))))
                                                                         (coe
                                                                            MAlonzo.Code.Axiom.Set.du_map_400
                                                                            (MAlonzo.Code.Axiom.Set.d_th_1480
                                                                               (coe
                                                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                            (MAlonzo.Code.Interface.Hashable.d_hash_16
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_Hashable'45'Script_398
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1896
                                                                                     (coe v0))))
                                                                            (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scripts_3382
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3406
                                                                                  (coe v4))))))
                                                                   erased in
                                                         coe
                                                           (case coe v14 of
                                                              MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v15
                                                                -> coe
                                                                     ("\172\n(.Axiom.Set.Theory\7496.th List-Model\7496 Axiom.Set.Theory.\8801\7497\n (HasSubtract-\8473 HasSubtract.-\n  Axiom.Set.Theory.mapPartial (.Axiom.Set.Theory\7496.th List-Model\7496)\n  (\955 x \8594\n     Ledger.Core.Specification.Address.isScriptObj\n     (.Ledger.Core.Specification.Epoch.GlobalConstants.Network\n      (.TransactionStructure.globalConstants txs))\n     (.isHashableSet.THash\n      (.CryptoStructure.khs (.TransactionStructure.cryptoStructure txs)))\n     (.CryptoStructure.ScriptHash\n      (.TransactionStructure.cryptoStructure txs))\n     (.proj\8322 x))\n  (Ledger.Conway.Specification.Script.Validation.credsNeeded txs abs\n   (.Ledger.Conway.Specification.Utxo.UTxOState.utxo s)\n   (.TransactionStructure.Tx.body tx)))\n (Axiom.Set.Theory.map (.Axiom.Set.Theory\7496.th List-Model\7496)\n  (.Hashable.hash\n   (Ledger.Conway.Specification.Script.Base.ScriptStructure.Hashable-Script\n    (.TransactionStructure.scriptStructure txs)))\n  (TransactionStructure.refScripts txs tx\n   (.Ledger.Conway.Specification.Utxo.UTxOState.utxo s))))\n(Axiom.Set.Theory.map (.Axiom.Set.Theory\7496.th List-Model\7496)\n (.Hashable.hash\n  (Ledger.Conway.Specification.Script.Base.ScriptStructure.Hashable-Script\n   (.TransactionStructure.scriptStructure txs)))\n (.TransactionStructure.TxWitnesses.scripts\n  (.TransactionStructure.Tx.wits tx)))"
                                                                      ::
                                                                      Data.Text.Text)
                                                              MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v15
                                                                -> let v16
                                                                         = coe
                                                                             MAlonzo.Code.QstdlibZ45Zmeta.Tactic.GenError.du_dec'45'de'45'morgan_10
                                                                             (coe
                                                                                MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1644
                                                                                (coe
                                                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                                                (coe
                                                                                   (\ v16 ->
                                                                                      coe
                                                                                        MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1682
                                                                                        (coe
                                                                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                                                        (coe
                                                                                           MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_200
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_324
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1896
                                                                                                       (coe
                                                                                                          v0))))))
                                                                                        (coe v16)
                                                                                        (coe
                                                                                           MAlonzo.Code.Axiom.Set.du_map_400
                                                                                           (MAlonzo.Code.Axiom.Set.d_th_1480
                                                                                              (coe
                                                                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                           (MAlonzo.Code.Interface.Hashable.d_hash_16
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_200
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_324
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1896
                                                                                                             (coe
                                                                                                                v0)))))))
                                                                                           (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txdats_3384
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3406
                                                                                                 (coe
                                                                                                    v4))))))
                                                                                (coe
                                                                                   MAlonzo.Code.Axiom.Set.du_mapPartial_578
                                                                                   (MAlonzo.Code.Axiom.Set.d_th_1480
                                                                                      (coe
                                                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                   (\ v16 ->
                                                                                      coe
                                                                                        MAlonzo.Code.Class.ToBool.du_if_then_else__38
                                                                                        (coe
                                                                                           MAlonzo.Code.Class.ToBool.du_ToBool'45'Maybe_100)
                                                                                        (coe
                                                                                           MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_txOutToP2Script_2644
                                                                                           (coe v0)
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2362
                                                                                              (coe
                                                                                                 v3))
                                                                                           (coe v4)
                                                                                           (coe
                                                                                              v16))
                                                                                        (coe
                                                                                           MAlonzo.Code.Level.C_lift_20
                                                                                           (coe
                                                                                              MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                                                        (coe
                                                                                           (\ v17 ->
                                                                                              coe
                                                                                                MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_txOutToDataHash_2640
                                                                                                (coe
                                                                                                   v16)))
                                                                                        (coe
                                                                                           (\ v17 ->
                                                                                              coe
                                                                                                MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)))
                                                                                   (coe
                                                                                      MAlonzo.Code.Class.IsSet.du_range_564
                                                                                      (coe
                                                                                         MAlonzo.Code.Axiom.Set.d_th_1480
                                                                                         (coe
                                                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                      (coe
                                                                                         MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570)
                                                                                      (coe
                                                                                         MAlonzo.Code.Axiom.Set.Map.du__'8739'__1348
                                                                                         (coe
                                                                                            MAlonzo.Code.Axiom.Set.d_th_1480
                                                                                            (coe
                                                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                         (coe
                                                                                            MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                                            erased
                                                                                            (coe
                                                                                               MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                                                               MAlonzo.Code.Agda.Primitive.d_lzero_20
                                                                                               erased
                                                                                               MAlonzo.Code.Agda.Primitive.d_lzero_20
                                                                                               erased
                                                                                               (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'TxId_1268
                                                                                                  (coe
                                                                                                     v0))
                                                                                               (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Ix_1266
                                                                                                  (coe
                                                                                                     v0))))
                                                                                         (coe
                                                                                            MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2362
                                                                                            (coe
                                                                                               v3))
                                                                                         (coe
                                                                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txIns_3250
                                                                                            (coe
                                                                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3404
                                                                                               (coe
                                                                                                  v4)))))))
                                                                             erased in
                                                                   coe
                                                                     (case coe v16 of
                                                                        MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v17
                                                                          -> coe
                                                                               ("\172\n(HasSubset-Set HasSubset.\8838\n Axiom.Set.Theory.mapPartial (.Axiom.Set.Theory\7496.th List-Model\7496)\n (\955 txout \8594\n    (ToBool\8242.if ToBool-Maybe then\n     Ledger.Conway.Specification.Script.Validation.txOutToP2Script txs\n     abs (.Ledger.Conway.Specification.Utxo.UTxOState.utxo s) tx txout\n     else\n     (\955 {z} \8594\n        Ledger.Conway.Specification.Script.Validation.txOutToDataHash txs\n        abs txout))\n    (\955 {z} \8594 nothing))\n (Class.IsSet.range (.Axiom.Set.Theory\7496.th List-Model\7496)\n  ((.Axiom.Set.Theory\7496.th List-Model\7496 Axiom.Set.Map.Restriction\7504.\8739\n    .Axiom.Set.Theory\7496.\8712-sp List-Model\7496)\n   (.Ledger.Conway.Specification.Utxo.UTxOState.utxo s)\n   (.TransactionStructure.TxBody.txIns\n    (.TransactionStructure.Tx.body tx)))))\n(Axiom.Set.Theory.map (.Axiom.Set.Theory\7496.th List-Model\7496)\n (.Hashable.hash\n  (.isHashableSet.T-Hashable\n   (.HashableSet.T-isHashable\n    (.Ledger.Conway.Specification.Script.Base.PlutusStructure.Data\688\n     (.Ledger.Conway.Specification.Script.Base.ScriptStructure.ps\n      (.TransactionStructure.scriptStructure txs))))))\n (.TransactionStructure.TxWitnesses.txdats\n  (.TransactionStructure.Tx.wits tx)))"
                                                                                ::
                                                                                Data.Text.Text)
                                                                        MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v17
                                                                          -> let v18
                                                                                   = coe
                                                                                       MAlonzo.Code.QstdlibZ45Zmeta.Tactic.GenError.du_dec'45'de'45'morgan_10
                                                                                       (coe
                                                                                          MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1644
                                                                                          (coe
                                                                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                                                          (coe
                                                                                             (\ v18 ->
                                                                                                coe
                                                                                                  MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1682
                                                                                                  (coe
                                                                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_200
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_324
                                                                                                              (coe
                                                                                                                 MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1896
                                                                                                                 (coe
                                                                                                                    v0))))))
                                                                                                  (coe
                                                                                                     v18)
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Axiom.Set.du__'8746'__682
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Axiom.Set.d_th_1480
                                                                                                        (coe
                                                                                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Axiom.Set.du_mapPartial_578
                                                                                                        (MAlonzo.Code.Axiom.Set.d_th_1480
                                                                                                           (coe
                                                                                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                        (\ v19 ->
                                                                                                           coe
                                                                                                             MAlonzo.Code.Class.ToBool.du_if_then_else__38
                                                                                                             (coe
                                                                                                                MAlonzo.Code.Class.ToBool.du_ToBool'45'Maybe_100)
                                                                                                             (coe
                                                                                                                MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_txOutToP2Script_2644
                                                                                                                (coe
                                                                                                                   v0)
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2362
                                                                                                                   (coe
                                                                                                                      v3))
                                                                                                                (coe
                                                                                                                   v4)
                                                                                                                (coe
                                                                                                                   v19))
                                                                                                             (coe
                                                                                                                MAlonzo.Code.Level.C_lift_20
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                                                                             (coe
                                                                                                                (\ v20 ->
                                                                                                                   coe
                                                                                                                     MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_txOutToDataHash_2640
                                                                                                                     (coe
                                                                                                                        v19)))
                                                                                                             (coe
                                                                                                                (\ v20 ->
                                                                                                                   coe
                                                                                                                     MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)))
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Class.IsSet.du_range_564
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Axiom.Set.d_th_1480
                                                                                                              (coe
                                                                                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570)
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Axiom.Set.Map.du__'8739'__1348
                                                                                                              (coe
                                                                                                                 MAlonzo.Code.Axiom.Set.d_th_1480
                                                                                                                 (coe
                                                                                                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                              (coe
                                                                                                                 MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                                                                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                                                                 erased
                                                                                                                 (coe
                                                                                                                    MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                                                                                    MAlonzo.Code.Agda.Primitive.d_lzero_20
                                                                                                                    erased
                                                                                                                    MAlonzo.Code.Agda.Primitive.d_lzero_20
                                                                                                                    erased
                                                                                                                    (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'TxId_1268
                                                                                                                       (coe
                                                                                                                          v0))
                                                                                                                    (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Ix_1266
                                                                                                                       (coe
                                                                                                                          v0))))
                                                                                                              (coe
                                                                                                                 MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2362
                                                                                                                 (coe
                                                                                                                    v3))
                                                                                                              (coe
                                                                                                                 MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txIns_3250
                                                                                                                 (coe
                                                                                                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3404
                                                                                                                    (coe
                                                                                                                       v4))))))
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Axiom.Set.du__'8746'__682
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Axiom.Set.d_th_1480
                                                                                                           (coe
                                                                                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Axiom.Set.du_mapPartial_578
                                                                                                           (MAlonzo.Code.Axiom.Set.d_th_1480
                                                                                                              (coe
                                                                                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_txOutToDataHash_2640)
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Class.IsSet.du_range_564
                                                                                                              (coe
                                                                                                                 MAlonzo.Code.Axiom.Set.d_th_1480
                                                                                                                 (coe
                                                                                                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                              (coe
                                                                                                                 MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570)
                                                                                                              (coe
                                                                                                                 MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txOuts_3256
                                                                                                                 (coe
                                                                                                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3404
                                                                                                                    (coe
                                                                                                                       v4)))))
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Axiom.Set.du_mapPartial_578
                                                                                                           (MAlonzo.Code.Axiom.Set.d_th_1480
                                                                                                              (coe
                                                                                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_txOutToDataHash_2640)
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Class.IsSet.du_range_564
                                                                                                              (coe
                                                                                                                 MAlonzo.Code.Axiom.Set.d_th_1480
                                                                                                                 (coe
                                                                                                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                              (coe
                                                                                                                 MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570)
                                                                                                              (coe
                                                                                                                 MAlonzo.Code.Axiom.Set.Map.du__'8739'__1348
                                                                                                                 (coe
                                                                                                                    MAlonzo.Code.Axiom.Set.d_th_1480
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                                 (coe
                                                                                                                    MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                                                                                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                                                                    erased
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                                                                                       MAlonzo.Code.Agda.Primitive.d_lzero_20
                                                                                                                       erased
                                                                                                                       MAlonzo.Code.Agda.Primitive.d_lzero_20
                                                                                                                       erased
                                                                                                                       (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'TxId_1268
                                                                                                                          (coe
                                                                                                                             v0))
                                                                                                                       (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Ix_1266
                                                                                                                          (coe
                                                                                                                             v0))))
                                                                                                                 (coe
                                                                                                                    MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2362
                                                                                                                    (coe
                                                                                                                       v3))
                                                                                                                 (coe
                                                                                                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_refInputs_3252
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3404
                                                                                                                       (coe
                                                                                                                          v4))))))))))
                                                                                          (coe
                                                                                             MAlonzo.Code.Axiom.Set.du_map_400
                                                                                             (MAlonzo.Code.Axiom.Set.d_th_1480
                                                                                                (coe
                                                                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                             (MAlonzo.Code.Interface.Hashable.d_hash_16
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_200
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_324
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1896
                                                                                                               (coe
                                                                                                                  v0)))))))
                                                                                             (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txdats_3384
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3406
                                                                                                   (coe
                                                                                                      v4)))))
                                                                                       erased in
                                                                             coe
                                                                               (case coe v18 of
                                                                                  MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v19
                                                                                    -> coe
                                                                                         ("\172\n(HasSubset-Set HasSubset.\8838\n Axiom.Set.Theory.map (.Axiom.Set.Theory\7496.th List-Model\7496)\n (.Hashable.hash\n  (.isHashableSet.T-Hashable\n   (.HashableSet.T-isHashable\n    (.Ledger.Conway.Specification.Script.Base.PlutusStructure.Data\688\n     (.Ledger.Conway.Specification.Script.Base.ScriptStructure.ps\n      (.TransactionStructure.scriptStructure txs))))))\n (.TransactionStructure.TxWitnesses.txdats\n  (.TransactionStructure.Tx.wits tx)))\n((.Axiom.Set.Theory\7496.th List-Model\7496 Axiom.Set.Theory.\8746\n  Axiom.Set.Theory.mapPartial (.Axiom.Set.Theory\7496.th List-Model\7496)\n  (\955 txout \8594\n     (ToBool\8242.if ToBool-Maybe then\n      Ledger.Conway.Specification.Script.Validation.txOutToP2Script txs\n      abs (.Ledger.Conway.Specification.Utxo.UTxOState.utxo s) tx txout\n      else\n      (\955 {z} \8594\n         Ledger.Conway.Specification.Script.Validation.txOutToDataHash txs\n         abs txout))\n     (\955 {z} \8594 nothing))\n  (Class.IsSet.range (.Axiom.Set.Theory\7496.th List-Model\7496)\n   ((.Axiom.Set.Theory\7496.th List-Model\7496 Axiom.Set.Map.Restriction\7504.\8739\n     .Axiom.Set.Theory\7496.\8712-sp List-Model\7496)\n    (.Ledger.Conway.Specification.Utxo.UTxOState.utxo s)\n    (.TransactionStructure.TxBody.txIns\n     (.TransactionStructure.Tx.body tx)))))\n ((.Axiom.Set.Theory\7496.th List-Model\7496 Axiom.Set.Theory.\8746\n   Axiom.Set.Theory.mapPartial (.Axiom.Set.Theory\7496.th List-Model\7496)\n   (Ledger.Conway.Specification.Script.Validation.txOutToDataHash txs\n    abs)\n   (Class.IsSet.range (.Axiom.Set.Theory\7496.th List-Model\7496)\n    (.TransactionStructure.TxBody.txOuts\n     (.TransactionStructure.Tx.body tx))))\n  (Axiom.Set.Theory.mapPartial (.Axiom.Set.Theory\7496.th List-Model\7496)\n   (Ledger.Conway.Specification.Script.Validation.txOutToDataHash txs\n    abs)\n   (Class.IsSet.range (.Axiom.Set.Theory\7496.th List-Model\7496)\n    ((.Axiom.Set.Theory\7496.th List-Model\7496 Axiom.Set.Map.Restriction\7504.\8739\n      .Axiom.Set.Theory\7496.\8712-sp List-Model\7496)\n     (.Ledger.Conway.Specification.Utxo.UTxOState.utxo s)\n     (.TransactionStructure.TxBody.refInputs\n      (.TransactionStructure.Tx.body tx)))))))"
                                                                                          ::
                                                                                          Data.Text.Text)
                                                                                  MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v19
                                                                                    -> let v20
                                                                                             = coe
                                                                                                 MAlonzo.Code.QstdlibZ45Zmeta.Tactic.GenError.du_dec'45'de'45'morgan_10
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1644
                                                                                                    (coe
                                                                                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                                                                    (coe
                                                                                                       (\ v20 ->
                                                                                                          coe
                                                                                                            MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1682
                                                                                                            (coe
                                                                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'Language_224
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_324
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1896
                                                                                                                     (coe
                                                                                                                        v0))))
                                                                                                            (coe
                                                                                                               v20)
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Conway.Specification.Utxow.du_allowedLanguages_2632
                                                                                                               (coe
                                                                                                                  v0)
                                                                                                               (coe
                                                                                                                  v4)
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2362
                                                                                                                  (coe
                                                                                                                     v3)))))
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Ledger.Conway.Specification.Utxow.du_languages_2618
                                                                                                       (coe
                                                                                                          v0)
                                                                                                       (coe
                                                                                                          v4)
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2362
                                                                                                          (coe
                                                                                                             v3))))
                                                                                                 erased in
                                                                                       coe
                                                                                         (case coe
                                                                                                 v20 of
                                                                                            MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v21
                                                                                              -> coe
                                                                                                   ("\172\n(HasSubset-Set HasSubset.\8838\n Ledger.Conway.Specification.Utxow.languages txs abs tx\n (.Ledger.Conway.Specification.Utxo.UTxOState.utxo s))\n(Ledger.Conway.Specification.Utxow.allowedLanguages txs abs tx\n (.Ledger.Conway.Specification.Utxo.UTxOState.utxo s))"
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
d_completeness_1976 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2250 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2336 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2352 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3392 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2352 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Utxow.T__'8866'_'8640''10631'_'44'UTXOW'10632'__2632 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_completeness_1976 = erased
