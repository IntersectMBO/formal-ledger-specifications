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
import qualified MAlonzo.Code.Agda.Builtin.Maybe
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Builtin.Unit
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Axiom.Set
import qualified MAlonzo.Code.Axiom.Set.Map
import qualified MAlonzo.Code.Class.DecEq.Instances
import qualified MAlonzo.Code.Class.Decidable.Instances
import qualified MAlonzo.Code.Class.Functor.Core
import qualified MAlonzo.Code.Class.Functor.Instances
import qualified MAlonzo.Code.Class.IsSet
import qualified MAlonzo.Code.Class.ToBool
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Interface.TypeClasses.Hashable
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Utxo
import qualified MAlonzo.Code.Ledger.Conway.Specification.Abstract
import qualified MAlonzo.Code.Ledger.Conway.Specification.PParams
import qualified MAlonzo.Code.Ledger.Conway.Specification.Script.Validation
import qualified MAlonzo.Code.Ledger.Conway.Specification.Transaction
import qualified MAlonzo.Code.Ledger.Conway.Specification.Utxo
import qualified MAlonzo.Code.Ledger.Conway.Specification.Utxow
import qualified MAlonzo.Code.Ledger.Core.Specification.Address
import qualified MAlonzo.Code.Ledger.Core.Specification.Crypto
import qualified MAlonzo.Code.Ledger.Core.Specification.Script.Base
import qualified MAlonzo.Code.Ledger.Core.Specification.Transaction
import qualified MAlonzo.Code.Level
import qualified MAlonzo.Code.Prelude
import qualified MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory

-- _.Hashable-Script
d_Hashable'45'Script_306 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'Script_306 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Script.Base.du_Hashable'45'Script_402
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Transaction.d_scriptStructure_1904
         (coe v0))
-- _.isKeyHashObj
d_isKeyHashObj_622 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe AgdaAny
d_isKeyHashObj_622 ~v0 = du_isKeyHashObj_622
du_isKeyHashObj_622 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe AgdaAny
du_isKeyHashObj_622
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_isKeyHashObj_46
-- _.isScriptObj
d_isScriptObj_642 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe AgdaAny
d_isScriptObj_642 ~v0 = du_isScriptObj_642
du_isScriptObj_642 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe AgdaAny
du_isScriptObj_642
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_isScriptObj_56
-- _.isSigned
d_isSigned_646 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny -> AgdaAny -> AgdaAny -> ()
d_isSigned_646 = erased
-- _.toP1Script
d_toP1Script_710 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
d_toP1Script_710 ~v0 = du_toP1Script_710
du_toP1Script_710 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
du_toP1Script_710
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Script.Base.du_toP1Script_416
-- _.validP1Script
d_validP1Script_732 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> ()
d_validP1Script_732 = erased
-- Ledger.Conway.Conformance.Utxow._._⊢_⇀⦇_,UTXO⦈_
d__'8866'_'8640''10631'_'44'UTXO'10632'__1762 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Utxow._.UTxOEnv
d_UTxOEnv_1778 a0 a1 = ()
-- Ledger.Conway.Conformance.Utxow._.UTxOState
d_UTxOState_1782 a0 a1 = ()
-- Ledger.Conway.Conformance.Utxow._.UTxOEnv.pparams
d_pparams_1818 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2410 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276
d_pparams_1818 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2420
      (coe v0)
-- Ledger.Conway.Conformance.Utxow._.UTxOEnv.slot
d_slot_1820 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2410 ->
  AgdaAny
d_slot_1820 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_slot_2418 (coe v0)
-- Ledger.Conway.Conformance.Utxow._.UTxOEnv.treasury
d_treasury_1822 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2410 ->
  Integer
d_treasury_1822 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_treasury_2422
      (coe v0)
-- Ledger.Conway.Conformance.Utxow._.UTxOState.deposits
d_deposits_1826 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2426 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_1826 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_deposits_2440
      (coe v0)
-- Ledger.Conway.Conformance.Utxow._.UTxOState.donations
d_donations_1828 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2426 ->
  Integer
d_donations_1828 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_donations_2442
      (coe v0)
-- Ledger.Conway.Conformance.Utxow._.UTxOState.fees
d_fees_1830 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2426 ->
  Integer
d_fees_1830 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_fees_2438 (coe v0)
-- Ledger.Conway.Conformance.Utxow._.UTxOState.utxo
d_utxo_1832 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2426 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_1832 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2436 (coe v0)
-- Ledger.Conway.Conformance.Utxow._.credsNeeded
d_credsNeeded_2284 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2200 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2174 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_credsNeeded_2284 v0 ~v1 = du_credsNeeded_2284 v0
du_credsNeeded_2284 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2174 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_credsNeeded_2284 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_credsNeeded_2638
      (coe v0)
