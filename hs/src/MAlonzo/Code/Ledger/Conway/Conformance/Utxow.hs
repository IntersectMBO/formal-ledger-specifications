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
import qualified MAlonzo.Code.Ledger.Conway.Abstract
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Utxo
import qualified MAlonzo.Code.Ledger.Conway.Crypto
import qualified MAlonzo.Code.Ledger.Conway.PParams
import qualified MAlonzo.Code.Ledger.Conway.Script
import qualified MAlonzo.Code.Ledger.Conway.Transaction
import qualified MAlonzo.Code.Ledger.Conway.Utxo
import qualified MAlonzo.Code.Ledger.Conway.Utxow
import qualified MAlonzo.Code.Prelude
import qualified MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory

-- _.Hashable-Script
d_Hashable'45'Script_224 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'Script_224 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.du_Hashable'45'Script_524
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_scriptStructure_1886
         (coe v0))
-- _.Tx
d_Tx_430 a0 = ()
-- _.isSigned
d_isSigned_572 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  AgdaAny -> AgdaAny -> AgdaAny -> ()
d_isSigned_572 = erased
-- _.refScripts
d_refScripts_624 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3198 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_refScripts_624 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_refScripts_3270 (coe v0)
-- _.txscripts
d_txscripts_664 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3198 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_txscripts_664 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_txscripts_3322 (coe v0)
-- _.validP1Script
d_validP1Script_668 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> ()
d_validP1Script_668 = erased
-- _.Tx.body
d_body_1546 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3198 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_3006
d_body_1546 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_body_3208 (coe v0)
-- _.Tx.isValid
d_isValid_1548 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3198 -> Bool
d_isValid_1548 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_isValid_3212 (coe v0)
-- _.Tx.txAD
d_txAD_1550 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3198 -> Maybe AgdaAny
d_txAD_1550 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_txAD_3214 (coe v0)
-- _.Tx.wits
d_wits_1552 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3198 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxWitnesses_3178
d_wits_1552 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_wits_3210 (coe v0)
-- Ledger.Conway.Conformance.Utxow._._⊢_⇀⦇_,UTXO⦈_
d__'8866'_'8640''10631'_'44'UTXO'10632'__1658 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Utxow._.UTxOEnv
d_UTxOEnv_1674 a0 a1 = ()
-- Ledger.Conway.Conformance.Utxow._.UTxOState
d_UTxOState_1676 a0 a1 = ()
-- Ledger.Conway.Conformance.Utxow._.UTxOEnv.pparams
d_pparams_1710 ::
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOEnv_2278 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282
d_pparams_1710 v0
  = coe MAlonzo.Code.Ledger.Conway.Utxo.d_pparams_2288 (coe v0)
-- Ledger.Conway.Conformance.Utxow._.UTxOEnv.slot
d_slot_1712 ::
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOEnv_2278 -> AgdaAny
d_slot_1712 v0
  = coe MAlonzo.Code.Ledger.Conway.Utxo.d_slot_2286 (coe v0)
-- Ledger.Conway.Conformance.Utxow._.UTxOEnv.treasury
d_treasury_1714 ::
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOEnv_2278 -> Integer
d_treasury_1714 v0
  = coe MAlonzo.Code.Ledger.Conway.Utxo.d_treasury_2290 (coe v0)
-- Ledger.Conway.Conformance.Utxow._.UTxOState.deposits
d_deposits_1718 ::
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2296 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_1718 v0
  = coe MAlonzo.Code.Ledger.Conway.Utxo.d_deposits_2310 (coe v0)
-- Ledger.Conway.Conformance.Utxow._.UTxOState.donations
d_donations_1720 ::
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2296 -> Integer
d_donations_1720 v0
  = coe MAlonzo.Code.Ledger.Conway.Utxo.d_donations_2312 (coe v0)
-- Ledger.Conway.Conformance.Utxow._.UTxOState.fees
d_fees_1722 ::
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2296 -> Integer
d_fees_1722 v0
  = coe MAlonzo.Code.Ledger.Conway.Utxo.d_fees_2308 (coe v0)
-- Ledger.Conway.Conformance.Utxow._.UTxOState.utxo
d_utxo_1724 ::
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2296 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_1724 v0
  = coe MAlonzo.Code.Ledger.Conway.Utxo.d_utxo_2306 (coe v0)
