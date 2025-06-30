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
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Interface.Hashable
import qualified MAlonzo.Code.Ledger.Conway.Abstract
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Utxo
import qualified MAlonzo.Code.Ledger.Conway.Crypto
import qualified MAlonzo.Code.Ledger.Conway.PParams
import qualified MAlonzo.Code.Ledger.Conway.Script.Base
import qualified MAlonzo.Code.Ledger.Conway.Transaction
import qualified MAlonzo.Code.Ledger.Conway.Utxo
import qualified MAlonzo.Code.Ledger.Conway.Utxow
import qualified MAlonzo.Code.Prelude
import qualified MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory

-- _.Hashable-Script
d_Hashable'45'Script_220 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'Script_220 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.Base.du_Hashable'45'Script_390
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_scriptStructure_1808
         (coe v0))
-- _.Tx
d_Tx_412 a0 = ()
-- _.isSigned
d_isSigned_546 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  AgdaAny -> AgdaAny -> AgdaAny -> ()
d_isSigned_546 = erased
-- _.refScripts
d_refScripts_598 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3134 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_refScripts_598 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_refScripts_3206 (coe v0)
-- _.toP1Script
d_toP1Script_618 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
d_toP1Script_618 ~v0 = du_toP1Script_618
du_toP1Script_618 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
du_toP1Script_618
  = coe MAlonzo.Code.Ledger.Conway.Script.Base.du_toP1Script_404
-- _.txscripts
d_txscripts_642 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3134 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_txscripts_642 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_txscripts_3258 (coe v0)
-- _.validP1Script
d_validP1Script_646 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> ()
d_validP1Script_646 = erased
-- _.Tx.body
d_body_1524 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3134 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2942
d_body_1524 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_body_3144 (coe v0)
-- _.Tx.isValid
d_isValid_1526 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3134 -> Bool
d_isValid_1526 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_isValid_3148 (coe v0)
-- _.Tx.txAD
d_txAD_1528 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3134 -> Maybe AgdaAny
d_txAD_1528 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_txAD_3150 (coe v0)
-- _.Tx.wits
d_wits_1530 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3134 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxWitnesses_3114
d_wits_1530 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_wits_3146 (coe v0)
-- Ledger.Conway.Conformance.Utxow._._⊢_⇀⦇_,UTXO⦈_
d__'8866'_'8640''10631'_'44'UTXO'10632'__1622 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Utxow._.UTxOEnv
d_UTxOEnv_1638 a0 a1 = ()
-- Ledger.Conway.Conformance.Utxow._.UTxOState
d_UTxOState_1640 a0 a1 = ()
-- Ledger.Conway.Conformance.Utxow._.UTxOEnv.pparams
d_pparams_1674 ::
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOEnv_2242 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296
d_pparams_1674 v0
  = coe MAlonzo.Code.Ledger.Conway.Utxo.d_pparams_2252 (coe v0)
-- Ledger.Conway.Conformance.Utxow._.UTxOEnv.slot
d_slot_1676 ::
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOEnv_2242 -> AgdaAny
d_slot_1676 v0
  = coe MAlonzo.Code.Ledger.Conway.Utxo.d_slot_2250 (coe v0)
-- Ledger.Conway.Conformance.Utxow._.UTxOEnv.treasury
d_treasury_1678 ::
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOEnv_2242 -> Integer
d_treasury_1678 v0
  = coe MAlonzo.Code.Ledger.Conway.Utxo.d_treasury_2254 (coe v0)
-- Ledger.Conway.Conformance.Utxow._.UTxOState.deposits
d_deposits_1682 ::
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2260 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_1682 v0
  = coe MAlonzo.Code.Ledger.Conway.Utxo.d_deposits_2274 (coe v0)
-- Ledger.Conway.Conformance.Utxow._.UTxOState.donations
d_donations_1684 ::
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2260 -> Integer
d_donations_1684 v0
  = coe MAlonzo.Code.Ledger.Conway.Utxo.d_donations_2276 (coe v0)
