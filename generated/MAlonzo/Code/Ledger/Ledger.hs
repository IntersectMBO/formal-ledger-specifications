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

module MAlonzo.Code.Ledger.Ledger where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Class.Functor.Core
import qualified MAlonzo.Code.Class.Functor.Instances
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.Rational.Base
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Ledger.Abstract
import qualified MAlonzo.Code.Ledger.Address
import qualified MAlonzo.Code.Ledger.Certs
import qualified MAlonzo.Code.Ledger.Crypto
import qualified MAlonzo.Code.Ledger.Enact
import qualified MAlonzo.Code.Ledger.Gov
import qualified MAlonzo.Code.Ledger.GovernanceActions
import qualified MAlonzo.Code.Ledger.PParams
import qualified MAlonzo.Code.Ledger.Script
import qualified MAlonzo.Code.Ledger.Transaction
import qualified MAlonzo.Code.Ledger.Types.Epoch
import qualified MAlonzo.Code.Ledger.Types.GovStructure
import qualified MAlonzo.Code.Ledger.Utxo
import qualified MAlonzo.Code.Ledger.Utxow

-- _._⊢_⇀⦇_,CERTS⦈_
d__'8866'_'8640''10631'_'44'CERTS'10632'__20 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Certs.T_CertEnv_860 ->
  MAlonzo.Code.Ledger.Certs.T_CertState_924 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_828] ->
  MAlonzo.Code.Ledger.Certs.T_CertState_924 -> ()
d__'8866'_'8640''10631'_'44'CERTS'10632'__20 = erased
-- _.CertEnv
d_CertEnv_56 a0 = ()
-- _.CertState
d_CertState_58 a0 = ()
-- _.GovProposal
d_GovProposal_216 a0 = ()
-- _.GovVote
d_GovVote_220 a0 = ()
-- _.PParams
d_PParams_292 a0 = ()
-- _.ScriptHash
d_ScriptHash_356 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_ScriptHash_356 = erased
-- _.Slot
d_Slot_404 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Slot_404 = erased
-- _.Tx
d_Tx_434 a0 = ()
-- _.TxBody
d_TxBody_436 a0 = ()
-- _.epoch
d_epoch_516 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny -> AgdaAny
d_epoch_516 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_epoch_44
      (coe
         MAlonzo.Code.Ledger.Transaction.d_epochStructure_1512 (coe v0))
-- Ledger.Ledger._.EnactState
d_EnactState_1652 a0 a1 = ()
-- Ledger.Ledger._._⊢_⇀⦇_,GOV⦈_
d__'8866'_'8640''10631'_'44'GOV'10632'__1704 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1644 ->
  MAlonzo.Code.Ledger.Gov.T_GovEnv_1002 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> ()
d__'8866'_'8640''10631'_'44'GOV'10632'__1704 = erased
-- Ledger.Ledger._.GovEnv
d_GovEnv_1712 a0 a1 = ()
-- Ledger.Ledger._.GovState
d_GovState_1714 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1644 -> ()
d_GovState_1714 = erased
-- Ledger.Ledger._.UTxOState
d_UTxOState_1836 a0 a1 = ()
-- Ledger.Ledger._._⊢_⇀⦇_,UTXOW⦈_
d__'8866'_'8640''10631'_'44'UTXOW'10632'__1952 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Ledger.LEnv
d_LEnv_2010 a0 a1 = ()
data T_LEnv_2010
  = C_'10214'_'44'_'44'_'44'_'44'_'10215''737''7497'_2032 AgdaAny
                                                          (Maybe AgdaAny)
                                                          MAlonzo.Code.Ledger.PParams.T_PParams_240
                                                          MAlonzo.Code.Ledger.Enact.T_EnactState_824
                                                          Integer
-- Ledger.Ledger.LEnv.slot
d_slot_2022 :: T_LEnv_2010 -> AgdaAny
d_slot_2022 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''737''7497'_2032 v1 v2 v3 v4 v5
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.LEnv.ppolicy
d_ppolicy_2024 :: T_LEnv_2010 -> Maybe AgdaAny
d_ppolicy_2024 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''737''7497'_2032 v1 v2 v3 v4 v5
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.LEnv.pparams
d_pparams_2026 ::
  T_LEnv_2010 -> MAlonzo.Code.Ledger.PParams.T_PParams_240
