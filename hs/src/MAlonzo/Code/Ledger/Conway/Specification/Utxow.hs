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
import qualified MAlonzo.Code.Interface.Hashable
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
d_Hashable'45'Script_324 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'Script_324 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_Hashable'45'Script_396
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1884
         (coe v0))
-- _.Language
d_Language_352 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Language_352 = erased
-- _.Script
d_Script_436 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Script_436 = erased
-- _.Tx
d_Tx_518 a0 = ()
-- _.TxBody
d_TxBody_522 a0 = ()
-- _.TxOut
d_TxOut_534 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_TxOut_534 = erased
-- _.UTxO
d_UTxO_542 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_UTxO_542 = erased
-- _.isBootstrapAddr
d_isBootstrapAddr_626 a0 a1 = ()
-- _.isBootstrapAddr?
d_isBootstrapAddr'63'_628 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isBootstrapAddr'63'_628 ~v0 = du_isBootstrapAddr'63'_628
du_isBootstrapAddr'63'_628 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_isBootstrapAddr'63'_628
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_isBootstrapAddr'63'_218
-- _.isKeyHashObj
d_isKeyHashObj_636 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe AgdaAny
d_isKeyHashObj_636 ~v0 = du_isKeyHashObj_636
du_isKeyHashObj_636 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe AgdaAny
du_isKeyHashObj_636
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_isKeyHashObj_46
-- _.isScriptObj
d_isScriptObj_656 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe AgdaAny
d_isScriptObj_656 ~v0 = du_isScriptObj_656
du_isScriptObj_656 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe AgdaAny
du_isScriptObj_656
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_isScriptObj_56
-- _.isSigned
d_isSigned_660 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny -> AgdaAny -> AgdaAny -> ()
d_isSigned_660 = erased
-- _.refScripts
d_refScripts_710 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3354 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_refScripts_710 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_refScripts_3434
      (coe v0)
-- _.toP1Script
d_toP1Script_728 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
d_toP1Script_728 ~v0 = du_toP1Script_728
du_toP1Script_728 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
du_toP1Script_728
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_toP1Script_410
-- _.txscripts
d_txscripts_742 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3354 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_txscripts_742 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txscripts_3482
      (coe v0)
-- _.validP1Script
d_validP1Script_752 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> ()
d_validP1Script_752 = erased
-- _.Tx.body
d_body_1710 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3354 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3174
d_body_1710 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3366
      (coe v0)
-- _.Tx.isValid
d_isValid_1712 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3354 ->
  Bool
d_isValid_1712 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_isValid_3372
      (coe v0)
-- _.Tx.txAD
d_txAD_1714 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3354 ->
  Maybe AgdaAny
d_txAD_1714 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txAD_3374
      (coe v0)
-- _.Tx.txsize
d_txsize_1716 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3354 ->
  Integer
d_txsize_1716 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txsize_3370
      (coe v0)
-- _.Tx.wits
d_wits_1718 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3354 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3332
d_wits_1718 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3368
      (coe v0)
-- _.TxBody.collateralInputs
d_collateralInputs_1722 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3174 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateralInputs_1722 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_collateralInputs_3216
      (coe v0)
-- _.TxBody.currentTreasury
d_currentTreasury_1724 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3174 ->
  Maybe Integer
d_currentTreasury_1724 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_currentTreasury_3240
      (coe v0)
-- _.TxBody.mint
d_mint_1726 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3174 ->
  AgdaAny
d_mint_1726 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_mint_3242
      (coe v0)
-- _.TxBody.refInputs
d_refInputs_1728 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3174 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_1728 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_refInputs_3214
      (coe v0)
-- _.TxBody.reqSignerHashes
d_reqSignerHashes_1730 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3174 ->
  [AgdaAny]
d_reqSignerHashes_1730 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_reqSignerHashes_3244
      (coe v0)
-- _.TxBody.scriptIntegrityHash
d_scriptIntegrityHash_1732 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3174 ->
  Maybe AgdaAny
d_scriptIntegrityHash_1732 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptIntegrityHash_3246
      (coe v0)
-- _.TxBody.txADhash
d_txADhash_1734 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3174 ->
  Maybe AgdaAny
d_txADhash_1734 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txADhash_3230
      (coe v0)
-- _.TxBody.txCerts
d_txCerts_1736 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3174 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1222]
d_txCerts_1736 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txCerts_3222
      (coe v0)
-- _.TxBody.txDonation
d_txDonation_1738 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3174 ->
  Integer
d_txDonation_1738 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txDonation_3232
      (coe v0)
-- _.TxBody.txFee
d_txFee_1740 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3174 ->
  Integer
d_txFee_1740 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txFee_3224
      (coe v0)
-- _.TxBody.txGovProposals
d_txGovProposals_1742 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3174 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_950]
d_txGovProposals_1742 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txGovProposals_3236
      (coe v0)
-- _.TxBody.txGovVotes
d_txGovVotes_1744 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3174 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_930]
d_txGovVotes_1744 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txGovVotes_3234
      (coe v0)
