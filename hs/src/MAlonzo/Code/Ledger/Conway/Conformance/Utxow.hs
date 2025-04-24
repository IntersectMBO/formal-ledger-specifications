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
d_Hashable'45'Script_212 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'Script_212 v0
  = coe
      MAlonzo.Code.Ledger.Script.du_Hashable'45'Script_522
      (coe
         MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1856 (coe v0))
-- _.Tx
d_Tx_404 a0 = ()
-- _.isSigned
d_isSigned_544 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny -> AgdaAny -> AgdaAny -> ()
d_isSigned_544 = erased
-- _.refScripts
d_refScripts_598 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2844 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_refScripts_598 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_refScripts_2904 (coe v0)
-- _.txscripts
d_txscripts_634 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2844 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_txscripts_634 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txscripts_2956 (coe v0)
-- _.validP1Script
d_validP1Script_640 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> ()
d_validP1Script_640 = erased
-- _.Tx.body
d_body_1508 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2844 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2652
d_body_1508 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_body_2854 (coe v0)
-- _.Tx.isValid
d_isValid_1510 :: MAlonzo.Code.Ledger.Transaction.T_Tx_2844 -> Bool
d_isValid_1510 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_isValid_2858 (coe v0)
-- _.Tx.txAD
d_txAD_1512 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2844 -> Maybe AgdaAny
d_txAD_1512 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txAD_2860 (coe v0)
-- _.Tx.wits
d_wits_1514 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2844 ->
  MAlonzo.Code.Ledger.Transaction.T_TxWitnesses_2824
d_wits_1514 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_wits_2856 (coe v0)
-- Ledger.Conway.Conformance.Utxow._._⊢_⇀⦇_,UTXO⦈_
d__'8866'_'8640''10631'_'44'UTXO'10632'__1620 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Utxow._.UTxOEnv
d_UTxOEnv_1636 a0 a1 = ()
-- Ledger.Conway.Conformance.Utxow._.UTxOState
d_UTxOState_1638 a0 a1 = ()
-- Ledger.Conway.Conformance.Utxow._.UTxOEnv.pparams
d_pparams_1672 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_2218 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_262
d_pparams_1672 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_pparams_2228 (coe v0)
-- Ledger.Conway.Conformance.Utxow._.UTxOEnv.slot
d_slot_1674 :: MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_2218 -> AgdaAny
d_slot_1674 v0 = coe MAlonzo.Code.Ledger.Utxo.d_slot_2226 (coe v0)
-- Ledger.Conway.Conformance.Utxow._.UTxOEnv.treasury
d_treasury_1676 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_2218 -> Integer
d_treasury_1676 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_treasury_2230 (coe v0)
-- Ledger.Conway.Conformance.Utxow._.UTxOState.deposits
d_deposits_1680 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2234 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_1680 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_deposits_2248 (coe v0)
-- Ledger.Conway.Conformance.Utxow._.UTxOState.donations
d_donations_1682 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2234 -> Integer
d_donations_1682 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_donations_2250 (coe v0)
-- Ledger.Conway.Conformance.Utxow._.UTxOState.fees
d_fees_1684 :: MAlonzo.Code.Ledger.Utxo.T_UTxOState_2234 -> Integer
d_fees_1684 v0 = coe MAlonzo.Code.Ledger.Utxo.d_fees_2246 (coe v0)
-- Ledger.Conway.Conformance.Utxow._.UTxOState.utxo
d_utxo_1686 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2234 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_1686 v0 = coe MAlonzo.Code.Ledger.Utxo.d_utxo_2244 (coe v0)
-- Ledger.Conway.Conformance.Utxow.L._.allowedLanguages
d_allowedLanguages_2134 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1932 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2844 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
d_allowedLanguages_2134 v0 ~v1 = du_allowedLanguages_2134 v0
du_allowedLanguages_2134 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2844 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
du_allowedLanguages_2134 v0
  = coe MAlonzo.Code.Ledger.Utxow.du_allowedLanguages_2364 (coe v0)
