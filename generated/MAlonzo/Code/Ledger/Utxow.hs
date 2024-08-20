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
d_Hashable'45'Script_234 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'Script_234 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Hashable'45'Script_494
      (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1168 (coe v0))
      (coe
         MAlonzo.Code.Ledger.Transaction.d_epochStructure_1444 (coe v0))
      (coe
         MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1708 (coe v0))
-- _.THash
d_THash_248 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_THash_248 = erased
-- _.Language
d_Language_256 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Language_256 = erased
-- _.Script
d_Script_348 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Script_348 = erased
-- _.ScriptHash
d_ScriptHash_356 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_ScriptHash_356 = erased
-- _.Tx
d_Tx_398 a0 = ()
-- _.TxBody
d_TxBody_400 a0 = ()
-- _.TxOut
d_TxOut_406 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_TxOut_406 = erased
-- _.UTxO
d_UTxO_412 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_UTxO_412 = erased
-- _.isBootstrapAddr
d_isBootstrapAddr_518 a0 a1 = ()
-- _.isSigned
d_isSigned_540 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny -> AgdaAny -> AgdaAny -> ()
d_isSigned_540 = erased
-- _.refScripts
d_refScripts_594 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2718 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_refScripts_594 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_refScripts_2776 (coe v0)
-- _.txscripts
d_txscripts_630 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2718 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_txscripts_630 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txscripts_2828 (coe v0)
-- _.validP1Script
d_validP1Script_634 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Script.T_Timelock_238 -> ()
d_validP1Script_634 = erased
-- Ledger.Utxow._._⊢_⇀⦇_,UTXO⦈_
d__'8866'_'8640''10631'_'44'UTXO'10632'__1592 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Utxow._.UTxOEnv
d_UTxOEnv_1614 a0 a1 = ()
-- Ledger.Utxow._.UTxOState
d_UTxOState_1616 a0 a1 = ()
-- Ledger.Utxow._.getDataHashes
d_getDataHashes_1638 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1590 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> [AgdaAny]
d_getDataHashes_1638 ~v0 ~v1 = du_getDataHashes_1638
du_getDataHashes_1638 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> [AgdaAny]
du_getDataHashes_1638
  = coe MAlonzo.Code.Ledger.Utxo.du_getDataHashes_1712
-- Ledger.Utxow._.getInputHashes
d_getInputHashes_1640 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1590 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2718 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
d_getInputHashes_1640 v0 ~v1 = du_getInputHashes_1640 v0
du_getInputHashes_1640 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2718 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
du_getInputHashes_1640 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_getInputHashes_1716 (coe v0)
-- Ledger.Utxow._.ScriptPurpose
d_ScriptPurpose_1744 a0 a1 = ()
-- Ledger.Utxow._.d
d_d_1842 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1590 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_d_1842 ~v0 v1 = du_d_1842 v1
du_d_1842 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Data.Sum.Base.T__'8846'__30
du_d_1842 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
         (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v0)))
-- Ledger.Utxow._.HasInlineDatum
d_HasInlineDatum_1844 a0 a1 a2 = ()
newtype T_HasInlineDatum_1844 = C_InlineDatum_1848 AgdaAny
-- Ledger.Utxow.Dec-HasInlineDatum
d_Dec'45'HasInlineDatum_1852 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1590 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'HasInlineDatum_1852 ~v0 ~v1 v2
  = du_Dec'45'HasInlineDatum_1852 v2
du_Dec'45'HasInlineDatum_1852 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'HasInlineDatum_1852 v0
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
                                               (coe C_InlineDatum_1848 v8)))
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
d_UsesV3Features_1918 a0 a1 a2 = ()
data T_UsesV3Features_1918
  = C_HasVotes_1920 | C_HasProps_1922 | C_HasDonation_1924 |
    C_HasTreasury_1926
-- Ledger.Utxow.Dec-UsesV3Features
d_Dec'45'UsesV3Features_1930 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1590 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2616 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'UsesV3Features_1930 ~v0 ~v1 v2
  = du_Dec'45'UsesV3Features_1930 v2