-- _.TxBody.txId
d_txId_1746 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3174 ->
  AgdaAny
d_txId_1746 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txId_3220
      (coe v0)
-- _.TxBody.txIns
d_txIns_1748 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3174 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txIns_1748 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txIns_3212
      (coe v0)
-- _.TxBody.txNetworkId
d_txNetworkId_1750 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3174 ->
  Maybe AgdaAny
d_txNetworkId_1750 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txNetworkId_3238
      (coe v0)
-- _.TxBody.txOuts
d_txOuts_1752 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3174 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txOuts_1752 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txOuts_3218
      (coe v0)
-- _.TxBody.txVldt
d_txVldt_1754 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3174 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txVldt_1754 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txVldt_3228
      (coe v0)
-- _.TxBody.txWithdrawals
d_txWithdrawals_1756 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3174 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txWithdrawals_1756 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txWithdrawals_3226
      (coe v0)
-- Ledger.Conway.Specification.Utxow._._⊢_⇀⦇_,UTXO⦈_
d__'8866'_'8640''10631'_'44'UTXO'10632'__1806 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Specification.Utxow._.UTxOEnv
d_UTxOEnv_1846 a0 a1 = ()
-- Ledger.Conway.Specification.Utxow._.UTxOState
d_UTxOState_1850 a0 a1 = ()
-- Ledger.Conway.Specification.Utxow._.UTxOEnv.pparams
d_pparams_1948 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2302 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270
d_pparams_1948 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2312
      (coe v0)
-- Ledger.Conway.Specification.Utxow._.UTxOEnv.slot
d_slot_1950 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2302 ->
  AgdaAny
d_slot_1950 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_slot_2310 (coe v0)
-- Ledger.Conway.Specification.Utxow._.UTxOEnv.treasury
d_treasury_1952 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2302 ->
  Integer
d_treasury_1952 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_treasury_2314
      (coe v0)
-- Ledger.Conway.Specification.Utxow._.UTxOState.deposits
d_deposits_1956 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2318 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_1956 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_deposits_2332
      (coe v0)
-- Ledger.Conway.Specification.Utxow._.UTxOState.donations
d_donations_1958 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2318 ->
  Integer
d_donations_1958 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_donations_2334
      (coe v0)
-- Ledger.Conway.Specification.Utxow._.UTxOState.fees
d_fees_1960 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2318 ->
  Integer
d_fees_1960 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_fees_2330 (coe v0)
-- Ledger.Conway.Specification.Utxow._.UTxOState.utxo
d_utxo_1962 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2318 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_1962 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2328 (coe v0)
-- Ledger.Conway.Specification.Utxow._.credsNeeded
d_credsNeeded_2016 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2216 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3174 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_credsNeeded_2016 v0 ~v1 = du_credsNeeded_2016 v0
du_credsNeeded_2016 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3174 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_credsNeeded_2016 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_credsNeeded_2530
      (coe v0)
-- Ledger.Conway.Specification.Utxow._.txOutToDataHash
d_txOutToDataHash_2028 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2216 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe AgdaAny
d_txOutToDataHash_2028 ~v0 ~v1 = du_txOutToDataHash_2028
du_txOutToDataHash_2028 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe AgdaAny
du_txOutToDataHash_2028
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_txOutToDataHash_2606
-- Ledger.Conway.Specification.Utxow._.txOutToP2Script
d_txOutToP2Script_2030 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2216 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3354 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe AgdaAny
d_txOutToP2Script_2030 v0 ~v1 = du_txOutToP2Script_2030 v0
du_txOutToP2Script_2030 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3354 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe AgdaAny
du_txOutToP2Script_2030 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_txOutToP2Script_2610
      (coe v0)
-- Ledger.Conway.Specification.Utxow._.d
d_d_2476 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2216 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_d_2476 ~v0 v1 = du_d_2476 v1
du_d_2476 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Data.Sum.Base.T__'8846'__30
du_d_2476 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
         (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v0)))
-- Ledger.Conway.Specification.Utxow._.HasInlineDatum
d_HasInlineDatum_2478 a0 a1 a2 = ()
newtype T_HasInlineDatum_2478 = C_InlineDatum_2482 AgdaAny
-- Ledger.Conway.Specification.Utxow.Dec-HasInlineDatum
d_Dec'45'HasInlineDatum_2486 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2216 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'HasInlineDatum_2486 ~v0 ~v1 v2
  = du_Dec'45'HasInlineDatum_2486 v2
du_Dec'45'HasInlineDatum_2486 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'HasInlineDatum_2486 v0
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
                                               (coe C_InlineDatum_2482 v8)))
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
d_UsesV3Features_2548 a0 a1 a2 = ()
data T_UsesV3Features_2548
  = C_HasVotes_2550 | C_HasProps_2552 | C_HasDonation_2554 |
    C_HasTreasure_2556
-- Ledger.Conway.Specification.Utxow.Dec-UsesV3Features
d_Dec'45'UsesV3Features_2560 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2216 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3174 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'UsesV3Features_2560 ~v0 ~v1 v2
  = du_Dec'45'UsesV3Features_2560 v2
