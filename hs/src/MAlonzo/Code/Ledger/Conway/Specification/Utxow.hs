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

module MAlonzo.Code.Ledger.Conway.Specification.Utxow where

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
import qualified MAlonzo.Code.Agda.Builtin.Unit
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Axiom.Set
import qualified MAlonzo.Code.Axiom.Set.Map
import qualified MAlonzo.Code.Class.DecEq.Instances
import qualified MAlonzo.Code.Class.Decidable.Core
import qualified MAlonzo.Code.Class.Decidable.Instances
import qualified MAlonzo.Code.Class.Functor.Core
import qualified MAlonzo.Code.Class.Functor.Instances
import qualified MAlonzo.Code.Class.HasEmptySet
import qualified MAlonzo.Code.Class.IsSet
import qualified MAlonzo.Code.Class.ToBool
import qualified MAlonzo.Code.Data.Irrelevant
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Interface.TypeClasses.Hashable
import qualified MAlonzo.Code.Ledger.Conway.Specification.Abstract
import qualified MAlonzo.Code.Ledger.Conway.Specification.Certs
import qualified MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions
import qualified MAlonzo.Code.Ledger.Conway.Specification.PParams
import qualified MAlonzo.Code.Ledger.Conway.Specification.Script.Base
import qualified MAlonzo.Code.Ledger.Conway.Specification.Script.Validation
import qualified MAlonzo.Code.Ledger.Conway.Specification.Transaction
import qualified MAlonzo.Code.Ledger.Conway.Specification.Utxo
import qualified MAlonzo.Code.Ledger.Core.Specification.Address
import qualified MAlonzo.Code.Ledger.Core.Specification.Crypto
import qualified MAlonzo.Code.Level
import qualified MAlonzo.Code.Prelude
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects
import qualified MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory

-- _.Hashable-Script
d_Hashable'45'Script_354 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'Script_354 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_Hashable'45'Script_402
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1904
         (coe v0))
-- _.Language
d_Language_382 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Language_382 = erased
-- _.Script
d_Script_476 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Script_476 = erased
-- _.Tx
d_Tx_562 a0 = ()
-- _.TxBody
d_TxBody_566 a0 = ()
-- _.TxOut
d_TxOut_578 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_TxOut_578 = erased
-- _.UTxO
d_UTxO_586 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_UTxO_586 = erased
-- _.isBootstrapAddr
d_isBootstrapAddr_672 a0 a1 = ()
-- _.isBootstrapAddr?
d_isBootstrapAddr'63'_674 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isBootstrapAddr'63'_674 ~v0 = du_isBootstrapAddr'63'_674
du_isBootstrapAddr'63'_674 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_isBootstrapAddr'63'_674
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_isBootstrapAddr'63'_218
-- _.isKeyHashObj
d_isKeyHashObj_682 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe AgdaAny
d_isKeyHashObj_682 ~v0 = du_isKeyHashObj_682
du_isKeyHashObj_682 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe AgdaAny
du_isKeyHashObj_682
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_isKeyHashObj_46
-- _.isScriptObj
d_isScriptObj_702 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe AgdaAny
d_isScriptObj_702 ~v0 = du_isScriptObj_702
du_isScriptObj_702 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe AgdaAny
du_isScriptObj_702
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_isScriptObj_56
-- _.isSigned
d_isSigned_706 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny -> AgdaAny -> AgdaAny -> ()
d_isSigned_706 = erased
-- _.refScripts
d_refScripts_756 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3444 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_refScripts_756 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_refScripts_3524
      (coe v0)
-- _.toP1Script
d_toP1Script_774 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
d_toP1Script_774 ~v0 = du_toP1Script_774
du_toP1Script_774 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
du_toP1Script_774
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_toP1Script_416
-- _.txscripts
d_txscripts_788 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3444 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_txscripts_788 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txscripts_3572
      (coe v0)
-- _.validP1Script
d_validP1Script_798 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> ()
d_validP1Script_798 = erased
-- _.Tx.body
d_body_1812 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3444 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3264
d_body_1812 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3456
      (coe v0)
-- _.Tx.isValid
d_isValid_1814 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3444 ->
  Bool
d_isValid_1814 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_isValid_3462
      (coe v0)
