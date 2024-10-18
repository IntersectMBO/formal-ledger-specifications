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

module MAlonzo.Code.Ledger.Utxow.Properties where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Builtin.String
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Axiom.Set
import qualified MAlonzo.Code.Axiom.Set.Map
import qualified MAlonzo.Code.Class.Bifunctor
import qualified MAlonzo.Code.Class.Decidable.Core
import qualified MAlonzo.Code.Class.Decidable.Instances
import qualified MAlonzo.Code.Class.Functor.Core
import qualified MAlonzo.Code.Data.Irrelevant
import qualified MAlonzo.Code.Data.Sum
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Interface.ComputationalRelation
import qualified MAlonzo.Code.Interface.Hashable
import qualified MAlonzo.Code.Interface.IsSet
import qualified MAlonzo.Code.Ledger.Abstract
import qualified MAlonzo.Code.Ledger.Crypto
import qualified MAlonzo.Code.Ledger.Prelude
import qualified MAlonzo.Code.Ledger.Script
import qualified MAlonzo.Code.Ledger.Set.Theory
import qualified MAlonzo.Code.Ledger.Transaction
import qualified MAlonzo.Code.Ledger.Utxo
import qualified MAlonzo.Code.Ledger.Utxo.Properties
import qualified MAlonzo.Code.Ledger.Utxow
import qualified MAlonzo.Code.Prelude
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects

-- _.Dec-evalTimelock
d_Dec'45'evalTimelock_96 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Script.T_Timelock_264 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'evalTimelock_96 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Dec'45'evalTimelock_322
      (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1256 (coe v0))
      (coe
         MAlonzo.Code.Ledger.Transaction.d_epochStructure_1542 (coe v0))
-- Ledger.Utxow.Properties._._⊢_⇀⦇_,UTXOW⦈_
d__'8866'_'8640''10631'_'44'UTXOW'10632'__1590 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Utxow.Properties.Computational-UTXOW
d_Computational'45'UTXOW_1886 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1598 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'UTXOW_1886 v0 v1
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.C_MkComputational_412
      (d_computeProof_1972 (coe v0) (coe v1))
