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
import qualified MAlonzo.Code.Class.Decidable.Core
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
import qualified MAlonzo.Code.Ledger.Conway.Specification.Script.Base
import qualified MAlonzo.Code.Ledger.Conway.Specification.Script.ScriptPurpose
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
d_Hashable'45'Script_384 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'Script_384 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_Hashable'45'Script_404
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2048
         (coe v0))
-- _.Tx
d_Tx_612 a0 = ()
-- _.isKeyHashObj
d_isKeyHashObj_732 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe AgdaAny
d_isKeyHashObj_732 ~v0 = du_isKeyHashObj_732
du_isKeyHashObj_732 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe AgdaAny
du_isKeyHashObj_732
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_isKeyHashObj_46
-- _.isScriptObj
d_isScriptObj_752 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe AgdaAny
d_isScriptObj_752 ~v0 = du_isScriptObj_752
du_isScriptObj_752 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe AgdaAny
du_isScriptObj_752
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_isScriptObj_68
-- _.isSigned
d_isSigned_756 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny -> AgdaAny -> AgdaAny -> ()
d_isSigned_756 = erased
-- _.refScripts
d_refScripts_806 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3614 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_refScripts_806 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_refScripts_3694
      (coe v0)
-- _.toP1Script
d_toP1Script_822 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
d_toP1Script_822 ~v0 = du_toP1Script_822
du_toP1Script_822 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
du_toP1Script_822
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_toP1Script_418
-- _.txscripts
d_txscripts_836 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3614 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_txscripts_836 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txscripts_3742
      (coe v0)
-- _.validP1Script
d_validP1Script_846 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> ()
d_validP1Script_846 = erased
-- _.PParams.costmdls
d_costmdls_1426 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_costmdls_1426 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_costmdls_428
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2048
         (coe v0))
-- _.Tx.body
d_body_1926 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3614 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3434
d_body_1926 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3626
      (coe v0)
-- _.Tx.isValid
d_isValid_1928 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3614 ->
  Bool
d_isValid_1928 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_isValid_3632
      (coe v0)
-- _.Tx.txAD
d_txAD_1930 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3614 ->
  Maybe AgdaAny
d_txAD_1930 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txAD_3634
      (coe v0)
-- _.Tx.txsize
d_txsize_1932 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3614 ->
  Integer
d_txsize_1932 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txsize_3630
      (coe v0)
-- _.Tx.wits
d_wits_1934 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3614 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3592
d_wits_1934 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3628
      (coe v0)
-- Ledger.Conway.Conformance.Utxow._._⊢_⇀⦇_,UTXO⦈_
d__'8866'_'8640''10631'_'44'UTXO'10632'__2022 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Utxow._.UTxOEnv
d_UTxOEnv_2038 a0 a1 = ()
-- Ledger.Conway.Conformance.Utxow._.UTxOState
d_UTxOState_2042 a0 a1 = ()
-- Ledger.Conway.Conformance.Utxow._.UTxOEnv.pparams
d_pparams_2078 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2480 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286
d_pparams_2078 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2490
      (coe v0)
-- Ledger.Conway.Conformance.Utxow._.UTxOEnv.slot
d_slot_2080 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2480 ->
  AgdaAny
d_slot_2080 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_slot_2488 (coe v0)
-- Ledger.Conway.Conformance.Utxow._.UTxOEnv.treasury
d_treasury_2082 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2480 ->
  Integer
d_treasury_2082 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_treasury_2492
      (coe v0)
-- Ledger.Conway.Conformance.Utxow._.UTxOState.deposits
d_deposits_2086 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2496 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_2086 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_deposits_2510
      (coe v0)
-- Ledger.Conway.Conformance.Utxow._.UTxOState.donations
d_donations_2088 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2496 ->
  Integer
d_donations_2088 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_donations_2512
      (coe v0)
-- Ledger.Conway.Conformance.Utxow._.UTxOState.fees
d_fees_2090 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2496 ->
  Integer
d_fees_2090 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_fees_2508 (coe v0)
-- Ledger.Conway.Conformance.Utxow._.UTxOState.utxo
d_utxo_2092 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2496 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2092 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2506 (coe v0)
-- Ledger.Conway.Conformance.Utxow._.credentialToP2Script
d_credentialToP2Script_2098 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2502 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3614 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe AgdaAny
d_credentialToP2Script_2098 v0 ~v1
  = du_credentialToP2Script_2098 v0
du_credentialToP2Script_2098 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3614 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe AgdaAny
du_credentialToP2Script_2098 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_credentialToP2Script_2886
      (coe v0)
-- Ledger.Conway.Conformance.Utxow._.credsNeeded
d_credsNeeded_2100 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2502 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3434 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_credsNeeded_2100 v0 ~v1 = du_credsNeeded_2100 v0
du_credsNeeded_2100 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3434 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_credsNeeded_2100 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_credsNeeded_2814
      (coe v0)
