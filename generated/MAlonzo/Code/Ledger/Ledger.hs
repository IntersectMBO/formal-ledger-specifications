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
d__'8866'_'8640''10631'_'44'GOV'10632'__1712 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1644 ->
  MAlonzo.Code.Ledger.Gov.T_GovEnv_1002 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> ()
d__'8866'_'8640''10631'_'44'GOV'10632'__1712 = erased
-- Ledger.Ledger._.GovEnv
d_GovEnv_1720 a0 a1 = ()
-- Ledger.Ledger._.GovState
d_GovState_1722 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1644 -> ()
d_GovState_1722 = erased
-- Ledger.Ledger._.UTxOState
d_UTxOState_1844 a0 a1 = ()
-- Ledger.Ledger._._⊢_⇀⦇_,UTXOW⦈_
d__'8866'_'8640''10631'_'44'UTXOW'10632'__1960 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Ledger.LEnv
d_LEnv_2018 a0 a1 = ()
data T_LEnv_2018
  = C_'10214'_'44'_'44'_'44'_'44'_'10215''737''7497'_2040 AgdaAny
                                                          (Maybe AgdaAny)
                                                          MAlonzo.Code.Ledger.PParams.T_PParams_240
                                                          MAlonzo.Code.Ledger.Enact.T_EnactState_824
                                                          Integer
-- Ledger.Ledger.LEnv.slot
d_slot_2030 :: T_LEnv_2018 -> AgdaAny
d_slot_2030 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''737''7497'_2040 v1 v2 v3 v4 v5
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.LEnv.ppolicy
d_ppolicy_2032 :: T_LEnv_2018 -> Maybe AgdaAny
d_ppolicy_2032 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''737''7497'_2040 v1 v2 v3 v4 v5
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.LEnv.pparams
d_pparams_2034 ::
  T_LEnv_2018 -> MAlonzo.Code.Ledger.PParams.T_PParams_240
d_pparams_2034 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''737''7497'_2040 v1 v2 v3 v4 v5
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.LEnv.enactState
d_enactState_2036 ::
  T_LEnv_2018 -> MAlonzo.Code.Ledger.Enact.T_EnactState_824
d_enactState_2036 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''737''7497'_2040 v1 v2 v3 v4 v5
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.LEnv.treasury
d_treasury_2038 :: T_LEnv_2018 -> Integer
d_treasury_2038 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''737''7497'_2040 v1 v2 v3 v4 v5
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.LState
d_LState_2042 a0 a1 = ()
data T_LState_2042
  = C_'10214'_'44'_'44'_'10215''737'_2056 MAlonzo.Code.Ledger.Utxo.T_UTxOState_1858
                                          [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                                          MAlonzo.Code.Ledger.Certs.T_CertState_924
-- Ledger.Ledger.LState.utxoSt
d_utxoSt_2050 ::
  T_LState_2042 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1858
d_utxoSt_2050 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2056 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.LState.govSt
d_govSt_2052 ::
  T_LState_2042 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2052 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2056 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.LState.certState
d_certState_2054 ::
  T_LState_2042 -> MAlonzo.Code.Ledger.Certs.T_CertState_924
d_certState_2054 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2056 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.txgov
d_txgov_2058 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1644 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2724 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_txgov_2058 ~v0 ~v1 v2 = du_txgov_2058 v2
du_txgov_2058 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2724 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_txgov_2058 v0
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
d__'8866'_'8640''10631'_'44'LEDGER'10632'__2124 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'LEDGER'10632'__2124
  = C_LEDGER'45'V_2204 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_LEDGER'45'I_2284 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Ledger._.certState
d_certState_2128 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1644 ->
  T_GeneralizeTel_5663 -> MAlonzo.Code.Ledger.Certs.T_CertState_924
d_certState_2128 ~v0 ~v1 v2 = du_certState_2128 v2
du_certState_2128 ::
  T_GeneralizeTel_5663 -> MAlonzo.Code.Ledger.Certs.T_CertState_924
du_certState_2128 v0
  = coe d_certState_2054 (coe d_'46'generalizedField'45's_5651 v0)
-- Ledger.Ledger._.govSt
d_govSt_2130 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1644 ->
  T_GeneralizeTel_5663 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2130 ~v0 ~v1 v2 = du_govSt_2130 v2
du_govSt_2130 ::
  T_GeneralizeTel_5663 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt_2130 v0
  = coe d_govSt_2052 (coe d_'46'generalizedField'45's_5651 v0)
-- Ledger.Ledger._.utxoSt
d_utxoSt_2132 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1644 ->
  T_GeneralizeTel_5663 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1858
d_utxoSt_2132 ~v0 ~v1 v2 = du_utxoSt_2132 v2
du_utxoSt_2132 ::
  T_GeneralizeTel_5663 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1858
du_utxoSt_2132 v0
  = coe d_utxoSt_2050 (coe d_'46'generalizedField'45's_5651 v0)
-- Ledger.Ledger._.txcerts
d_txcerts_2154 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1644 ->
  T_GeneralizeTel_5663 -> [MAlonzo.Code.Ledger.Certs.T_DCert_828]
d_txcerts_2154 ~v0 ~v1 v2 = du_txcerts_2154 v2
du_txcerts_2154 ::
  T_GeneralizeTel_5663 -> [MAlonzo.Code.Ledger.Certs.T_DCert_828]
du_txcerts_2154 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txcerts_2778
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2836
         (coe d_'46'generalizedField'45'tx_5653 v0))
