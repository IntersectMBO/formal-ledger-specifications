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
d__'8866'_'8640''10631'_'44'CERTS'10632'__22 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Certs.T_CertEnv_866 ->
  MAlonzo.Code.Ledger.Certs.T_CertState_930 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_834] ->
  MAlonzo.Code.Ledger.Certs.T_CertState_930 -> ()
d__'8866'_'8640''10631'_'44'CERTS'10632'__22 = erased
-- _.CertEnv
d_CertEnv_60 a0 = ()
-- _.CertState
d_CertState_62 a0 = ()
-- _.GovProposal
d_GovProposal_220 a0 = ()
-- _.GovVote
d_GovVote_224 a0 = ()
-- _.PParams
d_PParams_296 a0 = ()
-- _.ScriptHash
d_ScriptHash_360 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_ScriptHash_360 = erased
-- _.Slot
d_Slot_408 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Slot_408 = erased
-- _.Tx
d_Tx_438 a0 = ()
-- _.TxBody
d_TxBody_440 a0 = ()
-- _.epoch
d_epoch_520 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny -> AgdaAny
d_epoch_520 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_epoch_68
      (coe
         MAlonzo.Code.Ledger.Transaction.d_epochStructure_1520 (coe v0))
-- Ledger.Ledger._.EnactState
d_EnactState_1658 a0 a1 = ()
-- Ledger.Ledger._._⊢_⇀⦇_,GOV⦈_
d__'8866'_'8640''10631'_'44'GOV'10632'__1718 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  MAlonzo.Code.Ledger.Gov.T_GovEnv_1008 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> ()
d__'8866'_'8640''10631'_'44'GOV'10632'__1718 = erased
-- Ledger.Ledger._.GovEnv
d_GovEnv_1726 a0 a1 = ()
-- Ledger.Ledger._.GovState
d_GovState_1728 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 -> ()
d_GovState_1728 = erased
-- Ledger.Ledger._.UTxOState
d_UTxOState_1850 a0 a1 = ()
-- Ledger.Ledger._._⊢_⇀⦇_,UTXOW⦈_
d__'8866'_'8640''10631'_'44'UTXOW'10632'__1966 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Ledger.LEnv
d_LEnv_2024 a0 a1 = ()
data T_LEnv_2024
  = C_'10214'_'44'_'44'_'44'_'44'_'10215''737''7497'_2046 AgdaAny
                                                          (Maybe AgdaAny)
                                                          MAlonzo.Code.Ledger.PParams.T_PParams_244
                                                          MAlonzo.Code.Ledger.Enact.T_EnactState_830
                                                          Integer
-- Ledger.Ledger.LEnv.slot
d_slot_2036 :: T_LEnv_2024 -> AgdaAny
d_slot_2036 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''737''7497'_2046 v1 v2 v3 v4 v5
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.LEnv.ppolicy
d_ppolicy_2038 :: T_LEnv_2024 -> Maybe AgdaAny
d_ppolicy_2038 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''737''7497'_2046 v1 v2 v3 v4 v5
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.LEnv.pparams
d_pparams_2040 ::
  T_LEnv_2024 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pparams_2040 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''737''7497'_2046 v1 v2 v3 v4 v5
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.LEnv.enactState
d_enactState_2042 ::
  T_LEnv_2024 -> MAlonzo.Code.Ledger.Enact.T_EnactState_830