du_Dec'45'UsesV3Features_2560 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3174 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'UsesV3Features_2560 v0
  = case coe v0 of
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.C_constructor_3248 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18
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
                                     (coe C_HasProps_2552))))
                     (:) v19 v20
                       -> coe
                            MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
                            (coe
                               MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                               (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                               (coe
                                  MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                  (coe C_HasVotes_2550)))
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
                                                  (coe C_HasTreasure_2556)))
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
                                    (coe C_HasVotes_2550)))
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
                                           (coe C_HasDonation_2554)))
                              _ -> coe v19
                       (:) v20 v21
                         -> coe
                              MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
                              (coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                 (coe
                                    MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                    (coe C_HasVotes_2550)))
                       _ -> MAlonzo.RTE.mazUnreachableError)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Utxow.languages
d_languages_2584 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2216 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3354 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
d_languages_2584 v0 ~v1 v2 v3 = du_languages_2584 v0 v2 v3
du_languages_2584 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3354 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
du_languages_2584 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.du_mapPartial_578
      (MAlonzo.Code.Axiom.Set.d_th_1480
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe du_getLanguage_2594 (coe v0))
      (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txscripts_3482
         (coe v0) (coe v1) (coe v2))
-- Ledger.Conway.Specification.Utxow._.getLanguage
d_getLanguage_2594 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2216 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3354 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
d_getLanguage_2594 v0 ~v1 ~v2 ~v3 v4 = du_getLanguage_2594 v0 v4
du_getLanguage_2594 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
du_getLanguage_2594 v0 v1
  = case coe v1 of
      MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v2
        -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
      MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v2
        -> coe
             MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
             (coe
                MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_language_266
                (MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_322
                   (coe
                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1884
                      (coe v0)))
                v2)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Utxow.allowedLanguages
d_allowedLanguages_2598 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2216 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3354 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
d_allowedLanguages_2598 v0 ~v1 v2 v3
  = du_allowedLanguages_2598 v0 v2 v3
du_allowedLanguages_2598 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3354 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
du_allowedLanguages_2598 v0 v1 v2
  = coe
      MAlonzo.Code.Class.ToBool.du_if_then_else__38
      (coe MAlonzo.Code.Class.ToBool.du_ToBool'45''8263'_106) erased
      (coe
         MAlonzo.Code.Axiom.Set.du_Dec'45'Any'738'_1648
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
         (coe
            (\ v3 ->
               coe
                 MAlonzo.Code.Ledger.Core.Specification.Address.du_isBootstrapAddr'63'_218
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3))))
         (coe du_os_2648 (coe v0) (coe v1) (coe v2)))
      (coe
         (\ v3 ->
            MAlonzo.Code.Class.HasEmptySet.d_'8709'_314
              (coe
                 MAlonzo.Code.Class.HasEmptySet.du_HasEmptySet'45'Set_324
                 (coe
                    MAlonzo.Code.Axiom.Set.d_th_1480
                    (coe
                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))))
      (coe
         (\ v3 ->
            coe
              MAlonzo.Code.Class.ToBool.du_if_then_else__38
              (coe MAlonzo.Code.Class.ToBool.du_ToBool'45''8263'_106) erased
              (coe du_Dec'45'UsesV3Features_2560 (coe du_txb_2608 (coe v1)))
              (coe
                 (\ v4 ->
                    coe
                      MAlonzo.Code.Axiom.Set.du_fromList_430
                      (coe
                         MAlonzo.Code.Axiom.Set.d_th_1480
                         (coe
                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                      (coe
                         MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                         (coe
                            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_PlutusV3_216
                            (coe
                               MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_322
                               (coe
                                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1884
                                  (coe v0))))
                         (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
              (coe
                 (\ v4 ->
                    coe
                      MAlonzo.Code.Class.ToBool.du_if_then_else__38
                      (coe MAlonzo.Code.Class.ToBool.du_ToBool'45''8263'_106) erased
                      (coe
                         MAlonzo.Code.Axiom.Set.du_Dec'45'Any'738'_1648
                         (coe
                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                         (coe du_Dec'45'HasInlineDatum_2486)
                         (coe
                            MAlonzo.Code.Class.IsSet.d_toSet_502
                            (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Set_566)
                            (coe du_os_2648 (coe v0) (coe v1) (coe v2))))
                      (coe
                         (\ v5 ->
                            coe
                              MAlonzo.Code.Axiom.Set.du_fromList_430
                              (coe
                                 MAlonzo.Code.Axiom.Set.d_th_1480
                                 (coe
                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_PlutusV2_214
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_322
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1884
                                          (coe v0))))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_PlutusV3_216
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_322
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1884
                                             (coe v0))))
                                    (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                      (coe
                         (\ v5 ->
                            coe
                              MAlonzo.Code.Axiom.Set.du_fromList_430
                              (coe
                                 MAlonzo.Code.Axiom.Set.d_th_1480
                                 (coe
                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_PlutusV1_212
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_322
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1884
                                          (coe v0))))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_PlutusV2_214
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_322
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1884
                                             (coe v0))))
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_PlutusV3_216
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_322
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1884
                                                (coe v0))))
                                       (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))))))
-- Ledger.Conway.Specification.Utxow._.txb
d_txb_2608 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2216 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3354 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3174
d_txb_2608 ~v0 ~v1 v2 ~v3 = du_txb_2608 v2
du_txb_2608 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3354 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3174
du_txb_2608 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3366
      (coe v0)
-- Ledger.Conway.Specification.Utxow._.os
d_os_2648 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2216 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3354 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_os_2648 v0 ~v1 v2 v3 = du_os_2648 v0 v2 v3
du_os_2648 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3354 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_os_2648 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.du__'8746'__682
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Class.IsSet.du_range_564
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1480
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570)
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_outs_2382
            (coe du_txb_2608 (coe v1))))
      (coe
         MAlonzo.Code.Class.IsSet.du_range_564
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1480
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570)
         (coe
            MAlonzo.Code.Axiom.Set.Map.du__'8739'__1348
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1480
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe
               MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
               erased
               (coe
                  MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_182
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'TxId_1262
                     (coe v0))
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Ix_1260
                     (coe v0))))
            (coe v2)
            (coe
               MAlonzo.Code.Axiom.Set.du__'8746'__682
               (coe
                  MAlonzo.Code.Axiom.Set.d_th_1480
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txIns_3212
                  (coe du_txb_2608 (coe v1)))
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_refInputs_3214
                  (coe du_txb_2608 (coe v1))))))