-- Ledger.Ledger._.txid
d_txid_2160 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1644 ->
  T_GeneralizeTel_5663 -> AgdaAny
d_txid_2160 ~v0 ~v1 v2 = du_txid_2160 v2
du_txid_2160 :: T_GeneralizeTel_5663 -> AgdaAny
du_txid_2160 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txid_2798
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2836
         (coe d_'46'generalizedField'45'tx_5653 v0))
-- Ledger.Ledger._.txvote
d_txvote_2174 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1644 ->
  T_GeneralizeTel_5663 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_730]
d_txvote_2174 ~v0 ~v1 v2 = du_txvote_2174 v2
du_txvote_2174 ::
  T_GeneralizeTel_5663 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_730]
du_txvote_2174 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txvote_2782
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2836
         (coe d_'46'generalizedField'45'tx_5653 v0))
-- Ledger.Ledger._.txwdrls
d_txwdrls_2176 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1644 ->
  T_GeneralizeTel_5663 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_2176 ~v0 ~v1 v2 = du_txwdrls_2176 v2
du_txwdrls_2176 ::
  T_GeneralizeTel_5663 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txwdrls_2176 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txwdrls_2780
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2836
         (coe d_'46'generalizedField'45'tx_5653 v0))
-- Ledger.Ledger._.enactState
d_enactState_2180 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1644 ->
  T_GeneralizeTel_5663 -> MAlonzo.Code.Ledger.Enact.T_EnactState_824
d_enactState_2180 ~v0 ~v1 v2 = du_enactState_2180 v2
du_enactState_2180 ::
  T_GeneralizeTel_5663 -> MAlonzo.Code.Ledger.Enact.T_EnactState_824
du_enactState_2180 v0
  = coe d_enactState_2036 (coe d_'46'generalizedField'45'Γ_5655 v0)
-- Ledger.Ledger._.pparams
d_pparams_2182 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1644 ->
  T_GeneralizeTel_5663 -> MAlonzo.Code.Ledger.PParams.T_PParams_240
d_pparams_2182 ~v0 ~v1 v2 = du_pparams_2182 v2
du_pparams_2182 ::
  T_GeneralizeTel_5663 -> MAlonzo.Code.Ledger.PParams.T_PParams_240
du_pparams_2182 v0
  = coe d_pparams_2034 (coe d_'46'generalizedField'45'Γ_5655 v0)
-- Ledger.Ledger._.ppolicy
d_ppolicy_2184 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1644 ->
  T_GeneralizeTel_5663 -> Maybe AgdaAny
d_ppolicy_2184 ~v0 ~v1 v2 = du_ppolicy_2184 v2
du_ppolicy_2184 :: T_GeneralizeTel_5663 -> Maybe AgdaAny
du_ppolicy_2184 v0
  = coe d_ppolicy_2032 (coe d_'46'generalizedField'45'Γ_5655 v0)
-- Ledger.Ledger._.slot
d_slot_2186 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1644 ->
  T_GeneralizeTel_5663 -> AgdaAny