-- Ledger.Utxow.Properties._.Go.genErr
d_genErr_1924 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1598 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1798 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1812 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2726 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
d_genErr_1924 v0 ~v1 ~v2 v3 v4 ~v5 = du_genErr_1924 v0 v3 v4
du_genErr_1924 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1812 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2726 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
du_genErr_1924 v0 v1 v2
  = let v3
          = coe
              MAlonzo.Code.Ledger.Prelude.du_dec'45'de'45'morgan_28
              (coe
                 MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1622
                 (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)
                 (coe
                    (\ v3 ->
                       coe
                         MAlonzo.Code.Ledger.Crypto.d_Dec'45'isSigned_110
                         (MAlonzo.Code.Ledger.Crypto.d_pkk_164
                            (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1168 (coe v0)))
                         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3))
                         (coe
                            MAlonzo.Code.Ledger.Transaction.d_txidBytes_2226 v0
                            (MAlonzo.Code.Ledger.Transaction.d_txid_2698
                               (coe MAlonzo.Code.Ledger.Transaction.d_body_2736 (coe v2))))
                         (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3))))
                 (coe
                    MAlonzo.Code.Axiom.Set.Map.du__'738'_534
                    (coe
                       MAlonzo.Code.Ledger.Transaction.d_vkSigs_2716
                       (coe MAlonzo.Code.Ledger.Transaction.d_wits_2738 (coe v2)))))
              erased in
    coe
      (case coe v3 of
         MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v4
           -> coe
                ("\172 \8704[ (vk , \963) \8712 vkSigs ] isSigned vk (txidBytes txid) \963"
                 ::
                 Data.Text.Text)
         MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v4
           -> let v5
                    = coe
                        MAlonzo.Code.Ledger.Prelude.du_dec'45'de'45'morgan_28
                        (coe
                           MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1622
                           (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)
                           (coe
                              MAlonzo.Code.Ledger.Script.d_Dec'45'evalTimelock_296
                              (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1168 (coe v0))
                              (coe
                                 MAlonzo.Code.Ledger.Transaction.d_epochStructure_1444 (coe v0))
                              (coe
                                 MAlonzo.Code.Axiom.Set.du_map_386
                                 (MAlonzo.Code.Axiom.Set.d_th_1458
                                    (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                 (MAlonzo.Code.Interface.Hashable.d_hash_16
                                    (coe
                                       MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_28
                                       (coe
                                          MAlonzo.Code.Ledger.Crypto.d_khs_200
                                          (coe
                                             MAlonzo.Code.Ledger.Transaction.d_crypto_1168
                                             (coe v0)))))
                                 (coe
                                    MAlonzo.Code.Interface.IsSet.du_dom_540
                                    (coe
                                       MAlonzo.Code.Axiom.Set.d_th_1458
                                       (coe
                                          MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                    (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_548)
                                    (coe
                                       MAlonzo.Code.Ledger.Transaction.d_vkSigs_2716
                                       (coe MAlonzo.Code.Ledger.Transaction.d_wits_2738 (coe v2)))))
                              (coe
                                 MAlonzo.Code.Ledger.Transaction.d_txvldt_2676
                                 (coe MAlonzo.Code.Ledger.Transaction.d_body_2736 (coe v2))))
                           (coe
                              MAlonzo.Code.Axiom.Set.du_mapPartial_564
                              (MAlonzo.Code.Axiom.Set.d_th_1458
                                 (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                              (coe MAlonzo.Code.Data.Sum.du_isInj'8321'_24)
                              (MAlonzo.Code.Ledger.Transaction.d_txscripts_2836
                                 (coe v0) (coe v2)
                                 (coe MAlonzo.Code.Ledger.Utxo.d_utxo_1822 (coe v1)))))
                        erased in
              coe
                (case coe v5 of
                   MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v6
                     -> coe
                          ("\8704[ s \8712 scriptsP1 ] validP1Script witsKeyHashes txvldt s"
                           ::
                           Data.Text.Text)
                   MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v6
                     -> let v7
                              = coe
                                  MAlonzo.Code.Ledger.Prelude.du_dec'45'de'45'morgan_28
                                  (coe
                                     MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1622
                                     (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)
                                     (coe
                                        (\ v7 ->
                                           coe
                                             MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1660
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d__'8712''63'__1590
                                                MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                erased
                                                (MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                   (coe
                                                      MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                      (coe
                                                         MAlonzo.Code.Ledger.Transaction.d_crypto_1168
                                                         (coe v0)))))
                                             (coe v7)
                                             (coe
                                                MAlonzo.Code.Axiom.Set.du_map_386
                                                (MAlonzo.Code.Axiom.Set.d_th_1458
                                                   (coe
                                                      MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                (MAlonzo.Code.Interface.Hashable.d_hash_16
                                                   (coe
                                                      MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_28
                                                      (coe
                                                         MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                         (coe
                                                            MAlonzo.Code.Ledger.Transaction.d_crypto_1168
                                                            (coe v0)))))
                                                (coe
                                                   MAlonzo.Code.Interface.IsSet.du_dom_540
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.d_th_1458
                                                      (coe
                                                         MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                   (coe
                                                      MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_548)
                                                   (coe
                                                      MAlonzo.Code.Ledger.Transaction.d_vkSigs_2716
                                                      (coe
                                                         MAlonzo.Code.Ledger.Transaction.d_wits_2738
                                                         (coe v2)))))))
                                     (coe
                                        MAlonzo.Code.Ledger.Utxow.du_witsVKeyNeeded_2112 v0
                                        (MAlonzo.Code.Ledger.Utxo.d_utxo_1822 (coe v1))
                                        (MAlonzo.Code.Ledger.Transaction.d_body_2736 (coe v2))))
                                  erased in
                        coe
                          (case coe v7 of
                             MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v8
                               -> coe
                                    ("witsVKeyNeeded utxo txb \8838 witsKeyHashes"
                                     ::
                                     Data.Text.Text)
                             MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v8
                               -> let v9
                                        = coe
                                            MAlonzo.Code.Ledger.Prelude.du_dec'45'de'45'morgan_28
                                            (coe
                                               MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                                               (coe
                                                  MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1622
                                                  (coe
                                                     MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)
                                                  (coe
                                                     (\ v9 ->
                                                        coe
                                                          MAlonzo.Code.Axiom.Set.d_all'63'_1598
                                                          MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                          erased erased
                                                          (coe
                                                             MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)
                                                          (coe
                                                             MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                             (coe
                                                                (\ v10 ->
                                                                   coe
                                                                     MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                                                                     (coe
                                                                        MAlonzo.Code.Axiom.Set.d__'8712''63'__1590
                                                                        MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                        erased
                                                                        (MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Transaction.d_crypto_1168
                                                                              (coe v0))))
                                                                     (coe v10)
                                                                     (coe
                                                                        MAlonzo.Code.Axiom.Set.du_map_386
                                                                        (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                        (MAlonzo.Code.Interface.Hashable.d_hash_16
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Script.d_Hashable'45'Script_528
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Transaction.d_crypto_1168
                                                                                 (coe v0))
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Transaction.d_epochStructure_1444
                                                                                 (coe v0))
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1708
                                                                                 (coe v0))))
                                                                        (MAlonzo.Code.Ledger.Transaction.d_scripts_2718
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Transaction.d_wits_2738
                                                                              (coe v2)))))))
                                                          v9))
                                                  (coe
                                                     MAlonzo.Code.Axiom.Set.du__'65340'__718
                                                     (coe
                                                        MAlonzo.Code.Axiom.Set.d_th_1458
                                                        (coe
                                                           MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                     (coe
                                                        MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588
                                                        MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                        erased
                                                        (MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                           (coe
                                                              MAlonzo.Code.Ledger.Transaction.d_crypto_1168
                                                              (coe v0))))
                                                     (coe
                                                        MAlonzo.Code.Ledger.Utxow.du_scriptsNeeded_2114
                                                        v0
                                                        (MAlonzo.Code.Ledger.Utxo.d_utxo_1822
                                                           (coe v1))
                                                        (MAlonzo.Code.Ledger.Transaction.d_body_2736
                                                           (coe v2)))
                                                     (coe
                                                        MAlonzo.Code.Axiom.Set.du_map_386
                                                        (MAlonzo.Code.Axiom.Set.d_th_1458
                                                           (coe
                                                              MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                        (MAlonzo.Code.Interface.Hashable.d_hash_16
                                                           (coe
                                                              MAlonzo.Code.Ledger.Script.d_Hashable'45'Script_528
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Transaction.d_crypto_1168
                                                                 (coe v0))
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Transaction.d_epochStructure_1444
                                                                 (coe v0))
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1708
                                                                 (coe v0))))
                                                        (MAlonzo.Code.Ledger.Transaction.d_refScripts_2784
                                                           (coe v0) (coe v2)
                                                           (coe
                                                              MAlonzo.Code.Ledger.Utxo.d_utxo_1822
                                                              (coe v1))))))
                                               (coe
                                                  MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1622
                                                  (coe
                                                     MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)
                                                  (coe
                                                     (\ v9 ->
                                                        coe
                                                          MAlonzo.Code.Axiom.Set.d_all'63'_1598
                                                          MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                          erased erased
                                                          (coe
                                                             MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)
                                                          (coe
                                                             MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                             (coe
                                                                (\ v10 ->
                                                                   coe
                                                                     MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                                                                     (coe
                                                                        MAlonzo.Code.Axiom.Set.d__'8712''63'__1590
                                                                        MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                        erased
                                                                        (MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Transaction.d_crypto_1168
                                                                              (coe v0))))
                                                                     (coe v10)
                                                                     (coe
                                                                        MAlonzo.Code.Axiom.Set.du__'65340'__718
                                                                        (coe
                                                                           MAlonzo.Code.Axiom.Set.d_th_1458
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                        (coe
                                                                           MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588
                                                                           MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                           erased
                                                                           (MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Transaction.d_crypto_1168
                                                                                 (coe v0))))
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Utxow.du_scriptsNeeded_2114
                                                                           v0
                                                                           (MAlonzo.Code.Ledger.Utxo.d_utxo_1822
                                                                              (coe v1))
                                                                           (MAlonzo.Code.Ledger.Transaction.d_body_2736
                                                                              (coe v2)))
                                                                        (coe
                                                                           MAlonzo.Code.Axiom.Set.du_map_386
                                                                           (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                           (MAlonzo.Code.Interface.Hashable.d_hash_16
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Script.d_Hashable'45'Script_528
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Transaction.d_crypto_1168
                                                                                    (coe v0))
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Transaction.d_epochStructure_1444
                                                                                    (coe v0))
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1708
                                                                                    (coe v0))))
                                                                           (MAlonzo.Code.Ledger.Transaction.d_refScripts_2784
                                                                              (coe v0) (coe v2)
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Utxo.d_utxo_1822
                                                                                 (coe v1))))))))
                                                          v9))
                                                  (coe
                                                     MAlonzo.Code.Axiom.Set.du_map_386
                                                     (MAlonzo.Code.Axiom.Set.d_th_1458
                                                        (coe
                                                           MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                     (MAlonzo.Code.Interface.Hashable.d_hash_16
                                                        (coe
                                                           MAlonzo.Code.Ledger.Script.d_Hashable'45'Script_528
                                                           (coe
                                                              MAlonzo.Code.Ledger.Transaction.d_crypto_1168
                                                              (coe v0))
                                                           (coe
                                                              MAlonzo.Code.Ledger.Transaction.d_epochStructure_1444
                                                              (coe v0))
                                                           (coe
                                                              MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1708
                                                              (coe v0))))
                                                     (MAlonzo.Code.Ledger.Transaction.d_scripts_2718
                                                        (coe
                                                           MAlonzo.Code.Ledger.Transaction.d_wits_2738
                                                           (coe v2))))))
                                            erased in
                                  coe
                                    (case coe v9 of
                                       MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v10
                                         -> coe
                                              ("(neededHashes \65340 refScriptHashes) \8801\7497 witsScriptHashes"
                                               ::
                                               Data.Text.Text)
                                       MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v10
                                         -> let v11
                                                  = coe
                                                      MAlonzo.Code.Ledger.Prelude.du_dec'45'de'45'morgan_28
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1622
                                                         (coe
                                                            MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)
                                                         (coe
                                                            (\ v11 ->
                                                               coe
                                                                 MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1660
                                                                 (coe
                                                                    MAlonzo.Code.Axiom.Set.d__'8712''63'__1590
                                                                    MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                    erased
                                                                    (MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Script.d_Data'688'_190
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Script.d_ps_454
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1708
                                                                                   (coe v0)))))))
                                                                 (coe v11)
                                                                 (coe
                                                                    MAlonzo.Code.Interface.IsSet.du_dom_540
                                                                    (coe
                                                                       MAlonzo.Code.Axiom.Set.d_th_1458
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                    (coe
                                                                       MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_548)
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Transaction.d_txdats_2720
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Transaction.d_wits_2738
                                                                          (coe v2))))))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Utxo.du_getInputHashes_1724
                                                            (coe v0) (coe v2)
                                                            (coe
                                                               MAlonzo.Code.Ledger.Utxo.d_utxo_1822
                                                               (coe v1))))
                                                      erased in
                                            coe
                                              (case coe v11 of
                                                 MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v12
                                                   -> coe
                                                        ("inputHashes \8838 txdatsHashes"
                                                         ::
                                                         Data.Text.Text)
                                                 MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v12
                                                   -> let v13
                                                            = coe
                                                                MAlonzo.Code.Ledger.Prelude.du_dec'45'de'45'morgan_28
                                                                (coe
                                                                   MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1622
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)
                                                                   (coe
                                                                      (\ v13 ->
                                                                         coe
                                                                           MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1660
                                                                           (coe
                                                                              MAlonzo.Code.Axiom.Set.d__'8712''63'__1590
                                                                              MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                              erased
                                                                              (MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Script.d_Data'688'_190
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Script.d_ps_454
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1708
                                                                                             (coe
                                                                                                v0)))))))
                                                                           (coe v13)
                                                                           (coe
                                                                              MAlonzo.Code.Axiom.Set.du__'8746'__668
                                                                              (coe
                                                                                 MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Utxo.du_getInputHashes_1724
                                                                                 (coe v0) (coe v2)
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Utxo.d_utxo_1822
                                                                                    (coe v1)))
                                                                              (coe
                                                                                 MAlonzo.Code.Axiom.Set.du__'8746'__668
                                                                                 (coe
                                                                                    MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Utxo.du_getDataHashes_1720
                                                                                    (coe
                                                                                       MAlonzo.Code.Interface.IsSet.du_range_542
                                                                                       (coe
                                                                                          MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                       (coe
                                                                                          MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_548)
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Transaction.d_txouts_2670
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Transaction.d_body_2736
                                                                                             (coe
                                                                                                v2)))))
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Utxo.du_getDataHashes_1720
                                                                                    (coe
                                                                                       MAlonzo.Code.Interface.IsSet.du_range_542
                                                                                       (coe
                                                                                          MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                       (coe
                                                                                          MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_548)
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
                                                                                                MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                                                                MAlonzo.Code.Agda.Primitive.d_lzero_20
                                                                                                erased
                                                                                                MAlonzo.Code.Agda.Primitive.d_lzero_20
                                                                                                erased
                                                                                                (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1134
                                                                                                   (coe
                                                                                                      v0))
                                                                                                (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1132
                                                                                                   (coe
                                                                                                      v0))))
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Utxo.d_utxo_1822
                                                                                             (coe
                                                                                                v1))
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Transaction.d_refInputs_2668
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Transaction.d_body_2736
                                                                                                (coe
                                                                                                   v2))))))))))
                                                                   (coe
                                                                      MAlonzo.Code.Interface.IsSet.du_dom_540
                                                                      (coe
                                                                         MAlonzo.Code.Axiom.Set.d_th_1458
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                      (coe
                                                                         MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_548)
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Transaction.d_txdats_2720
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Transaction.d_wits_2738
                                                                            (coe v2)))))
                                                                erased in
                                                      coe
                                                        (case coe v13 of
                                                           MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v14
                                                             -> coe
                                                                  ("txdatsHashes \8838 (inputHashes \8746 allOutHashes \8746 getDataHashes (range (utxo \8739 refInputs)))"
                                                                   ::
                                                                   Data.Text.Text)
                                                           MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v14
                                                             -> let v15
                                                                      = coe
                                                                          MAlonzo.Code.Ledger.Prelude.du_dec'45'de'45'morgan_28
                                                                          (coe
                                                                             MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1622
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)
                                                                             (coe
                                                                                (\ v15 ->
                                                                                   coe
                                                                                     MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1660
                                                                                     (coe
                                                                                        MAlonzo.Code.Axiom.Set.d__'8712''63'__1590
                                                                                        MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                                        erased
                                                                                        (MAlonzo.Code.Ledger.Script.d_DecEq'45'Language_214
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Script.d_ps_454
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1708
                                                                                                 (coe
                                                                                                    v0)))))
                                                                                     (coe v15)
                                                                                     (coe
                                                                                        MAlonzo.Code.Ledger.Utxow.du_allowedLanguages_1978
                                                                                        (coe v0)
                                                                                        (coe v2)
                                                                                        (coe
                                                                                           MAlonzo.Code.Ledger.Utxo.d_utxo_1822
                                                                                           (coe
                                                                                              v1)))))
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Utxow.du_languages_1962
                                                                                (coe v0) (coe v2)
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Utxo.d_utxo_1822
                                                                                   (coe v1))))
                                                                          erased in
                                                                coe
                                                                  (case coe v15 of
                                                                     MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v16
                                                                       -> coe
                                                                            ("languages \8838 allowedLanguages"
                                                                             ::
                                                                             Data.Text.Text)
                                                                     MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v16
                                                                       -> coe
                                                                            ("txADhash \8801 map hash txAD"
                                                                             ::
                                                                             Data.Text.Text)
                                                                     _ -> MAlonzo.RTE.mazUnreachableError)
                                                           _ -> MAlonzo.RTE.mazUnreachableError)
                                                 _ -> MAlonzo.RTE.mazUnreachableError)
                                       _ -> MAlonzo.RTE.mazUnreachableError)
                             _ -> MAlonzo.RTE.mazUnreachableError)
                   _ -> MAlonzo.RTE.mazUnreachableError)
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Utxow.Properties._.Go.computeProof
d_computeProof_1972 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1598 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1798 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1812 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2726 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
d_computeProof_1972 v0 v1 v2 v3 v4
  = let v5
          = MAlonzo.Code.Class.Decidable.Core.d_dec_16
              (coe
                 MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                 (coe
                    MAlonzo.Code.Ledger.Utxow.du_UTXOW'45'inductive'45'premises_2248
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
                                                                                          MAlonzo.Code.Ledger.Utxow.C_UTXOW'45'inductive_2222
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
                                                                               (coe
                                                                                  MAlonzo.Code.Interface.ComputationalRelation.d_computeProof_272
                                                                                  (MAlonzo.Code.Ledger.Utxo.Properties.d_Computational'45'UTXO_2312
                                                                                     (coe v0)
                                                                                     (coe v1))
                                                                                  v2 v3 v4)
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
                          (coe du_genErr_1924 (coe v0) (coe v3) (coe v4)))
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Utxow.Properties._.Go.completeness
d_completeness_1996 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1598 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1798 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1812 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2726 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1812 ->
  MAlonzo.Code.Ledger.Utxow.T__'8866'_'8640''10631'_'44'UTXOW'10632'__2116 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_completeness_1996 = erased