-- Ledger.Conway.Specification.Utxow._⊢_⇀⦇_,UTXOW⦈_
d__'8866'_'8640''10631'_'44'UTXOW'10632'__2654 a0 a1 a2 a3 a4 a5
  = ()
newtype T__'8866'_'8640''10631'_'44'UTXOW'10632'__2654
  = C_UTXOW'45'inductive_2758 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Specification.Utxow._.txAD
d_txAD_2670 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2216 ->
  T_GeneralizeTel_32473 -> Maybe AgdaAny
d_txAD_2670 ~v0 ~v1 v2 = du_txAD_2670 v2
du_txAD_2670 :: T_GeneralizeTel_32473 -> Maybe AgdaAny
du_txAD_2670 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txAD_3374
      (coe d_'46'generalizedField'45'tx_32467 (coe v0))
-- Ledger.Conway.Specification.Utxow._.body
d_body_2672 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2216 ->
  T_GeneralizeTel_32473 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3174
d_body_2672 ~v0 ~v1 v2 = du_body_2672 v2
du_body_2672 ::
  T_GeneralizeTel_32473 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3174
du_body_2672 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3366
      (coe d_'46'generalizedField'45'tx_32467 (coe v0))
-- Ledger.Conway.Specification.Utxow._.wits
d_wits_2676 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2216 ->
  T_GeneralizeTel_32473 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3332
d_wits_2676 ~v0 ~v1 v2 = du_wits_2676 v2
du_wits_2676 ::
  T_GeneralizeTel_32473 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3332
du_wits_2676 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3368
      (coe d_'46'generalizedField'45'tx_32467 (coe v0))
-- Ledger.Conway.Specification.Utxow._.refInputs
d_refInputs_2686 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2216 ->
  T_GeneralizeTel_32473 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_2686 ~v0 ~v1 v2 = du_refInputs_2686 v2
du_refInputs_2686 ::
  T_GeneralizeTel_32473 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_refInputs_2686 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_refInputs_3214
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3366
         (coe d_'46'generalizedField'45'tx_32467 (coe v0)))
-- Ledger.Conway.Specification.Utxow._.txADhash
d_txADhash_2692 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2216 ->
  T_GeneralizeTel_32473 -> Maybe AgdaAny
d_txADhash_2692 ~v0 ~v1 v2 = du_txADhash_2692 v2
du_txADhash_2692 :: T_GeneralizeTel_32473 -> Maybe AgdaAny
du_txADhash_2692 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txADhash_3230
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3366
         (coe d_'46'generalizedField'45'tx_32467 (coe v0)))
-- Ledger.Conway.Specification.Utxow._.txId
d_txId_2704 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2216 ->
  T_GeneralizeTel_32473 -> AgdaAny
d_txId_2704 ~v0 ~v1 v2 = du_txId_2704 v2
du_txId_2704 :: T_GeneralizeTel_32473 -> AgdaAny
du_txId_2704 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txId_3220
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3366
         (coe d_'46'generalizedField'45'tx_32467 (coe v0)))
-- Ledger.Conway.Specification.Utxow._.txIns
d_txIns_2706 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2216 ->
  T_GeneralizeTel_32473 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txIns_2706 ~v0 ~v1 v2 = du_txIns_2706 v2
du_txIns_2706 ::
  T_GeneralizeTel_32473 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_txIns_2706 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txIns_3212
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3366
         (coe d_'46'generalizedField'45'tx_32467 (coe v0)))