d_slot_2186 ~v0 ~v1 v2 = du_slot_2186 v2
du_slot_2186 :: T_GeneralizeTel_5663 -> AgdaAny
du_slot_2186 v0
  = coe d_slot_2030 (coe d_'46'generalizedField'45'Γ_5655 v0)
-- Ledger.Ledger._.treasury
d_treasury_2188 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1644 ->
  T_GeneralizeTel_5663 -> Integer
d_treasury_2188 ~v0 ~v1 v2 = du_treasury_2188 v2
du_treasury_2188 :: T_GeneralizeTel_5663 -> Integer
du_treasury_2188 v0
  = coe d_treasury_2038 (coe d_'46'generalizedField'45'Γ_5655 v0)
-- Ledger.Ledger._.enactState
d_enactState_2194 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1644 ->
  T_GeneralizeTel_5663 -> MAlonzo.Code.Ledger.Enact.T_EnactState_824
d_enactState_2194 ~v0 ~v1 v2 = du_enactState_2194 v2
du_enactState_2194 ::
  T_GeneralizeTel_5663 -> MAlonzo.Code.Ledger.Enact.T_EnactState_824
du_enactState_2194 v0
  = coe d_enactState_2036 (coe d_'46'generalizedField'45'Γ_5655 v0)
-- Ledger.Ledger._.pparams
d_pparams_2196 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1644 ->
  T_GeneralizeTel_5663 -> MAlonzo.Code.Ledger.PParams.T_PParams_240
d_pparams_2196 ~v0 ~v1 v2 = du_pparams_2196 v2
du_pparams_2196 ::
  T_GeneralizeTel_5663 -> MAlonzo.Code.Ledger.PParams.T_PParams_240
du_pparams_2196 v0
  = coe d_pparams_2034 (coe d_'46'generalizedField'45'Γ_5655 v0)
-- Ledger.Ledger._.ppolicy
d_ppolicy_2198 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1644 ->
  T_GeneralizeTel_5663 -> Maybe AgdaAny
d_ppolicy_2198 ~v0 ~v1 v2 = du_ppolicy_2198 v2
du_ppolicy_2198 :: T_GeneralizeTel_5663 -> Maybe AgdaAny
du_ppolicy_2198 v0
  = coe d_ppolicy_2032 (coe d_'46'generalizedField'45'Γ_5655 v0)
-- Ledger.Ledger._.slot
d_slot_2200 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1644 ->
  T_GeneralizeTel_5663 -> AgdaAny
d_slot_2200 ~v0 ~v1 v2 = du_slot_2200 v2
du_slot_2200 :: T_GeneralizeTel_5663 -> AgdaAny
du_slot_2200 v0
  = coe d_slot_2030 (coe d_'46'generalizedField'45'Γ_5655 v0)
-- Ledger.Ledger._.treasury
d_treasury_2202 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1644 ->
  T_GeneralizeTel_5663 -> Integer
d_treasury_2202 ~v0 ~v1 v2 = du_treasury_2202 v2
du_treasury_2202 :: T_GeneralizeTel_5663 -> Integer
du_treasury_2202 v0
  = coe d_treasury_2038 (coe d_'46'generalizedField'45'Γ_5655 v0)
-- Ledger.Ledger._.certState
d_certState_2208 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1644 ->
  T_GeneralizeTel_6083 -> MAlonzo.Code.Ledger.Certs.T_CertState_924
d_certState_2208 ~v0 ~v1 v2 = du_certState_2208 v2
du_certState_2208 ::
  T_GeneralizeTel_6083 -> MAlonzo.Code.Ledger.Certs.T_CertState_924
du_certState_2208 v0
  = coe d_certState_2054 (coe d_'46'generalizedField'45's_6075 v0)
-- Ledger.Ledger._.govSt
d_govSt_2210 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1644 ->
  T_GeneralizeTel_6083 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2210 ~v0 ~v1 v2 = du_govSt_2210 v2
du_govSt_2210 ::
  T_GeneralizeTel_6083 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt_2210 v0
  = coe d_govSt_2052 (coe d_'46'generalizedField'45's_6075 v0)
-- Ledger.Ledger._.utxoSt
d_utxoSt_2212 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1644 ->
  T_GeneralizeTel_6083 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1858