d_pparams_2026 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''737''7497'_2032 v1 v2 v3 v4 v5
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.LEnv.enactState
d_enactState_2028 ::
  T_LEnv_2010 -> MAlonzo.Code.Ledger.Enact.T_EnactState_824
d_enactState_2028 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''737''7497'_2032 v1 v2 v3 v4 v5
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.LEnv.treasury
d_treasury_2030 :: T_LEnv_2010 -> Integer
d_treasury_2030 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''737''7497'_2032 v1 v2 v3 v4 v5
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.LState
d_LState_2034 a0 a1 = ()
data T_LState_2034
  = C_'10214'_'44'_'44'_'10215''737'_2048 MAlonzo.Code.Ledger.Utxo.T_UTxOState_1858
                                          [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                                          MAlonzo.Code.Ledger.Certs.T_CertState_924
-- Ledger.Ledger.LState.utxoSt
d_utxoSt_2042 ::
  T_LState_2034 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1858
d_utxoSt_2042 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2048 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.LState.govSt
d_govSt_2044 ::
  T_LState_2034 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2044 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2048 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.LState.certState
d_certState_2046 ::
  T_LState_2034 -> MAlonzo.Code.Ledger.Certs.T_CertState_924
d_certState_2046 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2048 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.txgov
d_txgov_2050 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1644 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2724 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_txgov_2050 ~v0 ~v1 v2 = du_txgov_2050 v2
du_txgov_2050 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2724 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_txgov_2050 v0
  = coe
      MAlonzo.Code.Data.List.Base.du__'43''43'__62
      (coe
         MAlonzo.Code.Class.Functor.Core.du_fmap_22
         MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20 () erased
         () erased (coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42)
         (MAlonzo.Code.Ledger.Transaction.d_txprop_2784 (coe v0)))
      (coe
         MAlonzo.Code.Class.Functor.Core.du_fmap_22
         MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20 () erased
         () erased (coe MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38)
         (MAlonzo.Code.Ledger.Transaction.d_txvote_2782 (coe v0)))
-- Ledger.Ledger._⊢_⇀⦇_,LEDGER⦈_
d__'8866'_'8640''10631'_'44'LEDGER'10632'__2116 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'LEDGER'10632'__2116
  = C_LEDGER'45'V_2196 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_LEDGER'45'I_2276 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Ledger._.certState
d_certState_2120 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1644 ->
  T_GeneralizeTel_5607 -> MAlonzo.Code.Ledger.Certs.T_CertState_924
d_certState_2120 ~v0 ~v1 v2 = du_certState_2120 v2
du_certState_2120 ::
  T_GeneralizeTel_5607 -> MAlonzo.Code.Ledger.Certs.T_CertState_924
du_certState_2120 v0
  = coe d_certState_2046 (coe d_'46'generalizedField'45's_5595 v0)
-- Ledger.Ledger._.govSt
d_govSt_2122 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1644 ->
  T_GeneralizeTel_5607 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2122 ~v0 ~v1 v2 = du_govSt_2122 v2
du_govSt_2122 ::
  T_GeneralizeTel_5607 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt_2122 v0
  = coe d_govSt_2044 (coe d_'46'generalizedField'45's_5595 v0)
-- Ledger.Ledger._.utxoSt
d_utxoSt_2124 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1644 ->
  T_GeneralizeTel_5607 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1858
d_utxoSt_2124 ~v0 ~v1 v2 = du_utxoSt_2124 v2
du_utxoSt_2124 ::
  T_GeneralizeTel_5607 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1858
du_utxoSt_2124 v0
  = coe d_utxoSt_2042 (coe d_'46'generalizedField'45's_5595 v0)
-- Ledger.Ledger._.txcerts
d_txcerts_2146 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1644 ->
  T_GeneralizeTel_5607 -> [MAlonzo.Code.Ledger.Certs.T_DCert_828]
d_txcerts_2146 ~v0 ~v1 v2 = du_txcerts_2146 v2
du_txcerts_2146 ::
  T_GeneralizeTel_5607 -> [MAlonzo.Code.Ledger.Certs.T_DCert_828]
du_txcerts_2146 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txcerts_2778
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2836
         (coe d_'46'generalizedField'45'tx_5597 v0))