-- Ledger.Conway.Conformance.Utxow._.UTxOState.fees
d_fees_1686 ::
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2260 -> Integer
d_fees_1686 v0
  = coe MAlonzo.Code.Ledger.Conway.Utxo.d_fees_2272 (coe v0)
-- Ledger.Conway.Conformance.Utxow._.UTxOState.utxo
d_utxo_1688 ::
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2260 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_1688 v0
  = coe MAlonzo.Code.Ledger.Conway.Utxo.d_utxo_2270 (coe v0)
-- Ledger.Conway.Conformance.Utxow.L._.allowedLanguages
d_allowedLanguages_2156 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3134 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
d_allowedLanguages_2156 v0 ~v1 = du_allowedLanguages_2156 v0
du_allowedLanguages_2156 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3134 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
du_allowedLanguages_2156 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Utxow.du_allowedLanguages_2390 (coe v0)
-- Ledger.Conway.Conformance.Utxow.L._.languages
d_languages_2166 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3134 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
d_languages_2166 v0 ~v1 = du_languages_2166 v0
du_languages_2166 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3134 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
du_languages_2166 v0
  = coe MAlonzo.Code.Ledger.Conway.Utxow.du_languages_2374 (coe v0)
-- Ledger.Conway.Conformance.Utxow.L._.scriptsNeeded
d_scriptsNeeded_2168 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2942 -> [AgdaAny]
d_scriptsNeeded_2168 v0 ~v1 = du_scriptsNeeded_2168 v0
du_scriptsNeeded_2168 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2942 -> [AgdaAny]
du_scriptsNeeded_2168 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Utxow.du_scriptsNeeded_2528 (coe v0)
-- Ledger.Conway.Conformance.Utxow.L._.witsVKeyNeeded
d_witsVKeyNeeded_2170 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2942 -> [AgdaAny]
d_witsVKeyNeeded_2170 v0 ~v1 = du_witsVKeyNeeded_2170 v0
du_witsVKeyNeeded_2170 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2942 -> [AgdaAny]
du_witsVKeyNeeded_2170 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Utxow.du_witsVKeyNeeded_2526 (coe v0)
-- Ledger.Conway.Conformance.Utxow.L._.getDataHashes
d_getDataHashes_2268 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> [AgdaAny]
d_getDataHashes_2268 ~v0 ~v1 = du_getDataHashes_2268
du_getDataHashes_2268 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> [AgdaAny]
du_getDataHashes_2268
  = coe MAlonzo.Code.Ledger.Conway.Utxo.du_getDataHashes_2164
-- Ledger.Conway.Conformance.Utxow.L._.getInputHashes
d_getInputHashes_2270 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3134 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
d_getInputHashes_2270 v0 ~v1 = du_getInputHashes_2270 v0
du_getInputHashes_2270 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3134 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
du_getInputHashes_2270 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Utxo.du_getInputHashes_2168 (coe v0)
-- Ledger.Conway.Conformance.Utxow._⊢_⇀⦇_,UTXOW⦈_
d__'8866'_'8640''10631'_'44'UTXOW'10632'__2392 a0 a1 a2 a3 a4 a5
  = ()
newtype T__'8866'_'8640''10631'_'44'UTXOW'10632'__2392
  = C_UTXOW'45'inductive_2500 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Utxow._.txAD
d_txAD_2406 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  T_GeneralizeTel_8703 -> Maybe AgdaAny
d_txAD_2406 ~v0 ~v1 v2 = du_txAD_2406 v2
du_txAD_2406 :: T_GeneralizeTel_8703 -> Maybe AgdaAny
du_txAD_2406 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_txAD_3150
      (coe d_'46'generalizedField'45'tx_8695 (coe v0))