d_utxoSt_2212 ~v0 ~v1 v2 = du_utxoSt_2212 v2
du_utxoSt_2212 ::
  T_GeneralizeTel_6083 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1858
du_utxoSt_2212 v0
  = coe d_utxoSt_2050 (coe d_'46'generalizedField'45's_6075 v0)
-- Ledger.Ledger._.enactState
d_enactState_2260 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1644 ->
  T_GeneralizeTel_6083 -> MAlonzo.Code.Ledger.Enact.T_EnactState_824
d_enactState_2260 ~v0 ~v1 v2 = du_enactState_2260 v2
du_enactState_2260 ::
  T_GeneralizeTel_6083 -> MAlonzo.Code.Ledger.Enact.T_EnactState_824
du_enactState_2260 v0
  = coe d_enactState_2036 (coe d_'46'generalizedField'45'Γ_6079 v0)
-- Ledger.Ledger._.pparams
d_pparams_2262 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1644 ->
  T_GeneralizeTel_6083 -> MAlonzo.Code.Ledger.PParams.T_PParams_240
d_pparams_2262 ~v0 ~v1 v2 = du_pparams_2262 v2
du_pparams_2262 ::
  T_GeneralizeTel_6083 -> MAlonzo.Code.Ledger.PParams.T_PParams_240
du_pparams_2262 v0
  = coe d_pparams_2034 (coe d_'46'generalizedField'45'Γ_6079 v0)
-- Ledger.Ledger._.ppolicy
d_ppolicy_2264 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1644 ->
  T_GeneralizeTel_6083 -> Maybe AgdaAny
d_ppolicy_2264 ~v0 ~v1 v2 = du_ppolicy_2264 v2
du_ppolicy_2264 :: T_GeneralizeTel_6083 -> Maybe AgdaAny
du_ppolicy_2264 v0
  = coe d_ppolicy_2032 (coe d_'46'generalizedField'45'Γ_6079 v0)
-- Ledger.Ledger._.slot
d_slot_2266 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1644 ->
  T_GeneralizeTel_6083 -> AgdaAny
d_slot_2266 ~v0 ~v1 v2 = du_slot_2266 v2
du_slot_2266 :: T_GeneralizeTel_6083 -> AgdaAny
du_slot_2266 v0
  = coe d_slot_2030 (coe d_'46'generalizedField'45'Γ_6079 v0)
-- Ledger.Ledger._.treasury
d_treasury_2268 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1644 ->
  T_GeneralizeTel_6083 -> Integer
d_treasury_2268 ~v0 ~v1 v2 = du_treasury_2268 v2
du_treasury_2268 :: T_GeneralizeTel_6083 -> Integer
du_treasury_2268 v0
  = coe d_treasury_2038 (coe d_'46'generalizedField'45'Γ_6079 v0)
-- Ledger.Ledger._.enactState
d_enactState_2274 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1644 ->
  T_GeneralizeTel_6083 -> MAlonzo.Code.Ledger.Enact.T_EnactState_824
d_enactState_2274 ~v0 ~v1 v2 = du_enactState_2274 v2
du_enactState_2274 ::
  T_GeneralizeTel_6083 -> MAlonzo.Code.Ledger.Enact.T_EnactState_824
du_enactState_2274 v0
  = coe d_enactState_2036 (coe d_'46'generalizedField'45'Γ_6079 v0)
-- Ledger.Ledger._.pparams
d_pparams_2276 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1644 ->
  T_GeneralizeTel_6083 -> MAlonzo.Code.Ledger.PParams.T_PParams_240
d_pparams_2276 ~v0 ~v1 v2 = du_pparams_2276 v2
du_pparams_2276 ::
  T_GeneralizeTel_6083 -> MAlonzo.Code.Ledger.PParams.T_PParams_240
du_pparams_2276 v0
  = coe d_pparams_2034 (coe d_'46'generalizedField'45'Γ_6079 v0)
-- Ledger.Ledger._.ppolicy
d_ppolicy_2278 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1644 ->
  T_GeneralizeTel_6083 -> Maybe AgdaAny
