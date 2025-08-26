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
import qualified MAlonzo.Code.Interface.Hashable
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Utxo
import qualified MAlonzo.Code.Ledger.Conway.Specification.Abstract
import qualified MAlonzo.Code.Ledger.Conway.Specification.PParams
import qualified MAlonzo.Code.Ledger.Conway.Specification.Script.Base
import qualified MAlonzo.Code.Ledger.Conway.Specification.Script.Validation
import qualified MAlonzo.Code.Ledger.Conway.Specification.Transaction
import qualified MAlonzo.Code.Ledger.Conway.Specification.Utxo
import qualified MAlonzo.Code.Ledger.Conway.Specification.Utxow
import qualified MAlonzo.Code.Ledger.Core.Specification.Address
import qualified MAlonzo.Code.Ledger.Core.Specification.Crypto
import qualified MAlonzo.Code.Level
import qualified MAlonzo.Code.Prelude
import qualified MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory

-- _.Hashable-Script
d_Hashable'45'Script_220 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'Script_220 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_Hashable'45'Script_392
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1814
         (coe v0))
-- _.Tx
d_Tx_416 a0 = ()
-- _.isKeyHashObj
d_isKeyHashObj_526 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe AgdaAny
d_isKeyHashObj_526 ~v0 = du_isKeyHashObj_526
du_isKeyHashObj_526 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe AgdaAny
du_isKeyHashObj_526
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_isKeyHashObj_44
-- _.isScriptObj
d_isScriptObj_546 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe AgdaAny
d_isScriptObj_546 ~v0 = du_isScriptObj_546
du_isScriptObj_546 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe AgdaAny
du_isScriptObj_546
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_isScriptObj_54
-- _.isSigned
d_isSigned_550 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny -> AgdaAny -> AgdaAny -> ()
d_isSigned_550 = erased
-- _.refScripts
d_refScripts_602 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3140 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_refScripts_602 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_refScripts_3216
      (coe v0)
-- _.toP1Script
d_toP1Script_622 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
d_toP1Script_622 ~v0 = du_toP1Script_622
du_toP1Script_622 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
du_toP1Script_622
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_toP1Script_406
-- _.txscripts
d_txscripts_646 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3140 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_txscripts_646 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txscripts_3266
      (coe v0)
-- _.validP1Script
d_validP1Script_650 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> ()
d_validP1Script_650 = erased
-- _.Tx.body
d_body_1528 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3140 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2952
d_body_1528 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3152
      (coe v0)
-- _.Tx.isValid
d_isValid_1530 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3140 ->
  Bool
d_isValid_1530 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_isValid_3158
      (coe v0)
-- _.Tx.txAD
d_txAD_1532 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3140 ->
  Maybe AgdaAny
d_txAD_1532 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txAD_3160
      (coe v0)
-- _.Tx.txsize
d_txsize_1534 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3140 ->
  Integer
d_txsize_1534 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txsize_3156
      (coe v0)
-- _.Tx.wits
d_wits_1536 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3140 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3120
d_wits_1536 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3154
      (coe v0)
-- Ledger.Conway.Conformance.Utxow._._⊢_⇀⦇_,UTXO⦈_
d__'8866'_'8640''10631'_'44'UTXO'10632'__1626 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Utxow._.UTxOEnv
d_UTxOEnv_1642 a0 a1 = ()
-- Ledger.Conway.Conformance.Utxow._.UTxOState
d_UTxOState_1644 a0 a1 = ()
-- Ledger.Conway.Conformance.Utxow._.UTxOEnv.pparams
d_pparams_1678 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2048 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302
d_pparams_1678 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2058
      (coe v0)
-- Ledger.Conway.Conformance.Utxow._.UTxOEnv.slot
d_slot_1680 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2048 ->
  AgdaAny
d_slot_1680 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_slot_2056 (coe v0)
-- Ledger.Conway.Conformance.Utxow._.UTxOEnv.treasury
d_treasury_1682 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2048 ->
  Integer