-- _.Tx.txAD
d_txAD_1816 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3444 ->
  Maybe AgdaAny
d_txAD_1816 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txAD_3464
      (coe v0)
-- _.Tx.txsize
d_txsize_1818 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3444 ->
  Integer
d_txsize_1818 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txsize_3460
      (coe v0)
-- _.Tx.wits
d_wits_1820 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3444 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3422
d_wits_1820 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3458
      (coe v0)
-- _.TxBody.collateralInputs
d_collateralInputs_1824 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3264 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateralInputs_1824 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_collateralInputs_3306
      (coe v0)
-- _.TxBody.currentTreasury
d_currentTreasury_1826 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3264 ->
  Maybe Integer
d_currentTreasury_1826 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_currentTreasury_3330
      (coe v0)
-- _.TxBody.mint
d_mint_1828 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3264 ->
  AgdaAny
d_mint_1828 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_mint_3332
      (coe v0)
-- _.TxBody.refInputs
d_refInputs_1830 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3264 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_1830 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_refInputs_3304
      (coe v0)
-- _.TxBody.reqSignerHashes
d_reqSignerHashes_1832 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3264 ->
  [AgdaAny]
d_reqSignerHashes_1832 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_reqSignerHashes_3334
      (coe v0)
-- _.TxBody.scriptIntegrityHash
d_scriptIntegrityHash_1834 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3264 ->
  Maybe AgdaAny
d_scriptIntegrityHash_1834 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptIntegrityHash_3336
      (coe v0)
-- _.TxBody.txADhash
d_txADhash_1836 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3264 ->
  Maybe AgdaAny
d_txADhash_1836 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txADhash_3320
      (coe v0)
-- _.TxBody.txCerts
d_txCerts_1838 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3264 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1282]
d_txCerts_1838 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txCerts_3312
      (coe v0)
-- _.TxBody.txDonation
d_txDonation_1840 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3264 ->
  Integer
d_txDonation_1840 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txDonation_3322
      (coe v0)
-- _.TxBody.txFee
d_txFee_1842 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3264 ->
  Integer
d_txFee_1842 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txFee_3314
      (coe v0)
-- _.TxBody.txGovProposals
d_txGovProposals_1844 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3264 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_978]
d_txGovProposals_1844 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txGovProposals_3326
      (coe v0)
-- _.TxBody.txGovVotes
d_txGovVotes_1846 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3264 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_898]
d_txGovVotes_1846 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txGovVotes_3324
      (coe v0)
-- _.TxBody.txId
d_txId_1848 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3264 ->
  AgdaAny
d_txId_1848 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txId_3310
      (coe v0)
-- _.TxBody.txIns
d_txIns_1850 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3264 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txIns_1850 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txIns_3302
      (coe v0)
-- _.TxBody.txNetworkId
d_txNetworkId_1852 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3264 ->
  Maybe AgdaAny
d_txNetworkId_1852 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txNetworkId_3328
      (coe v0)
-- _.TxBody.txOuts
d_txOuts_1854 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3264 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txOuts_1854 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txOuts_3308
      (coe v0)
-- _.TxBody.txVldt
d_txVldt_1856 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3264 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txVldt_1856 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txVldt_3318
      (coe v0)
-- _.TxBody.txWithdrawals
d_txWithdrawals_1858 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3264 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txWithdrawals_1858 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txWithdrawals_3316
      (coe v0)
-- Ledger.Conway.Specification.Utxow._._⊢_⇀⦇_,UTXO⦈_
d__'8866'_'8640''10631'_'44'UTXO'10632'__1908 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Specification.Utxow._.UTxOEnv
d_UTxOEnv_1948 a0 a1 = ()
-- Ledger.Conway.Specification.Utxow._.UTxOState
d_UTxOState_1952 a0 a1 = ()
-- Ledger.Conway.Specification.Utxow._.UTxOEnv.pparams
d_pparams_2050 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2420 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276
d_pparams_2050 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2430
      (coe v0)
-- Ledger.Conway.Specification.Utxow._.UTxOEnv.slot
d_slot_2052 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2420 ->
  AgdaAny