-- Ledger.Conway.Conformance.Utxow.L._.languages
d_languages_2144 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1932 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2844 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
d_languages_2144 v0 ~v1 = du_languages_2144 v0
du_languages_2144 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2844 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
du_languages_2144 v0
  = coe MAlonzo.Code.Ledger.Utxow.du_languages_2348 (coe v0)
-- Ledger.Conway.Conformance.Utxow.L._.scriptsNeeded
d_scriptsNeeded_2146 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1932 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2652 -> [AgdaAny]
d_scriptsNeeded_2146 v0 ~v1 = du_scriptsNeeded_2146 v0
du_scriptsNeeded_2146 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2652 -> [AgdaAny]
du_scriptsNeeded_2146 v0
  = coe MAlonzo.Code.Ledger.Utxow.du_scriptsNeeded_2502 (coe v0)
-- Ledger.Conway.Conformance.Utxow.L._.witsVKeyNeeded
d_witsVKeyNeeded_2148 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1932 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2652 -> [AgdaAny]
d_witsVKeyNeeded_2148 v0 ~v1 = du_witsVKeyNeeded_2148 v0
du_witsVKeyNeeded_2148 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2652 -> [AgdaAny]
du_witsVKeyNeeded_2148 v0
  = coe MAlonzo.Code.Ledger.Utxow.du_witsVKeyNeeded_2500 (coe v0)
-- Ledger.Conway.Conformance.Utxow.L._.getDataHashes
d_getDataHashes_2244 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1932 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> [AgdaAny]
d_getDataHashes_2244 ~v0 ~v1 = du_getDataHashes_2244
du_getDataHashes_2244 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> [AgdaAny]
du_getDataHashes_2244
  = coe MAlonzo.Code.Ledger.Utxo.du_getDataHashes_2140
-- Ledger.Conway.Conformance.Utxow.L._.getInputHashes
d_getInputHashes_2246 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1932 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2844 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
d_getInputHashes_2246 v0 ~v1 = du_getInputHashes_2246 v0
du_getInputHashes_2246 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2844 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
du_getInputHashes_2246 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_getInputHashes_2144 (coe v0)
-- Ledger.Conway.Conformance.Utxow._⊢_⇀⦇_,UTXOW⦈_
d__'8866'_'8640''10631'_'44'UTXOW'10632'__2368 a0 a1 a2 a3 a4 a5
  = ()
newtype T__'8866'_'8640''10631'_'44'UTXOW'10632'__2368
  = C_UTXOW'45'inductive_2476 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Utxow._.txAD
d_txAD_2382 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1932 ->
  T_GeneralizeTel_8703 -> Maybe AgdaAny
d_txAD_2382 ~v0 ~v1 v2 = du_txAD_2382 v2
du_txAD_2382 :: T_GeneralizeTel_8703 -> Maybe AgdaAny
du_txAD_2382 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txAD_2860
      (coe d_'46'generalizedField'45'tx_8695 (coe v0))
-- Ledger.Conway.Conformance.Utxow._.body
d_body_2384 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1932 ->
  T_GeneralizeTel_8703 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2652
d_body_2384 ~v0 ~v1 v2 = du_body_2384 v2
du_body_2384 ::
  T_GeneralizeTel_8703 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2652
du_body_2384 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_body_2854
      (coe d_'46'generalizedField'45'tx_8695 (coe v0))
-- Ledger.Conway.Conformance.Utxow._.wits
d_wits_2386 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1932 ->
  T_GeneralizeTel_8703 ->
  MAlonzo.Code.Ledger.Transaction.T_TxWitnesses_2824
d_wits_2386 ~v0 ~v1 v2 = du_wits_2386 v2
du_wits_2386 ::
  T_GeneralizeTel_8703 ->
  MAlonzo.Code.Ledger.Transaction.T_TxWitnesses_2824
du_wits_2386 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_wits_2856
      (coe d_'46'generalizedField'45'tx_8695 (coe v0))
-- Ledger.Conway.Conformance.Utxow._.refInputs
d_refInputs_2396 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1932 ->
  T_GeneralizeTel_8703 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_2396 ~v0 ~v1 v2 = du_refInputs_2396 v2