-- Ledger.Conway.Conformance.Utxow._.rdptr
d_rdptr_2108 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2502 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3434 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.ScriptPurpose.T_ScriptPurpose_2416 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rdptr_2108 v0 v1
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.d_rdptr_2560
      (coe v0) (coe v1)
-- Ledger.Conway.Conformance.Utxow._.txOutToDataHash
d_txOutToDataHash_2112 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2502 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe AgdaAny
d_txOutToDataHash_2112 ~v0 ~v1 = du_txOutToDataHash_2112
du_txOutToDataHash_2112 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe AgdaAny
du_txOutToDataHash_2112
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_txOutToDataHash_2882
-- Ledger.Conway.Conformance.Utxow._.txOutToP2Script
d_txOutToP2Script_2114 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2502 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3614 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe AgdaAny
d_txOutToP2Script_2114 v0 ~v1 = du_txOutToP2Script_2114 v0
du_txOutToP2Script_2114 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3614 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe AgdaAny
du_txOutToP2Script_2114 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_txOutToP2Script_2898
      (coe v0)
-- Ledger.Conway.Conformance.Utxow.L._.Dec-HasDataHash
d_Dec'45'HasDataHash_2542 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2502 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'HasDataHash_2542 ~v0 ~v1 = du_Dec'45'HasDataHash_2542
du_Dec'45'HasDataHash_2542 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'HasDataHash_2542
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxow.du_Dec'45'HasDataHash_2690
-- Ledger.Conway.Conformance.Utxow.L._.Dec-HasInlineDatum
d_Dec'45'HasInlineDatum_2544 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2502 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'HasInlineDatum_2544 ~v0 ~v1
  = du_Dec'45'HasInlineDatum_2544
du_Dec'45'HasInlineDatum_2544 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'HasInlineDatum_2544
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxow.du_Dec'45'HasInlineDatum_2674
-- Ledger.Conway.Conformance.Utxow.L._.TxOutSpendable-PlutusV1
d_TxOutSpendable'45'PlutusV1_2566 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2502 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3614 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_TxOutSpendable'45'PlutusV1_2566 = erased
-- Ledger.Conway.Conformance.Utxow.L._.TxOutSpendable-PlutusV2
d_TxOutSpendable'45'PlutusV2_2568 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2502 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3614 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_TxOutSpendable'45'PlutusV2_2568 = erased
-- Ledger.Conway.Conformance.Utxow.L._.allowedLanguages
d_allowedLanguages_2576 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2502 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3614 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
d_allowedLanguages_2576 v0 ~v1 = du_allowedLanguages_2576 v0
du_allowedLanguages_2576 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3614 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
du_allowedLanguages_2576 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxow.du_allowedLanguages_2844
      (coe v0)
-- Ledger.Conway.Conformance.Utxow.L._.hashScriptIntegrity
d_hashScriptIntegrity_2582 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2502 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [AgdaAny] -> Maybe AgdaAny
d_hashScriptIntegrity_2582 v0 v1
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxow.d_hashScriptIntegrity_2900
      (coe v0) (coe v1)
-- Ledger.Conway.Conformance.Utxow.L._.languages
d_languages_2584 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2502 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3614 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny] -> [AgdaAny]
d_languages_2584 v0 ~v1 = du_languages_2584 v0
du_languages_2584 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3614 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny] -> [AgdaAny]
du_languages_2584 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxow.du_languages_2834
      (coe v0)
-- Ledger.Conway.Conformance.Utxow.L._.HasPParams-UTxOEnv
d_HasPParams'45'UTxOEnv_2634 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2502 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_436
d_HasPParams'45'UTxOEnv_2634 ~v0 ~v1
  = du_HasPParams'45'UTxOEnv_2634
du_HasPParams'45'UTxOEnv_2634 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_436
du_HasPParams'45'UTxOEnv_2634
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_HasPParams'45'UTxOEnv_2536
-- Ledger.Conway.Conformance.Utxow._⊢_⇀⦇_,UTXOW⦈_
d__'8866'_'8640''10631'_'44'UTXOW'10632'__2802 a0 a1 a2 a3 a4 a5
  = ()
newtype T__'8866'_'8640''10631'_'44'UTXOW'10632'__2802
  = C_UTXOW'45'inductive_2926 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Utxow._.txAD
d_txAD_2816 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2502 ->
  T_GeneralizeTel_12081 -> Maybe AgdaAny
d_txAD_2816 ~v0 ~v1 v2 = du_txAD_2816 v2
du_txAD_2816 :: T_GeneralizeTel_12081 -> Maybe AgdaAny
du_txAD_2816 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txAD_3634
      (coe d_'46'generalizedField'45'tx_12073 (coe v0))