-- Ledger.Ledger._.txid
d_txid_2152 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1644 ->
  T_GeneralizeTel_5607 -> AgdaAny
d_txid_2152 ~v0 ~v1 v2 = du_txid_2152 v2
du_txid_2152 :: T_GeneralizeTel_5607 -> AgdaAny
du_txid_2152 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txid_2798
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2836
         (coe d_'46'generalizedField'45'tx_5597 v0))
-- Ledger.Ledger._.txvote
d_txvote_2166 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1644 ->
  T_GeneralizeTel_5607 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_730]
d_txvote_2166 ~v0 ~v1 v2 = du_txvote_2166 v2
du_txvote_2166 ::
  T_GeneralizeTel_5607 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_730]
du_txvote_2166 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txvote_2782
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2836
         (coe d_'46'generalizedField'45'tx_5597 v0))
-- Ledger.Ledger._.txwdrls
d_txwdrls_2168 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1644 ->
  T_GeneralizeTel_5607 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_2168 ~v0 ~v1 v2 = du_txwdrls_2168 v2
du_txwdrls_2168 ::
  T_GeneralizeTel_5607 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txwdrls_2168 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txwdrls_2780
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2836
         (coe d_'46'generalizedField'45'tx_5597 v0))
-- Ledger.Ledger._.enactState
d_enactState_2172 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1644 ->
  T_GeneralizeTel_5607 -> MAlonzo.Code.Ledger.Enact.T_EnactState_824
d_enactState_2172 ~v0 ~v1 v2 = du_enactState_2172 v2
du_enactState_2172 ::
  T_GeneralizeTel_5607 -> MAlonzo.Code.Ledger.Enact.T_EnactState_824
du_enactState_2172 v0
  = coe d_enactState_2028 (coe d_'46'generalizedField'45'Γ_5599 v0)
-- Ledger.Ledger._.pparams
d_pparams_2174 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1644 ->
  T_GeneralizeTel_5607 -> MAlonzo.Code.Ledger.PParams.T_PParams_240
d_pparams_2174 ~v0 ~v1 v2 = du_pparams_2174 v2
du_pparams_2174 ::
  T_GeneralizeTel_5607 -> MAlonzo.Code.Ledger.PParams.T_PParams_240
du_pparams_2174 v0
  = coe d_pparams_2026 (coe d_'46'generalizedField'45'Γ_5599 v0)
-- Ledger.Ledger._.ppolicy
d_ppolicy_2176 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1644 ->
  T_GeneralizeTel_5607 -> Maybe AgdaAny
d_ppolicy_2176 ~v0 ~v1 v2 = du_ppolicy_2176 v2
du_ppolicy_2176 :: T_GeneralizeTel_5607 -> Maybe AgdaAny
du_ppolicy_2176 v0
  = coe d_ppolicy_2024 (coe d_'46'generalizedField'45'Γ_5599 v0)
-- Ledger.Ledger._.slot
d_slot_2178 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1644 ->
  T_GeneralizeTel_5607 -> AgdaAny
d_slot_2178 ~v0 ~v1 v2 = du_slot_2178 v2
du_slot_2178 :: T_GeneralizeTel_5607 -> AgdaAny
du_slot_2178 v0
  = coe d_slot_2022 (coe d_'46'generalizedField'45'Γ_5599 v0)
-- Ledger.Ledger._.treasury
d_treasury_2180 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1644 ->
  T_GeneralizeTel_5607 -> Integer
d_treasury_2180 ~v0 ~v1 v2 = du_treasury_2180 v2
du_treasury_2180 :: T_GeneralizeTel_5607 -> Integer
du_treasury_2180 v0
  = coe d_treasury_2030 (coe d_'46'generalizedField'45'Γ_5599 v0)