-- Ledger.Conway.Conformance.Utxow.L._.allowedLanguages
d_allowedLanguages_2192 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1992 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3198 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
d_allowedLanguages_2192 v0 ~v1 = du_allowedLanguages_2192 v0
du_allowedLanguages_2192 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3198 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
du_allowedLanguages_2192 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Utxow.du_allowedLanguages_2426 (coe v0)
-- Ledger.Conway.Conformance.Utxow.L._.languages
d_languages_2202 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1992 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3198 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
d_languages_2202 v0 ~v1 = du_languages_2202 v0
du_languages_2202 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3198 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
du_languages_2202 v0
  = coe MAlonzo.Code.Ledger.Conway.Utxow.du_languages_2410 (coe v0)
-- Ledger.Conway.Conformance.Utxow.L._.scriptsNeeded
d_scriptsNeeded_2204 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1992 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_3006 -> [AgdaAny]
d_scriptsNeeded_2204 v0 ~v1 = du_scriptsNeeded_2204 v0
du_scriptsNeeded_2204 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_3006 -> [AgdaAny]
du_scriptsNeeded_2204 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Utxow.du_scriptsNeeded_2564 (coe v0)
-- Ledger.Conway.Conformance.Utxow.L._.witsVKeyNeeded
d_witsVKeyNeeded_2206 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1992 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_3006 -> [AgdaAny]
d_witsVKeyNeeded_2206 v0 ~v1 = du_witsVKeyNeeded_2206 v0
du_witsVKeyNeeded_2206 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_3006 -> [AgdaAny]
du_witsVKeyNeeded_2206 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Utxow.du_witsVKeyNeeded_2562 (coe v0)
-- Ledger.Conway.Conformance.Utxow.L._.getDataHashes
d_getDataHashes_2304 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1992 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> [AgdaAny]
d_getDataHashes_2304 ~v0 ~v1 = du_getDataHashes_2304
du_getDataHashes_2304 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> [AgdaAny]
du_getDataHashes_2304
  = coe MAlonzo.Code.Ledger.Conway.Utxo.du_getDataHashes_2200
-- Ledger.Conway.Conformance.Utxow.L._.getInputHashes
d_getInputHashes_2306 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1992 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3198 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
d_getInputHashes_2306 v0 ~v1 = du_getInputHashes_2306 v0
du_getInputHashes_2306 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3198 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
du_getInputHashes_2306 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Utxo.du_getInputHashes_2204 (coe v0)
-- Ledger.Conway.Conformance.Utxow._⊢_⇀⦇_,UTXOW⦈_
d__'8866'_'8640''10631'_'44'UTXOW'10632'__2428 a0 a1 a2 a3 a4 a5
  = ()
newtype T__'8866'_'8640''10631'_'44'UTXOW'10632'__2428
  = C_UTXOW'45'inductive_2536 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Utxow._.txAD
d_txAD_2442 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1992 ->
  T_GeneralizeTel_8863 -> Maybe AgdaAny
d_txAD_2442 ~v0 ~v1 v2 = du_txAD_2442 v2
du_txAD_2442 :: T_GeneralizeTel_8863 -> Maybe AgdaAny
du_txAD_2442 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_txAD_3214
      (coe d_'46'generalizedField'45'tx_8855 (coe v0))
-- Ledger.Conway.Conformance.Utxow._.body
d_body_2444 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1992 ->
  T_GeneralizeTel_8863 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_3006
d_body_2444 ~v0 ~v1 v2 = du_body_2444 v2
du_body_2444 ::
  T_GeneralizeTel_8863 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_3006
du_body_2444 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_body_3208
      (coe d_'46'generalizedField'45'tx_8855 (coe v0))
-- Ledger.Conway.Conformance.Utxow._.wits
d_wits_2446 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1992 ->
  T_GeneralizeTel_8863 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxWitnesses_3178
d_wits_2446 ~v0 ~v1 v2 = du_wits_2446 v2
du_wits_2446 ::
  T_GeneralizeTel_8863 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxWitnesses_3178
du_wits_2446 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_wits_3210
      (coe d_'46'generalizedField'45'tx_8855 (coe v0))