-- Ledger.Conway.Conformance.Utxow._.body
d_body_2818 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2502 ->
  T_GeneralizeTel_12081 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3434
d_body_2818 ~v0 ~v1 v2 = du_body_2818 v2
du_body_2818 ::
  T_GeneralizeTel_12081 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3434
du_body_2818 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3626
      (coe d_'46'generalizedField'45'tx_12073 (coe v0))
-- Ledger.Conway.Conformance.Utxow._.wits
d_wits_2822 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2502 ->
  T_GeneralizeTel_12081 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3592
d_wits_2822 ~v0 ~v1 v2 = du_wits_2822 v2
du_wits_2822 ::
  T_GeneralizeTel_12081 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3592
du_wits_2822 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3628
      (coe d_'46'generalizedField'45'tx_12073 (coe v0))
-- Ledger.Conway.Conformance.Utxow._.refInputs
d_refInputs_2832 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2502 ->
  T_GeneralizeTel_12081 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_2832 ~v0 ~v1 v2 = du_refInputs_2832 v2
du_refInputs_2832 ::
  T_GeneralizeTel_12081 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_refInputs_2832 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_refInputs_3474
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3626
         (coe d_'46'generalizedField'45'tx_12073 (coe v0)))
-- Ledger.Conway.Conformance.Utxow._.reqSignerHashes
d_reqSignerHashes_2834 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2502 ->
  T_GeneralizeTel_12081 -> [AgdaAny]
d_reqSignerHashes_2834 ~v0 ~v1 v2 = du_reqSignerHashes_2834 v2
du_reqSignerHashes_2834 :: T_GeneralizeTel_12081 -> [AgdaAny]
du_reqSignerHashes_2834 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_reqSignerHashes_3504
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3626
         (coe d_'46'generalizedField'45'tx_12073 (coe v0)))
-- Ledger.Conway.Conformance.Utxow._.scriptIntegrityHash
d_scriptIntegrityHash_2836 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2502 ->
  T_GeneralizeTel_12081 -> Maybe AgdaAny
d_scriptIntegrityHash_2836 ~v0 ~v1 v2
  = du_scriptIntegrityHash_2836 v2
du_scriptIntegrityHash_2836 ::
  T_GeneralizeTel_12081 -> Maybe AgdaAny
du_scriptIntegrityHash_2836 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptIntegrityHash_3506
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3626
         (coe d_'46'generalizedField'45'tx_12073 (coe v0)))
-- Ledger.Conway.Conformance.Utxow._.txADhash
d_txADhash_2838 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2502 ->
  T_GeneralizeTel_12081 -> Maybe AgdaAny
d_txADhash_2838 ~v0 ~v1 v2 = du_txADhash_2838 v2
du_txADhash_2838 :: T_GeneralizeTel_12081 -> Maybe AgdaAny
du_txADhash_2838 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txADhash_3490
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3626
         (coe d_'46'generalizedField'45'tx_12073 (coe v0)))
-- Ledger.Conway.Conformance.Utxow._.txId
d_txId_2850 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2502 ->
  T_GeneralizeTel_12081 -> AgdaAny
d_txId_2850 ~v0 ~v1 v2 = du_txId_2850 v2
du_txId_2850 :: T_GeneralizeTel_12081 -> AgdaAny
du_txId_2850 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txId_3480
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3626
         (coe d_'46'generalizedField'45'tx_12073 (coe v0)))
-- Ledger.Conway.Conformance.Utxow._.txIns
d_txIns_2852 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2502 ->
  T_GeneralizeTel_12081 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txIns_2852 ~v0 ~v1 v2 = du_txIns_2852 v2
du_txIns_2852 ::
  T_GeneralizeTel_12081 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_txIns_2852 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txIns_3472
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3626
         (coe d_'46'generalizedField'45'tx_12073 (coe v0)))
-- Ledger.Conway.Conformance.Utxow._.txOuts
d_txOuts_2856 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2502 ->
  T_GeneralizeTel_12081 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txOuts_2856 ~v0 ~v1 v2 = du_txOuts_2856 v2
du_txOuts_2856 ::
  T_GeneralizeTel_12081 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txOuts_2856 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txOuts_3478
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3626
         (coe d_'46'generalizedField'45'tx_12073 (coe v0)))
-- Ledger.Conway.Conformance.Utxow._.txVldt
d_txVldt_2858 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2502 ->
  T_GeneralizeTel_12081 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txVldt_2858 ~v0 ~v1 v2 = du_txVldt_2858 v2
du_txVldt_2858 ::
  T_GeneralizeTel_12081 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txVldt_2858 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txVldt_3488
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3626
         (coe d_'46'generalizedField'45'tx_12073 (coe v0)))