du_Dec'45'UsesV3Features_1930 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2616 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'UsesV3Features_1930 v0
  = case coe v0 of
      MAlonzo.Code.Ledger.Transaction.C_TxBody'46'constructor_16213 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
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
                                               (coe C_HasTreasury_1926)))
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
                                        (coe C_HasDonation_1924)))
                    (:) v21 v22
                      -> coe
                           MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
                           (coe
                              MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                              (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                              (coe
                                 MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                 (coe C_HasProps_1922)))
                    _ -> MAlonzo.RTE.mazUnreachableError
             (:) v21 v22
               -> coe
                    MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
                    (coe
                       MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                       (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                       (coe
                          MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                          (coe C_HasVotes_1920)))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxow.languages
d_languages_1954 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1590 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2718 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
d_languages_1954 v0 ~v1 v2 v3 = du_languages_1954 v0 v2 v3
du_languages_1954 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2718 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
du_languages_1954 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.du_mapPartial_558
      (MAlonzo.Code.Axiom.Set.d_th_1430
         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
      (coe du_getLanguage_1964 (coe v0))
      (MAlonzo.Code.Ledger.Transaction.d_txscripts_2828
         (coe v0) (coe v1) (coe v2))
-- Ledger.Utxow._.getLanguage
d_getLanguage_1964 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1590 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2718 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
d_getLanguage_1964 v0 ~v1 ~v2 ~v3 v4 = du_getLanguage_1964 v0 v4
du_getLanguage_1964 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
du_getLanguage_1964 v0 v1
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
                      MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1708 (coe v0)))
                v2)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxow.getVKeys
d_getVKeys_1968 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1590 ->
  [MAlonzo.Code.Ledger.Address.T_Credential_16] -> [AgdaAny]
d_getVKeys_1968 ~v0 ~v1 = du_getVKeys_1968
du_getVKeys_1968 ::
  [MAlonzo.Code.Ledger.Address.T_Credential_16] -> [AgdaAny]
du_getVKeys_1968
  = coe
      MAlonzo.Code.Axiom.Set.du_mapPartial_558
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430
         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
      (coe MAlonzo.Code.Ledger.Address.du_isKeyHashObj_22)
-- Ledger.Utxow.allowedLanguages
d_allowedLanguages_1970 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1590 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2718 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
d_allowedLanguages_1970 v0 ~v1 v2 v3
  = du_allowedLanguages_1970 v0 v2 v3
du_allowedLanguages_1970 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2718 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
du_allowedLanguages_1970 v0 v1 v2
  = coe
      MAlonzo.Code.Interface.ToBool.du_if_then_else__46
      (coe MAlonzo.Code.Interface.ToBool.du_ToBool'45''8263'_112) erased
      (coe
         MAlonzo.Code.Axiom.Set.du_Dec'45'Any'738'_1596
         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)
         (coe
            (\ v3 ->
               coe
                 MAlonzo.Code.Ledger.Address.du_isBootstrapAddr'63'_138
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3))))
         (coe du_os_2024 (coe v0) (coe v1) (coe v2)))
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
              (coe du_Dec'45'UsesV3Features_1930 (coe du_txb_1980 (coe v1)))
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
                                  MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1708 (coe v0))))
                         (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
              (coe
                 (\ v4 ->
                    coe
                      MAlonzo.Code.Interface.ToBool.du_if_then_else__46
                      (coe MAlonzo.Code.Interface.ToBool.du_ToBool'45''8263'_112) erased
                      (coe
                         MAlonzo.Code.Axiom.Set.du_Dec'45'Any'738'_1596
                         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)
                         (coe du_Dec'45'HasInlineDatum_1852)
                         (coe
                            MAlonzo.Code.Interface.IsSet.d_toSet_480
                            (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Set_542)
                            (coe du_os_2024 (coe v0) (coe v1) (coe v2))))
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
                                          MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1708
                                          (coe v0))))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                    (coe
                                       MAlonzo.Code.Ledger.Script.d_PlutusV3_190
                                       (coe
                                          MAlonzo.Code.Ledger.Script.d_ps_428
                                          (coe
                                             MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1708
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
                                          MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1708
                                          (coe v0))))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                    (coe
                                       MAlonzo.Code.Ledger.Script.d_PlutusV2_188
                                       (coe
                                          MAlonzo.Code.Ledger.Script.d_ps_428
                                          (coe
                                             MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1708
                                             (coe v0))))
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                       (coe
                                          MAlonzo.Code.Ledger.Script.d_PlutusV3_190
                                          (coe
                                             MAlonzo.Code.Ledger.Script.d_ps_428
                                             (coe
                                                MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1708
                                                (coe v0))))
                                       (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))))))