d_ppolicy_2278 ~v0 ~v1 v2 = du_ppolicy_2278 v2
du_ppolicy_2278 :: T_GeneralizeTel_6083 -> Maybe AgdaAny
du_ppolicy_2278 v0
  = coe d_ppolicy_2032 (coe d_'46'generalizedField'45'Γ_6079 v0)
-- Ledger.Ledger._.slot
d_slot_2280 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1644 ->
  T_GeneralizeTel_6083 -> AgdaAny
d_slot_2280 ~v0 ~v1 v2 = du_slot_2280 v2
du_slot_2280 :: T_GeneralizeTel_6083 -> AgdaAny
du_slot_2280 v0
  = coe d_slot_2030 (coe d_'46'generalizedField'45'Γ_6079 v0)
-- Ledger.Ledger._.treasury
d_treasury_2282 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1644 ->
  T_GeneralizeTel_6083 -> Integer
d_treasury_2282 ~v0 ~v1 v2 = du_treasury_2282 v2
du_treasury_2282 :: T_GeneralizeTel_6083 -> Integer
du_treasury_2282 v0
  = coe d_treasury_2038 (coe d_'46'generalizedField'45'Γ_6079 v0)
-- Ledger.Ledger._⊢_⇀⦇_,LEDGERS⦈_
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2302 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1644 ->
  T_LEnv_2018 ->
  T_LState_2042 ->
  [MAlonzo.Code.Ledger.Transaction.T_Tx_2826] -> T_LState_2042 -> ()
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2302 = erased
-- Ledger.Ledger..generalizedField-s
d_'46'generalizedField'45's_5651 ::
  T_GeneralizeTel_5663 -> T_LState_2042
d_'46'generalizedField'45's_5651 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-tx
d_'46'generalizedField'45'tx_5653 ::
  T_GeneralizeTel_5663 -> MAlonzo.Code.Ledger.Transaction.T_Tx_2826
d_'46'generalizedField'45'tx_5653 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-Γ
d_'46'generalizedField'45'Γ_5655 ::
  T_GeneralizeTel_5663 -> T_LEnv_2018
d_'46'generalizedField'45'Γ_5655 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-utxoSt'
d_'46'generalizedField'45'utxoSt''_5657 ::
  T_GeneralizeTel_5663 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1858
d_'46'generalizedField'45'utxoSt''_5657
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-certState'
d_'46'generalizedField'45'certState''_5659 ::
  T_GeneralizeTel_5663 -> MAlonzo.Code.Ledger.Certs.T_CertState_924
d_'46'generalizedField'45'certState''_5659
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-govSt'
d_'46'generalizedField'45'govSt''_5661 ::
  T_GeneralizeTel_5663 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_'46'generalizedField'45'govSt''_5661
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.GeneralizeTel
d_GeneralizeTel_5663 a0 a1 = ()
data T_GeneralizeTel_5663
  = C_mkGeneralizeTel_5665 T_LState_2042
                           MAlonzo.Code.Ledger.Transaction.T_Tx_2826 T_LEnv_2018
                           MAlonzo.Code.Ledger.Utxo.T_UTxOState_1858
                           MAlonzo.Code.Ledger.Certs.T_CertState_924
                           [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
-- Ledger.Ledger..generalizedField-s
d_'46'generalizedField'45's_6075 ::
  T_GeneralizeTel_6083 -> T_LState_2042
d_'46'generalizedField'45's_6075 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-tx
d_'46'generalizedField'45'tx_6077 ::
  T_GeneralizeTel_6083 -> MAlonzo.Code.Ledger.Transaction.T_Tx_2826
d_'46'generalizedField'45'tx_6077 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-Γ
d_'46'generalizedField'45'Γ_6079 ::
  T_GeneralizeTel_6083 -> T_LEnv_2018
d_'46'generalizedField'45'Γ_6079 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-utxoSt'
d_'46'generalizedField'45'utxoSt''_6081 ::
  T_GeneralizeTel_6083 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1858
d_'46'generalizedField'45'utxoSt''_6081
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.GeneralizeTel
d_GeneralizeTel_6083 a0 a1 = ()
data T_GeneralizeTel_6083
  = C_mkGeneralizeTel_6085 T_LState_2042
                           MAlonzo.Code.Ledger.Transaction.T_Tx_2826 T_LEnv_2018
                           MAlonzo.Code.Ledger.Utxo.T_UTxOState_1858