-- Ledger.Conway.Conformance.Utxow._.body
d_body_2408 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  T_GeneralizeTel_8703 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2942
d_body_2408 ~v0 ~v1 v2 = du_body_2408 v2
du_body_2408 ::
  T_GeneralizeTel_8703 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2942
du_body_2408 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_body_3144
      (coe d_'46'generalizedField'45'tx_8695 (coe v0))
-- Ledger.Conway.Conformance.Utxow._.wits
d_wits_2410 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  T_GeneralizeTel_8703 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxWitnesses_3114
d_wits_2410 ~v0 ~v1 v2 = du_wits_2410 v2
du_wits_2410 ::
  T_GeneralizeTel_8703 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxWitnesses_3114
du_wits_2410 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_wits_3146
      (coe d_'46'generalizedField'45'tx_8695 (coe v0))
-- Ledger.Conway.Conformance.Utxow._.refInputs
d_refInputs_2420 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  T_GeneralizeTel_8703 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_2420 ~v0 ~v1 v2 = du_refInputs_2420 v2
du_refInputs_2420 ::
  T_GeneralizeTel_8703 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_refInputs_2420 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_refInputs_2986
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_body_3144
         (coe d_'46'generalizedField'45'tx_8695 (coe v0)))
-- Ledger.Conway.Conformance.Utxow._.txADhash
d_txADhash_2426 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  T_GeneralizeTel_8703 -> Maybe AgdaAny
d_txADhash_2426 ~v0 ~v1 v2 = du_txADhash_2426 v2
du_txADhash_2426 :: T_GeneralizeTel_8703 -> Maybe AgdaAny
du_txADhash_2426 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_txADhash_3008
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_body_3144
         (coe d_'46'generalizedField'45'tx_8695 (coe v0)))
-- Ledger.Conway.Conformance.Utxow._.txid
d_txid_2436 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  T_GeneralizeTel_8703 -> AgdaAny
d_txid_2436 ~v0 ~v1 v2 = du_txid_2436 v2
du_txid_2436 :: T_GeneralizeTel_8703 -> AgdaAny
du_txid_2436 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_txid_3016
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_body_3144
         (coe d_'46'generalizedField'45'tx_8695 (coe v0)))
-- Ledger.Conway.Conformance.Utxow._.txouts
d_txouts_2440 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  T_GeneralizeTel_8703 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txouts_2440 ~v0 ~v1 v2 = du_txouts_2440 v2
du_txouts_2440 ::
  T_GeneralizeTel_8703 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txouts_2440 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_txouts_2988
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_body_3144
         (coe d_'46'generalizedField'45'tx_8695 (coe v0)))
-- Ledger.Conway.Conformance.Utxow._.txvldt
d_txvldt_2448 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  T_GeneralizeTel_8703 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txvldt_2448 ~v0 ~v1 v2 = du_txvldt_2448 v2
du_txvldt_2448 ::
  T_GeneralizeTel_8703 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txvldt_2448 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_txvldt_2994
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_body_3144
         (coe d_'46'generalizedField'45'tx_8695 (coe v0)))
-- Ledger.Conway.Conformance.Utxow._.scripts
d_scripts_2456 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  T_GeneralizeTel_8703 -> [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_scripts_2456 ~v0 ~v1 v2 = du_scripts_2456 v2
du_scripts_2456 ::
  T_GeneralizeTel_8703 -> [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_scripts_2456 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_scripts_3126
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_wits_3146
         (coe d_'46'generalizedField'45'tx_8695 (coe v0)))
-- Ledger.Conway.Conformance.Utxow._.txdats
d_txdats_2460 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  T_GeneralizeTel_8703 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txdats_2460 ~v0 ~v1 v2 = du_txdats_2460 v2
du_txdats_2460 ::
  T_GeneralizeTel_8703 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txdats_2460 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_txdats_3128
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_wits_3146
         (coe d_'46'generalizedField'45'tx_8695 (coe v0)))