-- Ledger.Utxow._.txb
d_txb_1980 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1590 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2718 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2616
d_txb_1980 ~v0 ~v1 v2 ~v3 = du_txb_1980 v2
du_txb_1980 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2718 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2616
du_txb_1980 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_body_2728 (coe v0)
-- Ledger.Utxow._.os
d_os_2024 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1590 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2718 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_os_2024 v0 ~v1 v2 v3 = du_os_2024 v0 v2 v3
du_os_2024 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2718 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_os_2024 v0 v1 v2
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
               MAlonzo.Code.Ledger.Utxo.du_outs_1834 (coe du_txb_1980 (coe v1))))
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
                     (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1134 (coe v0))
                     (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1132 (coe v0))))
               (coe v2)
               (coe
                  MAlonzo.Code.Axiom.Set.du__'8746'__662
                  (coe
                     MAlonzo.Code.Axiom.Set.d_th_1430
                     (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                  (coe
                     MAlonzo.Code.Ledger.Transaction.d_txins_2658
                     (coe du_txb_1980 (coe v1)))
                  (coe
                     MAlonzo.Code.Ledger.Transaction.d_refInputs_2660
                     (coe du_txb_1980 (coe v1)))))))
-- Ledger.Utxow.getScripts
d_getScripts_2030 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1590 ->
  [MAlonzo.Code.Ledger.Address.T_Credential_16] -> [AgdaAny]
d_getScripts_2030 ~v0 ~v1 = du_getScripts_2030
du_getScripts_2030 ::
  [MAlonzo.Code.Ledger.Address.T_Credential_16] -> [AgdaAny]
du_getScripts_2030
  = coe
      MAlonzo.Code.Axiom.Set.du_mapPartial_558
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430
         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
      (coe MAlonzo.Code.Ledger.Address.du_isScriptObj_32)
-- Ledger.Utxow.credsNeeded
d_credsNeeded_2032 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1590 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2616 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_credsNeeded_2032 v0 ~v1 v2 v3 = du_credsNeeded_2032 v0 v2 v3
du_credsNeeded_2032 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2616 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_credsNeeded_2032 v0 v1 v2
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
                 MAlonzo.Code.Ledger.ScriptValidation.C_Spend_1602
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3)))
              (coe
                 MAlonzo.Code.Ledger.Address.du_payCred_108
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
                     (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1134 (coe v0))
                     (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1132 (coe v0))))
               (coe v1)
               (coe MAlonzo.Code.Ledger.Transaction.d_txins_2658 (coe v2)))))
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
                 (coe MAlonzo.Code.Ledger.ScriptValidation.C_Rwrd_1598 (coe v3))
                 (coe MAlonzo.Code.Ledger.Address.d_stake_84 (coe v3)))
            (coe
               MAlonzo.Code.Interface.IsSet.du_dom_538
               (coe
                  MAlonzo.Code.Axiom.Set.d_th_1430
                  (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
               (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Set_542)
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                  (coe MAlonzo.Code.Ledger.Transaction.d_txwdrls_2672 (coe v2)))))
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
                    (coe MAlonzo.Code.Ledger.ScriptValidation.C_Cert_1596 (coe v3))
                    (coe MAlonzo.Code.Ledger.Certs.d_cwitness_808 (coe v3)))
               (coe
                  MAlonzo.Code.Axiom.Set.du_fromList_410
                  (coe
                     MAlonzo.Code.Axiom.Set.d_th_1430
                     (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                  (coe MAlonzo.Code.Ledger.Transaction.d_txcerts_2670 (coe v2))))
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
                       (coe MAlonzo.Code.Ledger.ScriptValidation.C_Mint_1600 (coe v3))
                       (coe MAlonzo.Code.Ledger.Address.C_ScriptObj_20 (coe v3)))
                  (coe
                     MAlonzo.Code.Ledger.TokenAlgebra.d_policies_208
                     (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2112 (coe v0))
                     (MAlonzo.Code.Ledger.Transaction.d_mint_2666 (coe v2))))
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
                          (coe MAlonzo.Code.Ledger.ScriptValidation.C_Vote_1604 (coe v3))
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
                              MAlonzo.Code.Ledger.GovernanceActions.d_voter_706 (coe v3))
                           (MAlonzo.Code.Ledger.Transaction.d_txvote_2674 (coe v2)))))
                  (coe
                     MAlonzo.Code.Axiom.Set.du_mapPartial_558
                     (MAlonzo.Code.Axiom.Set.d_th_1430
                        (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                     (\ v3 ->
                        let v4
                              = MAlonzo.Code.Ledger.GovernanceActions.d_policy_730 (coe v3) in
                        coe
                          (case coe v4 of
                             MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v5
                               -> coe
                                    MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                       (coe
                                          MAlonzo.Code.Ledger.ScriptValidation.C_Propose_1606
                                          (coe v3))
                                       (coe MAlonzo.Code.Ledger.Address.C_ScriptObj_20 (coe v5)))
                             MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18 -> coe v4
                             _ -> MAlonzo.RTE.mazUnreachableError))
                     (coe
                        MAlonzo.Code.Axiom.Set.du_fromList_410
                        (coe
                           MAlonzo.Code.Axiom.Set.d_th_1430
                           (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                        (coe MAlonzo.Code.Ledger.Transaction.d_txprop_2676 (coe v2))))))))