-- Ledger.Conway.Conformance.Utxow._.refInputs
d_refInputs_2456 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1992 ->
  T_GeneralizeTel_8863 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_2456 ~v0 ~v1 v2 = du_refInputs_2456 v2
du_refInputs_2456 ::
  T_GeneralizeTel_8863 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_refInputs_2456 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_refInputs_3050
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_body_3208
         (coe d_'46'generalizedField'45'tx_8855 (coe v0)))
-- Ledger.Conway.Conformance.Utxow._.txADhash
d_txADhash_2462 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1992 ->
  T_GeneralizeTel_8863 -> Maybe AgdaAny
d_txADhash_2462 ~v0 ~v1 v2 = du_txADhash_2462 v2
du_txADhash_2462 :: T_GeneralizeTel_8863 -> Maybe AgdaAny
du_txADhash_2462 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_txADhash_3072
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_body_3208
         (coe d_'46'generalizedField'45'tx_8855 (coe v0)))
-- Ledger.Conway.Conformance.Utxow._.txid
d_txid_2472 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1992 ->
  T_GeneralizeTel_8863 -> AgdaAny
d_txid_2472 ~v0 ~v1 v2 = du_txid_2472 v2
du_txid_2472 :: T_GeneralizeTel_8863 -> AgdaAny
du_txid_2472 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_txid_3080
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_body_3208
         (coe d_'46'generalizedField'45'tx_8855 (coe v0)))
-- Ledger.Conway.Conformance.Utxow._.txouts
d_txouts_2476 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1992 ->
  T_GeneralizeTel_8863 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txouts_2476 ~v0 ~v1 v2 = du_txouts_2476 v2
du_txouts_2476 ::
  T_GeneralizeTel_8863 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txouts_2476 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_txouts_3052
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_body_3208
         (coe d_'46'generalizedField'45'tx_8855 (coe v0)))
-- Ledger.Conway.Conformance.Utxow._.txvldt
d_txvldt_2484 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1992 ->
  T_GeneralizeTel_8863 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txvldt_2484 ~v0 ~v1 v2 = du_txvldt_2484 v2
du_txvldt_2484 ::
  T_GeneralizeTel_8863 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txvldt_2484 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_txvldt_3058
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_body_3208
         (coe d_'46'generalizedField'45'tx_8855 (coe v0)))
-- Ledger.Conway.Conformance.Utxow._.scripts
d_scripts_2492 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1992 ->
  T_GeneralizeTel_8863 -> [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_scripts_2492 ~v0 ~v1 v2 = du_scripts_2492 v2
du_scripts_2492 ::
  T_GeneralizeTel_8863 -> [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_scripts_2492 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_scripts_3190
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_wits_3210
         (coe d_'46'generalizedField'45'tx_8855 (coe v0)))
-- Ledger.Conway.Conformance.Utxow._.txdats
d_txdats_2496 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1992 ->
  T_GeneralizeTel_8863 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txdats_2496 ~v0 ~v1 v2 = du_txdats_2496 v2
du_txdats_2496 ::
  T_GeneralizeTel_8863 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txdats_2496 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_txdats_3192
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_wits_3210
         (coe d_'46'generalizedField'45'tx_8855 (coe v0)))
-- Ledger.Conway.Conformance.Utxow._.vkSigs
d_vkSigs_2500 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1992 ->
  T_GeneralizeTel_8863 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_vkSigs_2500 ~v0 ~v1 v2 = du_vkSigs_2500 v2
du_vkSigs_2500 ::
  T_GeneralizeTel_8863 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_vkSigs_2500 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_vkSigs_3188
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_wits_3210
         (coe d_'46'generalizedField'45'tx_8855 (coe v0)))
-- Ledger.Conway.Conformance.Utxow._.utxo
d_utxo_2510 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1992 ->
  T_GeneralizeTel_8863 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2510 ~v0 ~v1 v2 = du_utxo_2510 v2
du_utxo_2510 ::
  T_GeneralizeTel_8863 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxo_2510 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Utxo.d_utxo_2306
      (coe d_'46'generalizedField'45's_8857 (coe v0))