d_enactState_2042 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''737''7497'_2046 v1 v2 v3 v4 v5
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.LEnv.treasury
d_treasury_2044 :: T_LEnv_2024 -> Integer
d_treasury_2044 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''737''7497'_2046 v1 v2 v3 v4 v5
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.LState
d_LState_2048 a0 a1 = ()
data T_LState_2048
  = C_'10214'_'44'_'44'_'10215''737'_2062 MAlonzo.Code.Ledger.Utxo.T_UTxOState_1864
                                          [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                                          MAlonzo.Code.Ledger.Certs.T_CertState_930
-- Ledger.Ledger.LState.utxoSt
d_utxoSt_2056 ::
  T_LState_2048 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1864
d_utxoSt_2056 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2062 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.LState.govSt
d_govSt_2058 ::
  T_LState_2048 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2058 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2062 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.LState.certState
d_certState_2060 ::
  T_LState_2048 -> MAlonzo.Code.Ledger.Certs.T_CertState_930
d_certState_2060 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2062 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.txgov
d_txgov_2064 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2736 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_txgov_2064 ~v0 ~v1 v2 = du_txgov_2064 v2
du_txgov_2064 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2736 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_txgov_2064 v0
  = coe
      MAlonzo.Code.Data.List.Base.du__'43''43'__62
      (coe
         MAlonzo.Code.Class.Functor.Core.du_fmap_22
         MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20 () erased
         () erased (coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42)
         (MAlonzo.Code.Ledger.Transaction.d_txprop_2796 (coe v0)))
      (coe
         MAlonzo.Code.Class.Functor.Core.du_fmap_22
         MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20 () erased
         () erased (coe MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38)
         (MAlonzo.Code.Ledger.Transaction.d_txvote_2794 (coe v0)))
-- Ledger.Ledger._⊢_⇀⦇_,LEDGER⦈_
d__'8866'_'8640''10631'_'44'LEDGER'10632'__2130 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'LEDGER'10632'__2130
  = C_LEDGER'45'V_2210 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_LEDGER'45'I_2290 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Ledger._.certState
d_certState_2134 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  T_GeneralizeTel_5677 -> MAlonzo.Code.Ledger.Certs.T_CertState_930
d_certState_2134 ~v0 ~v1 v2 = du_certState_2134 v2
du_certState_2134 ::
  T_GeneralizeTel_5677 -> MAlonzo.Code.Ledger.Certs.T_CertState_930
du_certState_2134 v0
  = coe d_certState_2060 (coe d_'46'generalizedField'45's_5665 v0)
-- Ledger.Ledger._.govSt
d_govSt_2136 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  T_GeneralizeTel_5677 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2136 ~v0 ~v1 v2 = du_govSt_2136 v2
du_govSt_2136 ::
  T_GeneralizeTel_5677 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt_2136 v0
  = coe d_govSt_2058 (coe d_'46'generalizedField'45's_5665 v0)
-- Ledger.Ledger._.utxoSt
d_utxoSt_2138 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  T_GeneralizeTel_5677 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1864
d_utxoSt_2138 ~v0 ~v1 v2 = du_utxoSt_2138 v2
du_utxoSt_2138 ::
  T_GeneralizeTel_5677 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1864
du_utxoSt_2138 v0
  = coe d_utxoSt_2056 (coe d_'46'generalizedField'45's_5665 v0)
-- Ledger.Ledger._.txcerts
d_txcerts_2160 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  T_GeneralizeTel_5677 -> [MAlonzo.Code.Ledger.Certs.T_DCert_834]
d_txcerts_2160 ~v0 ~v1 v2 = du_txcerts_2160 v2
du_txcerts_2160 ::
  T_GeneralizeTel_5677 -> [MAlonzo.Code.Ledger.Certs.T_DCert_834]
du_txcerts_2160 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txcerts_2790
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2848
         (coe d_'46'generalizedField'45'tx_5667 v0))
-- Ledger.Ledger._.txid
d_txid_2166 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  T_GeneralizeTel_5677 -> AgdaAny
d_txid_2166 ~v0 ~v1 v2 = du_txid_2166 v2
du_txid_2166 :: T_GeneralizeTel_5677 -> AgdaAny
du_txid_2166 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txid_2810
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2848
         (coe d_'46'generalizedField'45'tx_5667 v0))
-- Ledger.Ledger._.txvote
d_txvote_2180 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  T_GeneralizeTel_5677 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_736]
d_txvote_2180 ~v0 ~v1 v2 = du_txvote_2180 v2
du_txvote_2180 ::
  T_GeneralizeTel_5677 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_736]
du_txvote_2180 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txvote_2794
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2848
         (coe d_'46'generalizedField'45'tx_5667 v0))
-- Ledger.Ledger._.txwdrls
d_txwdrls_2182 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  T_GeneralizeTel_5677 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_2182 ~v0 ~v1 v2 = du_txwdrls_2182 v2
du_txwdrls_2182 ::
  T_GeneralizeTel_5677 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txwdrls_2182 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txwdrls_2792
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2848
         (coe d_'46'generalizedField'45'tx_5667 v0))
-- Ledger.Ledger._.enactState
d_enactState_2186 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  T_GeneralizeTel_5677 -> MAlonzo.Code.Ledger.Enact.T_EnactState_830
d_enactState_2186 ~v0 ~v1 v2 = du_enactState_2186 v2
du_enactState_2186 ::
  T_GeneralizeTel_5677 -> MAlonzo.Code.Ledger.Enact.T_EnactState_830
