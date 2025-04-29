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

module MAlonzo.Code.Ledger.Conway.Conformance.Utxow where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Axiom.Set
import qualified MAlonzo.Code.Axiom.Set.Map
import qualified MAlonzo.Code.Class.DecEq.Instances
import qualified MAlonzo.Code.Class.Decidable.Instances
import qualified MAlonzo.Code.Class.Functor.Core
import qualified MAlonzo.Code.Class.Functor.Instances
import qualified MAlonzo.Code.Class.IsSet
import qualified MAlonzo.Code.Data.Sum
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Interface.Hashable
import qualified MAlonzo.Code.Ledger.Abstract
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Utxo
import qualified MAlonzo.Code.Ledger.Crypto
import qualified MAlonzo.Code.Ledger.PParams
import qualified MAlonzo.Code.Ledger.Script
import qualified MAlonzo.Code.Ledger.Transaction
import qualified MAlonzo.Code.Ledger.Utxo
import qualified MAlonzo.Code.Ledger.Utxow
import qualified MAlonzo.Code.Prelude
import qualified MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory

-- _.Hashable-Script
d_Hashable'45'Script_220 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'Script_220 v0
  = coe
      MAlonzo.Code.Ledger.Script.du_Hashable'45'Script_522
      (coe
         MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1866 (coe v0))
-- _.Tx
d_Tx_420 a0 = ()
-- _.isSigned
d_isSigned_562 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny -> AgdaAny -> AgdaAny -> ()
d_isSigned_562 = erased
-- _.refScripts
d_refScripts_616 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_3170 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_refScripts_616 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_refScripts_3242 (coe v0)
-- _.txscripts
d_txscripts_654 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_3170 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_txscripts_654 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txscripts_3294 (coe v0)
-- _.validP1Script
d_validP1Script_658 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> ()
d_validP1Script_658 = erased
-- _.Tx.body
d_body_1530 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_3170 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2978
d_body_1530 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_body_3180 (coe v0)
-- _.Tx.isValid
d_isValid_1532 :: MAlonzo.Code.Ledger.Transaction.T_Tx_3170 -> Bool
d_isValid_1532 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_isValid_3184 (coe v0)
-- _.Tx.txAD
d_txAD_1534 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_3170 -> Maybe AgdaAny
d_txAD_1534 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txAD_3186 (coe v0)
-- _.Tx.wits
d_wits_1536 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_3170 ->
  MAlonzo.Code.Ledger.Transaction.T_TxWitnesses_3150
d_wits_1536 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_wits_3182 (coe v0)
-- Ledger.Conway.Conformance.Utxow._._⊢_⇀⦇_,UTXO⦈_
d__'8866'_'8640''10631'_'44'UTXO'10632'__1642 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Utxow._.UTxOEnv
d_UTxOEnv_1658 a0 a1 = ()
-- Ledger.Conway.Conformance.Utxow._.UTxOState
d_UTxOState_1660 a0 a1 = ()
-- Ledger.Conway.Conformance.Utxow._.UTxOEnv.pparams
d_pparams_1694 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_2260 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_262
d_pparams_1694 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_pparams_2270 (coe v0)
-- Ledger.Conway.Conformance.Utxow._.UTxOEnv.slot
d_slot_1696 :: MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_2260 -> AgdaAny
d_slot_1696 v0 = coe MAlonzo.Code.Ledger.Utxo.d_slot_2268 (coe v0)
-- Ledger.Conway.Conformance.Utxow._.UTxOEnv.treasury
d_treasury_1698 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_2260 -> Integer
d_treasury_1698 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_treasury_2272 (coe v0)
-- Ledger.Conway.Conformance.Utxow._.UTxOState.deposits
d_deposits_1702 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2278 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_1702 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_deposits_2292 (coe v0)
-- Ledger.Conway.Conformance.Utxow._.UTxOState.donations
d_donations_1704 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2278 -> Integer
d_donations_1704 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_donations_2294 (coe v0)
-- Ledger.Conway.Conformance.Utxow._.UTxOState.fees
d_fees_1706 :: MAlonzo.Code.Ledger.Utxo.T_UTxOState_2278 -> Integer
d_fees_1706 v0 = coe MAlonzo.Code.Ledger.Utxo.d_fees_2290 (coe v0)
-- Ledger.Conway.Conformance.Utxow._.UTxOState.utxo
d_utxo_1708 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2278 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_1708 v0 = coe MAlonzo.Code.Ledger.Utxo.d_utxo_2288 (coe v0)
-- Ledger.Conway.Conformance.Utxow.L._.allowedLanguages
d_allowedLanguages_2176 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1974 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_3170 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
d_allowedLanguages_2176 v0 ~v1 = du_allowedLanguages_2176 v0
du_allowedLanguages_2176 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_3170 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
du_allowedLanguages_2176 v0
  = coe MAlonzo.Code.Ledger.Utxow.du_allowedLanguages_2408 (coe v0)