d_treasury_1682 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_treasury_2060
      (coe v0)
-- Ledger.Conway.Conformance.Utxow._.UTxOState.deposits
d_deposits_1686 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2066 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_1686 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_deposits_2080
      (coe v0)
-- Ledger.Conway.Conformance.Utxow._.UTxOState.donations
d_donations_1688 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2066 ->
  Integer
d_donations_1688 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_donations_2082
      (coe v0)
-- Ledger.Conway.Conformance.Utxow._.UTxOState.fees
d_fees_1690 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2066 ->
  Integer
d_fees_1690 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_fees_2078 (coe v0)
-- Ledger.Conway.Conformance.Utxow._.UTxOState.utxo
d_utxo_1692 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2066 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_1692 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2076 (coe v0)
-- Ledger.Conway.Conformance.Utxow._.credsNeeded
d_credsNeeded_1714 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1962 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2952 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_credsNeeded_1714 v0 ~v1 = du_credsNeeded_1714 v0
du_credsNeeded_1714 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2952 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_credsNeeded_1714 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_credsNeeded_2282
      (coe v0)
-- Ledger.Conway.Conformance.Utxow._.txOutToDataHash
d_txOutToDataHash_1726 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1962 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe AgdaAny
d_txOutToDataHash_1726 ~v0 ~v1 = du_txOutToDataHash_1726
du_txOutToDataHash_1726 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe AgdaAny
du_txOutToDataHash_1726
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_txOutToDataHash_2358
-- Ledger.Conway.Conformance.Utxow._.txOutToP2Script
d_txOutToP2Script_1728 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1962 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3140 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe AgdaAny
d_txOutToP2Script_1728 v0 ~v1 = du_txOutToP2Script_1728 v0
du_txOutToP2Script_1728 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3140 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe AgdaAny
du_txOutToP2Script_1728 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_txOutToP2Script_2362
      (coe v0)
-- Ledger.Conway.Conformance.Utxow.L._.allowedLanguages
d_allowedLanguages_2124 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1962 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3140 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
d_allowedLanguages_2124 v0 ~v1 = du_allowedLanguages_2124 v0
du_allowedLanguages_2124 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3140 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
du_allowedLanguages_2124 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxow.du_allowedLanguages_2338
      (coe v0)
-- Ledger.Conway.Conformance.Utxow.L._.languages
d_languages_2128 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1962 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3140 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
d_languages_2128 v0 ~v1 = du_languages_2128 v0
du_languages_2128 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3140 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
du_languages_2128 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxow.du_languages_2324
      (coe v0)
-- Ledger.Conway.Conformance.Utxow._⊢_⇀⦇_,UTXOW⦈_
d__'8866'_'8640''10631'_'44'UTXOW'10632'__2332 a0 a1 a2 a3 a4 a5
  = ()
newtype T__'8866'_'8640''10631'_'44'UTXOW'10632'__2332
  = C_UTXOW'45'inductive_2446 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Utxow._.txAD
d_txAD_2346 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1962 ->
  T_GeneralizeTel_9449 -> Maybe AgdaAny
d_txAD_2346 ~v0 ~v1 v2 = du_txAD_2346 v2
du_txAD_2346 :: T_GeneralizeTel_9449 -> Maybe AgdaAny
du_txAD_2346 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txAD_3160
      (coe d_'46'generalizedField'45'tx_9441 (coe v0))
-- Ledger.Conway.Conformance.Utxow._.body
d_body_2348 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1962 ->
  T_GeneralizeTel_9449 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2952
d_body_2348 ~v0 ~v1 v2 = du_body_2348 v2
du_body_2348 ::
  T_GeneralizeTel_9449 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2952
du_body_2348 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3152
      (coe d_'46'generalizedField'45'tx_9441 (coe v0))
-- Ledger.Conway.Conformance.Utxow._.wits
d_wits_2352 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1962 ->
  T_GeneralizeTel_9449 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3120