du_enactState_2186 v0
  = coe d_enactState_2042 (coe d_'46'generalizedField'45'Γ_5669 v0)
-- Ledger.Ledger._.pparams
d_pparams_2188 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  T_GeneralizeTel_5677 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pparams_2188 ~v0 ~v1 v2 = du_pparams_2188 v2
du_pparams_2188 ::
  T_GeneralizeTel_5677 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
du_pparams_2188 v0
  = coe d_pparams_2040 (coe d_'46'generalizedField'45'Γ_5669 v0)
-- Ledger.Ledger._.ppolicy
d_ppolicy_2190 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  T_GeneralizeTel_5677 -> Maybe AgdaAny
d_ppolicy_2190 ~v0 ~v1 v2 = du_ppolicy_2190 v2
du_ppolicy_2190 :: T_GeneralizeTel_5677 -> Maybe AgdaAny
du_ppolicy_2190 v0
  = coe d_ppolicy_2038 (coe d_'46'generalizedField'45'Γ_5669 v0)
-- Ledger.Ledger._.slot
d_slot_2192 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  T_GeneralizeTel_5677 -> AgdaAny
d_slot_2192 ~v0 ~v1 v2 = du_slot_2192 v2
du_slot_2192 :: T_GeneralizeTel_5677 -> AgdaAny
du_slot_2192 v0
  = coe d_slot_2036 (coe d_'46'generalizedField'45'Γ_5669 v0)
-- Ledger.Ledger._.treasury
d_treasury_2194 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  T_GeneralizeTel_5677 -> Integer
d_treasury_2194 ~v0 ~v1 v2 = du_treasury_2194 v2
du_treasury_2194 :: T_GeneralizeTel_5677 -> Integer
du_treasury_2194 v0
  = coe d_treasury_2044 (coe d_'46'generalizedField'45'Γ_5669 v0)
-- Ledger.Ledger._.enactState
d_enactState_2200 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  T_GeneralizeTel_5677 -> MAlonzo.Code.Ledger.Enact.T_EnactState_830
d_enactState_2200 ~v0 ~v1 v2 = du_enactState_2200 v2
du_enactState_2200 ::
  T_GeneralizeTel_5677 -> MAlonzo.Code.Ledger.Enact.T_EnactState_830
du_enactState_2200 v0
  = coe d_enactState_2042 (coe d_'46'generalizedField'45'Γ_5669 v0)
-- Ledger.Ledger._.pparams
d_pparams_2202 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  T_GeneralizeTel_5677 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pparams_2202 ~v0 ~v1 v2 = du_pparams_2202 v2
du_pparams_2202 ::
  T_GeneralizeTel_5677 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
du_pparams_2202 v0
  = coe d_pparams_2040 (coe d_'46'generalizedField'45'Γ_5669 v0)
-- Ledger.Ledger._.ppolicy
d_ppolicy_2204 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  T_GeneralizeTel_5677 -> Maybe AgdaAny
d_ppolicy_2204 ~v0 ~v1 v2 = du_ppolicy_2204 v2
du_ppolicy_2204 :: T_GeneralizeTel_5677 -> Maybe AgdaAny
du_ppolicy_2204 v0
  = coe d_ppolicy_2038 (coe d_'46'generalizedField'45'Γ_5669 v0)
-- Ledger.Ledger._.slot
d_slot_2206 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  T_GeneralizeTel_5677 -> AgdaAny
d_slot_2206 ~v0 ~v1 v2 = du_slot_2206 v2
du_slot_2206 :: T_GeneralizeTel_5677 -> AgdaAny
du_slot_2206 v0
  = coe d_slot_2036 (coe d_'46'generalizedField'45'Γ_5669 v0)
-- Ledger.Ledger._.treasury
d_treasury_2208 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  T_GeneralizeTel_5677 -> Integer
d_treasury_2208 ~v0 ~v1 v2 = du_treasury_2208 v2
du_treasury_2208 :: T_GeneralizeTel_5677 -> Integer
du_treasury_2208 v0
  = coe d_treasury_2044 (coe d_'46'generalizedField'45'Γ_5669 v0)
-- Ledger.Ledger._.certState
d_certState_2214 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  T_GeneralizeTel_6097 -> MAlonzo.Code.Ledger.Certs.T_CertState_930
d_certState_2214 ~v0 ~v1 v2 = du_certState_2214 v2
du_certState_2214 ::
  T_GeneralizeTel_6097 -> MAlonzo.Code.Ledger.Certs.T_CertState_930