-- Ledger.Conway.Conformance.Utxow.UTXOW-inductive-premises
d_UTXOW'45'inductive'45'premises_2562 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1992 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3198 ->
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2296 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTXOW'45'inductive'45'premises_2562 v0 ~v1 v2 v3
  = du_UTXOW'45'inductive'45'premises_2562 v0 v2 v3
du_UTXOW'45'inductive'45'premises_2562 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3198 ->
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2296 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_UTXOW'45'inductive'45'premises_2562 v0 v1 v2
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
                          MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1300 (coe v0)))
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3))
                    (coe
                       MAlonzo.Code.Ledger.Conway.Transaction.d_txidBytes_2466 v0
                       (MAlonzo.Code.Ledger.Conway.Transaction.d_txid_3080
                          (coe MAlonzo.Code.Ledger.Conway.Transaction.d_body_3208 (coe v1))))
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3))))
            (coe
               MAlonzo.Code.Axiom.Set.Map.du__'738'_550
               (coe
                  MAlonzo.Code.Ledger.Conway.Transaction.d_vkSigs_3188
                  (coe
                     MAlonzo.Code.Ledger.Conway.Transaction.d_wits_3210 (coe v1)))))
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
                                MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1300 (coe v0)))
                          (coe
                             MAlonzo.Code.Interface.Hashable.d_hash_16
                             (MAlonzo.Code.Ledger.Conway.Script.d_Hashable'45'P1Script_112
                                (coe
                                   MAlonzo.Code.Ledger.Conway.Script.d_p1s_428
                                   (coe
                                      MAlonzo.Code.Ledger.Conway.Transaction.d_scriptStructure_1886
                                      (coe v0))))
                             v3)
                          (coe
                             MAlonzo.Code.Ledger.Conway.Utxow.du_scriptsNeeded_2564 v0
                             (MAlonzo.Code.Ledger.Conway.Utxo.d_utxo_2306 (coe v2))
                             (MAlonzo.Code.Ledger.Conway.Transaction.d_body_3208 (coe v1))))
                       (coe
                          MAlonzo.Code.Ledger.Conway.Script.d_Dec'45'validP1Script_110
                          (MAlonzo.Code.Ledger.Conway.Script.d_p1s_428
                             (coe
                                MAlonzo.Code.Ledger.Conway.Transaction.d_scriptStructure_1886
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
                                         MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1300
                                         (coe v0)))))
                             (coe
                                MAlonzo.Code.Class.IsSet.du_dom_548
                                (coe
                                   MAlonzo.Code.Axiom.Set.d_th_1470
                                   (coe
                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                                (coe
                                   MAlonzo.Code.Ledger.Conway.Transaction.d_vkSigs_3188
                                   (coe
                                      MAlonzo.Code.Ledger.Conway.Transaction.d_wits_3210
                                      (coe v1)))))
                          (MAlonzo.Code.Ledger.Conway.Transaction.d_txvldt_3058
                             (coe MAlonzo.Code.Ledger.Conway.Transaction.d_body_3208 (coe v1)))
                          v3)))
               (coe
                  MAlonzo.Code.Axiom.Set.du_mapPartial_576
                  (MAlonzo.Code.Axiom.Set.d_th_1470
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                  (coe MAlonzo.Code.Data.Sum.du_isInj'8321'_24)
                  (MAlonzo.Code.Ledger.Conway.Transaction.d_txscripts_3322
                     (coe v0) (coe v1)
                     (coe MAlonzo.Code.Ledger.Conway.Utxo.d_utxo_2306 (coe v2)))))
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
                                   MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1300 (coe v0))))
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
                                         MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1300
                                         (coe v0)))))
                             (coe
                                MAlonzo.Code.Class.IsSet.du_dom_548
                                (coe
                                   MAlonzo.Code.Axiom.Set.d_th_1470
                                   (coe
                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                                (coe
                                   MAlonzo.Code.Ledger.Conway.Transaction.d_vkSigs_3188
                                   (coe
                                      MAlonzo.Code.Ledger.Conway.Transaction.d_wits_3210
                                      (coe v1)))))))
                  (coe
                     MAlonzo.Code.Ledger.Conway.Utxow.du_witsVKeyNeeded_2562 v0
                     (MAlonzo.Code.Ledger.Conway.Utxo.d_utxo_2306 (coe v2))
                     (MAlonzo.Code.Ledger.Conway.Transaction.d_body_3208 (coe v1))))
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
                                      MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1300
                                      (coe v0)))
                                (coe v3)
                                (coe
                                   MAlonzo.Code.Axiom.Set.du_map_398
                                   (MAlonzo.Code.Axiom.Set.d_th_1470
                                      (coe
                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                   (MAlonzo.Code.Interface.Hashable.d_hash_16
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Script.du_Hashable'45'Script_524
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Transaction.d_scriptStructure_1886
                                            (coe v0))))
                                   (MAlonzo.Code.Ledger.Conway.Transaction.d_scripts_3190
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Transaction.d_wits_3210
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
                                    MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1300 (coe v0))))
                           (coe
                              MAlonzo.Code.Ledger.Conway.Utxow.du_scriptsNeeded_2564 v0
                              (MAlonzo.Code.Ledger.Conway.Utxo.d_utxo_2306 (coe v2))
                              (MAlonzo.Code.Ledger.Conway.Transaction.d_body_3208 (coe v1)))
                           (coe
                              MAlonzo.Code.Axiom.Set.du_map_398
                              (MAlonzo.Code.Axiom.Set.d_th_1470
                                 (coe
                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                              (MAlonzo.Code.Interface.Hashable.d_hash_16
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Script.du_Hashable'45'Script_524
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Transaction.d_scriptStructure_1886
                                       (coe v0))))
                              (MAlonzo.Code.Ledger.Conway.Transaction.d_refScripts_3270
                                 (coe v0) (coe v1)
                                 (coe MAlonzo.Code.Ledger.Conway.Utxo.d_utxo_2306 (coe v2))))))
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
                                      MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1300
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
                                            MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1300
                                            (coe v0))))
                                   (coe
                                      MAlonzo.Code.Ledger.Conway.Utxow.du_scriptsNeeded_2564 v0
                                      (MAlonzo.Code.Ledger.Conway.Utxo.d_utxo_2306 (coe v2))
                                      (MAlonzo.Code.Ledger.Conway.Transaction.d_body_3208 (coe v1)))
                                   (coe
                                      MAlonzo.Code.Axiom.Set.du_map_398
                                      (MAlonzo.Code.Axiom.Set.d_th_1470
                                         (coe
                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                      (MAlonzo.Code.Interface.Hashable.d_hash_16
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Script.du_Hashable'45'Script_524
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Transaction.d_scriptStructure_1886
                                               (coe v0))))
                                      (MAlonzo.Code.Ledger.Conway.Transaction.d_refScripts_3270
                                         (coe v0) (coe v1)
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Utxo.d_utxo_2306
                                            (coe v2)))))))
                        (coe
                           MAlonzo.Code.Axiom.Set.du_map_398
                           (MAlonzo.Code.Axiom.Set.d_th_1470
                              (coe
                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                           (MAlonzo.Code.Interface.Hashable.d_hash_16
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Script.du_Hashable'45'Script_524
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Transaction.d_scriptStructure_1886
                                    (coe v0))))
                           (MAlonzo.Code.Ledger.Conway.Transaction.d_scripts_3190
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Transaction.d_wits_3210 (coe v1))))))
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
                                         MAlonzo.Code.Ledger.Conway.Script.d_Data'688'_192
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Script.d_ps_450
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Transaction.d_scriptStructure_1886
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
                                      MAlonzo.Code.Ledger.Conway.Transaction.d_txdats_3192
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Transaction.d_wits_3210
                                         (coe v1))))))
                        (coe
                           MAlonzo.Code.Ledger.Conway.Utxo.du_getInputHashes_2204 (coe v0)
                           (coe v1)
                           (coe MAlonzo.Code.Ledger.Conway.Utxo.d_utxo_2306 (coe v2))))
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
                                            MAlonzo.Code.Ledger.Conway.Script.d_Data'688'_192
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Script.d_ps_450
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Transaction.d_scriptStructure_1886
                                                  (coe v0))))))
                                   (coe v3)
                                   (coe
                                      MAlonzo.Code.Axiom.Set.du__'8746'__680
                                      (coe
                                         MAlonzo.Code.Axiom.Set.d_th_1470
                                         (coe
                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Utxo.du_getInputHashes_2204
                                         (coe v0) (coe v1)
                                         (coe MAlonzo.Code.Ledger.Conway.Utxo.d_utxo_2306 (coe v2)))
                                      (coe
                                         MAlonzo.Code.Axiom.Set.du__'8746'__680
                                         (coe
                                            MAlonzo.Code.Axiom.Set.d_th_1470
                                            (coe
                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Utxo.du_getDataHashes_2200
                                            (coe
                                               MAlonzo.Code.Class.IsSet.du_range_550
                                               (coe
                                                  MAlonzo.Code.Axiom.Set.d_th_1470
                                                  (coe
                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                               (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Transaction.d_txouts_3052
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Transaction.d_body_3208
                                                     (coe v1)))))
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Utxo.du_getDataHashes_2200
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
                                                        (MAlonzo.Code.Ledger.Conway.Transaction.d_DecEq'45'TxId_1254
                                                           (coe v0))
                                                        (MAlonzo.Code.Ledger.Conway.Transaction.d_DecEq'45'Ix_1252
                                                           (coe v0))))
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Utxo.d_utxo_2306
                                                     (coe v2))
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Transaction.d_refInputs_3050
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Transaction.d_body_3208
                                                        (coe v1))))))))))
                           (coe
                              MAlonzo.Code.Class.IsSet.du_dom_548
                              (coe
                                 MAlonzo.Code.Axiom.Set.d_th_1470
                                 (coe
                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                              (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Transaction.d_txdats_3192
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Transaction.d_wits_3210 (coe v1)))))
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
                                         MAlonzo.Code.Ledger.Conway.Script.d_DecEq'45'Language_216
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Script.d_ps_450
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Transaction.d_scriptStructure_1886
                                               (coe v0))))
                                      (coe v3)
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Utxow.du_allowedLanguages_2426
                                         (coe v0) (coe v1)
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Utxo.d_utxo_2306 (coe v2)))))
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Utxow.du_languages_2410 (coe v0)
                                 (coe v1)
                                 (coe MAlonzo.Code.Ledger.Conway.Utxo.d_utxo_2306 (coe v2))))
                           (coe
                              MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                              (coe
                                 MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'THash_24
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Transaction.d_adHashingScheme_1256
                                       (coe v0))))
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Transaction.d_txADhash_3072
                                 (coe MAlonzo.Code.Ledger.Conway.Transaction.d_body_3208 (coe v1)))
                              (coe
                                 MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                 MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6
                                 MAlonzo.Code.Agda.Primitive.d_lzero_20 erased
                                 MAlonzo.Code.Agda.Primitive.d_lzero_20 erased
                                 (MAlonzo.Code.Interface.Hashable.d_hash_16
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Crypto.d_T'45'Hashable_30
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Transaction.d_adHashingScheme_1256
                                          (coe v0))))
                                 (MAlonzo.Code.Ledger.Conway.Transaction.d_txAD_3214
                                    (coe v1)))))))))))