-- Ledger.Conway.Conformance.Utxow.L._.languages
d_languages_2186 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1974 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_3170 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
d_languages_2186 v0 ~v1 = du_languages_2186 v0
du_languages_2186 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_3170 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
du_languages_2186 v0
  = coe MAlonzo.Code.Ledger.Utxow.du_languages_2392 (coe v0)
-- Ledger.Conway.Conformance.Utxow.L._.scriptsNeeded
d_scriptsNeeded_2188 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1974 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2978 -> [AgdaAny]
d_scriptsNeeded_2188 v0 ~v1 = du_scriptsNeeded_2188 v0
du_scriptsNeeded_2188 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2978 -> [AgdaAny]
du_scriptsNeeded_2188 v0
  = coe MAlonzo.Code.Ledger.Utxow.du_scriptsNeeded_2546 (coe v0)
-- Ledger.Conway.Conformance.Utxow.L._.witsVKeyNeeded
d_witsVKeyNeeded_2190 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1974 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2978 -> [AgdaAny]
d_witsVKeyNeeded_2190 v0 ~v1 = du_witsVKeyNeeded_2190 v0
du_witsVKeyNeeded_2190 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2978 -> [AgdaAny]
du_witsVKeyNeeded_2190 v0
  = coe MAlonzo.Code.Ledger.Utxow.du_witsVKeyNeeded_2544 (coe v0)
-- Ledger.Conway.Conformance.Utxow.L._.getDataHashes
d_getDataHashes_2288 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1974 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> [AgdaAny]
d_getDataHashes_2288 ~v0 ~v1 = du_getDataHashes_2288
du_getDataHashes_2288 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> [AgdaAny]
du_getDataHashes_2288
  = coe MAlonzo.Code.Ledger.Utxo.du_getDataHashes_2182
-- Ledger.Conway.Conformance.Utxow.L._.getInputHashes
d_getInputHashes_2290 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1974 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_3170 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
d_getInputHashes_2290 v0 ~v1 = du_getInputHashes_2290 v0
du_getInputHashes_2290 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_3170 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
du_getInputHashes_2290 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_getInputHashes_2186 (coe v0)
-- Ledger.Conway.Conformance.Utxow._⊢_⇀⦇_,UTXOW⦈_
d__'8866'_'8640''10631'_'44'UTXOW'10632'__2412 a0 a1 a2 a3 a4 a5
  = ()
newtype T__'8866'_'8640''10631'_'44'UTXOW'10632'__2412
  = C_UTXOW'45'inductive_2520 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Utxow._.txAD
d_txAD_2426 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1974 ->
  T_GeneralizeTel_8923 -> Maybe AgdaAny
d_txAD_2426 ~v0 ~v1 v2 = du_txAD_2426 v2
du_txAD_2426 :: T_GeneralizeTel_8923 -> Maybe AgdaAny
du_txAD_2426 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txAD_3186
      (coe d_'46'generalizedField'45'tx_8915 (coe v0))
-- Ledger.Conway.Conformance.Utxow._.body
d_body_2428 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1974 ->
  T_GeneralizeTel_8923 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2978
d_body_2428 ~v0 ~v1 v2 = du_body_2428 v2
du_body_2428 ::
  T_GeneralizeTel_8923 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2978
du_body_2428 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_body_3180
      (coe d_'46'generalizedField'45'tx_8915 (coe v0))