du_certState_2214 v0
  = coe d_certState_2060 (coe d_'46'generalizedField'45's_6089 v0)
-- Ledger.Ledger._.govSt
d_govSt_2216 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  T_GeneralizeTel_6097 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2216 ~v0 ~v1 v2 = du_govSt_2216 v2
du_govSt_2216 ::
  T_GeneralizeTel_6097 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt_2216 v0
  = coe d_govSt_2058 (coe d_'46'generalizedField'45's_6089 v0)
-- Ledger.Ledger._.utxoSt
d_utxoSt_2218 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  T_GeneralizeTel_6097 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1864
d_utxoSt_2218 ~v0 ~v1 v2 = du_utxoSt_2218 v2
du_utxoSt_2218 ::
  T_GeneralizeTel_6097 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1864
du_utxoSt_2218 v0
  = coe d_utxoSt_2056 (coe d_'46'generalizedField'45's_6089 v0)
-- Ledger.Ledger._.enactState
d_enactState_2266 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  T_GeneralizeTel_6097 -> MAlonzo.Code.Ledger.Enact.T_EnactState_830
d_enactState_2266 ~v0 ~v1 v2 = du_enactState_2266 v2
du_enactState_2266 ::
  T_GeneralizeTel_6097 -> MAlonzo.Code.Ledger.Enact.T_EnactState_830
du_enactState_2266 v0
  = coe d_enactState_2042 (coe d_'46'generalizedField'45'Γ_6093 v0)
-- Ledger.Ledger._.pparams
d_pparams_2268 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  T_GeneralizeTel_6097 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pparams_2268 ~v0 ~v1 v2 = du_pparams_2268 v2
du_pparams_2268 ::
  T_GeneralizeTel_6097 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
du_pparams_2268 v0
  = coe d_pparams_2040 (coe d_'46'generalizedField'45'Γ_6093 v0)
-- Ledger.Ledger._.ppolicy
d_ppolicy_2270 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  T_GeneralizeTel_6097 -> Maybe AgdaAny
d_ppolicy_2270 ~v0 ~v1 v2 = du_ppolicy_2270 v2
du_ppolicy_2270 :: T_GeneralizeTel_6097 -> Maybe AgdaAny
du_ppolicy_2270 v0
  = coe d_ppolicy_2038 (coe d_'46'generalizedField'45'Γ_6093 v0)
-- Ledger.Ledger._.slot
d_slot_2272 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  T_GeneralizeTel_6097 -> AgdaAny
d_slot_2272 ~v0 ~v1 v2 = du_slot_2272 v2
du_slot_2272 :: T_GeneralizeTel_6097 -> AgdaAny
du_slot_2272 v0
  = coe d_slot_2036 (coe d_'46'generalizedField'45'Γ_6093 v0)
-- Ledger.Ledger._.treasury
d_treasury_2274 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  T_GeneralizeTel_6097 -> Integer
d_treasury_2274 ~v0 ~v1 v2 = du_treasury_2274 v2
du_treasury_2274 :: T_GeneralizeTel_6097 -> Integer
du_treasury_2274 v0
  = coe d_treasury_2044 (coe d_'46'generalizedField'45'Γ_6093 v0)
-- Ledger.Ledger._.enactState
d_enactState_2280 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  T_GeneralizeTel_6097 -> MAlonzo.Code.Ledger.Enact.T_EnactState_830
d_enactState_2280 ~v0 ~v1 v2 = du_enactState_2280 v2
du_enactState_2280 ::
  T_GeneralizeTel_6097 -> MAlonzo.Code.Ledger.Enact.T_EnactState_830
du_enactState_2280 v0
  = coe d_enactState_2042 (coe d_'46'generalizedField'45'Γ_6093 v0)
-- Ledger.Ledger._.pparams
d_pparams_2282 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  T_GeneralizeTel_6097 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pparams_2282 ~v0 ~v1 v2 = du_pparams_2282 v2
du_pparams_2282 ::
  T_GeneralizeTel_6097 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
du_pparams_2282 v0
  = coe d_pparams_2040 (coe d_'46'generalizedField'45'Γ_6093 v0)