-- Ledger.Conway.Conformance.Utxow._.scripts
d_scripts_2864 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2502 ->
  T_GeneralizeTel_12081 -> [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_scripts_2864 ~v0 ~v1 v2 = du_scripts_2864 v2
du_scripts_2864 ::
  T_GeneralizeTel_12081 -> [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_scripts_2864 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scripts_3604
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3628
         (coe d_'46'generalizedField'45'tx_12073 (coe v0)))
-- Ledger.Conway.Conformance.Utxow._.txdats
d_txdats_2868 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2502 ->
  T_GeneralizeTel_12081 -> [AgdaAny]
d_txdats_2868 ~v0 ~v1 v2 = du_txdats_2868 v2
du_txdats_2868 :: T_GeneralizeTel_12081 -> [AgdaAny]
du_txdats_2868 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txdats_3606
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3628
         (coe d_'46'generalizedField'45'tx_12073 (coe v0)))
-- Ledger.Conway.Conformance.Utxow._.txrdmrs
d_txrdmrs_2870 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2502 ->
  T_GeneralizeTel_12081 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txrdmrs_2870 ~v0 ~v1 v2 = du_txrdmrs_2870 v2
du_txrdmrs_2870 ::
  T_GeneralizeTel_12081 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txrdmrs_2870 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txrdmrs_3608
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3628
         (coe d_'46'generalizedField'45'tx_12073 (coe v0)))
-- Ledger.Conway.Conformance.Utxow._.vkSigs
d_vkSigs_2872 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2502 ->
  T_GeneralizeTel_12081 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_vkSigs_2872 ~v0 ~v1 v2 = du_vkSigs_2872 v2
du_vkSigs_2872 ::
  T_GeneralizeTel_12081 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_vkSigs_2872 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_vkSigs_3602
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3628
         (coe d_'46'generalizedField'45'tx_12073 (coe v0)))
-- Ledger.Conway.Conformance.Utxow._.utxo
d_utxo_2882 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2502 ->
  T_GeneralizeTel_12081 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2882 ~v0 ~v1 v2 = du_utxo_2882 v2
du_utxo_2882 ::
  T_GeneralizeTel_12081 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxo_2882 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2506
      (coe d_'46'generalizedField'45's_12075 (coe v0))