-- Ledger.Conway.Conformance.Utxow._.wits
d_wits_2430 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1974 ->
  T_GeneralizeTel_8923 ->
  MAlonzo.Code.Ledger.Transaction.T_TxWitnesses_3150
d_wits_2430 ~v0 ~v1 v2 = du_wits_2430 v2
du_wits_2430 ::
  T_GeneralizeTel_8923 ->
  MAlonzo.Code.Ledger.Transaction.T_TxWitnesses_3150
du_wits_2430 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_wits_3182
      (coe d_'46'generalizedField'45'tx_8915 (coe v0))
-- Ledger.Conway.Conformance.Utxow._.refInputs
d_refInputs_2440 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1974 ->
  T_GeneralizeTel_8923 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_2440 ~v0 ~v1 v2 = du_refInputs_2440 v2
du_refInputs_2440 ::
  T_GeneralizeTel_8923 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_refInputs_2440 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_refInputs_3022
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_3180
         (coe d_'46'generalizedField'45'tx_8915 (coe v0)))
-- Ledger.Conway.Conformance.Utxow._.txADhash
d_txADhash_2446 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1974 ->
  T_GeneralizeTel_8923 -> Maybe AgdaAny
d_txADhash_2446 ~v0 ~v1 v2 = du_txADhash_2446 v2
du_txADhash_2446 :: T_GeneralizeTel_8923 -> Maybe AgdaAny
du_txADhash_2446 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txADhash_3044
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_3180
         (coe d_'46'generalizedField'45'tx_8915 (coe v0)))
-- Ledger.Conway.Conformance.Utxow._.txid
d_txid_2456 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1974 ->
  T_GeneralizeTel_8923 -> AgdaAny
d_txid_2456 ~v0 ~v1 v2 = du_txid_2456 v2
du_txid_2456 :: T_GeneralizeTel_8923 -> AgdaAny
du_txid_2456 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txid_3052
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_3180
         (coe d_'46'generalizedField'45'tx_8915 (coe v0)))
-- Ledger.Conway.Conformance.Utxow._.txouts
d_txouts_2460 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1974 ->
  T_GeneralizeTel_8923 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txouts_2460 ~v0 ~v1 v2 = du_txouts_2460 v2
du_txouts_2460 ::
  T_GeneralizeTel_8923 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txouts_2460 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txouts_3024
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_3180
         (coe d_'46'generalizedField'45'tx_8915 (coe v0)))
-- Ledger.Conway.Conformance.Utxow._.txvldt
d_txvldt_2468 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1974 ->
  T_GeneralizeTel_8923 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txvldt_2468 ~v0 ~v1 v2 = du_txvldt_2468 v2
du_txvldt_2468 ::
  T_GeneralizeTel_8923 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txvldt_2468 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txvldt_3030
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_3180
         (coe d_'46'generalizedField'45'tx_8915 (coe v0)))