-- Ledger.Ledger._.ppolicy
d_ppolicy_2284 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  T_GeneralizeTel_6097 -> Maybe AgdaAny
d_ppolicy_2284 ~v0 ~v1 v2 = du_ppolicy_2284 v2
du_ppolicy_2284 :: T_GeneralizeTel_6097 -> Maybe AgdaAny
du_ppolicy_2284 v0
  = coe d_ppolicy_2038 (coe d_'46'generalizedField'45'Γ_6093 v0)
-- Ledger.Ledger._.slot
d_slot_2286 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  T_GeneralizeTel_6097 -> AgdaAny
d_slot_2286 ~v0 ~v1 v2 = du_slot_2286 v2
du_slot_2286 :: T_GeneralizeTel_6097 -> AgdaAny
du_slot_2286 v0
  = coe d_slot_2036 (coe d_'46'generalizedField'45'Γ_6093 v0)
-- Ledger.Ledger._.treasury
d_treasury_2288 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  T_GeneralizeTel_6097 -> Integer
d_treasury_2288 ~v0 ~v1 v2 = du_treasury_2288 v2
du_treasury_2288 :: T_GeneralizeTel_6097 -> Integer
du_treasury_2288 v0
  = coe d_treasury_2044 (coe d_'46'generalizedField'45'Γ_6093 v0)
-- Ledger.Ledger._⊢_⇀⦇_,LEDGERS⦈_
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2308 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  T_LEnv_2024 ->
  T_LState_2048 ->
  [MAlonzo.Code.Ledger.Transaction.T_Tx_2838] -> T_LState_2048 -> ()
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2308 = erased
-- Ledger.Ledger..generalizedField-s
d_'46'generalizedField'45's_5665 ::
  T_GeneralizeTel_5677 -> T_LState_2048
d_'46'generalizedField'45's_5665 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-tx
d_'46'generalizedField'45'tx_5667 ::
  T_GeneralizeTel_5677 -> MAlonzo.Code.Ledger.Transaction.T_Tx_2838
d_'46'generalizedField'45'tx_5667 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-Γ
d_'46'generalizedField'45'Γ_5669 ::
  T_GeneralizeTel_5677 -> T_LEnv_2024
d_'46'generalizedField'45'Γ_5669 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-utxoSt'
d_'46'generalizedField'45'utxoSt''_5671 ::
  T_GeneralizeTel_5677 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1864
d_'46'generalizedField'45'utxoSt''_5671
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-certState'
d_'46'generalizedField'45'certState''_5673 ::
  T_GeneralizeTel_5677 -> MAlonzo.Code.Ledger.Certs.T_CertState_930
d_'46'generalizedField'45'certState''_5673
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-govSt'
d_'46'generalizedField'45'govSt''_5675 ::
  T_GeneralizeTel_5677 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_'46'generalizedField'45'govSt''_5675
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.GeneralizeTel
d_GeneralizeTel_5677 a0 a1 = ()
data T_GeneralizeTel_5677
  = C_mkGeneralizeTel_5679 T_LState_2048
                           MAlonzo.Code.Ledger.Transaction.T_Tx_2838 T_LEnv_2024
                           MAlonzo.Code.Ledger.Utxo.T_UTxOState_1864
                           MAlonzo.Code.Ledger.Certs.T_CertState_930
                           [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
-- Ledger.Ledger..generalizedField-s
d_'46'generalizedField'45's_6089 ::
  T_GeneralizeTel_6097 -> T_LState_2048
d_'46'generalizedField'45's_6089 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-tx
d_'46'generalizedField'45'tx_6091 ::
  T_GeneralizeTel_6097 -> MAlonzo.Code.Ledger.Transaction.T_Tx_2838
d_'46'generalizedField'45'tx_6091 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-Γ
d_'46'generalizedField'45'Γ_6093 ::
  T_GeneralizeTel_6097 -> T_LEnv_2024
d_'46'generalizedField'45'Γ_6093 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-utxoSt'
d_'46'generalizedField'45'utxoSt''_6095 ::
  T_GeneralizeTel_6097 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1864
d_'46'generalizedField'45'utxoSt''_6095
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.GeneralizeTel
d_GeneralizeTel_6097 a0 a1 = ()
data T_GeneralizeTel_6097
  = C_mkGeneralizeTel_6099 T_LState_2048
                           MAlonzo.Code.Ledger.Transaction.T_Tx_2838 T_LEnv_2024
                           MAlonzo.Code.Ledger.Utxo.T_UTxOState_1864
