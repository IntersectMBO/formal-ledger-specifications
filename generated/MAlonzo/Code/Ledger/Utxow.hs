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
      MAlonzo.Code.Ledger.Script.d_Hashable'45'Script_524
      (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1226 (coe v0))
      (coe
         MAlonzo.Code.Ledger.Transaction.d_epochStructure_1512 (coe v0))
      (coe
         MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1794 (coe v0))
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
d_Tx_434 a0 = ()
-- _.TxBody
d_TxBody_436 a0 = ()
-- _.TxOut
d_TxOut_442 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_TxOut_442 = erased
-- _.UTxO
d_UTxO_448 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_UTxO_448 = erased
-- _.isBootstrapAddr
d_isBootstrapAddr_554 a0 a1 = ()
-- _.isSigned
d_isSigned_576 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny -> AgdaAny -> AgdaAny -> ()
d_isSigned_576 = erased
-- _.refScripts
d_refScripts_630 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2826 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_refScripts_630 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_refScripts_2884 (coe v0)
-- _.txscripts
d_txscripts_666 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2826 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_txscripts_666 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txscripts_2936 (coe v0)
-- _.validP1Script
d_validP1Script_670 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Script.T_Timelock_260 -> ()
d_validP1Script_670 = erased
-- Ledger.Utxow._._⊢_⇀⦇_,UTXO⦈_
d__'8866'_'8640''10631'_'44'UTXO'10632'__1646 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Utxow._.UTxOEnv
d_UTxOEnv_1668 a0 a1 = ()
-- Ledger.Utxow._.UTxOState
d_UTxOState_1670 a0 a1 = ()
-- Ledger.Utxow._.getDataHashes
d_getDataHashes_1692 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1644 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> [AgdaAny]
d_getDataHashes_1692 ~v0 ~v1 = du_getDataHashes_1692
du_getDataHashes_1692 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> [AgdaAny]
du_getDataHashes_1692
  = coe MAlonzo.Code.Ledger.Utxo.du_getDataHashes_1766
-- Ledger.Utxow._.getInputHashes
d_getInputHashes_1694 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1644 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2826 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
d_getInputHashes_1694 v0 ~v1 = du_getInputHashes_1694 v0
du_getInputHashes_1694 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2826 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
du_getInputHashes_1694 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_getInputHashes_1770 (coe v0)
-- Ledger.Utxow._.ScriptPurpose
d_ScriptPurpose_1798 a0 a1 = ()
-- Ledger.Utxow._.d
d_d_1896 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1644 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_d_1896 ~v0 v1 = du_d_1896 v1
du_d_1896 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Data.Sum.Base.T__'8846'__30
du_d_1896 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
         (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v0)))
-- Ledger.Utxow._.HasInlineDatum
d_HasInlineDatum_1898 a0 a1 a2 = ()
newtype T_HasInlineDatum_1898 = C_InlineDatum_1902 AgdaAny
-- Ledger.Utxow.Dec-HasInlineDatum
d_Dec'45'HasInlineDatum_1906 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1644 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'HasInlineDatum_1906 ~v0 ~v1 v2
  = du_Dec'45'HasInlineDatum_1906 v2
du_Dec'45'HasInlineDatum_1906 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'HasInlineDatum_1906 v0
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
                                               (coe C_InlineDatum_1902 v8)))
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
d_UsesV3Features_1972 a0 a1 a2 = ()
data T_UsesV3Features_1972
  = C_HasVotes_1974 | C_HasProps_1976 | C_HasDonation_1978 |
    C_HasTreasury_1980
-- Ledger.Utxow.Dec-UsesV3Features
d_Dec'45'UsesV3Features_1984 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1644 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2724 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'UsesV3Features_1984 ~v0 ~v1 v2
  = du_Dec'45'UsesV3Features_1984 v2