-- Ledger.Conway.Conformance.Utxow._.txOutToDataHash
d_txOutToDataHash_2296 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2200 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe AgdaAny
d_txOutToDataHash_2296 ~v0 ~v1 = du_txOutToDataHash_2296
du_txOutToDataHash_2296 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe AgdaAny
du_txOutToDataHash_2296
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_txOutToDataHash_2714
-- Ledger.Conway.Conformance.Utxow._.txOutToP2Script
d_txOutToP2Script_2298 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2200 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_2332 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe AgdaAny
d_txOutToP2Script_2298 v0 ~v1 = du_txOutToP2Script_2298 v0
du_txOutToP2Script_2298 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_2332 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe AgdaAny
du_txOutToP2Script_2298 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_txOutToP2Script_2718
      (coe v0)
-- Ledger.Conway.Conformance.Utxow._.Tx
d_Tx_2378 a0 a1 = ()
-- Ledger.Conway.Conformance.Utxow._.refScripts
d_refScripts_2392 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2200 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_2332 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_refScripts_2392 v0 ~v1 = du_refScripts_2392 v0
du_refScripts_2392 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_2332 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_refScripts_2392 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_refScripts_2372
      (coe v0)
-- Ledger.Conway.Conformance.Utxow._.txscripts
d_txscripts_2394 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2200 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_2332 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_txscripts_2394 v0 ~v1 = du_txscripts_2394 v0
du_txscripts_2394 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_2332 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_txscripts_2394 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_txscripts_2420
      (coe v0)
-- Ledger.Conway.Conformance.Utxow._.Tx.body
d_body_2414 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_2332 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2174
d_body_2414 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_2344
      (coe v0)
-- Ledger.Conway.Conformance.Utxow._.Tx.isValid
d_isValid_2416 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_2332 ->
  Bool
d_isValid_2416 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_isValid_2350
      (coe v0)
-- Ledger.Conway.Conformance.Utxow._.Tx.txAD
d_txAD_2418 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_2332 ->
  Maybe AgdaAny
d_txAD_2418 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txAD_2352
      (coe v0)
-- Ledger.Conway.Conformance.Utxow._.Tx.txsize
d_txsize_2420 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_2332 ->
  Integer
d_txsize_2420 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txsize_2348
      (coe v0)
-- Ledger.Conway.Conformance.Utxow._.Tx.wits
d_wits_2422 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_2332 ->
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TxWitnesses_3262
d_wits_2422 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_2346
      (coe v0)
-- Ledger.Conway.Conformance.Utxow.L._.allowedLanguages
d_allowedLanguages_2490 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2200 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_2332 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
d_allowedLanguages_2490 v0 ~v1 = du_allowedLanguages_2490 v0
du_allowedLanguages_2490 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_2332 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
du_allowedLanguages_2490 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxow.du_allowedLanguages_2694
      (coe v0)
-- Ledger.Conway.Conformance.Utxow.L._.languages
d_languages_2494 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2200 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_2332 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
d_languages_2494 v0 ~v1 = du_languages_2494 v0
du_languages_2494 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_2332 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
du_languages_2494 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxow.du_languages_2680
      (coe v0)
-- Ledger.Conway.Conformance.Utxow._⊢_⇀⦇_,UTXOW⦈_
d__'8866'_'8640''10631'_'44'UTXOW'10632'__2706 a0 a1 a2 a3 a4 a5
  = ()
newtype T__'8866'_'8640''10631'_'44'UTXOW'10632'__2706
  = C_UTXOW'45'inductive_2818 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Utxow._.txAD
d_txAD_2720 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2200 ->
  T_GeneralizeTel_10441 -> Maybe AgdaAny
d_txAD_2720 ~v0 ~v1 v2 = du_txAD_2720 v2
du_txAD_2720 :: T_GeneralizeTel_10441 -> Maybe AgdaAny
du_txAD_2720 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txAD_2352
      (coe d_'46'generalizedField'45'tx_10433 (coe v0))
-- Ledger.Conway.Conformance.Utxow._.body
d_body_2722 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2200 ->
  T_GeneralizeTel_10441 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2174
d_body_2722 ~v0 ~v1 v2 = du_body_2722 v2
du_body_2722 ::
  T_GeneralizeTel_10441 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2174