du_refInputs_2396 ::
  T_GeneralizeTel_8703 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_refInputs_2396 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_refInputs_2696
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2854
         (coe d_'46'generalizedField'45'tx_8695 (coe v0)))
-- Ledger.Conway.Conformance.Utxow._.txADhash
d_txADhash_2402 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1932 ->
  T_GeneralizeTel_8703 -> Maybe AgdaAny
d_txADhash_2402 ~v0 ~v1 v2 = du_txADhash_2402 v2
du_txADhash_2402 :: T_GeneralizeTel_8703 -> Maybe AgdaAny
du_txADhash_2402 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txADhash_2718
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2854
         (coe d_'46'generalizedField'45'tx_8695 (coe v0)))
-- Ledger.Conway.Conformance.Utxow._.txid
d_txid_2412 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1932 ->
  T_GeneralizeTel_8703 -> AgdaAny
d_txid_2412 ~v0 ~v1 v2 = du_txid_2412 v2
du_txid_2412 :: T_GeneralizeTel_8703 -> AgdaAny
du_txid_2412 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txid_2726
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2854
         (coe d_'46'generalizedField'45'tx_8695 (coe v0)))
-- Ledger.Conway.Conformance.Utxow._.txouts
d_txouts_2416 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1932 ->
  T_GeneralizeTel_8703 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txouts_2416 ~v0 ~v1 v2 = du_txouts_2416 v2
du_txouts_2416 ::
  T_GeneralizeTel_8703 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txouts_2416 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txouts_2698
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2854
         (coe d_'46'generalizedField'45'tx_8695 (coe v0)))
-- Ledger.Conway.Conformance.Utxow._.txvldt
d_txvldt_2424 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1932 ->
  T_GeneralizeTel_8703 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txvldt_2424 ~v0 ~v1 v2 = du_txvldt_2424 v2
du_txvldt_2424 ::
  T_GeneralizeTel_8703 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txvldt_2424 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txvldt_2704
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2854
         (coe d_'46'generalizedField'45'tx_8695 (coe v0)))