d_slot_2052 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_slot_2428 (coe v0)
-- Ledger.Conway.Specification.Utxow._.UTxOEnv.treasury
d_treasury_2054 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2420 ->
  Integer
d_treasury_2054 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_treasury_2432
      (coe v0)
-- Ledger.Conway.Specification.Utxow._.UTxOState.deposits
d_deposits_2058 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2436 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_2058 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_deposits_2450
      (coe v0)
-- Ledger.Conway.Specification.Utxow._.UTxOState.donations
d_donations_2060 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2436 ->
  Integer
d_donations_2060 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_donations_2452
      (coe v0)
-- Ledger.Conway.Specification.Utxow._.UTxOState.fees
d_fees_2062 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2436 ->
  Integer
d_fees_2062 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_fees_2448 (coe v0)
-- Ledger.Conway.Specification.Utxow._.UTxOState.utxo
d_utxo_2064 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2436 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2064 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2446 (coe v0)
-- Ledger.Conway.Specification.Utxow._.credsNeeded
d_credsNeeded_2118 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2334 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3264 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_credsNeeded_2118 v0 ~v1 = du_credsNeeded_2118 v0
du_credsNeeded_2118 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3264 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_credsNeeded_2118 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_credsNeeded_2648
      (coe v0)
-- Ledger.Conway.Specification.Utxow._.txOutToDataHash
d_txOutToDataHash_2130 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2334 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe AgdaAny
d_txOutToDataHash_2130 ~v0 ~v1 = du_txOutToDataHash_2130
du_txOutToDataHash_2130 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe AgdaAny
du_txOutToDataHash_2130
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_txOutToDataHash_2724
-- Ledger.Conway.Specification.Utxow._.txOutToP2Script
d_txOutToP2Script_2132 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2334 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3444 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe AgdaAny
d_txOutToP2Script_2132 v0 ~v1 = du_txOutToP2Script_2132 v0
du_txOutToP2Script_2132 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3444 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe AgdaAny
du_txOutToP2Script_2132 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_txOutToP2Script_2728
      (coe v0)
-- Ledger.Conway.Specification.Utxow._.d
d_d_2594 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2334 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_d_2594 ~v0 v1 = du_d_2594 v1
du_d_2594 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Data.Sum.Base.T__'8846'__30
du_d_2594 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
         (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v0)))
-- Ledger.Conway.Specification.Utxow._.HasInlineDatum
d_HasInlineDatum_2596 a0 a1 a2 = ()
newtype T_HasInlineDatum_2596 = C_InlineDatum_2600 AgdaAny
-- Ledger.Conway.Specification.Utxow.Dec-HasInlineDatum
d_Dec'45'HasInlineDatum_2604 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2334 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'HasInlineDatum_2604 ~v0 ~v1 v2
  = du_Dec'45'HasInlineDatum_2604 v2
du_Dec'45'HasInlineDatum_2604 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'HasInlineDatum_2604 v0
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
                                               (coe C_InlineDatum_2600 v8)))
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
-- Ledger.Conway.Specification.Utxow._._.UsesV3Features
d_UsesV3Features_2666 a0 a1 a2 = ()
data T_UsesV3Features_2666
  = C_HasVotes_2668 | C_HasProps_2670 | C_HasDonation_2672 |
    C_HasTreasure_2674
-- Ledger.Conway.Specification.Utxow.Dec-UsesV3Features
d_Dec'45'UsesV3Features_2678 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2334 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3264 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'UsesV3Features_2678 ~v0 ~v1 v2
  = du_Dec'45'UsesV3Features_2678 v2