d_wits_2352 ~v0 ~v1 v2 = du_wits_2352 v2
du_wits_2352 ::
  T_GeneralizeTel_9449 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3120
du_wits_2352 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3154
      (coe d_'46'generalizedField'45'tx_9441 (coe v0))
-- Ledger.Conway.Conformance.Utxow._.refInputs
d_refInputs_2362 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1962 ->
  T_GeneralizeTel_9449 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_2362 ~v0 ~v1 v2 = du_refInputs_2362 v2
du_refInputs_2362 ::
  T_GeneralizeTel_9449 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_refInputs_2362 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_refInputs_2994
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3152
         (coe d_'46'generalizedField'45'tx_9441 (coe v0)))
-- Ledger.Conway.Conformance.Utxow._.txADhash
d_txADhash_2368 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1962 ->
  T_GeneralizeTel_9449 -> Maybe AgdaAny
d_txADhash_2368 ~v0 ~v1 v2 = du_txADhash_2368 v2
du_txADhash_2368 :: T_GeneralizeTel_9449 -> Maybe AgdaAny
du_txADhash_2368 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txADhash_3016
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3152
         (coe d_'46'generalizedField'45'tx_9441 (coe v0)))
-- Ledger.Conway.Conformance.Utxow._.txid
d_txid_2378 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1962 ->
  T_GeneralizeTel_9449 -> AgdaAny
d_txid_2378 ~v0 ~v1 v2 = du_txid_2378 v2
du_txid_2378 :: T_GeneralizeTel_9449 -> AgdaAny
du_txid_2378 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txid_3022
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3152
         (coe d_'46'generalizedField'45'tx_9441 (coe v0)))
-- Ledger.Conway.Conformance.Utxow._.txins
d_txins_2380 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1962 ->
  T_GeneralizeTel_9449 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txins_2380 ~v0 ~v1 v2 = du_txins_2380 v2
du_txins_2380 ::
  T_GeneralizeTel_9449 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_txins_2380 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txins_2992
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3152
         (coe d_'46'generalizedField'45'tx_9441 (coe v0)))
-- Ledger.Conway.Conformance.Utxow._.txouts
d_txouts_2382 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1962 ->
  T_GeneralizeTel_9449 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txouts_2382 ~v0 ~v1 v2 = du_txouts_2382 v2
du_txouts_2382 ::
  T_GeneralizeTel_9449 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txouts_2382 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txouts_2996
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3152
         (coe d_'46'generalizedField'45'tx_9441 (coe v0)))
-- Ledger.Conway.Conformance.Utxow._.txvldt
d_txvldt_2388 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1962 ->
  T_GeneralizeTel_9449 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txvldt_2388 ~v0 ~v1 v2 = du_txvldt_2388 v2
du_txvldt_2388 ::
  T_GeneralizeTel_9449 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txvldt_2388 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txvldt_3002
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3152
         (coe d_'46'generalizedField'45'tx_9441 (coe v0)))
-- Ledger.Conway.Conformance.Utxow._.scripts
d_scripts_2396 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1962 ->
  T_GeneralizeTel_9449 -> [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_scripts_2396 ~v0 ~v1 v2 = du_scripts_2396 v2
du_scripts_2396 ::
  T_GeneralizeTel_9449 -> [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_scripts_2396 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scripts_3132
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3154
         (coe d_'46'generalizedField'45'tx_9441 (coe v0)))
-- Ledger.Conway.Conformance.Utxow._.txdats
d_txdats_2400 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1962 ->
  T_GeneralizeTel_9449 -> [AgdaAny]
d_txdats_2400 ~v0 ~v1 v2 = du_txdats_2400 v2
du_txdats_2400 :: T_GeneralizeTel_9449 -> [AgdaAny]
du_txdats_2400 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txdats_3134
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3154
         (coe d_'46'generalizedField'45'tx_9441 (coe v0)))