-- Ledger.Conway.Conformance.Utxow._.scripts
d_scripts_2432 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1932 ->
  T_GeneralizeTel_8703 -> [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_scripts_2432 ~v0 ~v1 v2 = du_scripts_2432 v2
du_scripts_2432 ::
  T_GeneralizeTel_8703 -> [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_scripts_2432 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_scripts_2836
      (coe
         MAlonzo.Code.Ledger.Transaction.d_wits_2856
         (coe d_'46'generalizedField'45'tx_8695 (coe v0)))
-- Ledger.Conway.Conformance.Utxow._.txdats
d_txdats_2436 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1932 ->
  T_GeneralizeTel_8703 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txdats_2436 ~v0 ~v1 v2 = du_txdats_2436 v2
du_txdats_2436 ::
  T_GeneralizeTel_8703 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txdats_2436 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txdats_2838
      (coe
         MAlonzo.Code.Ledger.Transaction.d_wits_2856
         (coe d_'46'generalizedField'45'tx_8695 (coe v0)))
-- Ledger.Conway.Conformance.Utxow._.vkSigs
d_vkSigs_2440 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1932 ->
  T_GeneralizeTel_8703 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_vkSigs_2440 ~v0 ~v1 v2 = du_vkSigs_2440 v2
du_vkSigs_2440 ::
  T_GeneralizeTel_8703 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_vkSigs_2440 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_vkSigs_2834
      (coe
         MAlonzo.Code.Ledger.Transaction.d_wits_2856
         (coe d_'46'generalizedField'45'tx_8695 (coe v0)))
-- Ledger.Conway.Conformance.Utxow._.utxo
d_utxo_2450 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1932 ->
  T_GeneralizeTel_8703 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2450 ~v0 ~v1 v2 = du_utxo_2450 v2
du_utxo_2450 ::
  T_GeneralizeTel_8703 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxo_2450 v0
  = coe
      MAlonzo.Code.Ledger.Utxo.d_utxo_2244
      (coe d_'46'generalizedField'45's_8697 (coe v0))
-- Ledger.Conway.Conformance.Utxow.UTXOW-inductive-premises
d_UTXOW'45'inductive'45'premises_2502 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1932 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2844 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2234 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTXOW'45'inductive'45'premises_2502 v0 ~v1 v2 v3
  = du_UTXOW'45'inductive'45'premises_2502 v0 v2 v3
du_UTXOW'45'inductive'45'premises_2502 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2844 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2234 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_UTXOW'45'inductive'45'premises_2502 v0 v1 v2
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
                       (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1270 (coe v0)))
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3))
                    (coe
                       MAlonzo.Code.Ledger.Transaction.d_txidBytes_2420 v0
                       (MAlonzo.Code.Ledger.Transaction.d_txid_2726
                          (coe MAlonzo.Code.Ledger.Transaction.d_body_2854 (coe v1))))
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3))))
            (coe
               MAlonzo.Code.Axiom.Set.Map.du__'738'_550
               (coe
                  MAlonzo.Code.Ledger.Transaction.d_vkSigs_2834
                  (coe MAlonzo.Code.Ledger.Transaction.d_wits_2856 (coe v1)))))
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
                             (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1270 (coe v0)))
                          (coe
                             MAlonzo.Code.Interface.Hashable.d_hash_16
                             (MAlonzo.Code.Ledger.Script.d_Hashable'45'P1Script_110
                                (coe
                                   MAlonzo.Code.Ledger.Script.d_p1s_426
                                   (coe
                                      MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1856
                                      (coe v0))))
                             v3)
                          (coe
                             MAlonzo.Code.Ledger.Utxow.du_scriptsNeeded_2502 v0
                             (MAlonzo.Code.Ledger.Utxo.d_utxo_2244 (coe v2))
                             (MAlonzo.Code.Ledger.Transaction.d_body_2854 (coe v1))))
                       (coe
                          MAlonzo.Code.Ledger.Script.d_Dec'45'validP1Script_108
                          (MAlonzo.Code.Ledger.Script.d_p1s_426
                             (coe
                                MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1856 (coe v0)))
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
                                         MAlonzo.Code.Ledger.Transaction.d_crypto_1270 (coe v0)))))
                             (coe
                                MAlonzo.Code.Class.IsSet.du_dom_548
                                (coe
                                   MAlonzo.Code.Axiom.Set.d_th_1470
                                   (coe
                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                                (coe
                                   MAlonzo.Code.Ledger.Transaction.d_vkSigs_2834
                                   (coe MAlonzo.Code.Ledger.Transaction.d_wits_2856 (coe v1)))))
                          (MAlonzo.Code.Ledger.Transaction.d_txvldt_2704
                             (coe MAlonzo.Code.Ledger.Transaction.d_body_2854 (coe v1)))
                          v3)))
               (coe
                  MAlonzo.Code.Axiom.Set.du_mapPartial_576
                  (MAlonzo.Code.Axiom.Set.d_th_1470
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                  (coe MAlonzo.Code.Data.Sum.du_isInj'8321'_24)
                  (MAlonzo.Code.Ledger.Transaction.d_txscripts_2956
                     (coe v0) (coe v1)
                     (coe MAlonzo.Code.Ledger.Utxo.d_utxo_2244 (coe v2)))))
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
                                (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1270 (coe v0))))
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
                                         MAlonzo.Code.Ledger.Transaction.d_crypto_1270 (coe v0)))))
                             (coe
                                MAlonzo.Code.Class.IsSet.du_dom_548
                                (coe
                                   MAlonzo.Code.Axiom.Set.d_th_1470
                                   (coe
                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                                (coe
                                   MAlonzo.Code.Ledger.Transaction.d_vkSigs_2834
                                   (coe MAlonzo.Code.Ledger.Transaction.d_wits_2856 (coe v1)))))))
                  (coe
                     MAlonzo.Code.Ledger.Utxow.du_witsVKeyNeeded_2500 v0
                     (MAlonzo.Code.Ledger.Utxo.d_utxo_2244 (coe v2))
                     (MAlonzo.Code.Ledger.Transaction.d_body_2854 (coe v1))))
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
                                   (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1270 (coe v0)))
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
                                            MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1856
                                            (coe v0))))
                                   (MAlonzo.Code.Ledger.Transaction.d_scripts_2836
                                      (coe MAlonzo.Code.Ledger.Transaction.d_wits_2856 (coe v1))))))
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
                                 (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1270 (coe v0))))
                           (coe
                              MAlonzo.Code.Ledger.Utxow.du_scriptsNeeded_2502 v0
                              (MAlonzo.Code.Ledger.Utxo.d_utxo_2244 (coe v2))
                              (MAlonzo.Code.Ledger.Transaction.d_body_2854 (coe v1)))
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
                                          MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1856
                                          (coe v0))))
                                 (MAlonzo.Code.Ledger.Transaction.d_refScripts_2904
                                    (coe v0) (coe v1)
                                    (coe MAlonzo.Code.Ledger.Utxo.d_utxo_2244 (coe v2)))))))
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
                                   (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1270 (coe v0)))
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
                                            MAlonzo.Code.Ledger.Transaction.d_crypto_1270
                                            (coe v0))))
                                   (coe
                                      MAlonzo.Code.Ledger.Utxow.du_scriptsNeeded_2502 v0
                                      (MAlonzo.Code.Ledger.Utxo.d_utxo_2244 (coe v2))
                                      (MAlonzo.Code.Ledger.Transaction.d_body_2854 (coe v1)))
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
                                                  MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1856
                                                  (coe v0))))
                                         (MAlonzo.Code.Ledger.Transaction.d_refScripts_2904
                                            (coe v0) (coe v1)
                                            (coe
                                               MAlonzo.Code.Ledger.Utxo.d_utxo_2244 (coe v2))))))))
                        (coe
                           MAlonzo.Code.Axiom.Set.du_map_398
                           (MAlonzo.Code.Axiom.Set.d_th_1470
                              (coe
                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                           (MAlonzo.Code.Interface.Hashable.d_hash_16
                              (coe
                                 MAlonzo.Code.Ledger.Script.du_Hashable'45'Script_522
                                 (coe
                                    MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1856
                                    (coe v0))))
                           (MAlonzo.Code.Ledger.Transaction.d_scripts_2836
                              (coe MAlonzo.Code.Ledger.Transaction.d_wits_2856 (coe v1))))))
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
                                               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1856
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
                                      MAlonzo.Code.Ledger.Transaction.d_txdats_2838
                                      (coe MAlonzo.Code.Ledger.Transaction.d_wits_2856 (coe v1))))))
                        (coe
                           MAlonzo.Code.Ledger.Utxo.du_getInputHashes_2144 (coe v0) (coe v1)
                           (coe MAlonzo.Code.Ledger.Utxo.d_utxo_2244 (coe v2))))
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
                                                  MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1856
                                                  (coe v0))))))
                                   (coe v3)
                                   (coe
                                      MAlonzo.Code.Axiom.Set.du__'8746'__680
                                      (coe
                                         MAlonzo.Code.Axiom.Set.d_th_1470
                                         (coe
                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                      (coe
                                         MAlonzo.Code.Ledger.Utxo.du_getInputHashes_2144 (coe v0)
                                         (coe v1)
                                         (coe MAlonzo.Code.Ledger.Utxo.d_utxo_2244 (coe v2)))
                                      (coe
                                         MAlonzo.Code.Axiom.Set.du__'8746'__680
                                         (coe
                                            MAlonzo.Code.Axiom.Set.d_th_1470
                                            (coe
                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                         (coe
                                            MAlonzo.Code.Ledger.Utxo.du_getDataHashes_2140
                                            (coe
                                               MAlonzo.Code.Class.IsSet.du_range_550
                                               (coe
                                                  MAlonzo.Code.Axiom.Set.d_th_1470
                                                  (coe
                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                               (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                                               (coe
                                                  MAlonzo.Code.Ledger.Transaction.d_txouts_2698
                                                  (coe
                                                     MAlonzo.Code.Ledger.Transaction.d_body_2854
                                                     (coe v1)))))
                                         (coe
                                            MAlonzo.Code.Ledger.Utxo.du_getDataHashes_2140
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
                                                        (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1230
                                                           (coe v0))
                                                        (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1228
                                                           (coe v0))))
                                                  (coe
                                                     MAlonzo.Code.Ledger.Utxo.d_utxo_2244 (coe v2))
                                                  (coe
                                                     MAlonzo.Code.Ledger.Transaction.d_refInputs_2696
                                                     (coe
                                                        MAlonzo.Code.Ledger.Transaction.d_body_2854
                                                        (coe v1))))))))))
                           (coe
                              MAlonzo.Code.Class.IsSet.du_dom_548
                              (coe
                                 MAlonzo.Code.Axiom.Set.d_th_1470
                                 (coe
                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                              (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                              (coe
                                 MAlonzo.Code.Ledger.Transaction.d_txdats_2838
                                 (coe MAlonzo.Code.Ledger.Transaction.d_wits_2856 (coe v1)))))
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
                                               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1856
                                               (coe v0))))
                                      (coe v3)
                                      (coe
                                         MAlonzo.Code.Ledger.Utxow.du_allowedLanguages_2364 (coe v0)
                                         (coe v1)
                                         (coe MAlonzo.Code.Ledger.Utxo.d_utxo_2244 (coe v2)))))
                              (coe
                                 MAlonzo.Code.Ledger.Utxow.du_languages_2348 (coe v0) (coe v1)
                                 (coe MAlonzo.Code.Ledger.Utxo.d_utxo_2244 (coe v2))))
                           (coe
                              MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                              (coe
                                 MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                                 (coe
                                    MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                    (coe
                                       MAlonzo.Code.Ledger.Transaction.d_adHashingScheme_1232
                                       (coe v0))))
                              (coe
                                 MAlonzo.Code.Ledger.Transaction.d_txADhash_2718
                                 (coe MAlonzo.Code.Ledger.Transaction.d_body_2854 (coe v1)))
                              (coe
                                 MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                 MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6
                                 MAlonzo.Code.Agda.Primitive.d_lzero_20 erased
                                 MAlonzo.Code.Agda.Primitive.d_lzero_20 erased
                                 (MAlonzo.Code.Interface.Hashable.d_hash_16
                                    (coe
                                       MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_28
                                       (coe
                                          MAlonzo.Code.Ledger.Transaction.d_adHashingScheme_1232
                                          (coe v0))))
                                 (MAlonzo.Code.Ledger.Transaction.d_txAD_2860 (coe v1)))))))))))