du_body_2722 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_2344
      (coe d_'46'generalizedField'45'tx_10433 (coe v0))
-- Ledger.Conway.Conformance.Utxow._.wits
d_wits_2726 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2200 ->
  T_GeneralizeTel_10441 ->
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TxWitnesses_3262
d_wits_2726 ~v0 ~v1 v2 = du_wits_2726 v2
du_wits_2726 ::
  T_GeneralizeTel_10441 ->
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TxWitnesses_3262
du_wits_2726 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_2346
      (coe d_'46'generalizedField'45'tx_10433 (coe v0))
-- Ledger.Conway.Conformance.Utxow._.refInputs
d_refInputs_2736 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2200 ->
  T_GeneralizeTel_10441 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_2736 ~v0 ~v1 v2 = du_refInputs_2736 v2
du_refInputs_2736 ::
  T_GeneralizeTel_10441 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_refInputs_2736 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_refInputs_2214
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_2344
         (coe d_'46'generalizedField'45'tx_10433 (coe v0)))
-- Ledger.Conway.Conformance.Utxow._.txADhash
d_txADhash_2742 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2200 ->
  T_GeneralizeTel_10441 -> Maybe AgdaAny
d_txADhash_2742 ~v0 ~v1 v2 = du_txADhash_2742 v2
du_txADhash_2742 :: T_GeneralizeTel_10441 -> Maybe AgdaAny
du_txADhash_2742 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txADhash_2230
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_2344
         (coe d_'46'generalizedField'45'tx_10433 (coe v0)))
-- Ledger.Conway.Conformance.Utxow._.txId
d_txId_2754 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2200 ->
  T_GeneralizeTel_10441 -> AgdaAny
d_txId_2754 ~v0 ~v1 v2 = du_txId_2754 v2
du_txId_2754 :: T_GeneralizeTel_10441 -> AgdaAny
du_txId_2754 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txId_2220
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_2344
         (coe d_'46'generalizedField'45'tx_10433 (coe v0)))
-- Ledger.Conway.Conformance.Utxow._.txIns
d_txIns_2756 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2200 ->
  T_GeneralizeTel_10441 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txIns_2756 ~v0 ~v1 v2 = du_txIns_2756 v2
du_txIns_2756 ::
  T_GeneralizeTel_10441 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_txIns_2756 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txIns_2212
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_2344
         (coe d_'46'generalizedField'45'tx_10433 (coe v0)))
-- Ledger.Conway.Conformance.Utxow._.txOuts
d_txOuts_2760 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2200 ->
  T_GeneralizeTel_10441 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txOuts_2760 ~v0 ~v1 v2 = du_txOuts_2760 v2
du_txOuts_2760 ::
  T_GeneralizeTel_10441 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txOuts_2760 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txOuts_2218
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_2344
         (coe d_'46'generalizedField'45'tx_10433 (coe v0)))
-- Ledger.Conway.Conformance.Utxow._.txVldt
d_txVldt_2762 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2200 ->
  T_GeneralizeTel_10441 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txVldt_2762 ~v0 ~v1 v2 = du_txVldt_2762 v2
du_txVldt_2762 ::
  T_GeneralizeTel_10441 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txVldt_2762 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txVldt_2228
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_2344
         (coe d_'46'generalizedField'45'tx_10433 (coe v0)))
-- Ledger.Conway.Conformance.Utxow._.scripts
d_scripts_2768 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2200 ->
  T_GeneralizeTel_10441 -> [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_scripts_2768 ~v0 ~v1 v2 = du_scripts_2768 v2
du_scripts_2768 ::
  T_GeneralizeTel_10441 -> [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_scripts_2768 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Transaction.d_scripts_3274
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_2346
         (coe d_'46'generalizedField'45'tx_10433 (coe v0)))
-- Ledger.Conway.Conformance.Utxow._.txdats
d_txdats_2772 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2200 ->
  T_GeneralizeTel_10441 -> [AgdaAny]
d_txdats_2772 ~v0 ~v1 v2 = du_txdats_2772 v2
du_txdats_2772 :: T_GeneralizeTel_10441 -> [AgdaAny]
du_txdats_2772 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Transaction.d_txdats_3276
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_2346
         (coe d_'46'generalizedField'45'tx_10433 (coe v0)))
-- Ledger.Conway.Conformance.Utxow._.vkSigs
d_vkSigs_2776 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2200 ->
  T_GeneralizeTel_10441 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_vkSigs_2776 ~v0 ~v1 v2 = du_vkSigs_2776 v2