du_Dec'45'UsesV3Features_2678 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3264 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'UsesV3Features_2678 v0
  = case coe v0 of
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.C_constructor_3338 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18
        -> let v19
                 = case coe v12 of
                     []
                       -> coe
                            seq (coe v13)
                            (coe
                               MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
                               (coe
                                  MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                  (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                  (coe
                                     MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                     (coe C_HasProps_2670))))
                     (:) v19 v20
                       -> coe
                            MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
                            (coe
                               MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                               (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                               (coe
                                  MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                  (coe C_HasVotes_2668)))
                     _ -> MAlonzo.RTE.mazUnreachableError in
           coe
             (case coe v11 of
                0 -> case coe v12 of
                       []
                         -> case coe v13 of
                              []
                                -> case coe v15 of
                                     MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v20
                                       -> coe
                                            MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
                                            (coe
                                               MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                               (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                               (coe
                                                  MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                                  (coe C_HasTreasure_2674)))
                                     MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                                       -> coe
                                            MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
                                            (coe
                                               MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                               (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                               (coe
                                                  MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))
                                     _ -> MAlonzo.RTE.mazUnreachableError
                              _ -> coe v19
                       (:) v20 v21
                         -> coe
                              MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
                              (coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                 (coe
                                    MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                    (coe C_HasVotes_2668)))
                       _ -> MAlonzo.RTE.mazUnreachableError
                _ -> case coe v12 of
                       []
                         -> case coe v13 of
                              []
                                -> coe
                                     MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
                                     (coe
                                        MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                        (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                        (coe
                                           MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                           (coe C_HasDonation_2672)))
                              _ -> coe v19
                       (:) v20 v21
                         -> coe
                              MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
                              (coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                 (coe
                                    MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                    (coe C_HasVotes_2668)))
                       _ -> MAlonzo.RTE.mazUnreachableError)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Utxow.languages
d_languages_2702 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2334 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3444 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
d_languages_2702 v0 ~v1 v2 v3 = du_languages_2702 v0 v2 v3
du_languages_2702 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3444 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
du_languages_2702 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.du_mapPartial_604
      (MAlonzo.Code.Axiom.Set.d_th_1516
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe du_getLanguage_2712 (coe v0))
      (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txscripts_3572
         (coe v0) (coe v1) (coe v2))
-- Ledger.Conway.Specification.Utxow._.getLanguage
d_getLanguage_2712 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2334 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3444 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
d_getLanguage_2712 v0 ~v1 ~v2 ~v3 v4 = du_getLanguage_2712 v0 v4
du_getLanguage_2712 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
du_getLanguage_2712 v0 v1
  = case coe v1 of
      MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v2
        -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
      MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v2
        -> coe
             MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
             (coe
                MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_language_272
                (MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
                   (coe
                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1904
                      (coe v0)))
                v2)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Utxow.allowedLanguages
d_allowedLanguages_2716 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2334 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3444 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
d_allowedLanguages_2716 v0 ~v1 v2 v3
  = du_allowedLanguages_2716 v0 v2 v3
du_allowedLanguages_2716 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3444 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
du_allowedLanguages_2716 v0 v1 v2
  = coe
      MAlonzo.Code.Class.ToBool.du_if_then_else__38
      (coe MAlonzo.Code.Class.ToBool.du_ToBool'45''8263'_106) erased
      (coe
         MAlonzo.Code.Axiom.Set.du_Dec'45'Any'738'_1686
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
         (coe
            (\ v3 ->
               coe
                 MAlonzo.Code.Ledger.Core.Specification.Address.du_isBootstrapAddr'63'_218
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3))))
         (coe du_os_2766 (coe v0) (coe v1) (coe v2)))
      (coe
         (\ v3 ->
            MAlonzo.Code.Class.HasEmptySet.d_'8709'_332
              (coe
                 MAlonzo.Code.Class.HasEmptySet.du_HasEmptySet'45'Set_342
                 (coe
                    MAlonzo.Code.Axiom.Set.d_th_1516
                    (coe
                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))))
      (coe
         (\ v3 ->
            coe
              MAlonzo.Code.Class.ToBool.du_if_then_else__38
              (coe MAlonzo.Code.Class.ToBool.du_ToBool'45''8263'_106) erased
              (coe du_Dec'45'UsesV3Features_2678 (coe du_txb_2726 (coe v1)))
              (coe
                 (\ v4 ->
                    coe
                      MAlonzo.Code.Axiom.Set.du_fromList_456
                      (coe
                         MAlonzo.Code.Axiom.Set.d_th_1516
                         (coe
                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                      (coe
                         MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                         (coe
                            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_PlutusV3_222
                            (coe
                               MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
                               (coe
                                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1904
                                  (coe v0))))
                         (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
              (coe
                 (\ v4 ->
                    coe
                      MAlonzo.Code.Class.ToBool.du_if_then_else__38
                      (coe MAlonzo.Code.Class.ToBool.du_ToBool'45''8263'_106) erased
                      (coe
                         MAlonzo.Code.Axiom.Set.du_Dec'45'Any'738'_1686
                         (coe
                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                         (coe du_Dec'45'HasInlineDatum_2604)
                         (coe
                            MAlonzo.Code.Class.IsSet.d_toSet_526
                            (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Set_590)
                            (coe du_os_2766 (coe v0) (coe v1) (coe v2))))
                      (coe
                         (\ v5 ->
                            coe
                              MAlonzo.Code.Axiom.Set.du_fromList_456
                              (coe
                                 MAlonzo.Code.Axiom.Set.d_th_1516
                                 (coe
                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_PlutusV2_220
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1904
                                          (coe v0))))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_PlutusV3_222
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1904
                                             (coe v0))))
                                    (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                      (coe
                         (\ v5 ->
                            coe
                              MAlonzo.Code.Axiom.Set.du_fromList_456
                              (coe
                                 MAlonzo.Code.Axiom.Set.d_th_1516
                                 (coe
                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_PlutusV1_218
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1904
                                          (coe v0))))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_PlutusV2_220
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1904
                                             (coe v0))))
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_PlutusV3_222
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1904
                                                (coe v0))))
                                       (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))))))
-- Ledger.Conway.Specification.Utxow._.txb
d_txb_2726 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2334 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3444 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3264
d_txb_2726 ~v0 ~v1 v2 ~v3 = du_txb_2726 v2
du_txb_2726 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3444 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3264
du_txb_2726 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3456
      (coe v0)
-- Ledger.Conway.Specification.Utxow._.os
d_os_2766 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2334 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3444 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_os_2766 v0 ~v1 v2 v3 = du_os_2766 v0 v2 v3
du_os_2766 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3444 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_os_2766 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.du__'8746'__708
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1516
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Class.IsSet.du_range_588
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1516
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_outs_2500
            (coe du_txb_2726 (coe v1))))
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
                  MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_182
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'TxId_1272
                     (coe v0))
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Ix_1270
                     (coe v0))))
            (coe v2)
            (coe
               MAlonzo.Code.Axiom.Set.du__'8746'__708
               (coe
                  MAlonzo.Code.Axiom.Set.d_th_1516
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txIns_3302
                  (coe du_txb_2726 (coe v1)))
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_refInputs_3304
                  (coe du_txb_2726 (coe v1))))))