-- Ledger.Conway.Specification.Utxow._.txOuts
d_txOuts_2710 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2216 ->
  T_GeneralizeTel_32473 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txOuts_2710 ~v0 ~v1 v2 = du_txOuts_2710 v2
du_txOuts_2710 ::
  T_GeneralizeTel_32473 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txOuts_2710 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txOuts_3218
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3366
         (coe d_'46'generalizedField'45'tx_32467 (coe v0)))
-- Ledger.Conway.Specification.Utxow._.txVldt
d_txVldt_2712 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2216 ->
  T_GeneralizeTel_32473 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txVldt_2712 ~v0 ~v1 v2 = du_txVldt_2712 v2
du_txVldt_2712 ::
  T_GeneralizeTel_32473 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txVldt_2712 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txVldt_3228
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3366
         (coe d_'46'generalizedField'45'tx_32467 (coe v0)))
-- Ledger.Conway.Specification.Utxow._.scripts
d_scripts_2718 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2216 ->
  T_GeneralizeTel_32473 -> [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_scripts_2718 ~v0 ~v1 v2 = du_scripts_2718 v2
du_scripts_2718 ::
  T_GeneralizeTel_32473 -> [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_scripts_2718 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scripts_3344
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3368
         (coe d_'46'generalizedField'45'tx_32467 (coe v0)))
-- Ledger.Conway.Specification.Utxow._.txdats
d_txdats_2722 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2216 ->
  T_GeneralizeTel_32473 -> [AgdaAny]
d_txdats_2722 ~v0 ~v1 v2 = du_txdats_2722 v2
du_txdats_2722 :: T_GeneralizeTel_32473 -> [AgdaAny]
du_txdats_2722 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txdats_3346
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3368
         (coe d_'46'generalizedField'45'tx_32467 (coe v0)))
-- Ledger.Conway.Specification.Utxow._.vkSigs
d_vkSigs_2726 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2216 ->
  T_GeneralizeTel_32473 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_vkSigs_2726 ~v0 ~v1 v2 = du_vkSigs_2726 v2
du_vkSigs_2726 ::
  T_GeneralizeTel_32473 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_vkSigs_2726 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_vkSigs_3342
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3368
         (coe d_'46'generalizedField'45'tx_32467 (coe v0)))
-- Ledger.Conway.Specification.Utxow.UTXOW-inductive-premises
d_UTXOW'45'inductive'45'premises_2784 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2216 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2318 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3354 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTXOW'45'inductive'45'premises_2784 v0 ~v1 v2 v3
  = du_UTXOW'45'inductive'45'premises_2784 v0 v2 v3
