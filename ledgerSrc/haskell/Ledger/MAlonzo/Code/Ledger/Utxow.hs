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

module MAlonzo.Code.Ledger.Utxow where

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
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Axiom.Set
import qualified MAlonzo.Code.Axiom.Set.Map
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Class.DecEq.Instances
import qualified MAlonzo.Code.Class.Decidable.Core
import qualified MAlonzo.Code.Class.Decidable.Instances
import qualified MAlonzo.Code.Class.Functor.Core
import qualified MAlonzo.Code.Class.Functor.Instances
import qualified MAlonzo.Code.Data.Irrelevant
import qualified MAlonzo.Code.Data.Maybe.Properties
import qualified MAlonzo.Code.Data.Sum
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Function.Base
import qualified MAlonzo.Code.Interface.HasEmptySet
import qualified MAlonzo.Code.Interface.HasEmptySet.Instances
import qualified MAlonzo.Code.Interface.Hashable
import qualified MAlonzo.Code.Interface.IsSet
import qualified MAlonzo.Code.Interface.ToBool
import qualified MAlonzo.Code.Ledger.Abstract
import qualified MAlonzo.Code.Ledger.Address
import qualified MAlonzo.Code.Ledger.Certs
import qualified MAlonzo.Code.Ledger.Crypto
import qualified MAlonzo.Code.Ledger.GovernanceActions
import qualified MAlonzo.Code.Ledger.PParams
import qualified MAlonzo.Code.Ledger.Script
import qualified MAlonzo.Code.Ledger.ScriptValidation
import qualified MAlonzo.Code.Ledger.Set.Theory
import qualified MAlonzo.Code.Ledger.TokenAlgebra
import qualified MAlonzo.Code.Ledger.Transaction
import qualified MAlonzo.Code.Ledger.Utxo
import qualified MAlonzo.Code.Prelude
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects

-- _.Credential
d_Credential_64 a0 = ()
-- _.Hashable-Script
d_Hashable'45'Script_230 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'Script_230 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Hashable'45'Script_494
      (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1164 (coe v0))
      (coe
         MAlonzo.Code.Ledger.Transaction.d_epochStructure_1436 (coe v0))
      (coe
         MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1700 (coe v0))
-- _.THash
d_THash_244 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_THash_244 = erased
-- _.Language
d_Language_252 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Language_252 = erased
-- _.Script
d_Script_344 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Script_344 = erased
-- _.ScriptHash
d_ScriptHash_352 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_ScriptHash_352 = erased
-- _.Tx
d_Tx_394 a0 = ()
-- _.TxBody
d_TxBody_396 a0 = ()
-- _.TxOut
d_TxOut_402 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_TxOut_402 = erased
-- _.UTxO
d_UTxO_408 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_UTxO_408 = erased
-- _.isBootstrapAddr
d_isBootstrapAddr_514 a0 a1 = ()
-- _.isSigned
d_isSigned_532 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny -> AgdaAny -> AgdaAny -> ()
d_isSigned_532 = erased
-- _.refScripts
d_refScripts_586 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2686 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_refScripts_586 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_refScripts_2744 (coe v0)
-- _.txscripts
d_txscripts_622 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2686 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_txscripts_622 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txscripts_2796 (coe v0)
-- _.validP1Script
d_validP1Script_626 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Script.T_Timelock_238 -> ()
d_validP1Script_626 = erased
-- Ledger.Utxow._._⊢_⇀⦇_,UTXO⦈_
d__'8866'_'8640''10631'_'44'UTXO'10632'__1566 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Utxow._.UTxOEnv
d_UTxOEnv_1588 a0 a1 = ()
-- Ledger.Utxow._.UTxOState
d_UTxOState_1590 a0 a1 = ()
-- Ledger.Utxow._.getDataHashes
d_getDataHashes_1612 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1564 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> [AgdaAny]
d_getDataHashes_1612 ~v0 ~v1 = du_getDataHashes_1612
du_getDataHashes_1612 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> [AgdaAny]
du_getDataHashes_1612
  = coe MAlonzo.Code.Ledger.Utxo.du_getDataHashes_1686
-- Ledger.Utxow._.getInputHashes
d_getInputHashes_1614 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1564 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2686 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
d_getInputHashes_1614 v0 ~v1 = du_getInputHashes_1614 v0
du_getInputHashes_1614 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2686 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
du_getInputHashes_1614 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_getInputHashes_1690 (coe v0)
-- Ledger.Utxow._.ScriptPurpose
d_ScriptPurpose_1718 a0 a1 = ()
-- Ledger.Utxow._.d
d_d_1816 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1564 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_d_1816 ~v0 v1 = du_d_1816 v1
du_d_1816 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Data.Sum.Base.T__'8846'__30
du_d_1816 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
         (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v0)))
-- Ledger.Utxow._.HasInlineDatum
d_HasInlineDatum_1818 a0 a1 a2 = ()
newtype T_HasInlineDatum_1818 = C_InlineDatum_1822 AgdaAny
-- Ledger.Utxow.Dec-HasInlineDatum
d_Dec'45'HasInlineDatum_1826 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1564 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'HasInlineDatum_1826 ~v0 ~v1 v2
  = du_Dec'45'HasInlineDatum_1826 v2