-- Ledger.Ledger._.enactState
d_enactState_2186 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1644 ->
  T_GeneralizeTel_5607 -> MAlonzo.Code.Ledger.Enact.T_EnactState_824
d_enactState_2186 ~v0 ~v1 v2 = du_enactState_2186 v2
du_enactState_2186 ::
  T_GeneralizeTel_5607 -> MAlonzo.Code.Ledger.Enact.T_EnactState_824
du_enactState_2186 v0
  = coe d_enactState_2028 (coe d_'46'generalizedField'45'Γ_5599 v0)
-- Ledger.Ledger._.pparams
d_pparams_2188 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1644 ->
  T_GeneralizeTel_5607 -> MAlonzo.Code.Ledger.PParams.T_PParams_240
d_pparams_2188 ~v0 ~v1 v2 = du_pparams_2188 v2
du_pparams_2188 ::
  T_GeneralizeTel_5607 -> MAlonzo.Code.Ledger.PParams.T_PParams_240
du_pparams_2188 v0
  = coe d_pparams_2026 (coe d_'46'generalizedField'45'Γ_5599 v0)
-- Ledger.Ledger._.ppolicy
d_ppolicy_2190 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1644 ->
  T_GeneralizeTel_5607 -> Maybe AgdaAny
d_ppolicy_2190 ~v0 ~v1 v2 = du_ppolicy_2190 v2
du_ppolicy_2190 :: T_GeneralizeTel_5607 -> Maybe AgdaAny
du_ppolicy_2190 v0
  = coe d_ppolicy_2024 (coe d_'46'generalizedField'45'Γ_5599 v0)
-- Ledger.Ledger._.slot
d_slot_2192 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1644 ->
  T_GeneralizeTel_5607 -> AgdaAny
d_slot_2192 ~v0 ~v1 v2 = du_slot_2192 v2
du_slot_2192 :: T_GeneralizeTel_5607 -> AgdaAny
du_slot_2192 v0
  = coe d_slot_2022 (coe d_'46'generalizedField'45'Γ_5599 v0)
-- Ledger.Ledger._.treasury
d_treasury_2194 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1644 ->
  T_GeneralizeTel_5607 -> Integer
d_treasury_2194 ~v0 ~v1 v2 = du_treasury_2194 v2
du_treasury_2194 :: T_GeneralizeTel_5607 -> Integer
du_treasury_2194 v0
  = coe d_treasury_2030 (coe d_'46'generalizedField'45'Γ_5599 v0)
-- Ledger.Ledger._.certState
d_certState_2200 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1644 ->
  T_GeneralizeTel_6027 -> MAlonzo.Code.Ledger.Certs.T_CertState_924
d_certState_2200 ~v0 ~v1 v2 = du_certState_2200 v2
du_certState_2200 ::
  T_GeneralizeTel_6027 -> MAlonzo.Code.Ledger.Certs.T_CertState_924
du_certState_2200 v0
  = coe d_certState_2046 (coe d_'46'generalizedField'45's_6019 v0)
-- Ledger.Ledger._.govSt
d_govSt_2202 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1644 ->
  T_GeneralizeTel_6027 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2202 ~v0 ~v1 v2 = du_govSt_2202 v2
du_govSt_2202 ::
  T_GeneralizeTel_6027 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt_2202 v0
  = coe d_govSt_2044 (coe d_'46'generalizedField'45's_6019 v0)
-- Ledger.Ledger._.utxoSt
d_utxoSt_2204 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1644 ->
  T_GeneralizeTel_6027 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1858
d_utxoSt_2204 ~v0 ~v1 v2 = du_utxoSt_2204 v2
du_utxoSt_2204 ::
  T_GeneralizeTel_6027 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1858
du_utxoSt_2204 v0
  = coe d_utxoSt_2042 (coe d_'46'generalizedField'45's_6019 v0)