-- Ledger.Conway.Conformance.Utxow._.vkSigs
d_vkSigs_2464 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  T_GeneralizeTel_8703 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_vkSigs_2464 ~v0 ~v1 v2 = du_vkSigs_2464 v2
du_vkSigs_2464 ::
  T_GeneralizeTel_8703 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_vkSigs_2464 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_vkSigs_3124
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_wits_3146
         (coe d_'46'generalizedField'45'tx_8695 (coe v0)))
-- Ledger.Conway.Conformance.Utxow._.utxo
d_utxo_2474 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  T_GeneralizeTel_8703 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2474 ~v0 ~v1 v2 = du_utxo_2474 v2
du_utxo_2474 ::
  T_GeneralizeTel_8703 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxo_2474 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Utxo.d_utxo_2270
      (coe d_'46'generalizedField'45's_8697 (coe v0))
-- Ledger.Conway.Conformance.Utxow.UTXOW-inductive-premises
d_UTXOW'45'inductive'45'premises_2526 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3134 ->
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2260 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTXOW'45'inductive'45'premises_2526 v0 ~v1 v2 v3
  = du_UTXOW'45'inductive'45'premises_2526 v0 v2 v3
du_UTXOW'45'inductive'45'premises_2526 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3134 ->
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2260 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_UTXOW'45'inductive'45'premises_2526 v0 v1 v2
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
                    MAlonzo.Code.Ledger.Conway.Crypto.d_Dec'45'isSigned_118
                    (MAlonzo.Code.Ledger.Conway.Crypto.d_pkk_174
                       (coe
                          MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1268 (coe v0)))
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3))
                    (coe
                       MAlonzo.Code.Ledger.Conway.Transaction.d_txidBytes_2402 v0
                       (MAlonzo.Code.Ledger.Conway.Transaction.d_txid_3016
                          (coe MAlonzo.Code.Ledger.Conway.Transaction.d_body_3144 (coe v1))))
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3))))
            (coe
               MAlonzo.Code.Axiom.Set.Map.du__'738'_550
               (coe
                  MAlonzo.Code.Ledger.Conway.Transaction.d_vkSigs_3124
                  (coe
                     MAlonzo.Code.Ledger.Conway.Transaction.d_wits_3146 (coe v1)))))
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
                             MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'ScriptHash_206
                             (coe
                                MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1268 (coe v0)))
                          (coe
                             MAlonzo.Code.Interface.Hashable.d_hash_16
                             (MAlonzo.Code.Ledger.Conway.Script.Base.d_Hashable'45'P1Script_114
                                (coe
                                   MAlonzo.Code.Ledger.Conway.Script.Base.d_p1s_294
                                   (coe
                                      MAlonzo.Code.Ledger.Conway.Transaction.d_scriptStructure_1808
                                      (coe v0))))
                             v3)
                          (coe
                             MAlonzo.Code.Ledger.Conway.Utxow.du_scriptsNeeded_2528 v0
                             (MAlonzo.Code.Ledger.Conway.Utxo.d_utxo_2270 (coe v2))
                             (MAlonzo.Code.Ledger.Conway.Transaction.d_body_3144 (coe v1))))
                       (coe
                          MAlonzo.Code.Ledger.Conway.Script.Base.d_Dec'45'validP1Script_112
                          (MAlonzo.Code.Ledger.Conway.Script.Base.d_p1s_294
                             (coe
                                MAlonzo.Code.Ledger.Conway.Transaction.d_scriptStructure_1808
                                (coe v0)))
                          (coe
                             MAlonzo.Code.Axiom.Set.du_map_398
                             (MAlonzo.Code.Axiom.Set.d_th_1470
                                (coe
                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                             (MAlonzo.Code.Interface.Hashable.d_hash_16
                                (coe
                                   MAlonzo.Code.Ledger.Conway.Crypto.d_T'45'Hashable_30
                                   (coe
                                      MAlonzo.Code.Ledger.Conway.Crypto.d_khs_202
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1268
                                         (coe v0)))))
                             (coe
                                MAlonzo.Code.Class.IsSet.du_dom_548
                                (coe
                                   MAlonzo.Code.Axiom.Set.d_th_1470
                                   (coe
                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                                (coe
                                   MAlonzo.Code.Ledger.Conway.Transaction.d_vkSigs_3124
                                   (coe
                                      MAlonzo.Code.Ledger.Conway.Transaction.d_wits_3146
                                      (coe v1)))))
                          (MAlonzo.Code.Ledger.Conway.Transaction.d_txvldt_2994
                             (coe MAlonzo.Code.Ledger.Conway.Transaction.d_body_3144 (coe v1)))
                          v3)))
               (coe
                  MAlonzo.Code.Axiom.Set.du_mapPartial_576
                  (MAlonzo.Code.Axiom.Set.d_th_1470
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                  (coe MAlonzo.Code.Ledger.Conway.Script.Base.du_toP1Script_404)
                  (MAlonzo.Code.Ledger.Conway.Transaction.d_txscripts_3258
                     (coe v0) (coe v1)
                     (coe MAlonzo.Code.Ledger.Conway.Utxo.d_utxo_2270 (coe v2)))))
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
                             MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'THash_24
                             (coe
                                MAlonzo.Code.Ledger.Conway.Crypto.d_khs_202
                                (coe
                                   MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1268 (coe v0))))
                          (coe v3)
                          (coe
                             MAlonzo.Code.Axiom.Set.du_map_398
                             (MAlonzo.Code.Axiom.Set.d_th_1470
                                (coe
                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                             (MAlonzo.Code.Interface.Hashable.d_hash_16
                                (coe
                                   MAlonzo.Code.Ledger.Conway.Crypto.d_T'45'Hashable_30
                                   (coe
                                      MAlonzo.Code.Ledger.Conway.Crypto.d_khs_202
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1268
                                         (coe v0)))))
                             (coe
                                MAlonzo.Code.Class.IsSet.du_dom_548
                                (coe
                                   MAlonzo.Code.Axiom.Set.d_th_1470
                                   (coe
                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                                (coe
                                   MAlonzo.Code.Ledger.Conway.Transaction.d_vkSigs_3124
                                   (coe
                                      MAlonzo.Code.Ledger.Conway.Transaction.d_wits_3146
                                      (coe v1)))))))
                  (coe
                     MAlonzo.Code.Ledger.Conway.Utxow.du_witsVKeyNeeded_2526 v0
                     (MAlonzo.Code.Ledger.Conway.Utxo.d_utxo_2270 (coe v2))
                     (MAlonzo.Code.Ledger.Conway.Transaction.d_body_3144 (coe v1))))
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
                                   MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'ScriptHash_206
                                   (coe
                                      MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1268
                                      (coe v0)))
                                (coe v3)
                                (coe
                                   MAlonzo.Code.Axiom.Set.du_map_398
                                   (MAlonzo.Code.Axiom.Set.d_th_1470
                                      (coe
                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                   (MAlonzo.Code.Interface.Hashable.d_hash_16
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Script.Base.du_Hashable'45'Script_390
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Transaction.d_scriptStructure_1808
                                            (coe v0))))
                                   (MAlonzo.Code.Ledger.Conway.Transaction.d_scripts_3126
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Transaction.d_wits_3146
                                         (coe v1))))))
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
                              (MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'ScriptHash_206
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1268 (coe v0))))
                           (coe
                              MAlonzo.Code.Ledger.Conway.Utxow.du_scriptsNeeded_2528 v0
                              (MAlonzo.Code.Ledger.Conway.Utxo.d_utxo_2270 (coe v2))
                              (MAlonzo.Code.Ledger.Conway.Transaction.d_body_3144 (coe v1)))
                           (coe
                              MAlonzo.Code.Axiom.Set.du_map_398
                              (MAlonzo.Code.Axiom.Set.d_th_1470
                                 (coe
                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                              (MAlonzo.Code.Interface.Hashable.d_hash_16
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Script.Base.du_Hashable'45'Script_390
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Transaction.d_scriptStructure_1808
                                       (coe v0))))
                              (MAlonzo.Code.Ledger.Conway.Transaction.d_refScripts_3206
                                 (coe v0) (coe v1)
                                 (coe MAlonzo.Code.Ledger.Conway.Utxo.d_utxo_2270 (coe v2))))))
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
                                   MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'ScriptHash_206
                                   (coe
                                      MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1268
                                      (coe v0)))
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
                                      (MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'ScriptHash_206
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1268
                                            (coe v0))))
                                   (coe
                                      MAlonzo.Code.Ledger.Conway.Utxow.du_scriptsNeeded_2528 v0
                                      (MAlonzo.Code.Ledger.Conway.Utxo.d_utxo_2270 (coe v2))
                                      (MAlonzo.Code.Ledger.Conway.Transaction.d_body_3144 (coe v1)))
                                   (coe
                                      MAlonzo.Code.Axiom.Set.du_map_398
                                      (MAlonzo.Code.Axiom.Set.d_th_1470
                                         (coe
                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                      (MAlonzo.Code.Interface.Hashable.d_hash_16
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Script.Base.du_Hashable'45'Script_390
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Transaction.d_scriptStructure_1808
                                               (coe v0))))
                                      (MAlonzo.Code.Ledger.Conway.Transaction.d_refScripts_3206
                                         (coe v0) (coe v1)
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Utxo.d_utxo_2270
                                            (coe v2)))))))
                        (coe
                           MAlonzo.Code.Axiom.Set.du_map_398
                           (MAlonzo.Code.Axiom.Set.d_th_1470
                              (coe
                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                           (MAlonzo.Code.Interface.Hashable.d_hash_16
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Script.Base.du_Hashable'45'Script_390
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Transaction.d_scriptStructure_1808
                                    (coe v0))))
                           (MAlonzo.Code.Ledger.Conway.Transaction.d_scripts_3126
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Transaction.d_wits_3146 (coe v1))))))
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
                                   MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'THash_24
                                   (coe
                                      MAlonzo.Code.Ledger.Conway.Crypto.d_T'45'isHashable_42
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Script.Base.d_Data'688'_194
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Script.Base.d_ps_316
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Transaction.d_scriptStructure_1808
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
                                      MAlonzo.Code.Ledger.Conway.Transaction.d_txdats_3128
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Transaction.d_wits_3146
                                         (coe v1))))))
                        (coe
                           MAlonzo.Code.Ledger.Conway.Utxo.du_getInputHashes_2168 (coe v0)
                           (coe v1)
                           (coe MAlonzo.Code.Ledger.Conway.Utxo.d_utxo_2270 (coe v2))))
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
                                      MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'THash_24
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Crypto.d_T'45'isHashable_42
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Script.Base.d_Data'688'_194
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Script.Base.d_ps_316
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Transaction.d_scriptStructure_1808
                                                  (coe v0))))))
                                   (coe v3)
                                   (coe
                                      MAlonzo.Code.Axiom.Set.du__'8746'__680
                                      (coe
                                         MAlonzo.Code.Axiom.Set.d_th_1470
                                         (coe
                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Utxo.du_getInputHashes_2168
                                         (coe v0) (coe v1)
                                         (coe MAlonzo.Code.Ledger.Conway.Utxo.d_utxo_2270 (coe v2)))
                                      (coe
                                         MAlonzo.Code.Axiom.Set.du__'8746'__680
                                         (coe
                                            MAlonzo.Code.Axiom.Set.d_th_1470
                                            (coe
                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Utxo.du_getDataHashes_2164
                                            (coe
                                               MAlonzo.Code.Class.IsSet.du_range_550
                                               (coe
                                                  MAlonzo.Code.Axiom.Set.d_th_1470
                                                  (coe
                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                               (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Transaction.d_txouts_2988
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Transaction.d_body_3144
                                                     (coe v1)))))
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Utxo.du_getDataHashes_2164
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
                                                        (MAlonzo.Code.Ledger.Conway.Transaction.d_DecEq'45'TxId_1222
                                                           (coe v0))
                                                        (MAlonzo.Code.Ledger.Conway.Transaction.d_DecEq'45'Ix_1220
                                                           (coe v0))))
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Utxo.d_utxo_2270
                                                     (coe v2))
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Transaction.d_refInputs_2986
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Transaction.d_body_3144
                                                        (coe v1))))))))))
                           (coe
                              MAlonzo.Code.Class.IsSet.du_dom_548
                              (coe
                                 MAlonzo.Code.Axiom.Set.d_th_1470
                                 (coe
                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                              (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Transaction.d_txdats_3128
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Transaction.d_wits_3146 (coe v1)))))
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
                                         MAlonzo.Code.Ledger.Conway.Script.Base.d_DecEq'45'Language_218
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Script.Base.d_ps_316
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Transaction.d_scriptStructure_1808
                                               (coe v0))))
                                      (coe v3)
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Utxow.du_allowedLanguages_2390
                                         (coe v0) (coe v1)
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Utxo.d_utxo_2270 (coe v2)))))
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Utxow.du_languages_2374 (coe v0)
                                 (coe v1)
                                 (coe MAlonzo.Code.Ledger.Conway.Utxo.d_utxo_2270 (coe v2))))
                           (coe
                              MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                              (coe
                                 MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'THash_24
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Transaction.d_adHashingScheme_1224
                                       (coe v0))))
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Transaction.d_txADhash_3008
                                 (coe MAlonzo.Code.Ledger.Conway.Transaction.d_body_3144 (coe v1)))
                              (coe
                                 MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                 MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6
                                 MAlonzo.Code.Agda.Primitive.d_lzero_20 erased
                                 MAlonzo.Code.Agda.Primitive.d_lzero_20 erased
                                 (MAlonzo.Code.Interface.Hashable.d_hash_16
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Crypto.d_T'45'Hashable_30
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Transaction.d_adHashingScheme_1224
                                          (coe v0))))
                                 (MAlonzo.Code.Ledger.Conway.Transaction.d_txAD_3150
                                    (coe v1)))))))))))