du_UTXOW'45'inductive'45'premises_2784 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2318 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3354 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_UTXOW'45'inductive'45'premises_2784 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased
      (coe
         MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
         (coe
            MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1644
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
            (coe
               (\ v3 ->
                  coe
                    MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Dec'45'isSigned_120
                    (MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_178
                       (coe
                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1308
                          (coe v0)))
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3))
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txidBytes_2480
                       v0
                       (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txId_3220
                          (coe
                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3366
                             (coe v2))))
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3))))
            (coe
               MAlonzo.Code.Axiom.Set.Map.du__'738'_554
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_vkSigs_3342
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3368
                     (coe v2)))))
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
            (coe
               MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1644
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
               (coe
                  (\ v3 ->
                     coe
                       MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_12
                       (coe
                          MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1682
                          (coe
                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                          (coe
                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                             (coe
                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1308
                                (coe v0)))
                          (coe
                             MAlonzo.Code.Interface.Hashable.d_hash_16
                             (MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Hashable'45'P1Script_116
                                (coe
                                   MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_p1s_300
                                   (coe
                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1884
                                      (coe v0))))
                             v3)
                          (coe
                             MAlonzo.Code.Axiom.Set.du_mapPartial_578
                             (MAlonzo.Code.Axiom.Set.d_th_1480
                                (coe
                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                             (\ v4 ->
                                coe
                                  MAlonzo.Code.Ledger.Core.Specification.Address.du_isScriptObj_56
                                  (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v4)))
                             (coe
                                MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_credsNeeded_2530
                                (coe v0)
                                (coe
                                   MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2328
                                   (coe v1))
                                (coe
                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3366
                                   (coe v2)))))
                       (coe
                          MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Dec'45'validP1Script_114
                          (MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_p1s_300
                             (coe
                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1884
                                (coe v0)))
                          (coe
                             MAlonzo.Code.Axiom.Set.du_map_400
                             (MAlonzo.Code.Axiom.Set.d_th_1480
                                (coe
                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                             (MAlonzo.Code.Interface.Hashable.d_hash_16
                                (coe
                                   MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
                                   (coe
                                      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1308
                                         (coe v0)))))
                             (coe
                                MAlonzo.Code.Class.IsSet.du_dom_562
                                (coe
                                   MAlonzo.Code.Axiom.Set.d_th_1480
                                   (coe
                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570)
                                (coe
                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_vkSigs_3342
                                   (coe
                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3368
                                      (coe v2)))))
                          (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txVldt_3228
                             (coe
                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3366
                                (coe v2)))
                          v3)))
               (coe
                  MAlonzo.Code.Axiom.Set.du_mapPartial_578
                  (MAlonzo.Code.Axiom.Set.d_th_1480
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_toP1Script_410)
                  (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txscripts_3482
                     (coe v0) (coe v2)
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2328
                        (coe v1)))))
            (coe
               MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
               (coe
                  MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1644
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                  (coe
                     (\ v3 ->
                        coe
                          MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1682
                          (coe
                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                          (coe
                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                             (coe
                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                (coe
                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1308
                                   (coe v0))))
                          (coe v3)
                          (coe
                             MAlonzo.Code.Axiom.Set.du_map_400
                             (MAlonzo.Code.Axiom.Set.d_th_1480
                                (coe
                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                             (MAlonzo.Code.Interface.Hashable.d_hash_16
                                (coe
                                   MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
                                   (coe
                                      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1308
                                         (coe v0)))))
                             (coe
                                MAlonzo.Code.Class.IsSet.du_dom_562
                                (coe
                                   MAlonzo.Code.Axiom.Set.d_th_1480
                                   (coe
                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570)
                                (coe
                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_vkSigs_3342
                                   (coe
                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3368
                                      (coe v2)))))))
                  (coe
                     MAlonzo.Code.Axiom.Set.du_mapPartial_578
                     (MAlonzo.Code.Axiom.Set.d_th_1480
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                     (\ v3 ->
                        coe
                          MAlonzo.Code.Ledger.Core.Specification.Address.du_isKeyHashObj_46
                          (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3)))
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_credsNeeded_2530
                        (coe v0)
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2328 (coe v1))
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3366
                           (coe v2)))))
               (coe
                  MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                  (coe
                     MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                     (coe
                        MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1644
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                        (coe
                           (\ v3 ->
                              coe
                                MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1682
                                (coe
                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                (coe
                                   MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                   (coe
                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1308
                                      (coe v0)))
                                (coe v3)
                                (coe
                                   MAlonzo.Code.Axiom.Set.du_map_400
                                   (MAlonzo.Code.Axiom.Set.d_th_1480
                                      (coe
                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                   (MAlonzo.Code.Interface.Hashable.d_hash_16
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_Hashable'45'Script_396
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1884
                                            (coe v0))))
                                   (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scripts_3344
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3368
                                         (coe v2))))))
                        (coe
                           MAlonzo.Code.Axiom.Set.du__'65340'__732
                           (coe
                              MAlonzo.Code.Axiom.Set.d_th_1480
                              (coe
                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                           (coe
                              MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                              erased
                              (MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1308
                                    (coe v0))))
                           (coe
                              MAlonzo.Code.Axiom.Set.du_mapPartial_578
                              (MAlonzo.Code.Axiom.Set.d_th_1480
                                 (coe
                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                              (\ v3 ->
                                 coe
                                   MAlonzo.Code.Ledger.Core.Specification.Address.du_isScriptObj_56
                                   (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3)))
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_credsNeeded_2530
                                 (coe v0)
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2328
                                    (coe v1))
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3366
                                    (coe v2))))
                           (coe
                              MAlonzo.Code.Axiom.Set.du_map_400
                              (MAlonzo.Code.Axiom.Set.d_th_1480
                                 (coe
                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                              (MAlonzo.Code.Interface.Hashable.d_hash_16
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_Hashable'45'Script_396
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1884
                                       (coe v0))))
                              (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_refScripts_3434
                                 (coe v0) (coe v2)
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2328
                                    (coe v1))))))
                     (coe
                        MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1644
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                        (coe
                           (\ v3 ->
                              coe
                                MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1682
                                (coe
                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                (coe
                                   MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                   (coe
                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1308
                                      (coe v0)))
                                (coe v3)
                                (coe
                                   MAlonzo.Code.Axiom.Set.du__'65340'__732
                                   (coe
                                      MAlonzo.Code.Axiom.Set.d_th_1480
                                      (coe
                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                   (coe
                                      MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                      erased
                                      (MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1308
                                            (coe v0))))
                                   (coe
                                      MAlonzo.Code.Axiom.Set.du_mapPartial_578
                                      (MAlonzo.Code.Axiom.Set.d_th_1480
                                         (coe
                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                      (\ v4 ->
                                         coe
                                           MAlonzo.Code.Ledger.Core.Specification.Address.du_isScriptObj_56
                                           (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v4)))
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_credsNeeded_2530
                                         (coe v0)
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2328
                                            (coe v1))
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3366
                                            (coe v2))))
                                   (coe
                                      MAlonzo.Code.Axiom.Set.du_map_400
                                      (MAlonzo.Code.Axiom.Set.d_th_1480
                                         (coe
                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                      (MAlonzo.Code.Interface.Hashable.d_hash_16
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_Hashable'45'Script_396
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1884
                                               (coe v0))))
                                      (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_refScripts_3434
                                         (coe v0) (coe v2)
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2328
                                            (coe v1)))))))
                        (coe
                           MAlonzo.Code.Axiom.Set.du_map_400
                           (MAlonzo.Code.Axiom.Set.d_th_1480
                              (coe
                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                           (MAlonzo.Code.Interface.Hashable.d_hash_16
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_Hashable'45'Script_396
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1884
                                    (coe v0))))
                           (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scripts_3344
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3368
                                 (coe v2))))))
                  (coe
                     MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                     (coe
                        MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1644
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                        (coe
                           (\ v3 ->
                              coe
                                MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1682
                                (coe
                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                (coe
                                   MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                   (coe
                                      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_198
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_322
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1884
                                               (coe v0))))))
                                (coe v3)
                                (coe
                                   MAlonzo.Code.Axiom.Set.du_map_400
                                   (MAlonzo.Code.Axiom.Set.d_th_1480
                                      (coe
                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                   (MAlonzo.Code.Interface.Hashable.d_hash_16
                                      (coe
                                         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
                                         (coe
                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_198
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_322
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1884
                                                     (coe v0)))))))
                                   (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txdats_3346
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3368
                                         (coe v2))))))
                        (coe
                           MAlonzo.Code.Axiom.Set.du_mapPartial_578
                           (MAlonzo.Code.Axiom.Set.d_th_1480
                              (coe
                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                           (\ v3 ->
                              coe
                                MAlonzo.Code.Class.ToBool.du_if_then_else__38
                                (coe MAlonzo.Code.Class.ToBool.du_ToBool'45'Maybe_100)
                                (coe
                                   MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_txOutToP2Script_2610
                                   (coe v0)
                                   (coe
                                      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2328
                                      (coe v1))
                                   (coe v2) (coe v3))
                                (coe
                                   MAlonzo.Code.Level.C_lift_20
                                   (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                (coe
                                   (\ v4 ->
                                      coe
                                        MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_txOutToDataHash_2606
                                        (coe v3)))
                                (coe (\ v4 -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)))
                           (coe
                              MAlonzo.Code.Class.IsSet.du_range_564
                              (coe
                                 MAlonzo.Code.Axiom.Set.d_th_1480
                                 (coe
                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                              (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570)
                              (coe
                                 MAlonzo.Code.Axiom.Set.Map.du__'8739'__1348
                                 (coe
                                    MAlonzo.Code.Axiom.Set.d_th_1480
                                    (coe
                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                 (coe
                                    MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                    erased
                                    (coe
                                       MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                       MAlonzo.Code.Agda.Primitive.d_lzero_20 erased
                                       MAlonzo.Code.Agda.Primitive.d_lzero_20 erased
                                       (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'TxId_1262
                                          (coe v0))
                                       (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Ix_1260
                                          (coe v0))))
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2328
                                    (coe v1))
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txIns_3212
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3366
                                       (coe v2)))))))
                     (coe
                        MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                        (coe
                           MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1644
                           (coe
                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                           (coe
                              (\ v3 ->
                                 coe
                                   MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1682
                                   (coe
                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                   (coe
                                      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                      (coe
                                         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_198
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_322
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1884
                                                  (coe v0))))))
                                   (coe v3)
                                   (coe
                                      MAlonzo.Code.Axiom.Set.du__'8746'__682
                                      (coe
                                         MAlonzo.Code.Axiom.Set.d_th_1480
                                         (coe
                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                      (coe
                                         MAlonzo.Code.Axiom.Set.du_mapPartial_578
                                         (MAlonzo.Code.Axiom.Set.d_th_1480
                                            (coe
                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                         (\ v4 ->
                                            coe
                                              MAlonzo.Code.Class.ToBool.du_if_then_else__38
                                              (coe MAlonzo.Code.Class.ToBool.du_ToBool'45'Maybe_100)
                                              (coe
                                                 MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_txOutToP2Script_2610
                                                 (coe v0)
                                                 (coe
                                                    MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2328
                                                    (coe v1))
                                                 (coe v2) (coe v4))
                                              (coe
                                                 MAlonzo.Code.Level.C_lift_20
                                                 (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                              (coe
                                                 (\ v5 ->
                                                    coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_txOutToDataHash_2606
                                                      (coe v4)))
                                              (coe
                                                 (\ v5 ->
                                                    coe
                                                      MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)))
                                         (coe
                                            MAlonzo.Code.Class.IsSet.du_range_564
                                            (coe
                                               MAlonzo.Code.Axiom.Set.d_th_1480
                                               (coe
                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                            (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570)
                                            (coe
                                               MAlonzo.Code.Axiom.Set.Map.du__'8739'__1348
                                               (coe
                                                  MAlonzo.Code.Axiom.Set.d_th_1480
                                                  (coe
                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                               (coe
                                                  MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                  erased
                                                  (coe
                                                     MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                     MAlonzo.Code.Agda.Primitive.d_lzero_20 erased
                                                     MAlonzo.Code.Agda.Primitive.d_lzero_20 erased
                                                     (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'TxId_1262
                                                        (coe v0))
                                                     (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Ix_1260
                                                        (coe v0))))
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2328
                                                  (coe v1))
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txIns_3212
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3366
                                                     (coe v2))))))
                                      (coe
                                         MAlonzo.Code.Axiom.Set.du__'8746'__682
                                         (coe
                                            MAlonzo.Code.Axiom.Set.d_th_1480
                                            (coe
                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                         (coe
                                            MAlonzo.Code.Axiom.Set.du_mapPartial_578
                                            (MAlonzo.Code.Axiom.Set.d_th_1480
                                               (coe
                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_txOutToDataHash_2606)
                                            (coe
                                               MAlonzo.Code.Class.IsSet.du_range_564
                                               (coe
                                                  MAlonzo.Code.Axiom.Set.d_th_1480
                                                  (coe
                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                               (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570)
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txOuts_3218
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3366
                                                     (coe v2)))))
                                         (coe
                                            MAlonzo.Code.Axiom.Set.du_mapPartial_578
                                            (MAlonzo.Code.Axiom.Set.d_th_1480
                                               (coe
                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_txOutToDataHash_2606)
                                            (coe
                                               MAlonzo.Code.Class.IsSet.du_range_564
                                               (coe
                                                  MAlonzo.Code.Axiom.Set.d_th_1480
                                                  (coe
                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                               (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570)
                                               (coe
                                                  MAlonzo.Code.Axiom.Set.Map.du__'8739'__1348
                                                  (coe
                                                     MAlonzo.Code.Axiom.Set.d_th_1480
                                                     (coe
                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                  (coe
                                                     MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                     erased
                                                     (coe
                                                        MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                        MAlonzo.Code.Agda.Primitive.d_lzero_20
                                                        erased
                                                        MAlonzo.Code.Agda.Primitive.d_lzero_20
                                                        erased
                                                        (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'TxId_1262
                                                           (coe v0))
                                                        (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Ix_1260
                                                           (coe v0))))
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2328
                                                     (coe v1))
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_refInputs_3214
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3366
                                                        (coe v2))))))))))
                           (coe
                              MAlonzo.Code.Axiom.Set.du_map_400
                              (MAlonzo.Code.Axiom.Set.d_th_1480
                                 (coe
                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                              (MAlonzo.Code.Interface.Hashable.d_hash_16
                                 (coe
                                    MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
                                    (coe
                                       MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_198
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_322
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1884
                                                (coe v0)))))))
                              (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txdats_3346
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3368
                                    (coe v2)))))
                        (coe
                           MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                           (coe
                              MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1644
                              (coe
                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                              (coe
                                 (\ v3 ->
                                    coe
                                      MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1682
                                      (coe
                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'Language_222
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_322
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1884
                                               (coe v0))))
                                      (coe v3)
                                      (coe
                                         du_allowedLanguages_2598 (coe v0) (coe v2)
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2328
                                            (coe v1)))))
                              (coe
                                 du_languages_2584 (coe v0) (coe v2)
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2328
                                    (coe v1))))
                           (coe
                              MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
                              (coe
                                 MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                                 (coe
                                    MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_adHashingScheme_1264
                                       (coe v0))))
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txADhash_3230
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3366
                                    (coe v2)))
                              (coe
                                 MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                 MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6
                                 MAlonzo.Code.Agda.Primitive.d_lzero_20 erased
                                 MAlonzo.Code.Agda.Primitive.d_lzero_20 erased
                                 (MAlonzo.Code.Interface.Hashable.d_hash_16
                                    (coe
                                       MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_adHashingScheme_1264
                                          (coe v0))))
                                 (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txAD_3374
                                    (coe v2)))))))))))
-- Ledger.Conway.Specification.Utxow..generalizedField-s
d_'46'generalizedField'45's_32465 ::
  T_GeneralizeTel_32473 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2318
d_'46'generalizedField'45's_32465 v0
  = case coe v0 of
      C_mkGeneralizeTel_32475 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Utxow..generalizedField-tx
d_'46'generalizedField'45'tx_32467 ::
  T_GeneralizeTel_32473 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3354
d_'46'generalizedField'45'tx_32467 v0
  = case coe v0 of
      C_mkGeneralizeTel_32475 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Utxow..generalizedField-Γ
d_'46'generalizedField'45'Γ_32469 ::
  T_GeneralizeTel_32473 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2302
d_'46'generalizedField'45'Γ_32469 v0
  = case coe v0 of
      C_mkGeneralizeTel_32475 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Utxow..generalizedField-s'
d_'46'generalizedField'45's''_32471 ::
  T_GeneralizeTel_32473 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2318
d_'46'generalizedField'45's''_32471 v0
  = case coe v0 of
      C_mkGeneralizeTel_32475 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Utxow.GeneralizeTel
d_GeneralizeTel_32473 a0 a1 = ()
data T_GeneralizeTel_32473
  = C_mkGeneralizeTel_32475 MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2318
                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3354
                            MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2302
                            MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2318