-- Ledger.Utxow.witsVKeyNeeded
d_witsVKeyNeeded_2104 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1590 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2616 -> [AgdaAny]
d_witsVKeyNeeded_2104 v0 ~v1 = du_witsVKeyNeeded_2104 v0
du_witsVKeyNeeded_2104 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2616 -> [AgdaAny]
du_witsVKeyNeeded_2104 v0
  = coe
      MAlonzo.Code.Function.Base.du__'8728''8322'__92
      (coe (\ v1 v2 -> coe du_getVKeys_1968))
      (coe
         MAlonzo.Code.Function.Base.du__'8728''8322'__92
         (coe
            (\ v1 v2 ->
               coe
                 MAlonzo.Code.Axiom.Set.du_map_380
                 (MAlonzo.Code.Axiom.Set.d_th_1430
                    (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                 (\ v3 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3))))
         (coe du_credsNeeded_2032 (coe v0)))
-- Ledger.Utxow.scriptsNeeded
d_scriptsNeeded_2106 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1590 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2616 -> [AgdaAny]
d_scriptsNeeded_2106 v0 ~v1 = du_scriptsNeeded_2106 v0
du_scriptsNeeded_2106 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2616 -> [AgdaAny]
du_scriptsNeeded_2106 v0
  = coe
      MAlonzo.Code.Function.Base.du__'8728''8322'__92
      (coe (\ v1 v2 -> coe du_getScripts_2030))
      (coe
         MAlonzo.Code.Function.Base.du__'8728''8322'__92
         (coe
            (\ v1 v2 ->
               coe
                 MAlonzo.Code.Axiom.Set.du_map_380
                 (MAlonzo.Code.Axiom.Set.d_th_1430
                    (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                 (\ v3 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3))))
         (coe du_credsNeeded_2032 (coe v0)))
-- Ledger.Utxow._⊢_⇀⦇_,UTXOW⦈_
d__'8866'_'8640''10631'_'44'UTXOW'10632'__2108 a0 a1 a2 a3 a4 a5
  = ()
newtype T__'8866'_'8640''10631'_'44'UTXOW'10632'__2108
  = C_UTXOW'45'inductive_2214 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Utxow._.txAD
d_txAD_2122 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1590 ->
  T_GeneralizeTel_32241 -> Maybe AgdaAny
d_txAD_2122 ~v0 ~v1 v2 = du_txAD_2122 v2
du_txAD_2122 :: T_GeneralizeTel_32241 -> Maybe AgdaAny
du_txAD_2122 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txAD_2734
      (coe d_'46'generalizedField'45'tx_32233 v0)
-- Ledger.Utxow._.body
d_body_2124 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1590 ->
  T_GeneralizeTel_32241 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2616
d_body_2124 ~v0 ~v1 v2 = du_body_2124 v2
du_body_2124 ::
  T_GeneralizeTel_32241 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2616
du_body_2124 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_body_2728
      (coe d_'46'generalizedField'45'tx_32233 v0)
-- Ledger.Utxow._.wits
d_wits_2126 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1590 ->
  T_GeneralizeTel_32241 ->
  MAlonzo.Code.Ledger.Transaction.T_TxWitnesses_2698
d_wits_2126 ~v0 ~v1 v2 = du_wits_2126 v2
du_wits_2126 ::
  T_GeneralizeTel_32241 ->
  MAlonzo.Code.Ledger.Transaction.T_TxWitnesses_2698
du_wits_2126 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_wits_2730
      (coe d_'46'generalizedField'45'tx_32233 v0)
-- Ledger.Utxow._.refInputs
d_refInputs_2136 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1590 ->
  T_GeneralizeTel_32241 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_2136 ~v0 ~v1 v2 = du_refInputs_2136 v2
du_refInputs_2136 ::
  T_GeneralizeTel_32241 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_refInputs_2136 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_refInputs_2660
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2728
         (coe d_'46'generalizedField'45'tx_32233 v0))
-- Ledger.Utxow._.txADhash
d_txADhash_2142 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1590 ->
  T_GeneralizeTel_32241 -> Maybe AgdaAny
d_txADhash_2142 ~v0 ~v1 v2 = du_txADhash_2142 v2
du_txADhash_2142 :: T_GeneralizeTel_32241 -> Maybe AgdaAny
du_txADhash_2142 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txADhash_2682
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2728
         (coe d_'46'generalizedField'45'tx_32233 v0))