-- Ledger.Conway.Conformance.Utxow.UTXOW-inductive-premises
d_UTXOW'45'inductive'45'premises_2960 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2502 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3614 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2496 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2480 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTXOW'45'inductive'45'premises_2960 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased
      (coe
         MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
         (coe
            MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
            (coe
               (\ v5 ->
                  coe
                    MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Dec'45'isSigned_120
                    (MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_178
                       (coe
                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1400
                          (coe v0)))
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v5))
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txidBytes_2650
                       v0
                       (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txId_3480
                          (coe
                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3626
                             (coe v2))))
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v5))))
            (coe
               MAlonzo.Code.Axiom.Set.Map.du__'738'_570
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_vkSigs_3602
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3628
                     (coe v2)))))
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
            (coe
               MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
               (coe
                  (\ v5 ->
                     coe
                       MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_12
                       (coe
                          MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1720
                          (coe
                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                          (coe
                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                             (coe
                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1400
                                (coe v0)))
                          (coe
                             MAlonzo.Code.Interface.TypeClasses.Hashable.d_hash_18
                             (MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Hashable'45'P1Script_122
                                (coe
                                   MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_p1s_306
                                   (coe
                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2048
                                      (coe v0))))
                             v5)
                          (coe
                             MAlonzo.Code.Axiom.Set.du_mapPartial_604
                             (MAlonzo.Code.Axiom.Set.d_th_1516
                                (coe
                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                             (\ v6 ->
                                coe
                                  MAlonzo.Code.Ledger.Core.Specification.Address.du_isScriptObj_68
                                  (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v6)))
                             (coe
                                MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_credsNeeded_2814
                                (coe v0)
                                (coe
                                   MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2506
                                   (coe v3))
                                (coe
                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3626
                                   (coe v2)))))
                       (coe
                          MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Dec'45'validP1Script_120
                          (MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_p1s_306
                             (coe
                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2048
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
                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1400
                                         (coe v0)))))
                             (coe
                                MAlonzo.Code.Class.IsSet.du_dom_586
                                (coe
                                   MAlonzo.Code.Axiom.Set.d_th_1516
                                   (coe
                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                (coe
                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_vkSigs_3602
                                   (coe
                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3628
                                      (coe v2)))))
                          (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txVldt_3488
                             (coe
                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3626
                                (coe v2)))
                          v5)))
               (coe
                  MAlonzo.Code.Axiom.Set.du_mapPartial_604
                  (MAlonzo.Code.Axiom.Set.d_th_1516
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_toP1Script_418)
                  (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txscripts_3742
                     (coe v0) (coe v2)
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2506
                        (coe v3)))))
            (coe
               MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
               (coe
                  MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                  (coe
                     (\ v5 ->
                        coe
                          MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1720
                          (coe
                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                          (coe
                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                             (coe
                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                (coe
                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1400
                                   (coe v0))))
                          (coe v5)
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
                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1400
                                         (coe v0)))))
                             (coe
                                MAlonzo.Code.Class.IsSet.du_dom_586
                                (coe
                                   MAlonzo.Code.Axiom.Set.d_th_1516
                                   (coe
                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                (coe
                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_vkSigs_3602
                                   (coe
                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3628
                                      (coe v2)))))))
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
                        (\ v5 ->
                           coe
                             MAlonzo.Code.Ledger.Core.Specification.Address.du_isKeyHashObj_46
                             (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v5)))
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_credsNeeded_2814
                           (coe v0)
                           (coe
                              MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2506 (coe v3))
                           (coe
                              MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3626
                              (coe v2))))
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_reqSignerHashes_3504
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3626
                           (coe v2)))))
               (coe
                  MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                  (coe
                     MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                     (coe
                        MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                        (coe
                           (\ v5 ->
                              coe
                                MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1720
                                (coe
                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                (coe
                                   MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                   (coe
                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1400
                                      (coe v0)))
                                (coe v5)
                                (coe
                                   MAlonzo.Code.Axiom.Set.du_map_426
                                   (MAlonzo.Code.Axiom.Set.d_th_1516
                                      (coe
                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                   (MAlonzo.Code.Interface.TypeClasses.Hashable.d_hash_18
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_Hashable'45'Script_404
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2048
                                            (coe v0))))
                                   (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scripts_3604
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3628
                                         (coe v2))))))
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
                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1400
                                    (coe v0))))
                           (coe
                              MAlonzo.Code.Axiom.Set.du_mapPartial_604
                              (MAlonzo.Code.Axiom.Set.d_th_1516
                                 (coe
                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                              (\ v5 ->
                                 coe
                                   MAlonzo.Code.Ledger.Core.Specification.Address.du_isScriptObj_68
                                   (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v5)))
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_credsNeeded_2814
                                 (coe v0)
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2506
                                    (coe v3))
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3626
                                    (coe v2))))
                           (coe
                              MAlonzo.Code.Axiom.Set.du_map_426
                              (MAlonzo.Code.Axiom.Set.d_th_1516
                                 (coe
                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                              (MAlonzo.Code.Interface.TypeClasses.Hashable.d_hash_18
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_Hashable'45'Script_404
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2048
                                       (coe v0))))
                              (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_refScripts_3694
                                 (coe v0) (coe v2)
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2506
                                    (coe v3))))))
                     (coe
                        MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                        (coe
                           (\ v5 ->
                              coe
                                MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1720
                                (coe
                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                (coe
                                   MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                   (coe
                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1400
                                      (coe v0)))
                                (coe v5)
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
                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1400
                                            (coe v0))))
                                   (coe
                                      MAlonzo.Code.Axiom.Set.du_mapPartial_604
                                      (MAlonzo.Code.Axiom.Set.d_th_1516
                                         (coe
                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                      (\ v6 ->
                                         coe
                                           MAlonzo.Code.Ledger.Core.Specification.Address.du_isScriptObj_68
                                           (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v6)))
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_credsNeeded_2814
                                         (coe v0)
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2506
                                            (coe v3))
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3626
                                            (coe v2))))
                                   (coe
                                      MAlonzo.Code.Axiom.Set.du_map_426
                                      (MAlonzo.Code.Axiom.Set.d_th_1516
                                         (coe
                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                      (MAlonzo.Code.Interface.TypeClasses.Hashable.d_hash_18
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_Hashable'45'Script_404
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2048
                                               (coe v0))))
                                      (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_refScripts_3694
                                         (coe v0) (coe v2)
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2506
                                            (coe v3)))))))
                        (coe
                           MAlonzo.Code.Axiom.Set.du_map_426
                           (MAlonzo.Code.Axiom.Set.d_th_1516
                              (coe
                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                           (MAlonzo.Code.Interface.TypeClasses.Hashable.d_hash_18
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_Hashable'45'Script_404
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2048
                                    (coe v0))))
                           (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scripts_3604
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3628
                                 (coe v2))))))
                  (coe
                     MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                     (coe
                        MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                        (coe
                           (\ v5 ->
                              coe
                                MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1720
                                (coe
                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                (coe
                                   MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                   (coe
                                      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_204
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2048
                                               (coe v0))))))
                                (coe v5)
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
                                               MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_204
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2048
                                                     (coe v0)))))))
                                   (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txdats_3606
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3628
                                         (coe v2))))))
                        (coe
                           MAlonzo.Code.Axiom.Set.du_mapPartial_604
                           (MAlonzo.Code.Axiom.Set.d_th_1516
                              (coe
                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                           (\ v5 ->
                              coe
                                MAlonzo.Code.Class.ToBool.du_if_then_else__38
                                (coe MAlonzo.Code.Class.ToBool.du_ToBool'45'Maybe_100)
                                (coe
                                   MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_txOutToP2Script_2898
                                   (coe v0)
                                   (coe
                                      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2506
                                      (coe v3))
                                   (coe v2) (coe v5))
                                (coe
                                   MAlonzo.Code.Level.C_lift_20
                                   (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                (coe
                                   (\ v6 ->
                                      coe
                                        MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_txOutToDataHash_2882
                                        (coe v5)))
                                (coe (\ v6 -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)))
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
                                       (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'TxId_1350
                                          (coe v0))
                                       (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Ix_1348
                                          (coe v0))))
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2506
                                    (coe v3))
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txIns_3472
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3626
                                       (coe v2)))))))
                     (coe
                        MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                        (coe
                           MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
                           (coe
                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                           (coe
                              (\ v5 ->
                                 coe
                                   MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1720
                                   (coe
                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                   (coe
                                      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                      (coe
                                         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_204
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2048
                                                  (coe v0))))))
                                   (coe v5)
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
                                         (\ v6 ->
                                            coe
                                              MAlonzo.Code.Class.ToBool.du_if_then_else__38
                                              (coe MAlonzo.Code.Class.ToBool.du_ToBool'45'Maybe_100)
                                              (coe
                                                 MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_txOutToP2Script_2898
                                                 (coe v0)
                                                 (coe
                                                    MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2506
                                                    (coe v3))
                                                 (coe v2) (coe v6))
                                              (coe
                                                 MAlonzo.Code.Level.C_lift_20
                                                 (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                              (coe
                                                 (\ v7 ->
                                                    coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_txOutToDataHash_2882
                                                      (coe v6)))
                                              (coe
                                                 (\ v7 ->
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
                                                     (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'TxId_1350
                                                        (coe v0))
                                                     (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Ix_1348
                                                        (coe v0))))
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2506
                                                  (coe v3))
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txIns_3472
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3626
                                                     (coe v2))))))
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
                                               MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_txOutToDataHash_2882)
                                            (coe
                                               MAlonzo.Code.Class.IsSet.du_range_588
                                               (coe
                                                  MAlonzo.Code.Axiom.Set.d_th_1516
                                                  (coe
                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                               (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txOuts_3478
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3626
                                                     (coe v2)))))
                                         (coe
                                            MAlonzo.Code.Axiom.Set.du_mapPartial_604
                                            (MAlonzo.Code.Axiom.Set.d_th_1516
                                               (coe
                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_txOutToDataHash_2882)
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
                                                        (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'TxId_1350
                                                           (coe v0))
                                                        (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Ix_1348
                                                           (coe v0))))
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2506
                                                     (coe v3))
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_refInputs_3474
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3626
                                                        (coe v2))))))))))
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
                                          MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_204
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2048
                                                (coe v0)))))))
                              (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txdats_3606
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3628
                                    (coe v2)))))
                        (coe
                           MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                           (coe
                              MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                              (coe
                                 MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
                                 (coe
                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                 (coe
                                    (\ v5 ->
                                       coe
                                         MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1720
                                         (coe
                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                         (coe
                                            MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased
                                            () erased
                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Tag_22
                                            (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Ix_1348
                                               (coe v0)))
                                         (coe v5)
                                         (coe
                                            MAlonzo.Code.Axiom.Set.du_mapPartial_604
                                            (MAlonzo.Code.Axiom.Set.d_th_1516
                                               (coe
                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                            (\ v6 ->
                                               coe
                                                 MAlonzo.Code.Class.ToBool.du_if_then_else__38
                                                 (coe
                                                    MAlonzo.Code.Class.ToBool.du_ToBool'45'Maybe_100)
                                                 (coe
                                                    MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_credentialToP2Script_2886
                                                    (coe v0)
                                                    (coe
                                                       MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2506
                                                       (coe v3))
                                                    (coe v2)
                                                    (coe
                                                       MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                       (coe v6)))
                                                 (coe
                                                    MAlonzo.Code.Level.C_lift_20
                                                    (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                 (coe
                                                    (\ v7 ->
                                                       MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.d_rdptr_2560
                                                         (coe v0) (coe v1)
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3626
                                                            (coe v2))
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                            (coe v6))))
                                                 (coe
                                                    (\ v7 ->
                                                       coe
                                                         MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)))
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_credsNeeded_2814
                                               (coe v0)
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2506
                                                  (coe v3))
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3626
                                                  (coe v2))))))
                                 (coe
                                    MAlonzo.Code.Class.IsSet.du_dom_586
                                    (coe
                                       MAlonzo.Code.Axiom.Set.d_th_1516
                                       (coe
                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                    (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txrdmrs_3608
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3628
                                          (coe v2)))))
                              (coe
                                 MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
                                 (coe
                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                 (coe
                                    (\ v5 ->
                                       coe
                                         MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1720
                                         (coe
                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                         (coe
                                            MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased
                                            () erased
                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Tag_22
                                            (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Ix_1348
                                               (coe v0)))
                                         (coe v5)
                                         (coe
                                            MAlonzo.Code.Class.IsSet.du_dom_586
                                            (coe
                                               MAlonzo.Code.Axiom.Set.d_th_1516
                                               (coe
                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                            (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txrdmrs_3608
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3628
                                                  (coe v2))))))
                                 (coe
                                    MAlonzo.Code.Axiom.Set.du_mapPartial_604
                                    (MAlonzo.Code.Axiom.Set.d_th_1516
                                       (coe
                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                    (\ v5 ->
                                       coe
                                         MAlonzo.Code.Class.ToBool.du_if_then_else__38
                                         (coe MAlonzo.Code.Class.ToBool.du_ToBool'45'Maybe_100)
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_credentialToP2Script_2886
                                            (coe v0)
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2506
                                               (coe v3))
                                            (coe v2)
                                            (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v5)))
                                         (coe
                                            MAlonzo.Code.Level.C_lift_20
                                            (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                         (coe
                                            (\ v6 ->
                                               MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.d_rdptr_2560
                                                 (coe v0) (coe v1)
                                                 (coe
                                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3626
                                                    (coe v2))
                                                 (coe
                                                    MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                    (coe v5))))
                                         (coe
                                            (\ v6 ->
                                               coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)))
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_credsNeeded_2814
                                       (coe v0)
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2506
                                          (coe v3))
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3626
                                          (coe v2))))))
                           (coe
                              MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                              (coe
                                 MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
                                 (coe
                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                 (coe
                                    (\ v5 ->
                                       coe
                                         MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1720
                                         (coe
                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'Language_228
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2048
                                                  (coe v0))))
                                         (coe v5)
                                         (coe
                                            MAlonzo.Code.Axiom.Set.du__'8745'__732
                                            (coe
                                               MAlonzo.Code.Axiom.Set.d_th_1516
                                               (coe
                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                            (coe
                                               MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                               erased
                                               (MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'Language_228
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2048
                                                        (coe v0)))))
                                            (coe
                                               MAlonzo.Code.Class.IsSet.du_dom_586
                                               (coe
                                                  MAlonzo.Code.Axiom.Set.d_th_1516
                                                  (coe
                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                               (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Specification.PParams.du_costmdls_428
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2048
                                                     (coe v0))
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2490
                                                     (coe v4))))
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Specification.Utxow.du_allowedLanguages_2844
                                               (coe v0) (coe v2)
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2506
                                                  (coe v3))))))
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Utxow.du_languages_2834
                                    (coe v0) (coe v2)
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2506
                                       (coe v3))
                                    (coe
                                       MAlonzo.Code.Axiom.Set.du_mapPartial_604
                                       (MAlonzo.Code.Axiom.Set.d_th_1516
                                          (coe
                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                       (\ v5 ->
                                          coe
                                            MAlonzo.Code.Ledger.Core.Specification.Address.du_isScriptObj_68
                                            (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v5)))
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_credsNeeded_2814
                                          (coe v0)
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2506
                                             (coe v3))
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3626
                                             (coe v2))))))
                              (coe
                                 MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                                 (coe
                                    MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
                                    (coe
                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                    (coe
                                       (\ v5 ->
                                          coe
                                            MAlonzo.Code.Class.Decidable.Instances.du_Dec'45'MAll_30
                                            (coe
                                               (\ v6 ->
                                                  coe
                                                    MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_12
                                                    (coe
                                                       MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
                                                       (coe
                                                          MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'Language_228
                                                          (coe
                                                             MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
                                                             (coe
                                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2048
                                                                (coe v0))))
                                                       (coe
                                                          MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_language_276
                                                          (MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
                                                             (coe
                                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2048
                                                                (coe v0)))
                                                          v6)
                                                       (coe
                                                          MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_PlutusV1_218
                                                          (coe
                                                             MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
                                                             (coe
                                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2048
                                                                (coe v0)))))
                                                    (coe
                                                       MAlonzo.Code.Ledger.Conway.Specification.Utxow.du_Dec'45'HasDataHash_2690
                                                       (coe v5))))
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_txOutToP2Script_2898
                                               (coe v0)
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2506
                                                  (coe v3))
                                               (coe v2) (coe v5))))
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
                                                (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'TxId_1350
                                                   (coe v0))
                                                (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Ix_1348
                                                   (coe v0))))
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2506
                                             (coe v3))
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txIns_3472
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3626
                                                (coe v2))))))
                                 (coe
                                    MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                                    (coe
                                       MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
                                       (coe
                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                       (coe
                                          (\ v5 ->
                                             coe
                                               MAlonzo.Code.Class.Decidable.Instances.du_Dec'45'MAll_30
                                               (coe
                                                  (\ v6 ->
                                                     coe
                                                       MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_12
                                                       (coe
                                                          MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
                                                          (coe
                                                             MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'Language_228
                                                             (coe
                                                                MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2048
                                                                   (coe v0))))
                                                          (coe
                                                             MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_language_276
                                                             (MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2048
                                                                   (coe v0)))
                                                             v6)
                                                          (coe
                                                             MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_PlutusV2_220
                                                             (coe
                                                                MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2048
                                                                   (coe v0)))))
                                                       (coe
                                                          MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8846'_16
                                                          (coe
                                                             MAlonzo.Code.Ledger.Conway.Specification.Utxow.du_Dec'45'HasDataHash_2690
                                                             (coe v5))
                                                          (coe
                                                             MAlonzo.Code.Ledger.Conway.Specification.Utxow.du_Dec'45'HasInlineDatum_2674
                                                             (coe v5)))))
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_txOutToP2Script_2898
                                                  (coe v0)
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2506
                                                     (coe v3))
                                                  (coe v2) (coe v5))))
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
                                                   (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'TxId_1350
                                                      (coe v0))
                                                   (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Ix_1348
                                                      (coe v0))))
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2506
                                                (coe v3))
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txIns_3472
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3626
                                                   (coe v2))))))
                                    (coe
                                       MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                                       (coe
                                          MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
                                          (coe
                                             MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                                             (coe
                                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_adHashingScheme_1352
                                                   (coe v0))))
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txADhash_3490
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3626
                                                (coe v2)))
                                          (coe
                                             MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                             MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6
                                             MAlonzo.Code.Agda.Primitive.d_lzero_20 erased
                                             MAlonzo.Code.Agda.Primitive.d_lzero_20 erased
                                             (MAlonzo.Code.Interface.TypeClasses.Hashable.d_hash_18
                                                (coe
                                                   MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_adHashingScheme_1352
                                                      (coe v0))))
                                             (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txAD_3634
                                                (coe v2))))
                                       (coe
                                          MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
                                          (coe
                                             MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                                             (coe
                                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1400
                                                   (coe v0))))
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptIntegrityHash_3506
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3626
                                                (coe v2)))
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Utxow.d_hashScriptIntegrity_2900
                                             (coe v0) (coe v1)
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2490
                                                (coe v4))
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Utxow.du_languages_2834
                                                (coe v0) (coe v2)
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2506
                                                   (coe v3))
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.du_mapPartial_604
                                                   (MAlonzo.Code.Axiom.Set.d_th_1516
                                                      (coe
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                   (\ v5 ->
                                                      coe
                                                        MAlonzo.Code.Ledger.Core.Specification.Address.du_isScriptObj_68
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                           (coe v5)))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_credsNeeded_2814
                                                      (coe v0)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2506
                                                         (coe v3))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3626
                                                         (coe v2)))))
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txrdmrs_3608
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3628
                                                   (coe v2)))
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txdats_3606
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3628
                                                   (coe v2))))))))))))))))