-- Ledger.Conway.Conformance.Utxow._.vkSigs
d_vkSigs_2404 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1962 ->
  T_GeneralizeTel_9449 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_vkSigs_2404 ~v0 ~v1 v2 = du_vkSigs_2404 v2
du_vkSigs_2404 ::
  T_GeneralizeTel_9449 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_vkSigs_2404 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_vkSigs_3130
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3154
         (coe d_'46'generalizedField'45'tx_9441 (coe v0)))
-- Ledger.Conway.Conformance.Utxow._.utxo
d_utxo_2414 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1962 ->
  T_GeneralizeTel_9449 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2414 ~v0 ~v1 v2 = du_utxo_2414 v2
du_utxo_2414 ::
  T_GeneralizeTel_9449 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxo_2414 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2076
      (coe d_'46'generalizedField'45's_9443 (coe v0))
-- Ledger.Conway.Conformance.Utxow.UTXOW-inductive-premises
d_UTXOW'45'inductive'45'premises_2472 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1962 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3140 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2066 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTXOW'45'inductive'45'premises_2472 v0 ~v1 v2 v3
  = du_UTXOW'45'inductive'45'premises_2472 v0 v2 v3
du_UTXOW'45'inductive'45'premises_2472 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3140 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2066 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_UTXOW'45'inductive'45'premises_2472 v0 v1 v2
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
                    MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Dec'45'isSigned_120
                    (MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_176
                       (coe
                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1274
                          (coe v0)))
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3))
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txidBytes_2412
                       v0
                       (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txid_3022
                          (coe
                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3152
                             (coe v1))))
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3))))
            (coe
               MAlonzo.Code.Axiom.Set.Map.du__'738'_550
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_vkSigs_3130
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3154
                     (coe v1)))))
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
                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_208
                             (coe
                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1274
                                (coe v0)))
                          (coe
                             MAlonzo.Code.Interface.Hashable.d_hash_16
                             (MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Hashable'45'P1Script_116
                                (coe
                                   MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_p1s_296
                                   (coe
                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1814
                                      (coe v0))))
                             v3)
                          (coe
                             MAlonzo.Code.Axiom.Set.du_mapPartial_576
                             (MAlonzo.Code.Axiom.Set.d_th_1470
                                (coe
                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                             (\ v4 ->
                                coe
                                  MAlonzo.Code.Ledger.Core.Specification.Address.du_isScriptObj_54
                                  (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v4)))
                             (coe
                                MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_credsNeeded_2282
                                (coe v0)
                                (coe
                                   MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2076
                                   (coe v2))
                                (coe
                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3152
                                   (coe v1)))))
                       (coe
                          MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Dec'45'validP1Script_114
                          (MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_p1s_296
                             (coe
                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1814
                                (coe v0)))
                          (coe
                             MAlonzo.Code.Axiom.Set.du_map_398
                             (MAlonzo.Code.Axiom.Set.d_th_1470
                                (coe
                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                             (MAlonzo.Code.Interface.Hashable.d_hash_16
                                (coe
                                   MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
                                   (coe
                                      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_204
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1274
                                         (coe v0)))))
                             (coe
                                MAlonzo.Code.Class.IsSet.du_dom_548
                                (coe
                                   MAlonzo.Code.Axiom.Set.d_th_1470
                                   (coe
                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                                (coe
                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_vkSigs_3130
                                   (coe
                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3154
                                      (coe v1)))))
                          (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txvldt_3002
                             (coe
                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3152
                                (coe v1)))
                          v3)))
               (coe
                  MAlonzo.Code.Axiom.Set.du_mapPartial_576
                  (MAlonzo.Code.Axiom.Set.d_th_1470
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_toP1Script_406)
                  (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txscripts_3266
                     (coe v0) (coe v1)
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2076
                        (coe v2)))))
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
                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                             (coe
                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_204
                                (coe
                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1274
                                   (coe v0))))
                          (coe v3)
                          (coe
                             MAlonzo.Code.Axiom.Set.du_map_398
                             (MAlonzo.Code.Axiom.Set.d_th_1470
                                (coe
                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                             (MAlonzo.Code.Interface.Hashable.d_hash_16
                                (coe
                                   MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
                                   (coe
                                      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_204
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1274
                                         (coe v0)))))
                             (coe
                                MAlonzo.Code.Class.IsSet.du_dom_548
                                (coe
                                   MAlonzo.Code.Axiom.Set.d_th_1470
                                   (coe
                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                                (coe
                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_vkSigs_3130
                                   (coe
                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3154
                                      (coe v1)))))))
                  (coe
                     MAlonzo.Code.Axiom.Set.du_mapPartial_576
                     (MAlonzo.Code.Axiom.Set.d_th_1470
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                     (\ v3 ->
                        coe
                          MAlonzo.Code.Ledger.Core.Specification.Address.du_isKeyHashObj_44
                          (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3)))
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_credsNeeded_2282
                        (coe v0)
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2076 (coe v2))
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3152
                           (coe v1)))))
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
                                   MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_208
                                   (coe
                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1274
                                      (coe v0)))
                                (coe v3)
                                (coe
                                   MAlonzo.Code.Axiom.Set.du_map_398
                                   (MAlonzo.Code.Axiom.Set.d_th_1470
                                      (coe
                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                   (MAlonzo.Code.Interface.Hashable.d_hash_16
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_Hashable'45'Script_392
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1814
                                            (coe v0))))
                                   (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scripts_3132
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3154
                                         (coe v1))))))
                        (let v3
                               = MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8 in
                         coe
                           (coe
                              MAlonzo.Code.Axiom.Set.du__'65340'__730
                              (coe MAlonzo.Code.Axiom.Set.d_th_1470 (coe v3))
                              (coe
                                 MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600
                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                 erased
                                 (MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_208
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1274
                                       (coe v0))))
                              (coe
                                 MAlonzo.Code.Axiom.Set.du_mapPartial_576
                                 (MAlonzo.Code.Axiom.Set.d_th_1470
                                    (coe
                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                 (\ v4 ->
                                    coe
                                      MAlonzo.Code.Ledger.Core.Specification.Address.du_isScriptObj_54
                                      (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v4)))
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_credsNeeded_2282
                                    (coe v0)
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2076
                                       (coe v2))
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3152
                                       (coe v1))))
                              (coe
                                 MAlonzo.Code.Axiom.Set.du_map_398
                                 (MAlonzo.Code.Axiom.Set.d_th_1470
                                    (coe
                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                 (MAlonzo.Code.Interface.Hashable.d_hash_16
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_Hashable'45'Script_392
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1814
                                          (coe v0))))
                                 (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_refScripts_3216
                                    (coe v0) (coe v1)
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2076
                                       (coe v2)))))))
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
                                   MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_208
                                   (coe
                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1274
                                      (coe v0)))
                                (coe v3)
                                (let v4
                                       = MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8 in
                                 coe
                                   (coe
                                      MAlonzo.Code.Axiom.Set.du__'65340'__730
                                      (coe MAlonzo.Code.Axiom.Set.d_th_1470 (coe v4))
                                      (coe
                                         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600
                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                         erased
                                         (MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_208
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1274
                                               (coe v0))))
                                      (coe
                                         MAlonzo.Code.Axiom.Set.du_mapPartial_576
                                         (MAlonzo.Code.Axiom.Set.d_th_1470
                                            (coe
                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                         (\ v5 ->
                                            coe
                                              MAlonzo.Code.Ledger.Core.Specification.Address.du_isScriptObj_54
                                              (coe
                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v5)))
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_credsNeeded_2282
                                            (coe v0)
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2076
                                               (coe v2))
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3152
                                               (coe v1))))
                                      (coe
                                         MAlonzo.Code.Axiom.Set.du_map_398
                                         (MAlonzo.Code.Axiom.Set.d_th_1470
                                            (coe
                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                         (MAlonzo.Code.Interface.Hashable.d_hash_16
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_Hashable'45'Script_392
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1814
                                                  (coe v0))))
                                         (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_refScripts_3216
                                            (coe v0) (coe v1)
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2076
                                               (coe v2))))))))
                        (coe
                           MAlonzo.Code.Axiom.Set.du_map_398
                           (MAlonzo.Code.Axiom.Set.d_th_1470
                              (coe
                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                           (MAlonzo.Code.Interface.Hashable.d_hash_16
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_Hashable'45'Script_392
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1814
                                    (coe v0))))
                           (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scripts_3132
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3154
                                 (coe v1))))))
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
                                   MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                   (coe
                                      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_196
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_318
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1814
                                               (coe v0))))))
                                (coe v3)
                                (coe
                                   MAlonzo.Code.Axiom.Set.du_map_398
                                   (MAlonzo.Code.Axiom.Set.d_th_1470
                                      (coe
                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                   (MAlonzo.Code.Interface.Hashable.d_hash_16
                                      (coe
                                         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
                                         (coe
                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_196
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_318
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1814
                                                     (coe v0)))))))
                                   (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txdats_3134
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3154
                                         (coe v1))))))
                        (coe
                           MAlonzo.Code.Axiom.Set.du_mapPartial_576
                           (MAlonzo.Code.Axiom.Set.d_th_1470
                              (coe
                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                           (\ v3 ->
                              coe
                                MAlonzo.Code.Class.ToBool.du_if_then_else__42
                                (coe MAlonzo.Code.Class.ToBool.du_ToBool'45'Maybe_102)
                                (coe
                                   MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_txOutToP2Script_2362
                                   (coe v0)
                                   (coe
                                      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2076
                                      (coe v2))
                                   (coe v1) (coe v3))
                                (coe
                                   MAlonzo.Code.Level.C_lift_20
                                   (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                (coe
                                   (\ v4 ->
                                      coe
                                        MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_txOutToDataHash_2358
                                        (coe v3)))
                                (coe (\ v4 -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)))
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
                                       MAlonzo.Code.Agda.Primitive.d_lzero_20 erased
                                       MAlonzo.Code.Agda.Primitive.d_lzero_20 erased
                                       (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'TxId_1228
                                          (coe v0))
                                       (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Ix_1226
                                          (coe v0))))
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2076
                                    (coe v2))
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txins_2992
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3152
                                       (coe v1)))))))
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
                                      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                      (coe
                                         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_196
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_318
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1814
                                                  (coe v0))))))
                                   (coe v3)
                                   (coe
                                      MAlonzo.Code.Axiom.Set.du__'8746'__680
                                      (coe
                                         MAlonzo.Code.Axiom.Set.d_th_1470
                                         (coe
                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                      (coe
                                         MAlonzo.Code.Axiom.Set.du_mapPartial_576
                                         (MAlonzo.Code.Axiom.Set.d_th_1470
                                            (coe
                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                         (\ v4 ->
                                            coe
                                              MAlonzo.Code.Class.ToBool.du_if_then_else__42
                                              (coe MAlonzo.Code.Class.ToBool.du_ToBool'45'Maybe_102)
                                              (coe
                                                 MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_txOutToP2Script_2362
                                                 (coe v0)
                                                 (coe
                                                    MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2076
                                                    (coe v2))
                                                 (coe v1) (coe v4))
                                              (coe
                                                 MAlonzo.Code.Level.C_lift_20
                                                 (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                              (coe
                                                 (\ v5 ->
                                                    coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_txOutToDataHash_2358
                                                      (coe v4)))
                                              (coe
                                                 (\ v5 ->
                                                    coe
                                                      MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)))
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
                                                     MAlonzo.Code.Agda.Primitive.d_lzero_20 erased
                                                     MAlonzo.Code.Agda.Primitive.d_lzero_20 erased
                                                     (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'TxId_1228
                                                        (coe v0))
                                                     (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Ix_1226
                                                        (coe v0))))
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2076
                                                  (coe v2))
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txins_2992
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3152
                                                     (coe v1))))))
                                      (coe
                                         MAlonzo.Code.Axiom.Set.du__'8746'__680
                                         (coe
                                            MAlonzo.Code.Axiom.Set.d_th_1470
                                            (coe
                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                         (coe
                                            MAlonzo.Code.Axiom.Set.du_mapPartial_576
                                            (MAlonzo.Code.Axiom.Set.d_th_1470
                                               (coe
                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_txOutToDataHash_2358)
                                            (coe
                                               MAlonzo.Code.Class.IsSet.du_range_550
                                               (coe
                                                  MAlonzo.Code.Axiom.Set.d_th_1470
                                                  (coe
                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                               (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txouts_2996
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3152
                                                     (coe v1)))))
                                         (coe
                                            MAlonzo.Code.Axiom.Set.du_mapPartial_576
                                            (MAlonzo.Code.Axiom.Set.d_th_1470
                                               (coe
                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_txOutToDataHash_2358)
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
                                                        (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'TxId_1228
                                                           (coe v0))
                                                        (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Ix_1226
                                                           (coe v0))))
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2076
                                                     (coe v2))
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_refInputs_2994
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3152
                                                        (coe v1))))))))))
                           (coe
                              MAlonzo.Code.Axiom.Set.du_map_398
                              (MAlonzo.Code.Axiom.Set.d_th_1470
                                 (coe
                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                              (MAlonzo.Code.Interface.Hashable.d_hash_16
                                 (coe
                                    MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
                                    (coe
                                       MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_196
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_318
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1814
                                                (coe v0)))))))
                              (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txdats_3134
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3154
                                    (coe v1)))))
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
                                         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'Language_220
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_318
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1814
                                               (coe v0))))
                                      (coe v3)
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Specification.Utxow.du_allowedLanguages_2338
                                         (coe v0) (coe v1)
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2076
                                            (coe v2)))))
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Specification.Utxow.du_languages_2324
                                 (coe v0) (coe v1)
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2076
                                    (coe v2))))
                           (coe
                              MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                              (coe
                                 MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                                 (coe
                                    MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_adHashingScheme_1230
                                       (coe v0))))
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txADhash_3016
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3152
                                    (coe v1)))
                              (coe
                                 MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                 MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6
                                 MAlonzo.Code.Agda.Primitive.d_lzero_20 erased
                                 MAlonzo.Code.Agda.Primitive.d_lzero_20 erased
                                 (MAlonzo.Code.Interface.Hashable.d_hash_16
                                    (coe
                                       MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_adHashingScheme_1230
                                          (coe v0))))
                                 (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txAD_3160
                                    (coe v1)))))))))))