-- Ledger.Ledger._.enactState
d_enactState_2252 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1644 ->
  T_GeneralizeTel_6027 -> MAlonzo.Code.Ledger.Enact.T_EnactState_824
d_enactState_2252 ~v0 ~v1 v2 = du_enactState_2252 v2
du_enactState_2252 ::
  T_GeneralizeTel_6027 -> MAlonzo.Code.Ledger.Enact.T_EnactState_824
du_enactState_2252 v0
  = coe d_enactState_2028 (coe d_'46'generalizedField'45'Γ_6023 v0)
-- Ledger.Ledger._.pparams
d_pparams_2254 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1644 ->
  T_GeneralizeTel_6027 -> MAlonzo.Code.Ledger.PParams.T_PParams_240
d_pparams_2254 ~v0 ~v1 v2 = du_pparams_2254 v2
du_pparams_2254 ::
  T_GeneralizeTel_6027 -> MAlonzo.Code.Ledger.PParams.T_PParams_240
du_pparams_2254 v0
  = coe d_pparams_2026 (coe d_'46'generalizedField'45'Γ_6023 v0)
-- Ledger.Ledger._.ppolicy
d_ppolicy_2256 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1644 ->
  T_GeneralizeTel_6027 -> Maybe AgdaAny
d_ppolicy_2256 ~v0 ~v1 v2 = du_ppolicy_2256 v2
du_ppolicy_2256 :: T_GeneralizeTel_6027 -> Maybe AgdaAny
du_ppolicy_2256 v0
  = coe d_ppolicy_2024 (coe d_'46'generalizedField'45'Γ_6023 v0)
-- Ledger.Ledger._.slot
d_slot_2258 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1644 ->
  T_GeneralizeTel_6027 -> AgdaAny
d_slot_2258 ~v0 ~v1 v2 = du_slot_2258 v2
du_slot_2258 :: T_GeneralizeTel_6027 -> AgdaAny
du_slot_2258 v0
  = coe d_slot_2022 (coe d_'46'generalizedField'45'Γ_6023 v0)
-- Ledger.Ledger._.treasury
d_treasury_2260 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1644 ->
  T_GeneralizeTel_6027 -> Integer
d_treasury_2260 ~v0 ~v1 v2 = du_treasury_2260 v2
du_treasury_2260 :: T_GeneralizeTel_6027 -> Integer
du_treasury_2260 v0
  = coe d_treasury_2030 (coe d_'46'generalizedField'45'Γ_6023 v0)
-- Ledger.Ledger._.enactState
d_enactState_2266 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1644 ->
  T_GeneralizeTel_6027 -> MAlonzo.Code.Ledger.Enact.T_EnactState_824
d_enactState_2266 ~v0 ~v1 v2 = du_enactState_2266 v2
du_enactState_2266 ::
  T_GeneralizeTel_6027 -> MAlonzo.Code.Ledger.Enact.T_EnactState_824
du_enactState_2266 v0
  = coe d_enactState_2028 (coe d_'46'generalizedField'45'Γ_6023 v0)
-- Ledger.Ledger._.pparams
d_pparams_2268 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1644 ->
  T_GeneralizeTel_6027 -> MAlonzo.Code.Ledger.PParams.T_PParams_240
d_pparams_2268 ~v0 ~v1 v2 = du_pparams_2268 v2
du_pparams_2268 ::
  T_GeneralizeTel_6027 -> MAlonzo.Code.Ledger.PParams.T_PParams_240
du_pparams_2268 v0
  = coe d_pparams_2026 (coe d_'46'generalizedField'45'Γ_6023 v0)
-- Ledger.Ledger._.ppolicy
d_ppolicy_2270 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1644 ->
  T_GeneralizeTel_6027 -> Maybe AgdaAny
d_ppolicy_2270 ~v0 ~v1 v2 = du_ppolicy_2270 v2
du_ppolicy_2270 :: T_GeneralizeTel_6027 -> Maybe AgdaAny
du_ppolicy_2270 v0
  = coe d_ppolicy_2024 (coe d_'46'generalizedField'45'Γ_6023 v0)