-- Ledger.Conway.Specification.Utxow._⊢_⇀⦇_,UTXOW⦈_
d__'8866'_'8640''10631'_'44'UTXOW'10632'__2780 a0 a1 a2 a3 a4 a5
  = ()
newtype T__'8866'_'8640''10631'_'44'UTXOW'10632'__2780
  = C_UTXOW'45'inductive_2876 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Specification.Utxow._.txAD
d_txAD_2786 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2334 ->
  T_GeneralizeTel_32831 -> Maybe AgdaAny
d_txAD_2786 ~v0 ~v1 v2 = du_txAD_2786 v2
du_txAD_2786 :: T_GeneralizeTel_32831 -> Maybe AgdaAny
du_txAD_2786 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txAD_3464
      (coe d_'46'generalizedField'45'tx_32823 (coe v0))
-- Ledger.Conway.Specification.Utxow._.body
d_body_2788 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2334 ->
  T_GeneralizeTel_32831 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3264
d_body_2788 ~v0 ~v1 v2 = du_body_2788 v2
du_body_2788 ::
  T_GeneralizeTel_32831 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3264
du_body_2788 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3456
      (coe d_'46'generalizedField'45'tx_32823 (coe v0))
-- Ledger.Conway.Specification.Utxow._.wits
d_wits_2792 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2334 ->
  T_GeneralizeTel_32831 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3422
d_wits_2792 ~v0 ~v1 v2 = du_wits_2792 v2
du_wits_2792 ::
  T_GeneralizeTel_32831 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3422
du_wits_2792 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3458
      (coe d_'46'generalizedField'45'tx_32823 (coe v0))
-- Ledger.Conway.Specification.Utxow._.refInputs
d_refInputs_2802 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2334 ->
  T_GeneralizeTel_32831 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_2802 ~v0 ~v1 v2 = du_refInputs_2802 v2