du_vkSigs_2776 ::
  T_GeneralizeTel_10441 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_vkSigs_2776 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Transaction.d_vkSigs_3272
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_2346
         (coe d_'46'generalizedField'45'tx_10433 (coe v0)))
-- Ledger.Conway.Conformance.Utxow._.utxo
d_utxo_2786 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2200 ->
  T_GeneralizeTel_10441 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2786 ~v0 ~v1 v2 = du_utxo_2786 v2
du_utxo_2786 ::
  T_GeneralizeTel_10441 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxo_2786 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2436
      (coe d_'46'generalizedField'45's_10435 (coe v0))
-- Ledger.Conway.Conformance.Utxow.UTXOW-inductive-premises
d_UTXOW'45'inductive'45'premises_2844 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2200 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_2332 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2426 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTXOW'45'inductive'45'premises_2844 v0 ~v1 v2 v3
  = du_UTXOW'45'inductive'45'premises_2844 v0 v2 v3
du_UTXOW'45'inductive'45'premises_2844 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_2332 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2426 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_UTXOW'45'inductive'45'premises_2844 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased
      (coe
         MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
         (coe
            MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
            (coe
               (\ v3 ->
                  coe
                    MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Dec'45'isSigned_120
                    (MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_178
                       (coe
                          MAlonzo.Code.Ledger.Core.Specification.Transaction.d_cryptoStructure_1322
                          (coe v0)))
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3))
                    (coe
                       MAlonzo.Code.Ledger.Core.Specification.Transaction.d_txidBytes_2500
                       v0
                       (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txId_2220
                          (coe
                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_2344
                             (coe v1))))
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3))))
            (coe
               MAlonzo.Code.Axiom.Set.Map.du__'738'_570
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Transaction.d_vkSigs_3272
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_2346
                     (coe v1)))))
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
            (coe
               MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
               (coe
                  (\ v3 ->
                     coe
                       MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_12
                       (coe
                          MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1720
                          (coe
                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                          (coe
                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                             (coe
                                MAlonzo.Code.Ledger.Core.Specification.Transaction.d_cryptoStructure_1322
                                (coe v0)))
                          (coe
                             MAlonzo.Code.Interface.TypeClasses.Hashable.d_hash_18
                             (MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_Hashable'45'P1Script_122
                                (coe
                                   MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_p1s_306
                                   (coe
                                      MAlonzo.Code.Ledger.Core.Specification.Transaction.d_scriptStructure_1904
                                      (coe v0))))
                             v3)
                          (coe
                             MAlonzo.Code.Axiom.Set.du_mapPartial_604
                             (MAlonzo.Code.Axiom.Set.d_th_1516
                                (coe
                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                             (\ v4 ->
                                coe
                                  MAlonzo.Code.Ledger.Core.Specification.Address.du_isScriptObj_56
                                  (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v4)))
                             (coe
                                MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_credsNeeded_2638
                                (coe v0)
                                (coe
                                   MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2436
                                   (coe v2))
                                (coe
                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_2344
                                   (coe v1)))))
                       (coe
                          MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_Dec'45'validP1Script_120
                          (MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_p1s_306
                             (coe
                                MAlonzo.Code.Ledger.Core.Specification.Transaction.d_scriptStructure_1904
                                (coe v0)))
                          (coe
                             MAlonzo.Code.Axiom.Set.du_map_426
                             (MAlonzo.Code.Axiom.Set.d_th_1516
                                (coe
                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                             (MAlonzo.Code.Interface.TypeClasses.Hashable.d_hash_18
                                (coe
                                   MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
                                   (coe
                                      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                      (coe
                                         MAlonzo.Code.Ledger.Core.Specification.Transaction.d_cryptoStructure_1322
                                         (coe v0)))))
                             (coe
                                MAlonzo.Code.Class.IsSet.du_dom_586
                                (coe
                                   MAlonzo.Code.Axiom.Set.d_th_1516
                                   (coe
                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                (coe
                                   MAlonzo.Code.Ledger.Core.Specification.Transaction.d_vkSigs_3272
                                   (coe
                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_2346
                                      (coe v1)))))
                          (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txVldt_2228
                             (coe
                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_2344
                                (coe v1)))
                          v3)))
               (coe
                  MAlonzo.Code.Axiom.Set.du_mapPartial_604
                  (MAlonzo.Code.Axiom.Set.d_th_1516
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                  (coe
                     MAlonzo.Code.Ledger.Core.Specification.Script.Base.du_toP1Script_416)
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_txscripts_2420
                     (coe v0) (coe v1)
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2436
                        (coe v2)))))
            (coe
               MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
               (coe
                  MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                  (coe
                     (\ v3 ->
                        coe
                          MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1720
                          (coe
                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                          (coe
                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                             (coe
                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                (coe
                                   MAlonzo.Code.Ledger.Core.Specification.Transaction.d_cryptoStructure_1322
                                   (coe v0))))
                          (coe v3)
                          (coe
                             MAlonzo.Code.Axiom.Set.du_map_426
                             (MAlonzo.Code.Axiom.Set.d_th_1516
                                (coe
                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                             (MAlonzo.Code.Interface.TypeClasses.Hashable.d_hash_18
                                (coe
                                   MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
                                   (coe
                                      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                      (coe
                                         MAlonzo.Code.Ledger.Core.Specification.Transaction.d_cryptoStructure_1322
                                         (coe v0)))))
                             (coe
                                MAlonzo.Code.Class.IsSet.du_dom_586
                                (coe
                                   MAlonzo.Code.Axiom.Set.d_th_1516
                                   (coe
                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                (coe
                                   MAlonzo.Code.Ledger.Core.Specification.Transaction.d_vkSigs_3272
                                   (coe
                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_2346
                                      (coe v1)))))))
                  (coe
                     MAlonzo.Code.Axiom.Set.du_mapPartial_604
                     (MAlonzo.Code.Axiom.Set.d_th_1516
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                     (\ v3 ->
                        coe
                          MAlonzo.Code.Ledger.Core.Specification.Address.du_isKeyHashObj_46
                          (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3)))
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_credsNeeded_2638
                        (coe v0)
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2436 (coe v2))
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_2344
                           (coe v1)))))
               (coe
                  MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                  (coe
                     MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                     (coe
                        MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                        (coe
                           (\ v3 ->
                              coe
                                MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1720
                                (coe
                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                (coe
                                   MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                   (coe
                                      MAlonzo.Code.Ledger.Core.Specification.Transaction.d_cryptoStructure_1322
                                      (coe v0)))
                                (coe v3)
                                (coe
                                   MAlonzo.Code.Axiom.Set.du_map_426
                                   (MAlonzo.Code.Axiom.Set.d_th_1516
                                      (coe
                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                   (MAlonzo.Code.Interface.TypeClasses.Hashable.d_hash_18
                                      (coe
                                         MAlonzo.Code.Ledger.Core.Specification.Script.Base.du_Hashable'45'Script_402
                                         (coe
                                            MAlonzo.Code.Ledger.Core.Specification.Transaction.d_scriptStructure_1904
                                            (coe v0))))
                                   (MAlonzo.Code.Ledger.Core.Specification.Transaction.d_scripts_3274
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_2346
                                         (coe v1))))))
                        (coe
                           MAlonzo.Code.Axiom.Set.du__'65340'__758
                           (coe
                              MAlonzo.Code.Axiom.Set.d_th_1516
                              (coe
                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                           (coe
                              MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                              erased
                              (MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                 (coe
                                    MAlonzo.Code.Ledger.Core.Specification.Transaction.d_cryptoStructure_1322
                                    (coe v0))))
                           (coe
                              MAlonzo.Code.Axiom.Set.du_mapPartial_604
                              (MAlonzo.Code.Axiom.Set.d_th_1516
                                 (coe
                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                              (\ v3 ->
                                 coe
                                   MAlonzo.Code.Ledger.Core.Specification.Address.du_isScriptObj_56
                                   (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3)))
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_credsNeeded_2638
                                 (coe v0)
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2436
                                    (coe v2))
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_2344
                                    (coe v1))))
                           (coe
                              MAlonzo.Code.Axiom.Set.du_map_426
                              (MAlonzo.Code.Axiom.Set.d_th_1516
                                 (coe
                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                              (MAlonzo.Code.Interface.TypeClasses.Hashable.d_hash_18
                                 (coe
                                    MAlonzo.Code.Ledger.Core.Specification.Script.Base.du_Hashable'45'Script_402
                                    (coe
                                       MAlonzo.Code.Ledger.Core.Specification.Transaction.d_scriptStructure_1904
                                       (coe v0))))
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_refScripts_2372
                                 (coe v0) (coe v1)
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2436
                                    (coe v2))))))
                     (coe
                        MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                        (coe
                           (\ v3 ->
                              coe
                                MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1720
                                (coe
                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                (coe
                                   MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                   (coe
                                      MAlonzo.Code.Ledger.Core.Specification.Transaction.d_cryptoStructure_1322
                                      (coe v0)))
                                (coe v3)
                                (coe
                                   MAlonzo.Code.Axiom.Set.du__'65340'__758
                                   (coe
                                      MAlonzo.Code.Axiom.Set.d_th_1516
                                      (coe
                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                   (coe
                                      MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                      erased
                                      (MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                         (coe
                                            MAlonzo.Code.Ledger.Core.Specification.Transaction.d_cryptoStructure_1322
                                            (coe v0))))
                                   (coe
                                      MAlonzo.Code.Axiom.Set.du_mapPartial_604
                                      (MAlonzo.Code.Axiom.Set.d_th_1516
                                         (coe
                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                      (\ v4 ->
                                         coe
                                           MAlonzo.Code.Ledger.Core.Specification.Address.du_isScriptObj_56
                                           (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v4)))
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_credsNeeded_2638
                                         (coe v0)
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2436
                                            (coe v2))
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_2344
                                            (coe v1))))
                                   (coe
                                      MAlonzo.Code.Axiom.Set.du_map_426
                                      (MAlonzo.Code.Axiom.Set.d_th_1516
                                         (coe
                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                      (MAlonzo.Code.Interface.TypeClasses.Hashable.d_hash_18
                                         (coe
                                            MAlonzo.Code.Ledger.Core.Specification.Script.Base.du_Hashable'45'Script_402
                                            (coe
                                               MAlonzo.Code.Ledger.Core.Specification.Transaction.d_scriptStructure_1904
                                               (coe v0))))
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_refScripts_2372
                                         (coe v0) (coe v1)
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2436
                                            (coe v2)))))))
                        (coe
                           MAlonzo.Code.Axiom.Set.du_map_426
                           (MAlonzo.Code.Axiom.Set.d_th_1516
                              (coe
                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                           (MAlonzo.Code.Interface.TypeClasses.Hashable.d_hash_18
                              (coe
                                 MAlonzo.Code.Ledger.Core.Specification.Script.Base.du_Hashable'45'Script_402
                                 (coe
                                    MAlonzo.Code.Ledger.Core.Specification.Transaction.d_scriptStructure_1904
                                    (coe v0))))
                           (MAlonzo.Code.Ledger.Core.Specification.Transaction.d_scripts_3274
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_2346
                                 (coe v1))))))
                  (coe
                     MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                     (coe
                        MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                        (coe
                           (\ v3 ->
                              coe
                                MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1720
                                (coe
                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                (coe
                                   MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                   (coe
                                      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
                                      (coe
                                         MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_Data'688'_204
                                         (coe
                                            MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_ps_328
                                            (coe
                                               MAlonzo.Code.Ledger.Core.Specification.Transaction.d_scriptStructure_1904
                                               (coe v0))))))
                                (coe v3)
                                (coe
                                   MAlonzo.Code.Axiom.Set.du_map_426
                                   (MAlonzo.Code.Axiom.Set.d_th_1516
                                      (coe
                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                   (MAlonzo.Code.Interface.TypeClasses.Hashable.d_hash_18
                                      (coe
                                         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
                                         (coe
                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
                                            (coe
                                               MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_Data'688'_204
                                               (coe
                                                  MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_ps_328
                                                  (coe
                                                     MAlonzo.Code.Ledger.Core.Specification.Transaction.d_scriptStructure_1904
                                                     (coe v0)))))))
                                   (MAlonzo.Code.Ledger.Core.Specification.Transaction.d_txdats_3276
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_2346
                                         (coe v1))))))
                        (coe
                           MAlonzo.Code.Axiom.Set.du_mapPartial_604
                           (MAlonzo.Code.Axiom.Set.d_th_1516
                              (coe
                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                           (\ v3 ->
                              coe
                                MAlonzo.Code.Class.ToBool.du_if_then_else__38
                                (coe MAlonzo.Code.Class.ToBool.du_ToBool'45'Maybe_100)
                                (coe
                                   MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_txOutToP2Script_2718
                                   (coe v0)
                                   (coe
                                      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2436
                                      (coe v2))
                                   (coe v1) (coe v3))
                                (coe
                                   MAlonzo.Code.Level.C_lift_20
                                   (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                (coe
                                   (\ v4 ->
                                      coe
                                        MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_txOutToDataHash_2714
                                        (coe v3)))
                                (coe (\ v4 -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)))
                           (coe
                              MAlonzo.Code.Class.IsSet.du_range_588
                              (coe
                                 MAlonzo.Code.Axiom.Set.d_th_1516
                                 (coe
                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                              (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                              (coe
                                 MAlonzo.Code.Axiom.Set.Map.du__'8739'__1626
                                 (coe
                                    MAlonzo.Code.Axiom.Set.d_th_1516
                                    (coe
                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                 (coe
                                    MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                    erased
                                    (coe
                                       MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                       MAlonzo.Code.Agda.Primitive.d_lzero_20 erased
                                       MAlonzo.Code.Agda.Primitive.d_lzero_20 erased
                                       (MAlonzo.Code.Ledger.Core.Specification.Transaction.d_DecEq'45'TxId_1272
                                          (coe v0))
                                       (MAlonzo.Code.Ledger.Core.Specification.Transaction.d_DecEq'45'Ix_1270
                                          (coe v0))))
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2436
                                    (coe v2))
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txIns_2212
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_2344
                                       (coe v1)))))))
                     (coe
                        MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                        (coe
                           MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
                           (coe
                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                           (coe
                              (\ v3 ->
                                 coe
                                   MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1720
                                   (coe
                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                   (coe
                                      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                      (coe
                                         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
                                         (coe
                                            MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_Data'688'_204
                                            (coe
                                               MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_ps_328
                                               (coe
                                                  MAlonzo.Code.Ledger.Core.Specification.Transaction.d_scriptStructure_1904
                                                  (coe v0))))))
                                   (coe v3)
                                   (coe
                                      MAlonzo.Code.Axiom.Set.du__'8746'__708
                                      (coe
                                         MAlonzo.Code.Axiom.Set.d_th_1516
                                         (coe
                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                      (coe
                                         MAlonzo.Code.Axiom.Set.du_mapPartial_604
                                         (MAlonzo.Code.Axiom.Set.d_th_1516
                                            (coe
                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                         (\ v4 ->
                                            coe
                                              MAlonzo.Code.Class.ToBool.du_if_then_else__38
                                              (coe MAlonzo.Code.Class.ToBool.du_ToBool'45'Maybe_100)
                                              (coe
                                                 MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_txOutToP2Script_2718
                                                 (coe v0)
                                                 (coe
                                                    MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2436
                                                    (coe v2))
                                                 (coe v1) (coe v4))
                                              (coe
                                                 MAlonzo.Code.Level.C_lift_20
                                                 (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                              (coe
                                                 (\ v5 ->
                                                    coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_txOutToDataHash_2714
                                                      (coe v4)))
                                              (coe
                                                 (\ v5 ->
                                                    coe
                                                      MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)))
                                         (coe
                                            MAlonzo.Code.Class.IsSet.du_range_588
                                            (coe
                                               MAlonzo.Code.Axiom.Set.d_th_1516
                                               (coe
                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                            (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                            (coe
                                               MAlonzo.Code.Axiom.Set.Map.du__'8739'__1626
                                               (coe
                                                  MAlonzo.Code.Axiom.Set.d_th_1516
                                                  (coe
                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                               (coe
                                                  MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                  erased
                                                  (coe
                                                     MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                     MAlonzo.Code.Agda.Primitive.d_lzero_20 erased
                                                     MAlonzo.Code.Agda.Primitive.d_lzero_20 erased
                                                     (MAlonzo.Code.Ledger.Core.Specification.Transaction.d_DecEq'45'TxId_1272
                                                        (coe v0))
                                                     (MAlonzo.Code.Ledger.Core.Specification.Transaction.d_DecEq'45'Ix_1270
                                                        (coe v0))))
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2436
                                                  (coe v2))
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txIns_2212
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_2344
                                                     (coe v1))))))
                                      (coe
                                         MAlonzo.Code.Axiom.Set.du__'8746'__708
                                         (coe
                                            MAlonzo.Code.Axiom.Set.d_th_1516
                                            (coe
                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                         (coe
                                            MAlonzo.Code.Axiom.Set.du_mapPartial_604
                                            (MAlonzo.Code.Axiom.Set.d_th_1516
                                               (coe
                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_txOutToDataHash_2714)
                                            (coe
                                               MAlonzo.Code.Class.IsSet.du_range_588
                                               (coe
                                                  MAlonzo.Code.Axiom.Set.d_th_1516
                                                  (coe
                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                               (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txOuts_2218
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_2344
                                                     (coe v1)))))
                                         (coe
                                            MAlonzo.Code.Axiom.Set.du_mapPartial_604
                                            (MAlonzo.Code.Axiom.Set.d_th_1516
                                               (coe
                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_txOutToDataHash_2714)
                                            (coe
                                               MAlonzo.Code.Class.IsSet.du_range_588
                                               (coe
                                                  MAlonzo.Code.Axiom.Set.d_th_1516
                                                  (coe
                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                               (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                               (coe
                                                  MAlonzo.Code.Axiom.Set.Map.du__'8739'__1626
                                                  (coe
                                                     MAlonzo.Code.Axiom.Set.d_th_1516
                                                     (coe
                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                  (coe
                                                     MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                     erased
                                                     (coe
                                                        MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                        MAlonzo.Code.Agda.Primitive.d_lzero_20
                                                        erased
                                                        MAlonzo.Code.Agda.Primitive.d_lzero_20
                                                        erased
                                                        (MAlonzo.Code.Ledger.Core.Specification.Transaction.d_DecEq'45'TxId_1272
                                                           (coe v0))
                                                        (MAlonzo.Code.Ledger.Core.Specification.Transaction.d_DecEq'45'Ix_1270
                                                           (coe v0))))
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2436
                                                     (coe v2))
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_refInputs_2214
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_2344
                                                        (coe v1))))))))))
                           (coe
                              MAlonzo.Code.Axiom.Set.du_map_426
                              (MAlonzo.Code.Axiom.Set.d_th_1516
                                 (coe
                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                              (MAlonzo.Code.Interface.TypeClasses.Hashable.d_hash_18
                                 (coe
                                    MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
                                    (coe
                                       MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
                                       (coe
                                          MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_Data'688'_204
                                          (coe
                                             MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_ps_328
                                             (coe
                                                MAlonzo.Code.Ledger.Core.Specification.Transaction.d_scriptStructure_1904
                                                (coe v0)))))))
                              (MAlonzo.Code.Ledger.Core.Specification.Transaction.d_txdats_3276
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_2346
                                    (coe v1)))))
                        (coe
                           MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                           (coe
                              MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
                              (coe
                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                              (coe
                                 (\ v3 ->
                                    coe
                                      MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1720
                                      (coe
                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                      (coe
                                         MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_DecEq'45'Language_228
                                         (coe
                                            MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_ps_328
                                            (coe
                                               MAlonzo.Code.Ledger.Core.Specification.Transaction.d_scriptStructure_1904
                                               (coe v0))))
                                      (coe v3)
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Specification.Utxow.du_allowedLanguages_2694
                                         (coe v0) (coe v1)
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2436
                                            (coe v2)))))
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Specification.Utxow.du_languages_2680
                                 (coe v0) (coe v1)
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2436
                                    (coe v2))))
                           (coe
                              MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
                              (coe
                                 MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                                 (coe
                                    MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                    (coe
                                       MAlonzo.Code.Ledger.Core.Specification.Transaction.d_adHashingScheme_1274
                                       (coe v0))))
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txADhash_2230
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_2344
                                    (coe v1)))
                              (coe
                                 MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                 MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6
                                 MAlonzo.Code.Agda.Primitive.d_lzero_20 erased
                                 MAlonzo.Code.Agda.Primitive.d_lzero_20 erased
                                 (MAlonzo.Code.Interface.TypeClasses.Hashable.d_hash_18
                                    (coe
                                       MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
                                       (coe
                                          MAlonzo.Code.Ledger.Core.Specification.Transaction.d_adHashingScheme_1274
                                          (coe v0))))
                                 (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txAD_2352
                                    (coe v1)))))))))))
-- Ledger.Conway.Conformance.Utxow..generalizedField-tx
d_'46'generalizedField'45'tx_10433 ::
  T_GeneralizeTel_10441 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_2332
d_'46'generalizedField'45'tx_10433 v0
  = case coe v0 of
      C_mkGeneralizeTel_10443 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxow..generalizedField-s
d_'46'generalizedField'45's_10435 ::
  T_GeneralizeTel_10441 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2426
d_'46'generalizedField'45's_10435 v0
  = case coe v0 of
      C_mkGeneralizeTel_10443 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxow..generalizedField-Γ
d_'46'generalizedField'45'Γ_10437 ::
  T_GeneralizeTel_10441 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2410
d_'46'generalizedField'45'Γ_10437 v0
  = case coe v0 of
      C_mkGeneralizeTel_10443 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxow..generalizedField-s'
d_'46'generalizedField'45's''_10439 ::
  T_GeneralizeTel_10441 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2426
d_'46'generalizedField'45's''_10439 v0
  = case coe v0 of
      C_mkGeneralizeTel_10443 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxow.GeneralizeTel
d_GeneralizeTel_10441 a0 a1 = ()
data T_GeneralizeTel_10441
  = C_mkGeneralizeTel_10443 MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_2332
                            MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2426
                            MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2410
                            MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2426