du_Dec'45'HasInlineDatum_1826 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'HasInlineDatum_1826 v0
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v1 v2
        -> case coe v2 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v3 v4
               -> case coe v4 of
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v5 v6
                      -> case coe v5 of
                           MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v7
                             -> case coe v7 of
                                  MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v8
                                    -> coe
                                         MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
                                         (coe
                                            MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                            (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                            (coe
                                               MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                               (coe C_InlineDatum_1822 v8)))
                                  MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v8
                                    -> coe
                                         MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
                                         (coe
                                            MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                            (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                            (coe
                                               MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))
                                  _ -> MAlonzo.RTE.mazUnreachableError
                           MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                             -> coe
                                  MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
                                  (coe
                                     MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                     (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                     (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxow._._.UsesV3Features
d_UsesV3Features_1892 a0 a1 a2 = ()
data T_UsesV3Features_1892
  = C_HasVotes_1894 | C_HasProps_1896 | C_HasDonation_1898 |
    C_HasTreasury_1900
-- Ledger.Utxow.Dec-UsesV3Features
d_Dec'45'UsesV3Features_1904 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1564 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2584 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'UsesV3Features_1904 ~v0 ~v1 v2
  = du_Dec'45'UsesV3Features_1904 v2
du_Dec'45'UsesV3Features_1904 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2584 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'UsesV3Features_1904 v0
  = case coe v0 of
      MAlonzo.Code.Ledger.Transaction.C_TxBody'46'constructor_16151 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> case coe v9 of
             []
               -> case coe v10 of
                    []
                      -> case coe v11 of
                           0 -> case coe v15 of
                                  MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v21
                                    -> coe
                                         MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
                                         (coe
                                            MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                            (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                            (coe
                                               MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                               (coe C_HasTreasury_1900)))
                                  MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                                    -> coe
                                         MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
                                         (coe
                                            MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                            (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                            (coe
                                               MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))
                                  _ -> MAlonzo.RTE.mazUnreachableError
                           _ -> coe
                                  MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
                                  (coe
                                     MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                     (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                     (coe
                                        MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                        (coe C_HasDonation_1898)))
                    (:) v21 v22
                      -> coe
                           MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
                           (coe
                              MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                              (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                              (coe
                                 MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                 (coe C_HasProps_1896)))
                    _ -> MAlonzo.RTE.mazUnreachableError
             (:) v21 v22
               -> coe
                    MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
                    (coe
                       MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                       (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                       (coe
                          MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                          (coe C_HasVotes_1894)))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxow.languages
d_languages_1928 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1564 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2686 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
d_languages_1928 v0 ~v1 v2 v3 = du_languages_1928 v0 v2 v3
du_languages_1928 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2686 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
du_languages_1928 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.du_mapPartial_558
      (MAlonzo.Code.Axiom.Set.d_th_1430
         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
      (coe du_getLanguage_1938 (coe v0))
      (MAlonzo.Code.Ledger.Transaction.d_txscripts_2796
         (coe v0) (coe v1) (coe v2))
-- Ledger.Utxow._.getLanguage
d_getLanguage_1938 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1564 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2686 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
d_getLanguage_1938 v0 ~v1 ~v2 ~v3 v4 = du_getLanguage_1938 v0 v4
du_getLanguage_1938 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
du_getLanguage_1938 v0 v1
  = case coe v1 of
      MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v2
        -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
      MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v2
        -> coe
             MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
             (coe
                MAlonzo.Code.Ledger.Script.d_language_232
                (MAlonzo.Code.Ledger.Script.d_ps_428
                   (coe
                      MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1700 (coe v0)))
                v2)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxow.getVKeys
d_getVKeys_1942 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1564 ->
  [MAlonzo.Code.Ledger.Address.T_Credential_16] -> [AgdaAny]
d_getVKeys_1942 ~v0 ~v1 = du_getVKeys_1942
du_getVKeys_1942 ::
  [MAlonzo.Code.Ledger.Address.T_Credential_16] -> [AgdaAny]
du_getVKeys_1942
  = coe
      MAlonzo.Code.Axiom.Set.du_mapPartial_558
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430
         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
      (coe MAlonzo.Code.Ledger.Address.du_isKeyHashObj_22)
-- Ledger.Utxow.allowedLanguages
d_allowedLanguages_1944 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1564 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2686 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
d_allowedLanguages_1944 v0 ~v1 v2 v3
  = du_allowedLanguages_1944 v0 v2 v3
du_allowedLanguages_1944 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2686 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
du_allowedLanguages_1944 v0 v1 v2
  = coe
      MAlonzo.Code.Interface.ToBool.du_if_then_else__46
      (coe MAlonzo.Code.Interface.ToBool.du_ToBool'45''8263'_112) erased
      (coe
         MAlonzo.Code.Axiom.Set.du_Dec'45'Any'738'_1596
         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)
         (coe
            (\ v3 ->
               coe
                 MAlonzo.Code.Ledger.Address.du_isBootstrapAddr'63'_132
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3))))
         (coe du_os_1998 (coe v0) (coe v1) (coe v2)))
      (coe
         (\ v3 ->
            MAlonzo.Code.Interface.HasEmptySet.d_'8709'_12
              (coe
                 MAlonzo.Code.Interface.HasEmptySet.Instances.du_HasEmptySet'45'Set_294
                 (coe
                    MAlonzo.Code.Axiom.Set.d_th_1430
                    (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))))
      (coe
         (\ v3 ->
            coe
              MAlonzo.Code.Interface.ToBool.du_if_then_else__46
              (coe MAlonzo.Code.Interface.ToBool.du_ToBool'45''8263'_112) erased
              (coe du_Dec'45'UsesV3Features_1904 (coe du_txb_1954 (coe v1)))
              (coe
                 (\ v4 ->
                    coe
                      MAlonzo.Code.Axiom.Set.du_fromList_410
                      (coe
                         MAlonzo.Code.Axiom.Set.d_th_1430
                         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                      (coe
                         MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                         (coe
                            MAlonzo.Code.Ledger.Script.d_PlutusV3_190
                            (coe
                               MAlonzo.Code.Ledger.Script.d_ps_428
                               (coe
                                  MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1700 (coe v0))))
                         (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
              (coe
                 (\ v4 ->
                    coe
                      MAlonzo.Code.Interface.ToBool.du_if_then_else__46
                      (coe MAlonzo.Code.Interface.ToBool.du_ToBool'45''8263'_112) erased
                      (coe
                         MAlonzo.Code.Axiom.Set.du_Dec'45'Any'738'_1596
                         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)
                         (coe du_Dec'45'HasInlineDatum_1826)
                         (coe
                            MAlonzo.Code.Interface.IsSet.d_toSet_480
                            (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Set_542)
                            (coe du_os_1998 (coe v0) (coe v1) (coe v2))))
                      (coe
                         (\ v5 ->
                            coe
                              MAlonzo.Code.Axiom.Set.du_fromList_410
                              (coe
                                 MAlonzo.Code.Axiom.Set.d_th_1430
                                 (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                 (coe
                                    MAlonzo.Code.Ledger.Script.d_PlutusV2_188
                                    (coe
                                       MAlonzo.Code.Ledger.Script.d_ps_428
                                       (coe
                                          MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1700
                                          (coe v0))))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                    (coe
                                       MAlonzo.Code.Ledger.Script.d_PlutusV3_190
                                       (coe
                                          MAlonzo.Code.Ledger.Script.d_ps_428
                                          (coe
                                             MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1700
                                             (coe v0))))
                                    (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                      (coe
                         (\ v5 ->
                            coe
                              MAlonzo.Code.Axiom.Set.du_fromList_410
                              (coe
                                 MAlonzo.Code.Axiom.Set.d_th_1430
                                 (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                 (coe
                                    MAlonzo.Code.Ledger.Script.d_PlutusV1_186
                                    (coe
                                       MAlonzo.Code.Ledger.Script.d_ps_428
                                       (coe
                                          MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1700
                                          (coe v0))))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                    (coe
                                       MAlonzo.Code.Ledger.Script.d_PlutusV2_188
                                       (coe
                                          MAlonzo.Code.Ledger.Script.d_ps_428
                                          (coe
                                             MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1700
                                             (coe v0))))
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                       (coe
                                          MAlonzo.Code.Ledger.Script.d_PlutusV3_190
                                          (coe
                                             MAlonzo.Code.Ledger.Script.d_ps_428
                                             (coe
                                                MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1700
                                                (coe v0))))
                                       (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))))))
-- Ledger.Utxow._.txb
d_txb_1954 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1564 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2686 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2584
d_txb_1954 ~v0 ~v1 v2 ~v3 = du_txb_1954 v2
du_txb_1954 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2686 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2584
du_txb_1954 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_body_2696 (coe v0)
-- Ledger.Utxow._.os
d_os_1998 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1564 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2686 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_os_1998 v0 ~v1 v2 v3 = du_os_1998 v0 v2 v3
du_os_1998 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2686 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_os_1998 v0 v1 v2
  = let v3
          = MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 in
    coe
      (coe
         MAlonzo.Code.Axiom.Set.du__'8746'__662
         (coe MAlonzo.Code.Axiom.Set.d_th_1430 (coe v3))
         (coe
            MAlonzo.Code.Interface.IsSet.du_range_540
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1430
               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
            (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_546)
            (coe
               MAlonzo.Code.Ledger.Utxo.du_outs_1808 (coe du_txb_1954 (coe v1))))
         (coe
            MAlonzo.Code.Interface.IsSet.du_range_540
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1430
               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
            (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_546)
            (coe
               MAlonzo.Code.Axiom.Set.Map.du__'8739'__1254
               (coe
                  MAlonzo.Code.Axiom.Set.d_th_1430
                  (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
               (coe
                  MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558
                  MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
                  (coe
                     MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                     (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1130 (coe v0))
                     (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1128 (coe v0))))
               (coe v2)
               (coe
                  MAlonzo.Code.Axiom.Set.du__'8746'__662
                  (coe
                     MAlonzo.Code.Axiom.Set.d_th_1430
                     (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                  (coe
                     MAlonzo.Code.Ledger.Transaction.d_txins_2626
                     (coe du_txb_1954 (coe v1)))
                  (coe
                     MAlonzo.Code.Ledger.Transaction.d_refInputs_2628
                     (coe du_txb_1954 (coe v1)))))))
-- Ledger.Utxow.getScripts
d_getScripts_2004 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1564 ->
  [MAlonzo.Code.Ledger.Address.T_Credential_16] -> [AgdaAny]
d_getScripts_2004 ~v0 ~v1 = du_getScripts_2004
du_getScripts_2004 ::
  [MAlonzo.Code.Ledger.Address.T_Credential_16] -> [AgdaAny]
du_getScripts_2004
  = coe
      MAlonzo.Code.Axiom.Set.du_mapPartial_558
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430
         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
      (coe MAlonzo.Code.Ledger.Address.du_isScriptObj_26)
-- Ledger.Utxow.credsNeeded
d_credsNeeded_2006 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1564 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2584 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_credsNeeded_2006 v0 ~v1 v2 v3 = du_credsNeeded_2006 v0 v2 v3
du_credsNeeded_2006 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2584 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_credsNeeded_2006 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.du__'8746'__662
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430
         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.du_map_380
         (MAlonzo.Code.Axiom.Set.d_th_1430
            (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
         (\ v3 ->
            coe
              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
              (coe
                 MAlonzo.Code.Ledger.ScriptValidation.C_Spend_1576
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3)))
              (coe
                 MAlonzo.Code.Ledger.Address.du_payCred_102
                 (coe
                    MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                    (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3)))))
         (coe
            MAlonzo.Code.Axiom.Set.Map.du__'738'_532
            (coe
               MAlonzo.Code.Axiom.Set.Map.du__'8739'__1254
               (coe
                  MAlonzo.Code.Axiom.Set.d_th_1430
                  (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
               (coe
                  MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558
                  MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
                  (coe
                     MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                     (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1130 (coe v0))
                     (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1128 (coe v0))))
               (coe v1)
               (coe MAlonzo.Code.Ledger.Transaction.d_txins_2626 (coe v2)))))
      (coe
         MAlonzo.Code.Axiom.Set.du__'8746'__662
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1430
            (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
         (coe
            MAlonzo.Code.Axiom.Set.du_map_380
            (MAlonzo.Code.Axiom.Set.d_th_1430
               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
            (\ v3 ->
               coe
                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                 (coe MAlonzo.Code.Ledger.ScriptValidation.C_Rwrd_1572 (coe v3))
                 (coe MAlonzo.Code.Ledger.Address.d_stake_78 (coe v3)))
            (coe
               MAlonzo.Code.Interface.IsSet.du_dom_538
               (coe
                  MAlonzo.Code.Axiom.Set.d_th_1430
                  (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
               (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Set_542)
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                  (coe MAlonzo.Code.Ledger.Transaction.d_txwdrls_2640 (coe v2)))))
         (coe
            MAlonzo.Code.Axiom.Set.du__'8746'__662
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1430
               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
            (coe
               MAlonzo.Code.Axiom.Set.du_map_380
               (MAlonzo.Code.Axiom.Set.d_th_1430
                  (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
               (\ v3 ->
                  coe
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                    (coe MAlonzo.Code.Ledger.ScriptValidation.C_Cert_1570 (coe v3))
                    (coe MAlonzo.Code.Ledger.Certs.d_cwitness_804 (coe v3)))
               (coe
                  MAlonzo.Code.Axiom.Set.du_fromList_410
                  (coe
                     MAlonzo.Code.Axiom.Set.d_th_1430
                     (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                  (coe MAlonzo.Code.Ledger.Transaction.d_txcerts_2638 (coe v2))))
            (coe
               MAlonzo.Code.Axiom.Set.du__'8746'__662
               (coe
                  MAlonzo.Code.Axiom.Set.d_th_1430
                  (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
               (coe
                  MAlonzo.Code.Axiom.Set.du_map_380
                  (MAlonzo.Code.Axiom.Set.d_th_1430
                     (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                  (\ v3 ->
                     coe
                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                       (coe MAlonzo.Code.Ledger.ScriptValidation.C_Mint_1574 (coe v3))
                       (coe MAlonzo.Code.Ledger.Address.C_ScriptObj_20 (coe v3)))
                  (coe
                     MAlonzo.Code.Ledger.TokenAlgebra.d_policies_208
                     (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2104 (coe v0))
                     (MAlonzo.Code.Ledger.Transaction.d_mint_2634 (coe v2))))
               (coe
                  MAlonzo.Code.Axiom.Set.du__'8746'__662
                  (coe
                     MAlonzo.Code.Axiom.Set.d_th_1430
                     (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                  (coe
                     MAlonzo.Code.Axiom.Set.du_map_380
                     (MAlonzo.Code.Axiom.Set.d_th_1430
                        (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                     (\ v3 ->
                        coe
                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                          (coe MAlonzo.Code.Ledger.ScriptValidation.C_Vote_1578 (coe v3))
                          (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3)))
                     (coe
                        MAlonzo.Code.Axiom.Set.du_fromList_410
                        (coe
                           MAlonzo.Code.Axiom.Set.d_th_1430
                           (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                        (coe
                           MAlonzo.Code.Class.Functor.Core.du_fmap_22
                           MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20 () erased
                           () erased
                           (\ v3 ->
                              MAlonzo.Code.Ledger.GovernanceActions.d_voter_702 (coe v3))
                           (MAlonzo.Code.Ledger.Transaction.d_txvote_2642 (coe v2)))))
                  (coe
                     MAlonzo.Code.Axiom.Set.du_mapPartial_558
                     (MAlonzo.Code.Axiom.Set.d_th_1430
                        (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                     (\ v3 ->
                        let v4
                              = MAlonzo.Code.Ledger.GovernanceActions.d_policy_726 (coe v3) in
                        coe
                          (case coe v4 of
                             MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v5
                               -> coe
                                    MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                       (coe
                                          MAlonzo.Code.Ledger.ScriptValidation.C_Propose_1580
                                          (coe v3))
                                       (coe MAlonzo.Code.Ledger.Address.C_ScriptObj_20 (coe v5)))
                             MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18 -> coe v4
                             _ -> MAlonzo.RTE.mazUnreachableError))
                     (coe
                        MAlonzo.Code.Axiom.Set.du_fromList_410
                        (coe
                           MAlonzo.Code.Axiom.Set.d_th_1430
                           (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                        (coe MAlonzo.Code.Ledger.Transaction.d_txprop_2644 (coe v2))))))))
-- Ledger.Utxow.witsVKeyNeeded
d_witsVKeyNeeded_2078 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1564 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2584 -> [AgdaAny]
d_witsVKeyNeeded_2078 v0 ~v1 = du_witsVKeyNeeded_2078 v0
du_witsVKeyNeeded_2078 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2584 -> [AgdaAny]
du_witsVKeyNeeded_2078 v0
  = coe
      MAlonzo.Code.Function.Base.du__'8728''8322'__92
      (coe (\ v1 v2 -> coe du_getVKeys_1942))
      (coe
         MAlonzo.Code.Function.Base.du__'8728''8322'__92
         (coe
            (\ v1 v2 ->
               coe
                 MAlonzo.Code.Axiom.Set.du_map_380
                 (MAlonzo.Code.Axiom.Set.d_th_1430
                    (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                 (\ v3 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3))))
         (coe du_credsNeeded_2006 (coe v0)))
-- Ledger.Utxow.scriptsNeeded
d_scriptsNeeded_2080 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1564 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2584 -> [AgdaAny]
d_scriptsNeeded_2080 v0 ~v1 = du_scriptsNeeded_2080 v0
du_scriptsNeeded_2080 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2584 -> [AgdaAny]
du_scriptsNeeded_2080 v0
  = coe
      MAlonzo.Code.Function.Base.du__'8728''8322'__92
      (coe (\ v1 v2 -> coe du_getScripts_2004))
      (coe
         MAlonzo.Code.Function.Base.du__'8728''8322'__92
         (coe
            (\ v1 v2 ->
               coe
                 MAlonzo.Code.Axiom.Set.du_map_380
                 (MAlonzo.Code.Axiom.Set.d_th_1430
                    (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                 (\ v3 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3))))
         (coe du_credsNeeded_2006 (coe v0)))
-- Ledger.Utxow._⊢_⇀⦇_,UTXOW⦈_
d__'8866'_'8640''10631'_'44'UTXOW'10632'__2082 a0 a1 a2 a3 a4 a5
  = ()
newtype T__'8866'_'8640''10631'_'44'UTXOW'10632'__2082
  = C_UTXOW'45'inductive_2188 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Utxow._.txAD
d_txAD_2096 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1564 ->
  T_GeneralizeTel_32329 -> Maybe AgdaAny
d_txAD_2096 ~v0 ~v1 v2 = du_txAD_2096 v2
du_txAD_2096 :: T_GeneralizeTel_32329 -> Maybe AgdaAny
du_txAD_2096 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txAD_2702
      (coe d_'46'generalizedField'45'tx_32321 v0)
-- Ledger.Utxow._.body
d_body_2098 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1564 ->
  T_GeneralizeTel_32329 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2584
d_body_2098 ~v0 ~v1 v2 = du_body_2098 v2
du_body_2098 ::
  T_GeneralizeTel_32329 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2584
du_body_2098 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_body_2696
      (coe d_'46'generalizedField'45'tx_32321 v0)
-- Ledger.Utxow._.wits
d_wits_2100 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1564 ->
  T_GeneralizeTel_32329 ->
  MAlonzo.Code.Ledger.Transaction.T_TxWitnesses_2666
d_wits_2100 ~v0 ~v1 v2 = du_wits_2100 v2
du_wits_2100 ::
  T_GeneralizeTel_32329 ->
  MAlonzo.Code.Ledger.Transaction.T_TxWitnesses_2666
du_wits_2100 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_wits_2698
      (coe d_'46'generalizedField'45'tx_32321 v0)
-- Ledger.Utxow._.refInputs
d_refInputs_2110 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1564 ->
  T_GeneralizeTel_32329 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_2110 ~v0 ~v1 v2 = du_refInputs_2110 v2
du_refInputs_2110 ::
  T_GeneralizeTel_32329 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_refInputs_2110 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_refInputs_2628
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2696
         (coe d_'46'generalizedField'45'tx_32321 v0))
-- Ledger.Utxow._.txADhash
d_txADhash_2116 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1564 ->
  T_GeneralizeTel_32329 -> Maybe AgdaAny
d_txADhash_2116 ~v0 ~v1 v2 = du_txADhash_2116 v2
du_txADhash_2116 :: T_GeneralizeTel_32329 -> Maybe AgdaAny
du_txADhash_2116 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txADhash_2650
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2696
         (coe d_'46'generalizedField'45'tx_32321 v0))
-- Ledger.Utxow._.txid
d_txid_2126 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1564 ->
  T_GeneralizeTel_32329 -> AgdaAny
d_txid_2126 ~v0 ~v1 v2 = du_txid_2126 v2
du_txid_2126 :: T_GeneralizeTel_32329 -> AgdaAny
du_txid_2126 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txid_2658
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2696
         (coe d_'46'generalizedField'45'tx_32321 v0))
-- Ledger.Utxow._.txouts
d_txouts_2130 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1564 ->
  T_GeneralizeTel_32329 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txouts_2130 ~v0 ~v1 v2 = du_txouts_2130 v2
du_txouts_2130 ::
  T_GeneralizeTel_32329 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txouts_2130 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txouts_2630
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2696
         (coe d_'46'generalizedField'45'tx_32321 v0))
-- Ledger.Utxow._.txvldt
d_txvldt_2138 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1564 ->
  T_GeneralizeTel_32329 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txvldt_2138 ~v0 ~v1 v2 = du_txvldt_2138 v2
du_txvldt_2138 ::
  T_GeneralizeTel_32329 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txvldt_2138 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txvldt_2636
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2696
         (coe d_'46'generalizedField'45'tx_32321 v0))
-- Ledger.Utxow._.scripts
d_scripts_2146 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1564 ->
  T_GeneralizeTel_32329 -> [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_scripts_2146 ~v0 ~v1 v2 = du_scripts_2146 v2
du_scripts_2146 ::
  T_GeneralizeTel_32329 -> [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_scripts_2146 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_scripts_2678
      (coe
         MAlonzo.Code.Ledger.Transaction.d_wits_2698
         (coe d_'46'generalizedField'45'tx_32321 v0))
-- Ledger.Utxow._.txdats
d_txdats_2150 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1564 ->
  T_GeneralizeTel_32329 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txdats_2150 ~v0 ~v1 v2 = du_txdats_2150 v2
du_txdats_2150 ::
  T_GeneralizeTel_32329 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txdats_2150 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txdats_2680
      (coe
         MAlonzo.Code.Ledger.Transaction.d_wits_2698
         (coe d_'46'generalizedField'45'tx_32321 v0))
-- Ledger.Utxow._.vkSigs
d_vkSigs_2154 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1564 ->
  T_GeneralizeTel_32329 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_vkSigs_2154 ~v0 ~v1 v2 = du_vkSigs_2154 v2
du_vkSigs_2154 ::
  T_GeneralizeTel_32329 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_vkSigs_2154 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_vkSigs_2676
      (coe
         MAlonzo.Code.Ledger.Transaction.d_wits_2698
         (coe d_'46'generalizedField'45'tx_32321 v0))
-- Ledger.Utxow._.utxo
d_utxo_2164 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1564 ->
  T_GeneralizeTel_32329 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2164 ~v0 ~v1 v2 = du_utxo_2164 v2
du_utxo_2164 ::
  T_GeneralizeTel_32329 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxo_2164 v0
  = coe
      MAlonzo.Code.Ledger.Utxo.d_utxo_1788
      (coe d_'46'generalizedField'45's_32323 v0)
-- Ledger.Utxow.UTXOW-inductive-premises
d_UTXOW'45'inductive'45'premises_2214 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1564 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2686 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1778 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTXOW'45'inductive'45'premises_2214 v0 ~v1 v2 v3
  = du_UTXOW'45'inductive'45'premises_2214 v0 v2 v3
du_UTXOW'45'inductive'45'premises_2214 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2686 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1778 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_UTXOW'45'inductive'45'premises_2214 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased
      (coe
         MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
         (coe
            MAlonzo.Code.Class.Decidable.Core.du_'8263''185'__110
            (coe
               (\ v3 ->
                  coe
                    MAlonzo.Code.Axiom.Set.d_all'63'_1568
                    MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
                    erased
                    (coe
                       MAlonzo.Code.Class.Decidable.Core.du_dec'185'_108
                       (coe
                          (\ v4 ->
                             coe
                               MAlonzo.Code.Ledger.Crypto.d_Dec'45'isSigned_110
                               (MAlonzo.Code.Ledger.Crypto.d_pkk_164
                                  (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1164 (coe v0)))
                               (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4))
                               (coe
                                  MAlonzo.Code.Ledger.Transaction.d_txidBytes_2218 v0
                                  (MAlonzo.Code.Ledger.Transaction.d_txid_2658
                                     (coe MAlonzo.Code.Ledger.Transaction.d_body_2696 (coe v1))))
                               (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v4)))))
                    v3))
            (coe
               MAlonzo.Code.Axiom.Set.Map.du__'738'_532
               (coe
                  MAlonzo.Code.Ledger.Transaction.d_vkSigs_2676
                  (coe MAlonzo.Code.Ledger.Transaction.d_wits_2698 (coe v1)))))
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
            (coe
               MAlonzo.Code.Class.Decidable.Core.du_'8263''185'__110
               (coe
                  (\ v3 ->
                     coe
                       MAlonzo.Code.Axiom.Set.d_all'63'_1568
                       MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
                       erased
                       (coe
                          MAlonzo.Code.Class.Decidable.Core.du_dec'185'_108
                          (coe
                             MAlonzo.Code.Ledger.Script.d_Dec'45'evalTimelock_296
                             (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1164 (coe v0))
                             (coe
                                MAlonzo.Code.Ledger.Transaction.d_epochStructure_1436 (coe v0))
                             (coe
                                MAlonzo.Code.Axiom.Set.du_map_380
                                (MAlonzo.Code.Axiom.Set.d_th_1430
                                   (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                (MAlonzo.Code.Interface.Hashable.d_hash_16
                                   (coe
                                      MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_24
                                      (coe
                                         MAlonzo.Code.Ledger.Crypto.d_khs_192
                                         (coe
                                            MAlonzo.Code.Ledger.Transaction.d_crypto_1164
                                            (coe v0)))))
                                (coe
                                   MAlonzo.Code.Interface.IsSet.du_dom_538
                                   (coe
                                      MAlonzo.Code.Axiom.Set.d_th_1430
                                      (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                   (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_546)
                                   (coe
                                      MAlonzo.Code.Ledger.Transaction.d_vkSigs_2676
                                      (coe MAlonzo.Code.Ledger.Transaction.d_wits_2698 (coe v1)))))
                             (coe
                                MAlonzo.Code.Ledger.Transaction.d_txvldt_2636
                                (coe MAlonzo.Code.Ledger.Transaction.d_body_2696 (coe v1)))))
                       v3))
               (coe
                  MAlonzo.Code.Axiom.Set.du_mapPartial_558
                  (MAlonzo.Code.Axiom.Set.d_th_1430
                     (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                  (coe MAlonzo.Code.Data.Sum.du_isInj'8321'_24)
                  (MAlonzo.Code.Ledger.Transaction.d_txscripts_2796
                     (coe v0) (coe v1)
                     (coe MAlonzo.Code.Ledger.Utxo.d_utxo_1788 (coe v2)))))
            (coe
               MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
               (coe
                  MAlonzo.Code.Class.Decidable.Core.du_'8263''185'__110
                  (coe
                     (\ v3 ->
                        coe
                          MAlonzo.Code.Axiom.Set.d_all'63'_1568
                          MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
                          erased
                          (coe
                             MAlonzo.Code.Class.Decidable.Core.du_dec'185'_108
                             (coe
                                (\ v4 ->
                                   coe
                                     MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                                     (coe
                                        MAlonzo.Code.Axiom.Set.d__'8712''63'__1560
                                        MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                        erased
                                        (MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                           (coe
                                              MAlonzo.Code.Ledger.Crypto.d_khs_192
                                              (coe
                                                 MAlonzo.Code.Ledger.Transaction.d_crypto_1164
                                                 (coe v0)))))
                                     (coe v4)
                                     (coe
                                        MAlonzo.Code.Axiom.Set.du_map_380
                                        (MAlonzo.Code.Axiom.Set.d_th_1430
                                           (coe
                                              MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                        (MAlonzo.Code.Interface.Hashable.d_hash_16
                                           (coe
                                              MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_24
                                              (coe
                                                 MAlonzo.Code.Ledger.Crypto.d_khs_192
                                                 (coe
                                                    MAlonzo.Code.Ledger.Transaction.d_crypto_1164
                                                    (coe v0)))))
                                        (coe
                                           MAlonzo.Code.Interface.IsSet.du_dom_538
                                           (coe
                                              MAlonzo.Code.Axiom.Set.d_th_1430
                                              (coe
                                                 MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                           (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_546)
                                           (coe
                                              MAlonzo.Code.Ledger.Transaction.d_vkSigs_2676
                                              (coe
                                                 MAlonzo.Code.Ledger.Transaction.d_wits_2698
                                                 (coe v1))))))))
                          v3))
                  (coe
                     du_witsVKeyNeeded_2078 v0
                     (MAlonzo.Code.Ledger.Utxo.d_utxo_1788 (coe v2))
                     (MAlonzo.Code.Ledger.Transaction.d_body_2696 (coe v1))))
               (coe
                  MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                  (coe
                     MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                     (coe
                        MAlonzo.Code.Class.Decidable.Core.du_'8263''185'__110
                        (coe
                           (\ v3 ->
                              coe
                                MAlonzo.Code.Axiom.Set.d_all'63'_1568
                                MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
                                erased
                                (coe
                                   MAlonzo.Code.Class.Decidable.Core.du_dec'185'_108
                                   (coe
                                      (\ v4 ->
                                         coe
                                           MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                                           (coe
                                              MAlonzo.Code.Axiom.Set.d__'8712''63'__1560
                                              MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                              erased
                                              (MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                                 (coe
                                                    MAlonzo.Code.Ledger.Transaction.d_crypto_1164
                                                    (coe v0))))
                                           (coe v4)
                                           (coe
                                              MAlonzo.Code.Axiom.Set.du_map_380
                                              (MAlonzo.Code.Axiom.Set.d_th_1430
                                                 (coe
                                                    MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                              (MAlonzo.Code.Interface.Hashable.d_hash_16
                                                 (coe
                                                    MAlonzo.Code.Ledger.Script.d_Hashable'45'Script_494
                                                    (coe
                                                       MAlonzo.Code.Ledger.Transaction.d_crypto_1164
                                                       (coe v0))
                                                    (coe
                                                       MAlonzo.Code.Ledger.Transaction.d_epochStructure_1436
                                                       (coe v0))
                                                    (coe
                                                       MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1700
                                                       (coe v0))))
                                              (MAlonzo.Code.Ledger.Transaction.d_scripts_2678
                                                 (coe
                                                    MAlonzo.Code.Ledger.Transaction.d_wits_2698
                                                    (coe v1)))))))
                                v3))
                        (coe
                           MAlonzo.Code.Axiom.Set.du__'65340'__712
                           (coe
                              MAlonzo.Code.Axiom.Set.d_th_1430
                              (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                           (coe
                              MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558
                              MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
                              (MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                 (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1164 (coe v0))))
                           (coe
                              du_scriptsNeeded_2080 v0
                              (MAlonzo.Code.Ledger.Utxo.d_utxo_1788 (coe v2))
                              (MAlonzo.Code.Ledger.Transaction.d_body_2696 (coe v1)))
                           (coe
                              MAlonzo.Code.Axiom.Set.du_map_380
                              (MAlonzo.Code.Axiom.Set.d_th_1430
                                 (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                              (MAlonzo.Code.Interface.Hashable.d_hash_16
                                 (coe
                                    MAlonzo.Code.Ledger.Script.d_Hashable'45'Script_494
                                    (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1164 (coe v0))
                                    (coe
                                       MAlonzo.Code.Ledger.Transaction.d_epochStructure_1436
                                       (coe v0))
                                    (coe
                                       MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1700
                                       (coe v0))))
                              (MAlonzo.Code.Ledger.Transaction.d_refScripts_2744
                                 (coe v0) (coe v1)
                                 (coe MAlonzo.Code.Ledger.Utxo.d_utxo_1788 (coe v2))))))
                     (coe
                        MAlonzo.Code.Class.Decidable.Core.du_'8263''185'__110
                        (coe
                           (\ v3 ->
                              coe
                                MAlonzo.Code.Axiom.Set.d_all'63'_1568
                                MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
                                erased
                                (coe
                                   MAlonzo.Code.Class.Decidable.Core.du_dec'185'_108
                                   (coe
                                      (\ v4 ->
                                         coe
                                           MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                                           (coe
                                              MAlonzo.Code.Axiom.Set.d__'8712''63'__1560
                                              MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                              erased
                                              (MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                                 (coe
                                                    MAlonzo.Code.Ledger.Transaction.d_crypto_1164
                                                    (coe v0))))
                                           (coe v4)
                                           (coe
                                              MAlonzo.Code.Axiom.Set.du__'65340'__712
                                              (coe
                                                 MAlonzo.Code.Axiom.Set.d_th_1430
                                                 (coe
                                                    MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                              (coe
                                                 MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558
                                                 MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                 erased
                                                 (MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                                    (coe
                                                       MAlonzo.Code.Ledger.Transaction.d_crypto_1164
                                                       (coe v0))))
                                              (coe
                                                 du_scriptsNeeded_2080 v0
                                                 (MAlonzo.Code.Ledger.Utxo.d_utxo_1788 (coe v2))
                                                 (MAlonzo.Code.Ledger.Transaction.d_body_2696
                                                    (coe v1)))
                                              (coe
                                                 MAlonzo.Code.Axiom.Set.du_map_380
                                                 (MAlonzo.Code.Axiom.Set.d_th_1430
                                                    (coe
                                                       MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                 (MAlonzo.Code.Interface.Hashable.d_hash_16
                                                    (coe
                                                       MAlonzo.Code.Ledger.Script.d_Hashable'45'Script_494
                                                       (coe
                                                          MAlonzo.Code.Ledger.Transaction.d_crypto_1164
                                                          (coe v0))
                                                       (coe
                                                          MAlonzo.Code.Ledger.Transaction.d_epochStructure_1436
                                                          (coe v0))
                                                       (coe
                                                          MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1700
                                                          (coe v0))))
                                                 (MAlonzo.Code.Ledger.Transaction.d_refScripts_2744
                                                    (coe v0) (coe v1)
                                                    (coe
                                                       MAlonzo.Code.Ledger.Utxo.d_utxo_1788
                                                       (coe v2))))))))
                                v3))
                        (coe
                           MAlonzo.Code.Axiom.Set.du_map_380
                           (MAlonzo.Code.Axiom.Set.d_th_1430
                              (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                           (MAlonzo.Code.Interface.Hashable.d_hash_16
                              (coe
                                 MAlonzo.Code.Ledger.Script.d_Hashable'45'Script_494
                                 (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1164 (coe v0))
                                 (coe
                                    MAlonzo.Code.Ledger.Transaction.d_epochStructure_1436 (coe v0))
                                 (coe
                                    MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1700
                                    (coe v0))))
                           (MAlonzo.Code.Ledger.Transaction.d_scripts_2678
                              (coe MAlonzo.Code.Ledger.Transaction.d_wits_2698 (coe v1))))))
                  (coe
                     MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                     (coe
                        MAlonzo.Code.Class.Decidable.Core.du_'8263''185'__110
                        (coe
                           (\ v3 ->
                              coe
                                MAlonzo.Code.Axiom.Set.d_all'63'_1568
                                MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
                                erased
                                (coe
                                   MAlonzo.Code.Class.Decidable.Core.du_dec'185'_108
                                   (coe
                                      (\ v4 ->
                                         coe
                                           MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                                           (coe
                                              MAlonzo.Code.Axiom.Set.d__'8712''63'__1560
                                              MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                              erased
                                              (MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                 (coe
                                                    MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36
                                                    (coe
                                                       MAlonzo.Code.Ledger.Script.d_Data'688'_172
                                                       (coe
                                                          MAlonzo.Code.Ledger.Script.d_ps_428
                                                          (coe
                                                             MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1700
                                                             (coe v0)))))))
                                           (coe v4)
                                           (coe
                                              MAlonzo.Code.Interface.IsSet.du_dom_538
                                              (coe
                                                 MAlonzo.Code.Axiom.Set.d_th_1430
                                                 (coe
                                                    MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                              (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_546)
                                              (coe
                                                 MAlonzo.Code.Ledger.Transaction.d_txdats_2680
                                                 (coe
                                                    MAlonzo.Code.Ledger.Transaction.d_wits_2698
                                                    (coe v1)))))))
                                v3))
                        (coe
                           MAlonzo.Code.Ledger.Utxo.du_getInputHashes_1690 (coe v0) (coe v1)
                           (coe MAlonzo.Code.Ledger.Utxo.d_utxo_1788 (coe v2))))
                     (coe
                        MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                        (coe
                           MAlonzo.Code.Class.Decidable.Core.du_'8263''185'__110
                           (coe
                              (\ v3 ->
                                 coe
                                   MAlonzo.Code.Axiom.Set.d_all'63'_1568
                                   MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
                                   erased
                                   (coe
                                      MAlonzo.Code.Class.Decidable.Core.du_dec'185'_108
                                      (coe
                                         (\ v4 ->
                                            coe
                                              MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                                              (coe
                                                 MAlonzo.Code.Axiom.Set.d__'8712''63'__1560
                                                 MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                 erased
                                                 (MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                    (coe
                                                       MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36
                                                       (coe
                                                          MAlonzo.Code.Ledger.Script.d_Data'688'_172
                                                          (coe
                                                             MAlonzo.Code.Ledger.Script.d_ps_428
                                                             (coe
                                                                MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1700
                                                                (coe v0)))))))
                                              (coe v4)
                                              (coe
                                                 MAlonzo.Code.Axiom.Set.du__'8746'__662
                                                 (coe
                                                    MAlonzo.Code.Axiom.Set.d_th_1430
                                                    (coe
                                                       MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                 (coe
                                                    MAlonzo.Code.Ledger.Utxo.du_getInputHashes_1690
                                                    (coe v0) (coe v1)
                                                    (coe
                                                       MAlonzo.Code.Ledger.Utxo.d_utxo_1788
                                                       (coe v2)))
                                                 (coe
                                                    MAlonzo.Code.Axiom.Set.du__'8746'__662
                                                    (coe
                                                       MAlonzo.Code.Axiom.Set.d_th_1430
                                                       (coe
                                                          MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                    (coe
                                                       MAlonzo.Code.Ledger.Utxo.du_getDataHashes_1686
                                                       (coe
                                                          MAlonzo.Code.Interface.IsSet.du_range_540
                                                          (coe
                                                             MAlonzo.Code.Axiom.Set.d_th_1430
                                                             (coe
                                                                MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                          (coe
                                                             MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_546)
                                                          (coe
                                                             MAlonzo.Code.Ledger.Transaction.d_txouts_2630
                                                             (coe
                                                                MAlonzo.Code.Ledger.Transaction.d_body_2696
                                                                (coe v1)))))
                                                    (coe
                                                       MAlonzo.Code.Ledger.Utxo.du_getDataHashes_1686
                                                       (coe
                                                          MAlonzo.Code.Interface.IsSet.du_range_540
                                                          (coe
                                                             MAlonzo.Code.Axiom.Set.d_th_1430
                                                             (coe
                                                                MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                          (coe
                                                             MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_546)
                                                          (coe
                                                             MAlonzo.Code.Axiom.Set.Map.du__'8739'__1254
                                                             (coe
                                                                MAlonzo.Code.Axiom.Set.d_th_1430
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                             (coe
                                                                MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558
                                                                MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                erased
                                                                (coe
                                                                   MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                                   MAlonzo.Code.Agda.Primitive.d_lzero_20
                                                                   erased
                                                                   MAlonzo.Code.Agda.Primitive.d_lzero_20
                                                                   erased
                                                                   (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1130
                                                                      (coe v0))
                                                                   (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1128
                                                                      (coe v0))))
                                                             (coe
                                                                MAlonzo.Code.Ledger.Utxo.d_utxo_1788
                                                                (coe v2))
                                                             (coe
                                                                MAlonzo.Code.Ledger.Transaction.d_refInputs_2628
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Transaction.d_body_2696
                                                                   (coe v1)))))))))))
                                   v3))
                           (coe
                              MAlonzo.Code.Interface.IsSet.du_dom_538
                              (coe
                                 MAlonzo.Code.Axiom.Set.d_th_1430
                                 (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                              (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_546)
                              (coe
                                 MAlonzo.Code.Ledger.Transaction.d_txdats_2680
                                 (coe MAlonzo.Code.Ledger.Transaction.d_wits_2698 (coe v1)))))
                        (coe
                           MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                           (coe
                              MAlonzo.Code.Class.Decidable.Core.du_'8263''185'__110
                              (coe
                                 (\ v3 ->
                                    coe
                                      MAlonzo.Code.Axiom.Set.d_all'63'_1568
                                      MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
                                      erased
                                      (coe
                                         MAlonzo.Code.Class.Decidable.Core.du_dec'185'_108
                                         (coe
                                            (\ v4 ->
                                               coe
                                                 MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                                                 (coe
                                                    MAlonzo.Code.Axiom.Set.d__'8712''63'__1560
                                                    MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                    erased
                                                    (MAlonzo.Code.Ledger.Script.d_DecEq'45'Language_196
                                                       (coe
                                                          MAlonzo.Code.Ledger.Script.d_ps_428
                                                          (coe
                                                             MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1700
                                                             (coe v0)))))
                                                 (coe v4)
                                                 (coe
                                                    du_allowedLanguages_1944 (coe v0) (coe v1)
                                                    (coe
                                                       MAlonzo.Code.Ledger.Utxo.d_utxo_1788
                                                       (coe v2))))))
                                      v3))
                              (coe
                                 du_languages_1928 (coe v0) (coe v1)
                                 (coe MAlonzo.Code.Ledger.Utxo.d_utxo_1788 (coe v2))))
                           (coe
                              MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                              (coe
                                 MAlonzo.Code.Data.Maybe.Properties.du_'8801''45'dec_24
                                 (coe
                                    MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                    (coe
                                       MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                       (coe
                                          MAlonzo.Code.Ledger.Transaction.d_adHashingScheme_1132
                                          (coe v0)))))
                              (coe
                                 MAlonzo.Code.Ledger.Transaction.d_txADhash_2650
                                 (coe MAlonzo.Code.Ledger.Transaction.d_body_2696 (coe v1)))
                              (coe
                                 MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                 MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6
                                 MAlonzo.Code.Agda.Primitive.d_lzero_20 erased
                                 MAlonzo.Code.Agda.Primitive.d_lzero_20 erased
                                 (MAlonzo.Code.Interface.Hashable.d_hash_16
                                    (coe
                                       MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_24
                                       (coe
                                          MAlonzo.Code.Ledger.Transaction.d_adHashingScheme_1132
                                          (coe v0))))
                                 (MAlonzo.Code.Ledger.Transaction.d_txAD_2702 (coe v1)))))))))))
-- Ledger.Utxow..generalizedField-tx
d_'46'generalizedField'45'tx_32321 ::
  T_GeneralizeTel_32329 -> MAlonzo.Code.Ledger.Transaction.T_Tx_2686
d_'46'generalizedField'45'tx_32321
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxow..generalizedField-s
d_'46'generalizedField'45's_32323 ::
  T_GeneralizeTel_32329 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1778
d_'46'generalizedField'45's_32323 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxow..generalizedField-Γ
d_'46'generalizedField'45'Γ_32325 ::
  T_GeneralizeTel_32329 -> MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1764
d_'46'generalizedField'45'Γ_32325 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxow..generalizedField-s'
d_'46'generalizedField'45's''_32327 ::
  T_GeneralizeTel_32329 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1778
d_'46'generalizedField'45's''_32327
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxow.GeneralizeTel
d_GeneralizeTel_32329 a0 a1 = ()
data T_GeneralizeTel_32329
  = C_mkGeneralizeTel_32331 MAlonzo.Code.Ledger.Transaction.T_Tx_2686
                            MAlonzo.Code.Ledger.Utxo.T_UTxOState_1778
                            MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1764
                            MAlonzo.Code.Ledger.Utxo.T_UTxOState_1778