du_refInputs_2802 ::
  T_GeneralizeTel_32831 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_refInputs_2802 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_refInputs_3304
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3456
         (coe d_'46'generalizedField'45'tx_32823 (coe v0)))
-- Ledger.Conway.Specification.Utxow._.txADhash
d_txADhash_2808 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2334 ->
  T_GeneralizeTel_32831 -> Maybe AgdaAny
d_txADhash_2808 ~v0 ~v1 v2 = du_txADhash_2808 v2
du_txADhash_2808 :: T_GeneralizeTel_32831 -> Maybe AgdaAny
du_txADhash_2808 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txADhash_3320
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3456
         (coe d_'46'generalizedField'45'tx_32823 (coe v0)))
-- Ledger.Conway.Specification.Utxow._.txId
d_txId_2820 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2334 ->
  T_GeneralizeTel_32831 -> AgdaAny
d_txId_2820 ~v0 ~v1 v2 = du_txId_2820 v2
du_txId_2820 :: T_GeneralizeTel_32831 -> AgdaAny
du_txId_2820 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txId_3310
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3456
         (coe d_'46'generalizedField'45'tx_32823 (coe v0)))
-- Ledger.Conway.Specification.Utxow._.txIns
d_txIns_2822 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2334 ->
  T_GeneralizeTel_32831 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txIns_2822 ~v0 ~v1 v2 = du_txIns_2822 v2
du_txIns_2822 ::
  T_GeneralizeTel_32831 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_txIns_2822 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txIns_3302
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3456
         (coe d_'46'generalizedField'45'tx_32823 (coe v0)))
-- Ledger.Conway.Specification.Utxow._.txOuts
d_txOuts_2826 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2334 ->
  T_GeneralizeTel_32831 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txOuts_2826 ~v0 ~v1 v2 = du_txOuts_2826 v2
du_txOuts_2826 ::
  T_GeneralizeTel_32831 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txOuts_2826 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txOuts_3308
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3456
         (coe d_'46'generalizedField'45'tx_32823 (coe v0)))
-- Ledger.Conway.Specification.Utxow._.txVldt
d_txVldt_2828 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2334 ->
  T_GeneralizeTel_32831 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txVldt_2828 ~v0 ~v1 v2 = du_txVldt_2828 v2
du_txVldt_2828 ::
  T_GeneralizeTel_32831 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txVldt_2828 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txVldt_3318
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3456
         (coe d_'46'generalizedField'45'tx_32823 (coe v0)))
-- Ledger.Conway.Specification.Utxow._.scripts
d_scripts_2834 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2334 ->
  T_GeneralizeTel_32831 -> [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_scripts_2834 ~v0 ~v1 v2 = du_scripts_2834 v2
du_scripts_2834 ::
  T_GeneralizeTel_32831 -> [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_scripts_2834 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scripts_3434
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3458
         (coe d_'46'generalizedField'45'tx_32823 (coe v0)))
-- Ledger.Conway.Specification.Utxow._.txdats
d_txdats_2838 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2334 ->
  T_GeneralizeTel_32831 -> [AgdaAny]
d_txdats_2838 ~v0 ~v1 v2 = du_txdats_2838 v2
du_txdats_2838 :: T_GeneralizeTel_32831 -> [AgdaAny]
du_txdats_2838 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txdats_3436
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3458
         (coe d_'46'generalizedField'45'tx_32823 (coe v0)))
-- Ledger.Conway.Specification.Utxow._.vkSigs
d_vkSigs_2842 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2334 ->
  T_GeneralizeTel_32831 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_vkSigs_2842 ~v0 ~v1 v2 = du_vkSigs_2842 v2
du_vkSigs_2842 ::
  T_GeneralizeTel_32831 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_vkSigs_2842 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_vkSigs_3432
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3458
         (coe d_'46'generalizedField'45'tx_32823 (coe v0)))
-- Ledger.Conway.Specification.Utxow.UTXOW-inductive-premises
d_UTXOW'45'inductive'45'premises_2902 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2334 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3444 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2436 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTXOW'45'inductive'45'premises_2902 v0 ~v1 v2 v3
  = du_UTXOW'45'inductive'45'premises_2902 v0 v2 v3