-- Ledger.Conway.Conformance.Utxow..generalizedField-tx
d_'46'generalizedField'45'tx_8695 ::
  T_GeneralizeTel_8703 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3134
d_'46'generalizedField'45'tx_8695 v0
  = case coe v0 of
      C_mkGeneralizeTel_8705 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxow..generalizedField-s
d_'46'generalizedField'45's_8697 ::
  T_GeneralizeTel_8703 ->
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2260
d_'46'generalizedField'45's_8697 v0
  = case coe v0 of
      C_mkGeneralizeTel_8705 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxow..generalizedField-Γ
d_'46'generalizedField'45'Γ_8699 ::
  T_GeneralizeTel_8703 ->
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOEnv_2242
d_'46'generalizedField'45'Γ_8699 v0
  = case coe v0 of
      C_mkGeneralizeTel_8705 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxow..generalizedField-s'
d_'46'generalizedField'45's''_8701 ::
  T_GeneralizeTel_8703 ->
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2260
d_'46'generalizedField'45's''_8701 v0
  = case coe v0 of
      C_mkGeneralizeTel_8705 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxow.GeneralizeTel
d_GeneralizeTel_8703 a0 a1 = ()
data T_GeneralizeTel_8703
  = C_mkGeneralizeTel_8705 MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3134
                           MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2260
                           MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOEnv_2242
                           MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2260