-- Ledger.Utxow._.txid
d_txid_2152 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1590 ->
  T_GeneralizeTel_32241 -> AgdaAny
d_txid_2152 ~v0 ~v1 v2 = du_txid_2152 v2
du_txid_2152 :: T_GeneralizeTel_32241 -> AgdaAny
du_txid_2152 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txid_2690
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2728
         (coe d_'46'generalizedField'45'tx_32233 v0))
-- Ledger.Utxow._.txouts
d_txouts_2156 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1590 ->
  T_GeneralizeTel_32241 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txouts_2156 ~v0 ~v1 v2 = du_txouts_2156 v2
du_txouts_2156 ::
  T_GeneralizeTel_32241 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txouts_2156 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txouts_2662
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2728
         (coe d_'46'generalizedField'45'tx_32233 v0))
-- Ledger.Utxow._.txvldt
d_txvldt_2164 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1590 ->
  T_GeneralizeTel_32241 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txvldt_2164 ~v0 ~v1 v2 = du_txvldt_2164 v2
du_txvldt_2164 ::
  T_GeneralizeTel_32241 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txvldt_2164 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txvldt_2668
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2728
         (coe d_'46'generalizedField'45'tx_32233 v0))
-- Ledger.Utxow._.scripts
d_scripts_2172 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1590 ->
  T_GeneralizeTel_32241 -> [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_scripts_2172 ~v0 ~v1 v2 = du_scripts_2172 v2
du_scripts_2172 ::
  T_GeneralizeTel_32241 -> [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_scripts_2172 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_scripts_2710
      (coe
         MAlonzo.Code.Ledger.Transaction.d_wits_2730
         (coe d_'46'generalizedField'45'tx_32233 v0))
-- Ledger.Utxow._.txdats
d_txdats_2176 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1590 ->
  T_GeneralizeTel_32241 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txdats_2176 ~v0 ~v1 v2 = du_txdats_2176 v2
du_txdats_2176 ::
  T_GeneralizeTel_32241 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txdats_2176 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txdats_2712
      (coe
         MAlonzo.Code.Ledger.Transaction.d_wits_2730
         (coe d_'46'generalizedField'45'tx_32233 v0))
-- Ledger.Utxow._.vkSigs
d_vkSigs_2180 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1590 ->
  T_GeneralizeTel_32241 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_vkSigs_2180 ~v0 ~v1 v2 = du_vkSigs_2180 v2
du_vkSigs_2180 ::
  T_GeneralizeTel_32241 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_vkSigs_2180 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_vkSigs_2708
      (coe
         MAlonzo.Code.Ledger.Transaction.d_wits_2730
         (coe d_'46'generalizedField'45'tx_32233 v0))
-- Ledger.Utxow._.utxo
d_utxo_2190 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1590 ->
  T_GeneralizeTel_32241 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2190 ~v0 ~v1 v2 = du_utxo_2190 v2
du_utxo_2190 ::
  T_GeneralizeTel_32241 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxo_2190 v0
  = coe
      MAlonzo.Code.Ledger.Utxo.d_utxo_1814
      (coe d_'46'generalizedField'45's_32235 v0)
-- Ledger.Utxow.UTXOW-inductive-premises
d_UTXOW'45'inductive'45'premises_2240 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1590 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2718 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1804 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTXOW'45'inductive'45'premises_2240 v0 ~v1 v2 v3
  = du_UTXOW'45'inductive'45'premises_2240 v0 v2 v3
du_UTXOW'45'inductive'45'premises_2240 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2718 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1804 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_UTXOW'45'inductive'45'premises_2240 v0 v1 v2
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
                                  (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1168 (coe v0)))
                               (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4))
                               (coe
                                  MAlonzo.Code.Ledger.Transaction.d_txidBytes_2226 v0
                                  (MAlonzo.Code.Ledger.Transaction.d_txid_2690
                                     (coe MAlonzo.Code.Ledger.Transaction.d_body_2728 (coe v1))))
                               (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v4)))))
                    v3))
            (coe
               MAlonzo.Code.Axiom.Set.Map.du__'738'_532
               (coe
                  MAlonzo.Code.Ledger.Transaction.d_vkSigs_2708
                  (coe MAlonzo.Code.Ledger.Transaction.d_wits_2730 (coe v1)))))
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
                             (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1168 (coe v0))
                             (coe
                                MAlonzo.Code.Ledger.Transaction.d_epochStructure_1444 (coe v0))
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
                                            MAlonzo.Code.Ledger.Transaction.d_crypto_1168
                                            (coe v0)))))
                                (coe
                                   MAlonzo.Code.Interface.IsSet.du_dom_538
                                   (coe
                                      MAlonzo.Code.Axiom.Set.d_th_1430
                                      (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                   (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_546)
                                   (coe
                                      MAlonzo.Code.Ledger.Transaction.d_vkSigs_2708
                                      (coe MAlonzo.Code.Ledger.Transaction.d_wits_2730 (coe v1)))))
                             (coe
                                MAlonzo.Code.Ledger.Transaction.d_txvldt_2668
                                (coe MAlonzo.Code.Ledger.Transaction.d_body_2728 (coe v1)))))
                       v3))
               (coe
                  MAlonzo.Code.Axiom.Set.du_mapPartial_558
                  (MAlonzo.Code.Axiom.Set.d_th_1430
                     (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                  (coe MAlonzo.Code.Data.Sum.du_isInj'8321'_24)
                  (MAlonzo.Code.Ledger.Transaction.d_txscripts_2828
                     (coe v0) (coe v1)
                     (coe MAlonzo.Code.Ledger.Utxo.d_utxo_1814 (coe v2)))))
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
                                                 MAlonzo.Code.Ledger.Transaction.d_crypto_1168
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
                                                    MAlonzo.Code.Ledger.Transaction.d_crypto_1168
                                                    (coe v0)))))
                                        (coe
                                           MAlonzo.Code.Interface.IsSet.du_dom_538
                                           (coe
                                              MAlonzo.Code.Axiom.Set.d_th_1430
                                              (coe
                                                 MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                           (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_546)
                                           (coe
                                              MAlonzo.Code.Ledger.Transaction.d_vkSigs_2708
                                              (coe
                                                 MAlonzo.Code.Ledger.Transaction.d_wits_2730
                                                 (coe v1))))))))
                          v3))
                  (coe
                     du_witsVKeyNeeded_2104 v0
                     (MAlonzo.Code.Ledger.Utxo.d_utxo_1814 (coe v2))
                     (MAlonzo.Code.Ledger.Transaction.d_body_2728 (coe v1))))
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
                                                    MAlonzo.Code.Ledger.Transaction.d_crypto_1168
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
                                                       MAlonzo.Code.Ledger.Transaction.d_crypto_1168
                                                       (coe v0))
                                                    (coe
                                                       MAlonzo.Code.Ledger.Transaction.d_epochStructure_1444
                                                       (coe v0))
                                                    (coe
                                                       MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1708
                                                       (coe v0))))
                                              (MAlonzo.Code.Ledger.Transaction.d_scripts_2710
                                                 (coe
                                                    MAlonzo.Code.Ledger.Transaction.d_wits_2730
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
                                 (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1168 (coe v0))))
                           (coe
                              du_scriptsNeeded_2106 v0
                              (MAlonzo.Code.Ledger.Utxo.d_utxo_1814 (coe v2))
                              (MAlonzo.Code.Ledger.Transaction.d_body_2728 (coe v1)))
                           (coe
                              MAlonzo.Code.Axiom.Set.du_map_380
                              (MAlonzo.Code.Axiom.Set.d_th_1430
                                 (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                              (MAlonzo.Code.Interface.Hashable.d_hash_16
                                 (coe
                                    MAlonzo.Code.Ledger.Script.d_Hashable'45'Script_494
                                    (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1168 (coe v0))
                                    (coe
                                       MAlonzo.Code.Ledger.Transaction.d_epochStructure_1444
                                       (coe v0))
                                    (coe
                                       MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1708
                                       (coe v0))))
                              (MAlonzo.Code.Ledger.Transaction.d_refScripts_2776
                                 (coe v0) (coe v1)
                                 (coe MAlonzo.Code.Ledger.Utxo.d_utxo_1814 (coe v2))))))
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
                                                    MAlonzo.Code.Ledger.Transaction.d_crypto_1168
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
                                                       MAlonzo.Code.Ledger.Transaction.d_crypto_1168
                                                       (coe v0))))
                                              (coe
                                                 du_scriptsNeeded_2106 v0
                                                 (MAlonzo.Code.Ledger.Utxo.d_utxo_1814 (coe v2))
                                                 (MAlonzo.Code.Ledger.Transaction.d_body_2728
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
                                                          MAlonzo.Code.Ledger.Transaction.d_crypto_1168
                                                          (coe v0))
                                                       (coe
                                                          MAlonzo.Code.Ledger.Transaction.d_epochStructure_1444
                                                          (coe v0))
                                                       (coe
                                                          MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1708
                                                          (coe v0))))
                                                 (MAlonzo.Code.Ledger.Transaction.d_refScripts_2776
                                                    (coe v0) (coe v1)
                                                    (coe
                                                       MAlonzo.Code.Ledger.Utxo.d_utxo_1814
                                                       (coe v2))))))))
                                v3))
                        (coe
                           MAlonzo.Code.Axiom.Set.du_map_380
                           (MAlonzo.Code.Axiom.Set.d_th_1430
                              (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                           (MAlonzo.Code.Interface.Hashable.d_hash_16
                              (coe
                                 MAlonzo.Code.Ledger.Script.d_Hashable'45'Script_494
                                 (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1168 (coe v0))
                                 (coe
                                    MAlonzo.Code.Ledger.Transaction.d_epochStructure_1444 (coe v0))
                                 (coe
                                    MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1708
                                    (coe v0))))
                           (MAlonzo.Code.Ledger.Transaction.d_scripts_2710
                              (coe MAlonzo.Code.Ledger.Transaction.d_wits_2730 (coe v1))))))
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
                                                             MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1708
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
                                                 MAlonzo.Code.Ledger.Transaction.d_txdats_2712
                                                 (coe
                                                    MAlonzo.Code.Ledger.Transaction.d_wits_2730
                                                    (coe v1)))))))
                                v3))
                        (coe
                           MAlonzo.Code.Ledger.Utxo.du_getInputHashes_1716 (coe v0) (coe v1)
                           (coe MAlonzo.Code.Ledger.Utxo.d_utxo_1814 (coe v2))))
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
                                                                MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1708
                                                                (coe v0)))))))
                                              (coe v4)
                                              (coe
                                                 MAlonzo.Code.Axiom.Set.du__'8746'__662
                                                 (coe
                                                    MAlonzo.Code.Axiom.Set.d_th_1430
                                                    (coe
                                                       MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                 (coe
                                                    MAlonzo.Code.Ledger.Utxo.du_getInputHashes_1716
                                                    (coe v0) (coe v1)
                                                    (coe
                                                       MAlonzo.Code.Ledger.Utxo.d_utxo_1814
                                                       (coe v2)))
                                                 (coe
                                                    MAlonzo.Code.Axiom.Set.du__'8746'__662
                                                    (coe
                                                       MAlonzo.Code.Axiom.Set.d_th_1430
                                                       (coe
                                                          MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                    (coe
                                                       MAlonzo.Code.Ledger.Utxo.du_getDataHashes_1712
                                                       (coe
                                                          MAlonzo.Code.Interface.IsSet.du_range_540
                                                          (coe
                                                             MAlonzo.Code.Axiom.Set.d_th_1430
                                                             (coe
                                                                MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                          (coe
                                                             MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_546)
                                                          (coe
                                                             MAlonzo.Code.Ledger.Transaction.d_txouts_2662
                                                             (coe
                                                                MAlonzo.Code.Ledger.Transaction.d_body_2728
                                                                (coe v1)))))
                                                    (coe
                                                       MAlonzo.Code.Ledger.Utxo.du_getDataHashes_1712
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
                                                                   (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1134
                                                                      (coe v0))
                                                                   (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1132
                                                                      (coe v0))))
                                                             (coe
                                                                MAlonzo.Code.Ledger.Utxo.d_utxo_1814
                                                                (coe v2))
                                                             (coe
                                                                MAlonzo.Code.Ledger.Transaction.d_refInputs_2660
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Transaction.d_body_2728
                                                                   (coe v1)))))))))))
                                   v3))
                           (coe
                              MAlonzo.Code.Interface.IsSet.du_dom_538
                              (coe
                                 MAlonzo.Code.Axiom.Set.d_th_1430
                                 (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                              (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_546)
                              (coe
                                 MAlonzo.Code.Ledger.Transaction.d_txdats_2712
                                 (coe MAlonzo.Code.Ledger.Transaction.d_wits_2730 (coe v1)))))
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
                                                             MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1708
                                                             (coe v0)))))
                                                 (coe v4)
                                                 (coe
                                                    du_allowedLanguages_1970 (coe v0) (coe v1)
                                                    (coe
                                                       MAlonzo.Code.Ledger.Utxo.d_utxo_1814
                                                       (coe v2))))))
                                      v3))
                              (coe
                                 du_languages_1954 (coe v0) (coe v1)
                                 (coe MAlonzo.Code.Ledger.Utxo.d_utxo_1814 (coe v2))))
                           (coe
                              MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                              (coe
                                 MAlonzo.Code.Data.Maybe.Properties.du_'8801''45'dec_24
                                 (coe
                                    MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                    (coe
                                       MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                       (coe
                                          MAlonzo.Code.Ledger.Transaction.d_adHashingScheme_1136
                                          (coe v0)))))
                              (coe
                                 MAlonzo.Code.Ledger.Transaction.d_txADhash_2682
                                 (coe MAlonzo.Code.Ledger.Transaction.d_body_2728 (coe v1)))
                              (coe
                                 MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                 MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6
                                 MAlonzo.Code.Agda.Primitive.d_lzero_20 erased
                                 MAlonzo.Code.Agda.Primitive.d_lzero_20 erased
                                 (MAlonzo.Code.Interface.Hashable.d_hash_16
                                    (coe
                                       MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_24
                                       (coe
                                          MAlonzo.Code.Ledger.Transaction.d_adHashingScheme_1136
                                          (coe v0))))
                                 (MAlonzo.Code.Ledger.Transaction.d_txAD_2734 (coe v1)))))))))))
-- Ledger.Utxow..generalizedField-tx
d_'46'generalizedField'45'tx_32233 ::
  T_GeneralizeTel_32241 -> MAlonzo.Code.Ledger.Transaction.T_Tx_2718
d_'46'generalizedField'45'tx_32233
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxow..generalizedField-s
d_'46'generalizedField'45's_32235 ::
  T_GeneralizeTel_32241 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1804
d_'46'generalizedField'45's_32235 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxow..generalizedField-Γ
d_'46'generalizedField'45'Γ_32237 ::
  T_GeneralizeTel_32241 -> MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1790
d_'46'generalizedField'45'Γ_32237 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxow..generalizedField-s'
d_'46'generalizedField'45's''_32239 ::
  T_GeneralizeTel_32241 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1804
d_'46'generalizedField'45's''_32239
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxow.GeneralizeTel
d_GeneralizeTel_32241 a0 a1 = ()
data T_GeneralizeTel_32241
  = C_mkGeneralizeTel_32243 MAlonzo.Code.Ledger.Transaction.T_Tx_2718
                            MAlonzo.Code.Ledger.Utxo.T_UTxOState_1804
                            MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1790
                            MAlonzo.Code.Ledger.Utxo.T_UTxOState_1804