du_UTXOW'45'inductive'45'premises_2902 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3444 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2436 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_UTXOW'45'inductive'45'premises_2902 v0 v1 v2
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
                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1322
                          (coe v0)))
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3))
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txidBytes_2500
                       v0
                       (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txId_3310
                          (coe
                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3456
                             (coe v1))))
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3))))
            (coe
               MAlonzo.Code.Axiom.Set.Map.du__'738'_570
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_vkSigs_3432
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3458
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
                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1322
                                (coe v0)))
                          (coe
                             MAlonzo.Code.Interface.TypeClasses.Hashable.d_hash_18
                             (MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Hashable'45'P1Script_122
                                (coe
                                   MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_p1s_306
                                   (coe
                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1904
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
                                MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_credsNeeded_2648
                                (coe v0)
                                (coe
                                   MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2446
                                   (coe v2))
                                (coe
                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3456
                                   (coe v1)))))
                       (coe
                          MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Dec'45'validP1Script_120
                          (MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_p1s_306
                             (coe
                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1904
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
                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1322
                                         (coe v0)))))
                             (coe
                                MAlonzo.Code.Class.IsSet.du_dom_586
                                (coe
                                   MAlonzo.Code.Axiom.Set.d_th_1516
                                   (coe
                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                (coe
                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_vkSigs_3432
                                   (coe
                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3458
                                      (coe v1)))))
                          (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txVldt_3318
                             (coe
                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3456
                                (coe v1)))
                          v3)))
               (coe
                  MAlonzo.Code.Axiom.Set.du_mapPartial_604
                  (MAlonzo.Code.Axiom.Set.d_th_1516
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_toP1Script_416)
                  (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txscripts_3572
                     (coe v0) (coe v1)
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2446
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
                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1322
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
                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1322
                                         (coe v0)))))
                             (coe
                                MAlonzo.Code.Class.IsSet.du_dom_586
                                (coe
                                   MAlonzo.Code.Axiom.Set.d_th_1516
                                   (coe
                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                (coe
                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_vkSigs_3432
                                   (coe
                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3458
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
                        MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_credsNeeded_2648
                        (coe v0)
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2446 (coe v2))
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3456
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
                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1322
                                      (coe v0)))
                                (coe v3)
                                (coe
                                   MAlonzo.Code.Axiom.Set.du_map_426
                                   (MAlonzo.Code.Axiom.Set.d_th_1516
                                      (coe
                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                   (MAlonzo.Code.Interface.TypeClasses.Hashable.d_hash_18
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_Hashable'45'Script_402
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1904
                                            (coe v0))))
                                   (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scripts_3434
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3458
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
                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1322
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
                                 MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_credsNeeded_2648
                                 (coe v0)
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2446
                                    (coe v2))
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3456
                                    (coe v1))))
                           (coe
                              MAlonzo.Code.Axiom.Set.du_map_426
                              (MAlonzo.Code.Axiom.Set.d_th_1516
                                 (coe
                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                              (MAlonzo.Code.Interface.TypeClasses.Hashable.d_hash_18
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_Hashable'45'Script_402
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1904
                                       (coe v0))))
                              (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_refScripts_3524
                                 (coe v0) (coe v1)
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2446
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
                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1322
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
                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1322
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
                                         MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_credsNeeded_2648
                                         (coe v0)
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2446
                                            (coe v2))
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3456
                                            (coe v1))))
                                   (coe
                                      MAlonzo.Code.Axiom.Set.du_map_426
                                      (MAlonzo.Code.Axiom.Set.d_th_1516
                                         (coe
                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                      (MAlonzo.Code.Interface.TypeClasses.Hashable.d_hash_18
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_Hashable'45'Script_402
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1904
                                               (coe v0))))
                                      (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_refScripts_3524
                                         (coe v0) (coe v1)
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2446
                                            (coe v2)))))))
                        (coe
                           MAlonzo.Code.Axiom.Set.du_map_426
                           (MAlonzo.Code.Axiom.Set.d_th_1516
                              (coe
                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                           (MAlonzo.Code.Interface.TypeClasses.Hashable.d_hash_18
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_Hashable'45'Script_402
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1904
                                    (coe v0))))
                           (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scripts_3434
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3458
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
                                         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_204
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1904
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
                                               MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_204
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1904
                                                     (coe v0)))))))
                                   (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txdats_3436
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3458
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
                                   MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_txOutToP2Script_2728
                                   (coe v0)
                                   (coe
                                      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2446
                                      (coe v2))
                                   (coe v1) (coe v3))
                                (coe
                                   MAlonzo.Code.Level.C_lift_20
                                   (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                (coe
                                   (\ v4 ->
                                      coe
                                        MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_txOutToDataHash_2724
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
                                       (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'TxId_1272
                                          (coe v0))
                                       (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Ix_1270
                                          (coe v0))))
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2446
                                    (coe v2))
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txIns_3302
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3456
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
                                            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_204
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1904
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
                                                 MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_txOutToP2Script_2728
                                                 (coe v0)
                                                 (coe
                                                    MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2446
                                                    (coe v2))
                                                 (coe v1) (coe v4))
                                              (coe
                                                 MAlonzo.Code.Level.C_lift_20
                                                 (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                              (coe
                                                 (\ v5 ->
                                                    coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_txOutToDataHash_2724
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
                                                     (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'TxId_1272
                                                        (coe v0))
                                                     (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Ix_1270
                                                        (coe v0))))
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2446
                                                  (coe v2))
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txIns_3302
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3456
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
                                               MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_txOutToDataHash_2724)
                                            (coe
                                               MAlonzo.Code.Class.IsSet.du_range_588
                                               (coe
                                                  MAlonzo.Code.Axiom.Set.d_th_1516
                                                  (coe
                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                               (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txOuts_3308
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3456
                                                     (coe v1)))))
                                         (coe
                                            MAlonzo.Code.Axiom.Set.du_mapPartial_604
                                            (MAlonzo.Code.Axiom.Set.d_th_1516
                                               (coe
                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_txOutToDataHash_2724)
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
                                                        (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'TxId_1272
                                                           (coe v0))
                                                        (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Ix_1270
                                                           (coe v0))))
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2446
                                                     (coe v2))
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_refInputs_3304
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3456
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
                                          MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_204
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1904
                                                (coe v0)))))))
                              (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txdats_3436
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3458
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
                                         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'Language_228
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1904
                                               (coe v0))))
                                      (coe v3)
                                      (coe
                                         du_allowedLanguages_2716 (coe v0) (coe v1)
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2446
                                            (coe v2)))))
                              (coe
                                 du_languages_2702 (coe v0) (coe v1)
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2446
                                    (coe v2))))
                           (coe
                              MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
                              (coe
                                 MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                                 (coe
                                    MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_adHashingScheme_1274
                                       (coe v0))))
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txADhash_3320
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3456
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
                                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_adHashingScheme_1274
                                          (coe v0))))
                                 (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txAD_3464
                                    (coe v1)))))))))))