-- Ledger.Conway.Conformance.Utxow..generalizedField-tx
d_'46'generalizedField'45'tx_12073 ::
  T_GeneralizeTel_12081 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3614
d_'46'generalizedField'45'tx_12073 v0
  = case coe v0 of
      C_mkGeneralizeTel_12083 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxow..generalizedField-s
d_'46'generalizedField'45's_12075 ::
  T_GeneralizeTel_12081 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2496
d_'46'generalizedField'45's_12075 v0
  = case coe v0 of
      C_mkGeneralizeTel_12083 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxow..generalizedField-Γ
d_'46'generalizedField'45'Γ_12077 ::
  T_GeneralizeTel_12081 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2480
d_'46'generalizedField'45'Γ_12077 v0
  = case coe v0 of
      C_mkGeneralizeTel_12083 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxow..generalizedField-s'
d_'46'generalizedField'45's''_12079 ::
  T_GeneralizeTel_12081 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2496
d_'46'generalizedField'45's''_12079 v0
  = case coe v0 of
      C_mkGeneralizeTel_12083 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxow.GeneralizeTel
d_GeneralizeTel_12081 a0 a1 = ()
data T_GeneralizeTel_12081
  = C_mkGeneralizeTel_12083 MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3614
                            MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2496
                            MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2480
                            MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2496