-- Ledger.Conway.Conformance.Utxow..generalizedField-tx
d_'46'generalizedField'45'tx_8855 ::
  T_GeneralizeTel_8863 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3198
d_'46'generalizedField'45'tx_8855 v0
  = case coe v0 of
      C_mkGeneralizeTel_8865 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxow..generalizedField-s
d_'46'generalizedField'45's_8857 ::
  T_GeneralizeTel_8863 ->
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2296
d_'46'generalizedField'45's_8857 v0
  = case coe v0 of
      C_mkGeneralizeTel_8865 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxow..generalizedField-Γ
d_'46'generalizedField'45'Γ_8859 ::
  T_GeneralizeTel_8863 ->
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOEnv_2278
d_'46'generalizedField'45'Γ_8859 v0
  = case coe v0 of
      C_mkGeneralizeTel_8865 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxow..generalizedField-s'
d_'46'generalizedField'45's''_8861 ::
  T_GeneralizeTel_8863 ->
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2296
d_'46'generalizedField'45's''_8861 v0
  = case coe v0 of
      C_mkGeneralizeTel_8865 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxow.GeneralizeTel
d_GeneralizeTel_8863 a0 a1 = ()
data T_GeneralizeTel_8863
  = C_mkGeneralizeTel_8865 MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3198
                           MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2296
                           MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOEnv_2278
                           MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2296