-- Ledger.Conway.Conformance.Utxow._.scripts
d_scripts_2476 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1974 ->
  T_GeneralizeTel_8923 -> [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_scripts_2476 ~v0 ~v1 v2 = du_scripts_2476 v2
du_scripts_2476 ::
  T_GeneralizeTel_8923 -> [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_scripts_2476 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_scripts_3162
      (coe
         MAlonzo.Code.Ledger.Transaction.d_wits_3182
         (coe d_'46'generalizedField'45'tx_8915 (coe v0)))
-- Ledger.Conway.Conformance.Utxow._.txdats
d_txdats_2480 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1974 ->
  T_GeneralizeTel_8923 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txdats_2480 ~v0 ~v1 v2 = du_txdats_2480 v2
du_txdats_2480 ::
  T_GeneralizeTel_8923 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txdats_2480 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txdats_3164
      (coe
         MAlonzo.Code.Ledger.Transaction.d_wits_3182
         (coe d_'46'generalizedField'45'tx_8915 (coe v0)))
-- Ledger.Conway.Conformance.Utxow._.vkSigs
d_vkSigs_2484 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1974 ->
  T_GeneralizeTel_8923 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_vkSigs_2484 ~v0 ~v1 v2 = du_vkSigs_2484 v2
du_vkSigs_2484 ::
  T_GeneralizeTel_8923 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_vkSigs_2484 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_vkSigs_3160
      (coe
         MAlonzo.Code.Ledger.Transaction.d_wits_3182
         (coe d_'46'generalizedField'45'tx_8915 (coe v0)))
-- Ledger.Conway.Conformance.Utxow._.utxo
d_utxo_2494 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1974 ->
  T_GeneralizeTel_8923 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2494 ~v0 ~v1 v2 = du_utxo_2494 v2
du_utxo_2494 ::
  T_GeneralizeTel_8923 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxo_2494 v0
  = coe
      MAlonzo.Code.Ledger.Utxo.d_utxo_2288
      (coe d_'46'generalizedField'45's_8917 (coe v0))
-- Ledger.Conway.Conformance.Utxow.UTXOW-inductive-premises
d_UTXOW'45'inductive'45'premises_2546 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1974 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_3170 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2278 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTXOW'45'inductive'45'premises_2546 v0 ~v1 v2 v3
  = du_UTXOW'45'inductive'45'premises_2546 v0 v2 v3
du_UTXOW'45'inductive'45'premises_2546 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_3170 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2278 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_UTXOW'45'inductive'45'premises_2546 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased
      (coe
         MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
         (coe
            MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1634
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
            (coe
               (\ v3 ->
                  coe
                    MAlonzo.Code.Ledger.Crypto.d_Dec'45'isSigned_116
                    (MAlonzo.Code.Ledger.Crypto.d_pkk_172
                       (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1280 (coe v0)))
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3))
                    (coe
                       MAlonzo.Code.Ledger.Transaction.d_txidBytes_2440 v0
                       (MAlonzo.Code.Ledger.Transaction.d_txid_3052
                          (coe MAlonzo.Code.Ledger.Transaction.d_body_3180 (coe v1))))
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3))))
            (coe
               MAlonzo.Code.Axiom.Set.Map.du__'738'_550
               (coe
                  MAlonzo.Code.Ledger.Transaction.d_vkSigs_3160
                  (coe MAlonzo.Code.Ledger.Transaction.d_wits_3182 (coe v1)))))
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
            (coe
               MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1634
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
               (coe
                  (\ v3 ->
                     coe
                       MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_22
                       (coe
                          MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1672
                          (coe
                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                          (coe
                             MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                             (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1280 (coe v0)))
                          (coe
                             MAlonzo.Code.Interface.Hashable.d_hash_16
                             (MAlonzo.Code.Ledger.Script.d_Hashable'45'P1Script_110
                                (coe
                                   MAlonzo.Code.Ledger.Script.d_p1s_426
                                   (coe
                                      MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1866
                                      (coe v0))))
                             v3)
                          (coe
                             MAlonzo.Code.Ledger.Utxow.du_scriptsNeeded_2546 v0
                             (MAlonzo.Code.Ledger.Utxo.d_utxo_2288 (coe v2))
                             (MAlonzo.Code.Ledger.Transaction.d_body_3180 (coe v1))))
                       (coe
                          MAlonzo.Code.Ledger.Script.d_Dec'45'validP1Script_108
                          (MAlonzo.Code.Ledger.Script.d_p1s_426
                             (coe
                                MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1866 (coe v0)))
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
                                         MAlonzo.Code.Ledger.Transaction.d_crypto_1280 (coe v0)))))
                             (coe
                                MAlonzo.Code.Class.IsSet.du_dom_548
                                (coe
                                   MAlonzo.Code.Axiom.Set.d_th_1470
                                   (coe
                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                                (coe
                                   MAlonzo.Code.Ledger.Transaction.d_vkSigs_3160
                                   (coe MAlonzo.Code.Ledger.Transaction.d_wits_3182 (coe v1)))))
                          (MAlonzo.Code.Ledger.Transaction.d_txvldt_3030
                             (coe MAlonzo.Code.Ledger.Transaction.d_body_3180 (coe v1)))
                          v3)))
               (coe
                  MAlonzo.Code.Axiom.Set.du_mapPartial_576
                  (MAlonzo.Code.Axiom.Set.d_th_1470
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                  (coe MAlonzo.Code.Data.Sum.du_isInj'8321'_24)
                  (MAlonzo.Code.Ledger.Transaction.d_txscripts_3294
                     (coe v0) (coe v1)
                     (coe MAlonzo.Code.Ledger.Utxo.d_utxo_2288 (coe v2)))))
            (coe
               MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
               (coe
                  MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1634
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                  (coe
                     (\ v3 ->
                        coe
                          MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1672
                          (coe
                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                          (coe
                             MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                             (coe
                                MAlonzo.Code.Ledger.Crypto.d_khs_200
                                (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1280 (coe v0))))
                          (coe v3)
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
                                         MAlonzo.Code.Ledger.Transaction.d_crypto_1280 (coe v0)))))
                             (coe
                                MAlonzo.Code.Class.IsSet.du_dom_548
                                (coe
                                   MAlonzo.Code.Axiom.Set.d_th_1470
                                   (coe
                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                                (coe
                                   MAlonzo.Code.Ledger.Transaction.d_vkSigs_3160
                                   (coe MAlonzo.Code.Ledger.Transaction.d_wits_3182 (coe v1)))))))
                  (coe
                     MAlonzo.Code.Ledger.Utxow.du_witsVKeyNeeded_2544 v0
                     (MAlonzo.Code.Ledger.Utxo.d_utxo_2288 (coe v2))
                     (MAlonzo.Code.Ledger.Transaction.d_body_3180 (coe v1))))
               (coe
                  MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                  (coe
                     MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                     (coe
                        MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1634
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                        (coe
                           (\ v3 ->
                              coe
                                MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1672
                                (coe
                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                (coe
                                   MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                   (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1280 (coe v0)))
                                (coe v3)
                                (coe
                                   MAlonzo.Code.Axiom.Set.du_map_398
                                   (MAlonzo.Code.Axiom.Set.d_th_1470
                                      (coe
                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                   (MAlonzo.Code.Interface.Hashable.d_hash_16
                                      (coe
                                         MAlonzo.Code.Ledger.Script.du_Hashable'45'Script_522
                                         (coe
                                            MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1866
                                            (coe v0))))
                                   (MAlonzo.Code.Ledger.Transaction.d_scripts_3162
                                      (coe MAlonzo.Code.Ledger.Transaction.d_wits_3182 (coe v1))))))
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
                                 (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1280 (coe v0))))
                           (coe
                              MAlonzo.Code.Ledger.Utxow.du_scriptsNeeded_2546 v0
                              (MAlonzo.Code.Ledger.Utxo.d_utxo_2288 (coe v2))
                              (MAlonzo.Code.Ledger.Transaction.d_body_3180 (coe v1)))
                           (coe
                              MAlonzo.Code.Axiom.Set.du_fromList_428
                              (coe
                                 MAlonzo.Code.Axiom.Set.d_th_1470
                                 (coe
                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                              (coe
                                 MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                 MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20
                                 MAlonzo.Code.Agda.Primitive.d_lzero_20 erased
                                 MAlonzo.Code.Agda.Primitive.d_lzero_20 erased
                                 (MAlonzo.Code.Interface.Hashable.d_hash_16
                                    (coe
                                       MAlonzo.Code.Ledger.Script.du_Hashable'45'Script_522
                                       (coe
                                          MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1866
                                          (coe v0))))
                                 (MAlonzo.Code.Ledger.Transaction.d_refScripts_3242
                                    (coe v0) (coe v1)
                                    (coe MAlonzo.Code.Ledger.Utxo.d_utxo_2288 (coe v2)))))))
                     (coe
                        MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1634
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                        (coe
                           (\ v3 ->
                              coe
                                MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1672
                                (coe
                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                (coe
                                   MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                   (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1280 (coe v0)))
                                (coe v3)
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
                                            MAlonzo.Code.Ledger.Transaction.d_crypto_1280
                                            (coe v0))))
                                   (coe
                                      MAlonzo.Code.Ledger.Utxow.du_scriptsNeeded_2546 v0
                                      (MAlonzo.Code.Ledger.Utxo.d_utxo_2288 (coe v2))
                                      (MAlonzo.Code.Ledger.Transaction.d_body_3180 (coe v1)))
                                   (coe
                                      MAlonzo.Code.Axiom.Set.du_fromList_428
                                      (coe
                                         MAlonzo.Code.Axiom.Set.d_th_1470
                                         (coe
                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                      (coe
                                         MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                         MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20
                                         MAlonzo.Code.Agda.Primitive.d_lzero_20 erased
                                         MAlonzo.Code.Agda.Primitive.d_lzero_20 erased
                                         (MAlonzo.Code.Interface.Hashable.d_hash_16
                                            (coe
                                               MAlonzo.Code.Ledger.Script.du_Hashable'45'Script_522
                                               (coe
                                                  MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1866
                                                  (coe v0))))
                                         (MAlonzo.Code.Ledger.Transaction.d_refScripts_3242
                                            (coe v0) (coe v1)
                                            (coe
                                               MAlonzo.Code.Ledger.Utxo.d_utxo_2288 (coe v2))))))))
                        (coe
                           MAlonzo.Code.Axiom.Set.du_map_398
                           (MAlonzo.Code.Axiom.Set.d_th_1470
                              (coe
                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                           (MAlonzo.Code.Interface.Hashable.d_hash_16
                              (coe
                                 MAlonzo.Code.Ledger.Script.du_Hashable'45'Script_522
                                 (coe
                                    MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1866
                                    (coe v0))))
                           (MAlonzo.Code.Ledger.Transaction.d_scripts_3162
                              (coe MAlonzo.Code.Ledger.Transaction.d_wits_3182 (coe v1))))))
                  (coe
                     MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                     (coe
                        MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1634
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                        (coe
                           (\ v3 ->
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
                                            MAlonzo.Code.Ledger.Script.d_ps_448
                                            (coe
                                               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1866
                                               (coe v0))))))
                                (coe v3)
                                (coe
                                   MAlonzo.Code.Class.IsSet.du_dom_548
                                   (coe
                                      MAlonzo.Code.Axiom.Set.d_th_1470
                                      (coe
                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                   (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                                   (coe
                                      MAlonzo.Code.Ledger.Transaction.d_txdats_3164
                                      (coe MAlonzo.Code.Ledger.Transaction.d_wits_3182 (coe v1))))))
                        (coe
                           MAlonzo.Code.Ledger.Utxo.du_getInputHashes_2186 (coe v0) (coe v1)
                           (coe MAlonzo.Code.Ledger.Utxo.d_utxo_2288 (coe v2))))
                     (coe
                        MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                        (coe
                           MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1634
                           (coe
                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                           (coe
                              (\ v3 ->
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
                                               MAlonzo.Code.Ledger.Script.d_ps_448
                                               (coe
                                                  MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1866
                                                  (coe v0))))))
                                   (coe v3)
                                   (coe
                                      MAlonzo.Code.Axiom.Set.du__'8746'__680
                                      (coe
                                         MAlonzo.Code.Axiom.Set.d_th_1470
                                         (coe
                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                      (coe
                                         MAlonzo.Code.Ledger.Utxo.du_getInputHashes_2186 (coe v0)
                                         (coe v1)
                                         (coe MAlonzo.Code.Ledger.Utxo.d_utxo_2288 (coe v2)))
                                      (coe
                                         MAlonzo.Code.Axiom.Set.du__'8746'__680
                                         (coe
                                            MAlonzo.Code.Axiom.Set.d_th_1470
                                            (coe
                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                         (coe
                                            MAlonzo.Code.Ledger.Utxo.du_getDataHashes_2182
                                            (coe
                                               MAlonzo.Code.Class.IsSet.du_range_550
                                               (coe
                                                  MAlonzo.Code.Axiom.Set.d_th_1470
                                                  (coe
                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                               (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                                               (coe
                                                  MAlonzo.Code.Ledger.Transaction.d_txouts_3024
                                                  (coe
                                                     MAlonzo.Code.Ledger.Transaction.d_body_3180
                                                     (coe v1)))))
                                         (coe
                                            MAlonzo.Code.Ledger.Utxo.du_getDataHashes_2182
                                            (coe
                                               MAlonzo.Code.Class.IsSet.du_range_550
                                               (coe
                                                  MAlonzo.Code.Axiom.Set.d_th_1470
                                                  (coe
                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                               (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
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
                                                        (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1240
                                                           (coe v0))
                                                        (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1238
                                                           (coe v0))))
                                                  (coe
                                                     MAlonzo.Code.Ledger.Utxo.d_utxo_2288 (coe v2))
                                                  (coe
                                                     MAlonzo.Code.Ledger.Transaction.d_refInputs_3022
                                                     (coe
                                                        MAlonzo.Code.Ledger.Transaction.d_body_3180
                                                        (coe v1))))))))))
                           (coe
                              MAlonzo.Code.Class.IsSet.du_dom_548
                              (coe
                                 MAlonzo.Code.Axiom.Set.d_th_1470
                                 (coe
                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                              (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                              (coe
                                 MAlonzo.Code.Ledger.Transaction.d_txdats_3164
                                 (coe MAlonzo.Code.Ledger.Transaction.d_wits_3182 (coe v1)))))
                        (coe
                           MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                           (coe
                              MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1634
                              (coe
                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                              (coe
                                 (\ v3 ->
                                    coe
                                      MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1672
                                      (coe
                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                      (coe
                                         MAlonzo.Code.Ledger.Script.d_DecEq'45'Language_214
                                         (coe
                                            MAlonzo.Code.Ledger.Script.d_ps_448
                                            (coe
                                               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1866
                                               (coe v0))))
                                      (coe v3)
                                      (coe
                                         MAlonzo.Code.Ledger.Utxow.du_allowedLanguages_2408 (coe v0)
                                         (coe v1)
                                         (coe MAlonzo.Code.Ledger.Utxo.d_utxo_2288 (coe v2)))))
                              (coe
                                 MAlonzo.Code.Ledger.Utxow.du_languages_2392 (coe v0) (coe v1)
                                 (coe MAlonzo.Code.Ledger.Utxo.d_utxo_2288 (coe v2))))
                           (coe
                              MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                              (coe
                                 MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                                 (coe
                                    MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                    (coe
                                       MAlonzo.Code.Ledger.Transaction.d_adHashingScheme_1242
                                       (coe v0))))
                              (coe
                                 MAlonzo.Code.Ledger.Transaction.d_txADhash_3044
                                 (coe MAlonzo.Code.Ledger.Transaction.d_body_3180 (coe v1)))
                              (coe
                                 MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                 MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6
                                 MAlonzo.Code.Agda.Primitive.d_lzero_20 erased
                                 MAlonzo.Code.Agda.Primitive.d_lzero_20 erased
                                 (MAlonzo.Code.Interface.Hashable.d_hash_16
                                    (coe
                                       MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_28
                                       (coe
                                          MAlonzo.Code.Ledger.Transaction.d_adHashingScheme_1242
                                          (coe v0))))
                                 (MAlonzo.Code.Ledger.Transaction.d_txAD_3186 (coe v1)))))))))))
-- Ledger.Conway.Conformance.Utxow..generalizedField-tx
d_'46'generalizedField'45'tx_8915 ::
  T_GeneralizeTel_8923 -> MAlonzo.Code.Ledger.Transaction.T_Tx_3170
d_'46'generalizedField'45'tx_8915 v0
  = case coe v0 of
      C_mkGeneralizeTel_8925 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxow..generalizedField-s
d_'46'generalizedField'45's_8917 ::
  T_GeneralizeTel_8923 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_2278
d_'46'generalizedField'45's_8917 v0
  = case coe v0 of
      C_mkGeneralizeTel_8925 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxow..generalizedField-Γ
d_'46'generalizedField'45'Γ_8919 ::
  T_GeneralizeTel_8923 -> MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_2260
d_'46'generalizedField'45'Γ_8919 v0
  = case coe v0 of
      C_mkGeneralizeTel_8925 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxow..generalizedField-s'
d_'46'generalizedField'45's''_8921 ::
  T_GeneralizeTel_8923 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_2278
d_'46'generalizedField'45's''_8921 v0
  = case coe v0 of
      C_mkGeneralizeTel_8925 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxow.GeneralizeTel
d_GeneralizeTel_8923 a0 a1 = ()
data T_GeneralizeTel_8923
  = C_mkGeneralizeTel_8925 MAlonzo.Code.Ledger.Transaction.T_Tx_3170
                           MAlonzo.Code.Ledger.Utxo.T_UTxOState_2278
                           MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_2260
                           MAlonzo.Code.Ledger.Utxo.T_UTxOState_2278