du_Dec'45'UsesV3Features_1984 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2724 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'UsesV3Features_1984 v0
  = case coe v0 of
      MAlonzo.Code.Ledger.Transaction.C_TxBody'46'constructor_16629 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
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
                                               (coe C_HasTreasury_1980)))
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
                                        (coe C_HasDonation_1978)))
                    (:) v21 v22
                      -> coe
                           MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
                           (coe
                              MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                              (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                              (coe
                                 MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                 (coe C_HasProps_1976)))
                    _ -> MAlonzo.RTE.mazUnreachableError
             (:) v21 v22
               -> coe
                    MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
                    (coe
                       MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                       (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                       (coe
                          MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                          (coe C_HasVotes_1974)))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxow.languages
d_languages_2008 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1644 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2826 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
d_languages_2008 v0 ~v1 v2 v3 = du_languages_2008 v0 v2 v3
du_languages_2008 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2826 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
du_languages_2008 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.du_mapPartial_564
      (MAlonzo.Code.Axiom.Set.d_th_1458
         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
      (coe du_getLanguage_2018 (coe v0))
      (MAlonzo.Code.Ledger.Transaction.d_txscripts_2936
         (coe v0) (coe v1) (coe v2))
-- Ledger.Utxow._.getLanguage
d_getLanguage_2018 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1644 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2826 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
d_getLanguage_2018 v0 ~v1 ~v2 ~v3 v4 = du_getLanguage_2018 v0 v4
du_getLanguage_2018 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
du_getLanguage_2018 v0 v1
  = case coe v1 of
      MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v2
        -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
      MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v2
        -> coe
             MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
             (coe
                MAlonzo.Code.Ledger.Script.d_language_254
                (MAlonzo.Code.Ledger.Script.d_ps_450
                   (coe
                      MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1794 (coe v0)))
                v2)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxow.getVKeys
d_getVKeys_2022 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1644 ->
  [MAlonzo.Code.Ledger.Address.T_Credential_16] -> [AgdaAny]
d_getVKeys_2022 ~v0 ~v1 = du_getVKeys_2022
du_getVKeys_2022 ::
  [MAlonzo.Code.Ledger.Address.T_Credential_16] -> [AgdaAny]
du_getVKeys_2022
  = coe
      MAlonzo.Code.Axiom.Set.du_mapPartial_564
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458
         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
      (coe MAlonzo.Code.Ledger.Address.du_isKeyHashObj_22)
-- Ledger.Utxow.allowedLanguages
d_allowedLanguages_2024 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1644 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2826 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
d_allowedLanguages_2024 v0 ~v1 v2 v3
  = du_allowedLanguages_2024 v0 v2 v3
du_allowedLanguages_2024 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2826 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
du_allowedLanguages_2024 v0 v1 v2
  = coe
      MAlonzo.Code.Interface.ToBool.du_if_then_else__46
      (coe MAlonzo.Code.Interface.ToBool.du_ToBool'45''8263'_112) erased
      (coe
         MAlonzo.Code.Axiom.Set.du_Dec'45'Any'738'_1626
         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)
         (coe
            (\ v3 ->
               coe
                 MAlonzo.Code.Ledger.Address.du_isBootstrapAddr'63'_138
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3))))
         (coe du_os_2078 (coe v0) (coe v1) (coe v2)))
      (coe
         (\ v3 ->
            MAlonzo.Code.Interface.HasEmptySet.d_'8709'_12
              (coe
                 MAlonzo.Code.Interface.HasEmptySet.Instances.du_HasEmptySet'45'Set_296
                 (coe
                    MAlonzo.Code.Axiom.Set.d_th_1458
                    (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))))
      (coe
         (\ v3 ->
            coe
              MAlonzo.Code.Interface.ToBool.du_if_then_else__46
              (coe MAlonzo.Code.Interface.ToBool.du_ToBool'45''8263'_112) erased
              (coe du_Dec'45'UsesV3Features_1984 (coe du_txb_2034 (coe v1)))
              (coe
                 (\ v4 ->
                    coe
                      MAlonzo.Code.Axiom.Set.du_fromList_416
                      (coe
                         MAlonzo.Code.Axiom.Set.d_th_1458
                         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                      (coe
                         MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                         (coe
                            MAlonzo.Code.Ledger.Script.d_PlutusV3_204
                            (coe
                               MAlonzo.Code.Ledger.Script.d_ps_450
                               (coe
                                  MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1794 (coe v0))))
                         (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
              (coe
                 (\ v4 ->
                    coe
                      MAlonzo.Code.Interface.ToBool.du_if_then_else__46
                      (coe MAlonzo.Code.Interface.ToBool.du_ToBool'45''8263'_112) erased
                      (coe
                         MAlonzo.Code.Axiom.Set.du_Dec'45'Any'738'_1626
                         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)
                         (coe du_Dec'45'HasInlineDatum_1906)
                         (coe
                            MAlonzo.Code.Interface.IsSet.d_toSet_482
                            (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Set_544)
                            (coe du_os_2078 (coe v0) (coe v1) (coe v2))))
                      (coe
                         (\ v5 ->
                            coe
                              MAlonzo.Code.Axiom.Set.du_fromList_416
                              (coe
                                 MAlonzo.Code.Axiom.Set.d_th_1458
                                 (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                 (coe
                                    MAlonzo.Code.Ledger.Script.d_PlutusV2_202
                                    (coe
                                       MAlonzo.Code.Ledger.Script.d_ps_450
                                       (coe
                                          MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1794
                                          (coe v0))))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                    (coe
                                       MAlonzo.Code.Ledger.Script.d_PlutusV3_204
                                       (coe
                                          MAlonzo.Code.Ledger.Script.d_ps_450
                                          (coe
                                             MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1794
                                             (coe v0))))
                                    (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                      (coe
                         (\ v5 ->
                            coe
                              MAlonzo.Code.Axiom.Set.du_fromList_416
                              (coe
                                 MAlonzo.Code.Axiom.Set.d_th_1458
                                 (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                 (coe
                                    MAlonzo.Code.Ledger.Script.d_PlutusV1_200
                                    (coe
                                       MAlonzo.Code.Ledger.Script.d_ps_450
                                       (coe
                                          MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1794
                                          (coe v0))))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                    (coe
                                       MAlonzo.Code.Ledger.Script.d_PlutusV2_202
                                       (coe
                                          MAlonzo.Code.Ledger.Script.d_ps_450
                                          (coe
                                             MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1794
                                             (coe v0))))
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                       (coe
                                          MAlonzo.Code.Ledger.Script.d_PlutusV3_204
                                          (coe
                                             MAlonzo.Code.Ledger.Script.d_ps_450
                                             (coe
                                                MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1794
                                                (coe v0))))
                                       (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))))))
-- Ledger.Utxow._.txb
d_txb_2034 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1644 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2826 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2724
d_txb_2034 ~v0 ~v1 v2 ~v3 = du_txb_2034 v2
du_txb_2034 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2826 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2724
du_txb_2034 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_body_2836 (coe v0)
-- Ledger.Utxow._.os
d_os_2078 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1644 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2826 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_os_2078 v0 ~v1 v2 v3 = du_os_2078 v0 v2 v3
du_os_2078 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2826 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_os_2078 v0 v1 v2
  = let v3
          = MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 in
    coe
      (coe
         MAlonzo.Code.Axiom.Set.du__'8746'__668
         (coe MAlonzo.Code.Axiom.Set.d_th_1458 (coe v3))
         (coe
            MAlonzo.Code.Interface.IsSet.du_range_542
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1458
               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
            (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_548)
            (coe
               MAlonzo.Code.Ledger.Utxo.du_outs_1888 (coe du_txb_2034 (coe v1))))
         (coe
            MAlonzo.Code.Interface.IsSet.du_range_542
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1458
               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
            (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_548)
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
                     (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1188 (coe v0))
                     (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1186 (coe v0))))
               (coe v2)
               (coe
                  MAlonzo.Code.Axiom.Set.du__'8746'__668
                  (coe
                     MAlonzo.Code.Axiom.Set.d_th_1458
                     (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                  (coe
                     MAlonzo.Code.Ledger.Transaction.d_txins_2766
                     (coe du_txb_2034 (coe v1)))
                  (coe
                     MAlonzo.Code.Ledger.Transaction.d_refInputs_2768
                     (coe du_txb_2034 (coe v1)))))))
-- Ledger.Utxow.getScripts
d_getScripts_2084 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1644 ->
  [MAlonzo.Code.Ledger.Address.T_Credential_16] -> [AgdaAny]
d_getScripts_2084 ~v0 ~v1 = du_getScripts_2084
du_getScripts_2084 ::
  [MAlonzo.Code.Ledger.Address.T_Credential_16] -> [AgdaAny]
du_getScripts_2084
  = coe
      MAlonzo.Code.Axiom.Set.du_mapPartial_564
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458
         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
      (coe MAlonzo.Code.Ledger.Address.du_isScriptObj_32)
-- Ledger.Utxow.credsNeeded
d_credsNeeded_2086 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1644 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2724 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_credsNeeded_2086 v0 ~v1 v2 v3 = du_credsNeeded_2086 v0 v2 v3
du_credsNeeded_2086 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2724 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_credsNeeded_2086 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.du__'8746'__668
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458
         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.du_map_386
         (MAlonzo.Code.Axiom.Set.d_th_1458
            (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
         (\ v3 ->
            coe
              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
              (coe
                 MAlonzo.Code.Ledger.ScriptValidation.C_Spend_1656
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3)))
              (coe
                 MAlonzo.Code.Ledger.Address.du_payCred_108
                 (coe
                    MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                    (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3)))))
         (coe
            MAlonzo.Code.Axiom.Set.Map.du__'738'_534
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
                     (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1188 (coe v0))
                     (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1186 (coe v0))))
               (coe v1)
               (coe MAlonzo.Code.Ledger.Transaction.d_txins_2766 (coe v2)))))
      (coe
         MAlonzo.Code.Axiom.Set.du__'8746'__668
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1458
            (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
         (coe
            MAlonzo.Code.Axiom.Set.du_map_386
            (MAlonzo.Code.Axiom.Set.d_th_1458
               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
            (\ v3 ->
               coe
                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                 (coe MAlonzo.Code.Ledger.ScriptValidation.C_Rwrd_1652 (coe v3))
                 (coe MAlonzo.Code.Ledger.Address.d_stake_84 (coe v3)))
            (coe
               MAlonzo.Code.Interface.IsSet.du_dom_540
               (coe
                  MAlonzo.Code.Axiom.Set.d_th_1458
                  (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
               (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Set_544)
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                  (coe MAlonzo.Code.Ledger.Transaction.d_txwdrls_2780 (coe v2)))))
         (coe
            MAlonzo.Code.Axiom.Set.du__'8746'__668
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1458
               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
            (coe
               MAlonzo.Code.Axiom.Set.du_map_386
               (MAlonzo.Code.Axiom.Set.d_th_1458
                  (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
               (\ v3 ->
                  coe
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                    (coe MAlonzo.Code.Ledger.ScriptValidation.C_Cert_1650 (coe v3))
                    (coe MAlonzo.Code.Ledger.Certs.d_cwitness_844 (coe v3)))
               (coe
                  MAlonzo.Code.Axiom.Set.du_fromList_416
                  (coe
                     MAlonzo.Code.Axiom.Set.d_th_1458
                     (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                  (coe MAlonzo.Code.Ledger.Transaction.d_txcerts_2778 (coe v2))))
            (coe
               MAlonzo.Code.Axiom.Set.du__'8746'__668
               (coe
                  MAlonzo.Code.Axiom.Set.d_th_1458
                  (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
               (coe
                  MAlonzo.Code.Axiom.Set.du_map_386
                  (MAlonzo.Code.Axiom.Set.d_th_1458
                     (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                  (\ v3 ->
                     coe
                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                       (coe MAlonzo.Code.Ledger.ScriptValidation.C_Mint_1654 (coe v3))
                       (coe MAlonzo.Code.Ledger.Address.C_ScriptObj_20 (coe v3)))
                  (coe
                     MAlonzo.Code.Ledger.TokenAlgebra.d_policies_208
                     (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2220 (coe v0))
                     (MAlonzo.Code.Ledger.Transaction.d_mint_2774 (coe v2))))
               (coe
                  MAlonzo.Code.Axiom.Set.du__'8746'__668
                  (coe
                     MAlonzo.Code.Axiom.Set.d_th_1458
                     (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                  (coe
                     MAlonzo.Code.Axiom.Set.du_map_386
                     (MAlonzo.Code.Axiom.Set.d_th_1458
                        (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                     (\ v3 ->
                        coe
                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                          (coe MAlonzo.Code.Ledger.ScriptValidation.C_Vote_1658 (coe v3))
                          (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3)))
                     (coe
                        MAlonzo.Code.Axiom.Set.du_fromList_416
                        (coe
                           MAlonzo.Code.Axiom.Set.d_th_1458
                           (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                        (coe
                           MAlonzo.Code.Class.Functor.Core.du_fmap_22
                           MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20 () erased
                           () erased
                           (\ v3 ->
                              MAlonzo.Code.Ledger.GovernanceActions.d_voter_742 (coe v3))
                           (MAlonzo.Code.Ledger.Transaction.d_txvote_2782 (coe v2)))))
                  (coe
                     MAlonzo.Code.Axiom.Set.du_mapPartial_564
                     (MAlonzo.Code.Axiom.Set.d_th_1458
                        (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                     (\ v3 ->
                        let v4
                              = MAlonzo.Code.Ledger.GovernanceActions.d_policy_766 (coe v3) in
                        coe
                          (case coe v4 of
                             MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v5
                               -> coe
                                    MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                       (coe
                                          MAlonzo.Code.Ledger.ScriptValidation.C_Propose_1660
                                          (coe v3))
                                       (coe MAlonzo.Code.Ledger.Address.C_ScriptObj_20 (coe v5)))
                             MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18 -> coe v4
                             _ -> MAlonzo.RTE.mazUnreachableError))
                     (coe
                        MAlonzo.Code.Axiom.Set.du_fromList_416
                        (coe
                           MAlonzo.Code.Axiom.Set.d_th_1458
                           (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                        (coe MAlonzo.Code.Ledger.Transaction.d_txprop_2784 (coe v2))))))))
-- Ledger.Utxow.witsVKeyNeeded
d_witsVKeyNeeded_2158 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1644 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2724 -> [AgdaAny]
d_witsVKeyNeeded_2158 v0 ~v1 = du_witsVKeyNeeded_2158 v0
du_witsVKeyNeeded_2158 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2724 -> [AgdaAny]
du_witsVKeyNeeded_2158 v0
  = coe
      MAlonzo.Code.Function.Base.du__'8728''8322'__92
      (coe (\ v1 v2 -> coe du_getVKeys_2022))
      (coe
         MAlonzo.Code.Function.Base.du__'8728''8322'__92
         (coe
            (\ v1 v2 ->
               coe
                 MAlonzo.Code.Axiom.Set.du_map_386
                 (MAlonzo.Code.Axiom.Set.d_th_1458
                    (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                 (\ v3 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3))))
         (coe du_credsNeeded_2086 (coe v0)))
-- Ledger.Utxow.scriptsNeeded
d_scriptsNeeded_2160 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1644 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2724 -> [AgdaAny]
d_scriptsNeeded_2160 v0 ~v1 = du_scriptsNeeded_2160 v0
du_scriptsNeeded_2160 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2724 -> [AgdaAny]
du_scriptsNeeded_2160 v0
  = coe
      MAlonzo.Code.Function.Base.du__'8728''8322'__92
      (coe (\ v1 v2 -> coe du_getScripts_2084))
      (coe
         MAlonzo.Code.Function.Base.du__'8728''8322'__92
         (coe
            (\ v1 v2 ->
               coe
                 MAlonzo.Code.Axiom.Set.du_map_386
                 (MAlonzo.Code.Axiom.Set.d_th_1458
                    (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                 (\ v3 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3))))
         (coe du_credsNeeded_2086 (coe v0)))
-- Ledger.Utxow._⊢_⇀⦇_,UTXOW⦈_
d__'8866'_'8640''10631'_'44'UTXOW'10632'__2162 a0 a1 a2 a3 a4 a5
  = ()
newtype T__'8866'_'8640''10631'_'44'UTXOW'10632'__2162
  = C_UTXOW'45'inductive_2268 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Utxow._.txAD
d_txAD_2176 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1644 ->
  T_GeneralizeTel_32283 -> Maybe AgdaAny
d_txAD_2176 ~v0 ~v1 v2 = du_txAD_2176 v2
du_txAD_2176 :: T_GeneralizeTel_32283 -> Maybe AgdaAny
du_txAD_2176 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txAD_2842
      (coe d_'46'generalizedField'45'tx_32275 v0)
-- Ledger.Utxow._.body
d_body_2178 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1644 ->
  T_GeneralizeTel_32283 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2724
d_body_2178 ~v0 ~v1 v2 = du_body_2178 v2
du_body_2178 ::
  T_GeneralizeTel_32283 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2724
du_body_2178 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_body_2836
      (coe d_'46'generalizedField'45'tx_32275 v0)
-- Ledger.Utxow._.wits
d_wits_2180 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1644 ->
  T_GeneralizeTel_32283 ->
  MAlonzo.Code.Ledger.Transaction.T_TxWitnesses_2806
d_wits_2180 ~v0 ~v1 v2 = du_wits_2180 v2
du_wits_2180 ::
  T_GeneralizeTel_32283 ->
  MAlonzo.Code.Ledger.Transaction.T_TxWitnesses_2806
du_wits_2180 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_wits_2838
      (coe d_'46'generalizedField'45'tx_32275 v0)
-- Ledger.Utxow._.refInputs
d_refInputs_2190 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1644 ->
  T_GeneralizeTel_32283 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_2190 ~v0 ~v1 v2 = du_refInputs_2190 v2
du_refInputs_2190 ::
  T_GeneralizeTel_32283 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_refInputs_2190 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_refInputs_2768
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2836
         (coe d_'46'generalizedField'45'tx_32275 v0))
-- Ledger.Utxow._.txADhash
d_txADhash_2196 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1644 ->
  T_GeneralizeTel_32283 -> Maybe AgdaAny
d_txADhash_2196 ~v0 ~v1 v2 = du_txADhash_2196 v2
du_txADhash_2196 :: T_GeneralizeTel_32283 -> Maybe AgdaAny
du_txADhash_2196 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txADhash_2790
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2836
         (coe d_'46'generalizedField'45'tx_32275 v0))
-- Ledger.Utxow._.txid
d_txid_2206 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1644 ->
  T_GeneralizeTel_32283 -> AgdaAny
d_txid_2206 ~v0 ~v1 v2 = du_txid_2206 v2
du_txid_2206 :: T_GeneralizeTel_32283 -> AgdaAny
du_txid_2206 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txid_2798
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2836
         (coe d_'46'generalizedField'45'tx_32275 v0))
-- Ledger.Utxow._.txouts
d_txouts_2210 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1644 ->
  T_GeneralizeTel_32283 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txouts_2210 ~v0 ~v1 v2 = du_txouts_2210 v2
du_txouts_2210 ::
  T_GeneralizeTel_32283 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txouts_2210 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txouts_2770
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2836
         (coe d_'46'generalizedField'45'tx_32275 v0))
-- Ledger.Utxow._.txvldt
d_txvldt_2218 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1644 ->
  T_GeneralizeTel_32283 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txvldt_2218 ~v0 ~v1 v2 = du_txvldt_2218 v2
du_txvldt_2218 ::
  T_GeneralizeTel_32283 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txvldt_2218 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txvldt_2776
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2836
         (coe d_'46'generalizedField'45'tx_32275 v0))
-- Ledger.Utxow._.scripts
d_scripts_2226 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1644 ->
  T_GeneralizeTel_32283 -> [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_scripts_2226 ~v0 ~v1 v2 = du_scripts_2226 v2
du_scripts_2226 ::
  T_GeneralizeTel_32283 -> [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_scripts_2226 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_scripts_2818
      (coe
         MAlonzo.Code.Ledger.Transaction.d_wits_2838
         (coe d_'46'generalizedField'45'tx_32275 v0))
-- Ledger.Utxow._.txdats
d_txdats_2230 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1644 ->
  T_GeneralizeTel_32283 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txdats_2230 ~v0 ~v1 v2 = du_txdats_2230 v2
du_txdats_2230 ::
  T_GeneralizeTel_32283 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txdats_2230 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txdats_2820
      (coe
         MAlonzo.Code.Ledger.Transaction.d_wits_2838
         (coe d_'46'generalizedField'45'tx_32275 v0))
-- Ledger.Utxow._.vkSigs
d_vkSigs_2234 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1644 ->
  T_GeneralizeTel_32283 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_vkSigs_2234 ~v0 ~v1 v2 = du_vkSigs_2234 v2
du_vkSigs_2234 ::
  T_GeneralizeTel_32283 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_vkSigs_2234 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_vkSigs_2816
      (coe
         MAlonzo.Code.Ledger.Transaction.d_wits_2838
         (coe d_'46'generalizedField'45'tx_32275 v0))
-- Ledger.Utxow._.utxo
d_utxo_2244 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1644 ->
  T_GeneralizeTel_32283 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2244 ~v0 ~v1 v2 = du_utxo_2244 v2
du_utxo_2244 ::
  T_GeneralizeTel_32283 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxo_2244 v0
  = coe
      MAlonzo.Code.Ledger.Utxo.d_utxo_1868
      (coe d_'46'generalizedField'45's_32277 v0)
-- Ledger.Utxow.UTXOW-inductive-premises
d_UTXOW'45'inductive'45'premises_2294 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1644 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2826 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1858 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTXOW'45'inductive'45'premises_2294 v0 ~v1 v2 v3
  = du_UTXOW'45'inductive'45'premises_2294 v0 v2 v3
du_UTXOW'45'inductive'45'premises_2294 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2826 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1858 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_UTXOW'45'inductive'45'premises_2294 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased
      (coe
         MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
         (coe
            MAlonzo.Code.Class.Decidable.Core.du_'8263''185'__110
            (coe
               (\ v3 ->
                  coe
                    MAlonzo.Code.Axiom.Set.d_all'63'_1598
                    MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
                    erased
                    (coe
                       MAlonzo.Code.Class.Decidable.Core.du_dec'185'_108
                       (coe
                          (\ v4 ->
                             coe
                               MAlonzo.Code.Ledger.Crypto.d_Dec'45'isSigned_116
                               (MAlonzo.Code.Ledger.Crypto.d_pkk_172
                                  (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1226 (coe v0)))
                               (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4))
                               (coe
                                  MAlonzo.Code.Ledger.Transaction.d_txidBytes_2334 v0
                                  (MAlonzo.Code.Ledger.Transaction.d_txid_2798
                                     (coe MAlonzo.Code.Ledger.Transaction.d_body_2836 (coe v1))))
                               (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v4)))))
                    v3))
            (coe
               MAlonzo.Code.Axiom.Set.Map.du__'738'_534
               (coe
                  MAlonzo.Code.Ledger.Transaction.d_vkSigs_2816
                  (coe MAlonzo.Code.Ledger.Transaction.d_wits_2838 (coe v1)))))
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
            (coe
               MAlonzo.Code.Class.Decidable.Core.du_'8263''185'__110
               (coe
                  (\ v3 ->
                     coe
                       MAlonzo.Code.Axiom.Set.d_all'63'_1598
                       MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
                       erased
                       (coe
                          MAlonzo.Code.Class.Decidable.Core.du_dec'185'_108
                          (coe
                             MAlonzo.Code.Ledger.Script.d_Dec'45'evalTimelock_318
                             (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1226 (coe v0))
                             (coe
                                MAlonzo.Code.Ledger.Transaction.d_epochStructure_1512 (coe v0))
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
                                            MAlonzo.Code.Ledger.Transaction.d_crypto_1226
                                            (coe v0)))))
                                (coe
                                   MAlonzo.Code.Interface.IsSet.du_dom_540
                                   (coe
                                      MAlonzo.Code.Axiom.Set.d_th_1458
                                      (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                   (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_548)
                                   (coe
                                      MAlonzo.Code.Ledger.Transaction.d_vkSigs_2816
                                      (coe MAlonzo.Code.Ledger.Transaction.d_wits_2838 (coe v1)))))
                             (coe
                                MAlonzo.Code.Ledger.Transaction.d_txvldt_2776
                                (coe MAlonzo.Code.Ledger.Transaction.d_body_2836 (coe v1)))))
                       v3))
               (coe
                  MAlonzo.Code.Axiom.Set.du_mapPartial_564
                  (MAlonzo.Code.Axiom.Set.d_th_1458
                     (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                  (coe MAlonzo.Code.Data.Sum.du_isInj'8321'_24)
                  (MAlonzo.Code.Ledger.Transaction.d_txscripts_2936
                     (coe v0) (coe v1)
                     (coe MAlonzo.Code.Ledger.Utxo.d_utxo_1868 (coe v2)))))
            (coe
               MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
               (coe
                  MAlonzo.Code.Class.Decidable.Core.du_'8263''185'__110
                  (coe
                     (\ v3 ->
                        coe
                          MAlonzo.Code.Axiom.Set.d_all'63'_1598
                          MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
                          erased
                          (coe
                             MAlonzo.Code.Class.Decidable.Core.du_dec'185'_108
                             (coe
                                (\ v4 ->
                                   coe
                                     MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                                     (coe
                                        MAlonzo.Code.Axiom.Set.d__'8712''63'__1590
                                        MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                        erased
                                        (MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                           (coe
                                              MAlonzo.Code.Ledger.Crypto.d_khs_200
                                              (coe
                                                 MAlonzo.Code.Ledger.Transaction.d_crypto_1226
                                                 (coe v0)))))
                                     (coe v4)
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
                                                    MAlonzo.Code.Ledger.Transaction.d_crypto_1226
                                                    (coe v0)))))
                                        (coe
                                           MAlonzo.Code.Interface.IsSet.du_dom_540
                                           (coe
                                              MAlonzo.Code.Axiom.Set.d_th_1458
                                              (coe
                                                 MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                           (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_548)
                                           (coe
                                              MAlonzo.Code.Ledger.Transaction.d_vkSigs_2816
                                              (coe
                                                 MAlonzo.Code.Ledger.Transaction.d_wits_2838
                                                 (coe v1))))))))
                          v3))
                  (coe
                     du_witsVKeyNeeded_2158 v0
                     (MAlonzo.Code.Ledger.Utxo.d_utxo_1868 (coe v2))
                     (MAlonzo.Code.Ledger.Transaction.d_body_2836 (coe v1))))
               (coe
                  MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                  (coe
                     MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                     (coe
                        MAlonzo.Code.Class.Decidable.Core.du_'8263''185'__110
                        (coe
                           (\ v3 ->
                              coe
                                MAlonzo.Code.Axiom.Set.d_all'63'_1598
                                MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
                                erased
                                (coe
                                   MAlonzo.Code.Class.Decidable.Core.du_dec'185'_108
                                   (coe
                                      (\ v4 ->
                                         coe
                                           MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                                           (coe
                                              MAlonzo.Code.Axiom.Set.d__'8712''63'__1590
                                              MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                              erased
                                              (MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                 (coe
                                                    MAlonzo.Code.Ledger.Transaction.d_crypto_1226
                                                    (coe v0))))
                                           (coe v4)
                                           (coe
                                              MAlonzo.Code.Axiom.Set.du_map_386
                                              (MAlonzo.Code.Axiom.Set.d_th_1458
                                                 (coe
                                                    MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                              (MAlonzo.Code.Interface.Hashable.d_hash_16
                                                 (coe
                                                    MAlonzo.Code.Ledger.Script.d_Hashable'45'Script_524
                                                    (coe
                                                       MAlonzo.Code.Ledger.Transaction.d_crypto_1226
                                                       (coe v0))
                                                    (coe
                                                       MAlonzo.Code.Ledger.Transaction.d_epochStructure_1512
                                                       (coe v0))
                                                    (coe
                                                       MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1794
                                                       (coe v0))))
                                              (MAlonzo.Code.Ledger.Transaction.d_scripts_2818
                                                 (coe
                                                    MAlonzo.Code.Ledger.Transaction.d_wits_2838
                                                    (coe v1)))))))
                                v3))
                        (coe
                           MAlonzo.Code.Axiom.Set.du__'65340'__718
                           (coe
                              MAlonzo.Code.Axiom.Set.d_th_1458
                              (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                           (coe
                              MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588
                              MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
                              (MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                 (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1226 (coe v0))))
                           (coe
                              du_scriptsNeeded_2160 v0
                              (MAlonzo.Code.Ledger.Utxo.d_utxo_1868 (coe v2))
                              (MAlonzo.Code.Ledger.Transaction.d_body_2836 (coe v1)))
                           (coe
                              MAlonzo.Code.Axiom.Set.du_map_386
                              (MAlonzo.Code.Axiom.Set.d_th_1458
                                 (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                              (MAlonzo.Code.Interface.Hashable.d_hash_16
                                 (coe
                                    MAlonzo.Code.Ledger.Script.d_Hashable'45'Script_524
                                    (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1226 (coe v0))
                                    (coe
                                       MAlonzo.Code.Ledger.Transaction.d_epochStructure_1512
                                       (coe v0))
                                    (coe
                                       MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1794
                                       (coe v0))))
                              (MAlonzo.Code.Ledger.Transaction.d_refScripts_2884
                                 (coe v0) (coe v1)
                                 (coe MAlonzo.Code.Ledger.Utxo.d_utxo_1868 (coe v2))))))
                     (coe
                        MAlonzo.Code.Class.Decidable.Core.du_'8263''185'__110
                        (coe
                           (\ v3 ->
                              coe
                                MAlonzo.Code.Axiom.Set.d_all'63'_1598
                                MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
                                erased
                                (coe
                                   MAlonzo.Code.Class.Decidable.Core.du_dec'185'_108
                                   (coe
                                      (\ v4 ->
                                         coe
                                           MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                                           (coe
                                              MAlonzo.Code.Axiom.Set.d__'8712''63'__1590
                                              MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                              erased
                                              (MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                 (coe
                                                    MAlonzo.Code.Ledger.Transaction.d_crypto_1226
                                                    (coe v0))))
                                           (coe v4)
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
                                                       MAlonzo.Code.Ledger.Transaction.d_crypto_1226
                                                       (coe v0))))
                                              (coe
                                                 du_scriptsNeeded_2160 v0
                                                 (MAlonzo.Code.Ledger.Utxo.d_utxo_1868 (coe v2))
                                                 (MAlonzo.Code.Ledger.Transaction.d_body_2836
                                                    (coe v1)))
                                              (coe
                                                 MAlonzo.Code.Axiom.Set.du_map_386
                                                 (MAlonzo.Code.Axiom.Set.d_th_1458
                                                    (coe
                                                       MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                 (MAlonzo.Code.Interface.Hashable.d_hash_16
                                                    (coe
                                                       MAlonzo.Code.Ledger.Script.d_Hashable'45'Script_524
                                                       (coe
                                                          MAlonzo.Code.Ledger.Transaction.d_crypto_1226
                                                          (coe v0))
                                                       (coe
                                                          MAlonzo.Code.Ledger.Transaction.d_epochStructure_1512
                                                          (coe v0))
                                                       (coe
                                                          MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1794
                                                          (coe v0))))
                                                 (MAlonzo.Code.Ledger.Transaction.d_refScripts_2884
                                                    (coe v0) (coe v1)
                                                    (coe
                                                       MAlonzo.Code.Ledger.Utxo.d_utxo_1868
                                                       (coe v2))))))))
                                v3))
                        (coe
                           MAlonzo.Code.Axiom.Set.du_map_386
                           (MAlonzo.Code.Axiom.Set.d_th_1458
                              (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                           (MAlonzo.Code.Interface.Hashable.d_hash_16
                              (coe
                                 MAlonzo.Code.Ledger.Script.d_Hashable'45'Script_524
                                 (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1226 (coe v0))
                                 (coe
                                    MAlonzo.Code.Ledger.Transaction.d_epochStructure_1512 (coe v0))
                                 (coe
                                    MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1794
                                    (coe v0))))
                           (MAlonzo.Code.Ledger.Transaction.d_scripts_2818
                              (coe MAlonzo.Code.Ledger.Transaction.d_wits_2838 (coe v1))))))
                  (coe
                     MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                     (coe
                        MAlonzo.Code.Class.Decidable.Core.du_'8263''185'__110
                        (coe
                           (\ v3 ->
                              coe
                                MAlonzo.Code.Axiom.Set.d_all'63'_1598
                                MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
                                erased
                                (coe
                                   MAlonzo.Code.Class.Decidable.Core.du_dec'185'_108
                                   (coe
                                      (\ v4 ->
                                         coe
                                           MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                                           (coe
                                              MAlonzo.Code.Axiom.Set.d__'8712''63'__1590
                                              MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                              erased
                                              (MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                 (coe
                                                    MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40
                                                    (coe
                                                       MAlonzo.Code.Ledger.Script.d_Data'688'_186
                                                       (coe
                                                          MAlonzo.Code.Ledger.Script.d_ps_450
                                                          (coe
                                                             MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1794
                                                             (coe v0)))))))
                                           (coe v4)
                                           (coe
                                              MAlonzo.Code.Interface.IsSet.du_dom_540
                                              (coe
                                                 MAlonzo.Code.Axiom.Set.d_th_1458
                                                 (coe
                                                    MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                              (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_548)
                                              (coe
                                                 MAlonzo.Code.Ledger.Transaction.d_txdats_2820
                                                 (coe
                                                    MAlonzo.Code.Ledger.Transaction.d_wits_2838
                                                    (coe v1)))))))
                                v3))
                        (coe
                           MAlonzo.Code.Ledger.Utxo.du_getInputHashes_1770 (coe v0) (coe v1)
                           (coe MAlonzo.Code.Ledger.Utxo.d_utxo_1868 (coe v2))))
                     (coe
                        MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                        (coe
                           MAlonzo.Code.Class.Decidable.Core.du_'8263''185'__110
                           (coe
                              (\ v3 ->
                                 coe
                                   MAlonzo.Code.Axiom.Set.d_all'63'_1598
                                   MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
                                   erased
                                   (coe
                                      MAlonzo.Code.Class.Decidable.Core.du_dec'185'_108
                                      (coe
                                         (\ v4 ->
                                            coe
                                              MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                                              (coe
                                                 MAlonzo.Code.Axiom.Set.d__'8712''63'__1590
                                                 MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                 erased
                                                 (MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                    (coe
                                                       MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40
                                                       (coe
                                                          MAlonzo.Code.Ledger.Script.d_Data'688'_186
                                                          (coe
                                                             MAlonzo.Code.Ledger.Script.d_ps_450
                                                             (coe
                                                                MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1794
                                                                (coe v0)))))))
                                              (coe v4)
                                              (coe
                                                 MAlonzo.Code.Axiom.Set.du__'8746'__668
                                                 (coe
                                                    MAlonzo.Code.Axiom.Set.d_th_1458
                                                    (coe
                                                       MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                 (coe
                                                    MAlonzo.Code.Ledger.Utxo.du_getInputHashes_1770
                                                    (coe v0) (coe v1)
                                                    (coe
                                                       MAlonzo.Code.Ledger.Utxo.d_utxo_1868
                                                       (coe v2)))
                                                 (coe
                                                    MAlonzo.Code.Axiom.Set.du__'8746'__668
                                                    (coe
                                                       MAlonzo.Code.Axiom.Set.d_th_1458
                                                       (coe
                                                          MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                    (coe
                                                       MAlonzo.Code.Ledger.Utxo.du_getDataHashes_1766
                                                       (coe
                                                          MAlonzo.Code.Interface.IsSet.du_range_542
                                                          (coe
                                                             MAlonzo.Code.Axiom.Set.d_th_1458
                                                             (coe
                                                                MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                          (coe
                                                             MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_548)
                                                          (coe
                                                             MAlonzo.Code.Ledger.Transaction.d_txouts_2770
                                                             (coe
                                                                MAlonzo.Code.Ledger.Transaction.d_body_2836
                                                                (coe v1)))))
                                                    (coe
                                                       MAlonzo.Code.Ledger.Utxo.du_getDataHashes_1766
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
                                                                   (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1188
                                                                      (coe v0))
                                                                   (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1186
                                                                      (coe v0))))
                                                             (coe
                                                                MAlonzo.Code.Ledger.Utxo.d_utxo_1868
                                                                (coe v2))
                                                             (coe
                                                                MAlonzo.Code.Ledger.Transaction.d_refInputs_2768
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Transaction.d_body_2836
                                                                   (coe v1)))))))))))
                                   v3))
                           (coe
                              MAlonzo.Code.Interface.IsSet.du_dom_540
                              (coe
                                 MAlonzo.Code.Axiom.Set.d_th_1458
                                 (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                              (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_548)
                              (coe
                                 MAlonzo.Code.Ledger.Transaction.d_txdats_2820
                                 (coe MAlonzo.Code.Ledger.Transaction.d_wits_2838 (coe v1)))))
                        (coe
                           MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                           (coe
                              MAlonzo.Code.Class.Decidable.Core.du_'8263''185'__110
                              (coe
                                 (\ v3 ->
                                    coe
                                      MAlonzo.Code.Axiom.Set.d_all'63'_1598
                                      MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
                                      erased
                                      (coe
                                         MAlonzo.Code.Class.Decidable.Core.du_dec'185'_108
                                         (coe
                                            (\ v4 ->
                                               coe
                                                 MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                                                 (coe
                                                    MAlonzo.Code.Axiom.Set.d__'8712''63'__1590
                                                    MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                    erased
                                                    (MAlonzo.Code.Ledger.Script.d_DecEq'45'Language_210
                                                       (coe
                                                          MAlonzo.Code.Ledger.Script.d_ps_450
                                                          (coe
                                                             MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1794
                                                             (coe v0)))))
                                                 (coe v4)
                                                 (coe
                                                    du_allowedLanguages_2024 (coe v0) (coe v1)
                                                    (coe
                                                       MAlonzo.Code.Ledger.Utxo.d_utxo_1868
                                                       (coe v2))))))
                                      v3))
                              (coe
                                 du_languages_2008 (coe v0) (coe v1)
                                 (coe MAlonzo.Code.Ledger.Utxo.d_utxo_1868 (coe v2))))
                           (coe
                              MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                              (coe
                                 MAlonzo.Code.Data.Maybe.Properties.du_'8801''45'dec_24
                                 (coe
                                    MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                    (coe
                                       MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                       (coe
                                          MAlonzo.Code.Ledger.Transaction.d_adHashingScheme_1190
                                          (coe v0)))))
                              (coe
                                 MAlonzo.Code.Ledger.Transaction.d_txADhash_2790
                                 (coe MAlonzo.Code.Ledger.Transaction.d_body_2836 (coe v1)))
                              (coe
                                 MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                 MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6
                                 MAlonzo.Code.Agda.Primitive.d_lzero_20 erased
                                 MAlonzo.Code.Agda.Primitive.d_lzero_20 erased
                                 (MAlonzo.Code.Interface.Hashable.d_hash_16
                                    (coe
                                       MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_28
                                       (coe
                                          MAlonzo.Code.Ledger.Transaction.d_adHashingScheme_1190
                                          (coe v0))))
                                 (MAlonzo.Code.Ledger.Transaction.d_txAD_2842 (coe v1)))))))))))
-- Ledger.Utxow..generalizedField-tx
d_'46'generalizedField'45'tx_32275 ::
  T_GeneralizeTel_32283 -> MAlonzo.Code.Ledger.Transaction.T_Tx_2826
d_'46'generalizedField'45'tx_32275
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxow..generalizedField-s
d_'46'generalizedField'45's_32277 ::
  T_GeneralizeTel_32283 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1858
d_'46'generalizedField'45's_32277 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxow..generalizedField-Γ
d_'46'generalizedField'45'Γ_32279 ::
  T_GeneralizeTel_32283 -> MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1844
d_'46'generalizedField'45'Γ_32279 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxow..generalizedField-s'
d_'46'generalizedField'45's''_32281 ::
  T_GeneralizeTel_32283 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1858
d_'46'generalizedField'45's''_32281
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxow.GeneralizeTel
d_GeneralizeTel_32283 a0 a1 = ()
data T_GeneralizeTel_32283
  = C_mkGeneralizeTel_32285 MAlonzo.Code.Ledger.Transaction.T_Tx_2826
                            MAlonzo.Code.Ledger.Utxo.T_UTxOState_1858
                            MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1844
                            MAlonzo.Code.Ledger.Utxo.T_UTxOState_1858