-- Ledger.Ledger._.slot
d_slot_2272 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1644 ->
  T_GeneralizeTel_6027 -> AgdaAny
d_slot_2272 ~v0 ~v1 v2 = du_slot_2272 v2
du_slot_2272 :: T_GeneralizeTel_6027 -> AgdaAny
du_slot_2272 v0
  = coe d_slot_2022 (coe d_'46'generalizedField'45'Γ_6023 v0)
-- Ledger.Ledger._.treasury
d_treasury_2274 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1644 ->
  T_GeneralizeTel_6027 -> Integer
d_treasury_2274 ~v0 ~v1 v2 = du_treasury_2274 v2
du_treasury_2274 :: T_GeneralizeTel_6027 -> Integer
du_treasury_2274 v0
  = coe d_treasury_2030 (coe d_'46'generalizedField'45'Γ_6023 v0)
-- Ledger.Ledger._⊢_⇀⦇_,LEDGERS⦈_
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2294 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1644 ->
  T_LEnv_2010 ->
  T_LState_2034 ->
  [MAlonzo.Code.Ledger.Transaction.T_Tx_2826] -> T_LState_2034 -> ()
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2294 = erased
-- Ledger.Ledger..generalizedField-s
d_'46'generalizedField'45's_5595 ::
  T_GeneralizeTel_5607 -> T_LState_2034
d_'46'generalizedField'45's_5595 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-tx
d_'46'generalizedField'45'tx_5597 ::
  T_GeneralizeTel_5607 -> MAlonzo.Code.Ledger.Transaction.T_Tx_2826
d_'46'generalizedField'45'tx_5597 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-Γ
d_'46'generalizedField'45'Γ_5599 ::
  T_GeneralizeTel_5607 -> T_LEnv_2010
d_'46'generalizedField'45'Γ_5599 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-utxoSt'
d_'46'generalizedField'45'utxoSt''_5601 ::
  T_GeneralizeTel_5607 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1858
d_'46'generalizedField'45'utxoSt''_5601
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-certState'
d_'46'generalizedField'45'certState''_5603 ::
  T_GeneralizeTel_5607 -> MAlonzo.Code.Ledger.Certs.T_CertState_924
d_'46'generalizedField'45'certState''_5603
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-govSt'
d_'46'generalizedField'45'govSt''_5605 ::
  T_GeneralizeTel_5607 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_'46'generalizedField'45'govSt''_5605
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.GeneralizeTel
d_GeneralizeTel_5607 a0 a1 = ()
data T_GeneralizeTel_5607
  = C_mkGeneralizeTel_5609 T_LState_2034
                           MAlonzo.Code.Ledger.Transaction.T_Tx_2826 T_LEnv_2010
                           MAlonzo.Code.Ledger.Utxo.T_UTxOState_1858
                           MAlonzo.Code.Ledger.Certs.T_CertState_924
                           [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
-- Ledger.Ledger..generalizedField-s
d_'46'generalizedField'45's_6019 ::
  T_GeneralizeTel_6027 -> T_LState_2034
d_'46'generalizedField'45's_6019 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-tx
d_'46'generalizedField'45'tx_6021 ::
  T_GeneralizeTel_6027 -> MAlonzo.Code.Ledger.Transaction.T_Tx_2826
d_'46'generalizedField'45'tx_6021 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-Γ
d_'46'generalizedField'45'Γ_6023 ::
  T_GeneralizeTel_6027 -> T_LEnv_2010
d_'46'generalizedField'45'Γ_6023 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-utxoSt'
d_'46'generalizedField'45'utxoSt''_6025 ::
  T_GeneralizeTel_6027 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1858
d_'46'generalizedField'45'utxoSt''_6025
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.GeneralizeTel
d_GeneralizeTel_6027 a0 a1 = ()
data T_GeneralizeTel_6027
  = C_mkGeneralizeTel_6029 T_LState_2034
                           MAlonzo.Code.Ledger.Transaction.T_Tx_2826 T_LEnv_2010
                           MAlonzo.Code.Ledger.Utxo.T_UTxOState_1858