-- Ledger.Conway.Conformance.Utxow..generalizedField-tx
d_'46'generalizedField'45'tx_8695 ::
  T_GeneralizeTel_8703 -> MAlonzo.Code.Ledger.Transaction.T_Tx_2844
d_'46'generalizedField'45'tx_8695 v0
  = case coe v0 of
      C_mkGeneralizeTel_8705 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxow..generalizedField-s
d_'46'generalizedField'45's_8697 ::
  T_GeneralizeTel_8703 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_2234
d_'46'generalizedField'45's_8697 v0
  = case coe v0 of
      C_mkGeneralizeTel_8705 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxow..generalizedField-Γ
d_'46'generalizedField'45'Γ_8699 ::
  T_GeneralizeTel_8703 -> MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_2218
d_'46'generalizedField'45'Γ_8699 v0
  = case coe v0 of
      C_mkGeneralizeTel_8705 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxow..generalizedField-s'
d_'46'generalizedField'45's''_8701 ::
  T_GeneralizeTel_8703 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_2234
d_'46'generalizedField'45's''_8701 v0
  = case coe v0 of
      C_mkGeneralizeTel_8705 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxow.GeneralizeTel
d_GeneralizeTel_8703 a0 a1 = ()
data T_GeneralizeTel_8703
  = C_mkGeneralizeTel_8705 MAlonzo.Code.Ledger.Transaction.T_Tx_2844
                           MAlonzo.Code.Ledger.Utxo.T_UTxOState_2234
                           MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_2218
                           MAlonzo.Code.Ledger.Utxo.T_UTxOState_2234