-- Ledger.Conway.Specification.Utxow..generalizedField-tx
d_'46'generalizedField'45'tx_32823 ::
  T_GeneralizeTel_32831 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3444
d_'46'generalizedField'45'tx_32823 v0
  = case coe v0 of
      C_mkGeneralizeTel_32833 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Utxow..generalizedField-s
d_'46'generalizedField'45's_32825 ::
  T_GeneralizeTel_32831 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2436
d_'46'generalizedField'45's_32825 v0
  = case coe v0 of
      C_mkGeneralizeTel_32833 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Utxow..generalizedField-Γ
d_'46'generalizedField'45'Γ_32827 ::
  T_GeneralizeTel_32831 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2420
d_'46'generalizedField'45'Γ_32827 v0
  = case coe v0 of
      C_mkGeneralizeTel_32833 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Utxow..generalizedField-s'
d_'46'generalizedField'45's''_32829 ::
  T_GeneralizeTel_32831 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2436
d_'46'generalizedField'45's''_32829 v0
  = case coe v0 of
      C_mkGeneralizeTel_32833 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Utxow.GeneralizeTel
d_GeneralizeTel_32831 a0 a1 = ()
data T_GeneralizeTel_32831
  = C_mkGeneralizeTel_32833 MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3444
                            MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2436
                            MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2420
                            MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2436