-- Ledger.Conway.Conformance.Utxow..generalizedField-tx
d_'46'generalizedField'45'tx_9441 ::
  T_GeneralizeTel_9449 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3140
d_'46'generalizedField'45'tx_9441 v0
  = case coe v0 of
      C_mkGeneralizeTel_9451 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxow..generalizedField-s
d_'46'generalizedField'45's_9443 ::
  T_GeneralizeTel_9449 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2066
d_'46'generalizedField'45's_9443 v0
  = case coe v0 of
      C_mkGeneralizeTel_9451 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxow..generalizedField-Γ
d_'46'generalizedField'45'Γ_9445 ::
  T_GeneralizeTel_9449 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2048
d_'46'generalizedField'45'Γ_9445 v0
  = case coe v0 of
      C_mkGeneralizeTel_9451 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxow..generalizedField-s'
d_'46'generalizedField'45's''_9447 ::
  T_GeneralizeTel_9449 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2066
d_'46'generalizedField'45's''_9447 v0
  = case coe v0 of
      C_mkGeneralizeTel_9451 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxow.GeneralizeTel
d_GeneralizeTel_9449 a0 a1 = ()
data T_GeneralizeTel_9449
  = C_mkGeneralizeTel_9451 MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3140
                           MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2066
                           MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2048
                           MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2066
