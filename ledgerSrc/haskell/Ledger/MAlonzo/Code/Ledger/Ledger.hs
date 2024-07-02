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
  MAlonzo.Code.Ledger.Certs.T_CertEnv_786 ->
  MAlonzo.Code.Ledger.Certs.T_CertState_846 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_754] ->
  MAlonzo.Code.Ledger.Certs.T_CertState_846 -> ()
d__'8866'_'8640''10631'_'44'CERTS'10632'__20 = erased
-- _.CertEnv
d_CertEnv_56 a0 = ()
-- _.CertState
d_CertState_58 a0 = ()
-- _.GovProposal
d_GovProposal_198 a0 = ()
-- _.GovVote
d_GovVote_202 a0 = ()
-- _.PParams
d_PParams_274 a0 = ()
-- _.ScriptHash
d_ScriptHash_330 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_ScriptHash_330 = erased
-- _.Slot
d_Slot_342 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Slot_342 = erased
-- _.Tx
d_Tx_372 a0 = ()
-- _.TxBody
d_TxBody_374 a0 = ()
-- _.epoch
d_epoch_452 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny -> AgdaAny
d_epoch_452 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_epoch_40
      (coe
         MAlonzo.Code.Ledger.Transaction.d_epochStructure_1390 (coe v0))
-- Ledger.Ledger._.EnactState
d_EnactState_1508 a0 a1 = ()
-- Ledger.Ledger._._⊢_⇀⦇_,GOV⦈_
d__'8866'_'8640''10631'_'44'GOV'10632'__1560 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1500 ->
  MAlonzo.Code.Ledger.Gov.T_GovEnv_936 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> ()
d__'8866'_'8640''10631'_'44'GOV'10632'__1560 = erased
-- Ledger.Ledger._.GovEnv
d_GovEnv_1570 a0 a1 = ()
-- Ledger.Ledger._.GovState
d_GovState_1572 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1500 -> ()
d_GovState_1572 = erased
-- Ledger.Ledger._.UTxOState
d_UTxOState_1702 a0 a1 = ()
-- Ledger.Ledger._._⊢_⇀⦇_,UTXOW⦈_
d__'8866'_'8640''10631'_'44'UTXOW'10632'__1828 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Ledger.LEnv
d_LEnv_1848 a0 a1 = ()
data T_LEnv_1848
  = C_'10214'_'44'_'44'_'44'_'44'_'10215''737''7497'_1870 AgdaAny
                                                          (Maybe AgdaAny)
                                                          MAlonzo.Code.Ledger.PParams.T_PParams_218
                                                          MAlonzo.Code.Ledger.Enact.T_EnactState_764
                                                          Integer
-- Ledger.Ledger.LEnv.slot
d_slot_1860 :: T_LEnv_1848 -> AgdaAny
d_slot_1860 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''737''7497'_1870 v1 v2 v3 v4 v5
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.LEnv.ppolicy
d_ppolicy_1862 :: T_LEnv_1848 -> Maybe AgdaAny
d_ppolicy_1862 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''737''7497'_1870 v1 v2 v3 v4 v5
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.LEnv.pparams
d_pparams_1864 ::
  T_LEnv_1848 -> MAlonzo.Code.Ledger.PParams.T_PParams_218
d_pparams_1864 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''737''7497'_1870 v1 v2 v3 v4 v5
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.LEnv.enactState
d_enactState_1866 ::
  T_LEnv_1848 -> MAlonzo.Code.Ledger.Enact.T_EnactState_764
d_enactState_1866 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''737''7497'_1870 v1 v2 v3 v4 v5
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.LEnv.treasury
d_treasury_1868 :: T_LEnv_1848 -> Integer
d_treasury_1868 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''737''7497'_1870 v1 v2 v3 v4 v5
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.LState
d_LState_1872 a0 a1 = ()
data T_LState_1872
  = C_'10214'_'44'_'44'_'10215''737'_1886 MAlonzo.Code.Ledger.Utxo.T_UTxOState_1726
                                          [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                                          MAlonzo.Code.Ledger.Certs.T_CertState_846
-- Ledger.Ledger.LState.utxoSt
d_utxoSt_1880 ::
  T_LState_1872 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1726
d_utxoSt_1880 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_1886 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.LState.govSt
d_govSt_1882 ::
  T_LState_1872 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_1882 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_1886 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.LState.certState
d_certState_1884 ::
  T_LState_1872 -> MAlonzo.Code.Ledger.Certs.T_CertState_846
d_certState_1884 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_1886 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.txgov
d_txgov_1888 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1500 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2484 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_txgov_1888 ~v0 ~v1 v2 = du_txgov_1888 v2
du_txgov_1888 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2484 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_txgov_1888 v0
  = coe
      MAlonzo.Code.Data.List.Base.du__'43''43'__62
      (coe
         MAlonzo.Code.Class.Functor.Core.du_fmap_22
         MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20 () erased
         () erased (coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42)
         (MAlonzo.Code.Ledger.Transaction.d_txprop_2544 (coe v0)))
      (coe
         MAlonzo.Code.Class.Functor.Core.du_fmap_22
         MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20 () erased
         () erased (coe MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38)
         (MAlonzo.Code.Ledger.Transaction.d_txvote_2542 (coe v0)))
-- Ledger.Ledger._⊢_⇀⦇_,LEDGER⦈_
d__'8866'_'8640''10631'_'44'LEDGER'10632'__1954 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'LEDGER'10632'__1954
  = C_LEDGER'45'V_2034 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_LEDGER'45'I_2114 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Ledger._.certState
d_certState_1958 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1500 ->
  T_GeneralizeTel_5379 -> MAlonzo.Code.Ledger.Certs.T_CertState_846
d_certState_1958 ~v0 ~v1 v2 = du_certState_1958 v2
du_certState_1958 ::
  T_GeneralizeTel_5379 -> MAlonzo.Code.Ledger.Certs.T_CertState_846
du_certState_1958 v0
  = coe d_certState_1884 (coe d_'46'generalizedField'45's_5367 v0)
-- Ledger.Ledger._.govSt
d_govSt_1960 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1500 ->
  T_GeneralizeTel_5379 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_1960 ~v0 ~v1 v2 = du_govSt_1960 v2
du_govSt_1960 ::
  T_GeneralizeTel_5379 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt_1960 v0
  = coe d_govSt_1882 (coe d_'46'generalizedField'45's_5367 v0)
-- Ledger.Ledger._.utxoSt
d_utxoSt_1962 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1500 ->
  T_GeneralizeTel_5379 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1726
d_utxoSt_1962 ~v0 ~v1 v2 = du_utxoSt_1962 v2
du_utxoSt_1962 ::
  T_GeneralizeTel_5379 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1726
du_utxoSt_1962 v0
  = coe d_utxoSt_1880 (coe d_'46'generalizedField'45's_5367 v0)
-- Ledger.Ledger._.txcerts
d_txcerts_1984 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1500 ->
  T_GeneralizeTel_5379 -> [MAlonzo.Code.Ledger.Certs.T_DCert_754]
d_txcerts_1984 ~v0 ~v1 v2 = du_txcerts_1984 v2
du_txcerts_1984 ::
  T_GeneralizeTel_5379 -> [MAlonzo.Code.Ledger.Certs.T_DCert_754]
du_txcerts_1984 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txcerts_2538
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2596
         (coe d_'46'generalizedField'45'tx_5369 v0))
-- Ledger.Ledger._.txid
d_txid_1990 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1500 ->
  T_GeneralizeTel_5379 -> AgdaAny
d_txid_1990 ~v0 ~v1 v2 = du_txid_1990 v2
du_txid_1990 :: T_GeneralizeTel_5379 -> AgdaAny
du_txid_1990 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txid_2558
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2596
         (coe d_'46'generalizedField'45'tx_5369 v0))
-- Ledger.Ledger._.txvote
d_txvote_2004 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1500 ->
  T_GeneralizeTel_5379 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_670]
d_txvote_2004 ~v0 ~v1 v2 = du_txvote_2004 v2
du_txvote_2004 ::
  T_GeneralizeTel_5379 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_670]
du_txvote_2004 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txvote_2542
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2596
         (coe d_'46'generalizedField'45'tx_5369 v0))
-- Ledger.Ledger._.txwdrls
d_txwdrls_2006 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1500 ->
  T_GeneralizeTel_5379 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_2006 ~v0 ~v1 v2 = du_txwdrls_2006 v2
du_txwdrls_2006 ::
  T_GeneralizeTel_5379 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txwdrls_2006 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txwdrls_2540
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2596
         (coe d_'46'generalizedField'45'tx_5369 v0))
-- Ledger.Ledger._.enactState
d_enactState_2010 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1500 ->
  T_GeneralizeTel_5379 -> MAlonzo.Code.Ledger.Enact.T_EnactState_764
d_enactState_2010 ~v0 ~v1 v2 = du_enactState_2010 v2
du_enactState_2010 ::
  T_GeneralizeTel_5379 -> MAlonzo.Code.Ledger.Enact.T_EnactState_764
du_enactState_2010 v0
  = coe d_enactState_1866 (coe d_'46'generalizedField'45'Γ_5371 v0)
-- Ledger.Ledger._.pparams
d_pparams_2012 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1500 ->
  T_GeneralizeTel_5379 -> MAlonzo.Code.Ledger.PParams.T_PParams_218
d_pparams_2012 ~v0 ~v1 v2 = du_pparams_2012 v2
du_pparams_2012 ::
  T_GeneralizeTel_5379 -> MAlonzo.Code.Ledger.PParams.T_PParams_218
du_pparams_2012 v0
  = coe d_pparams_1864 (coe d_'46'generalizedField'45'Γ_5371 v0)
-- Ledger.Ledger._.ppolicy
d_ppolicy_2014 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1500 ->
  T_GeneralizeTel_5379 -> Maybe AgdaAny
d_ppolicy_2014 ~v0 ~v1 v2 = du_ppolicy_2014 v2
du_ppolicy_2014 :: T_GeneralizeTel_5379 -> Maybe AgdaAny
du_ppolicy_2014 v0
  = coe d_ppolicy_1862 (coe d_'46'generalizedField'45'Γ_5371 v0)
-- Ledger.Ledger._.slot
d_slot_2016 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1500 ->
  T_GeneralizeTel_5379 -> AgdaAny
d_slot_2016 ~v0 ~v1 v2 = du_slot_2016 v2
du_slot_2016 :: T_GeneralizeTel_5379 -> AgdaAny
du_slot_2016 v0
  = coe d_slot_1860 (coe d_'46'generalizedField'45'Γ_5371 v0)
-- Ledger.Ledger._.treasury
d_treasury_2018 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1500 ->
  T_GeneralizeTel_5379 -> Integer
d_treasury_2018 ~v0 ~v1 v2 = du_treasury_2018 v2
du_treasury_2018 :: T_GeneralizeTel_5379 -> Integer
du_treasury_2018 v0
  = coe d_treasury_1868 (coe d_'46'generalizedField'45'Γ_5371 v0)
-- Ledger.Ledger._.enactState
d_enactState_2024 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1500 ->
  T_GeneralizeTel_5379 -> MAlonzo.Code.Ledger.Enact.T_EnactState_764
d_enactState_2024 ~v0 ~v1 v2 = du_enactState_2024 v2
du_enactState_2024 ::
  T_GeneralizeTel_5379 -> MAlonzo.Code.Ledger.Enact.T_EnactState_764
du_enactState_2024 v0
  = coe d_enactState_1866 (coe d_'46'generalizedField'45'Γ_5371 v0)
-- Ledger.Ledger._.pparams
d_pparams_2026 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1500 ->
  T_GeneralizeTel_5379 -> MAlonzo.Code.Ledger.PParams.T_PParams_218
d_pparams_2026 ~v0 ~v1 v2 = du_pparams_2026 v2
du_pparams_2026 ::
  T_GeneralizeTel_5379 -> MAlonzo.Code.Ledger.PParams.T_PParams_218
du_pparams_2026 v0
  = coe d_pparams_1864 (coe d_'46'generalizedField'45'Γ_5371 v0)
-- Ledger.Ledger._.ppolicy
d_ppolicy_2028 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1500 ->
  T_GeneralizeTel_5379 -> Maybe AgdaAny
d_ppolicy_2028 ~v0 ~v1 v2 = du_ppolicy_2028 v2
du_ppolicy_2028 :: T_GeneralizeTel_5379 -> Maybe AgdaAny
du_ppolicy_2028 v0
  = coe d_ppolicy_1862 (coe d_'46'generalizedField'45'Γ_5371 v0)
-- Ledger.Ledger._.slot
d_slot_2030 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1500 ->
  T_GeneralizeTel_5379 -> AgdaAny
d_slot_2030 ~v0 ~v1 v2 = du_slot_2030 v2
du_slot_2030 :: T_GeneralizeTel_5379 -> AgdaAny
du_slot_2030 v0
  = coe d_slot_1860 (coe d_'46'generalizedField'45'Γ_5371 v0)
-- Ledger.Ledger._.treasury
d_treasury_2032 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1500 ->
  T_GeneralizeTel_5379 -> Integer
d_treasury_2032 ~v0 ~v1 v2 = du_treasury_2032 v2
du_treasury_2032 :: T_GeneralizeTel_5379 -> Integer
du_treasury_2032 v0
  = coe d_treasury_1868 (coe d_'46'generalizedField'45'Γ_5371 v0)
-- Ledger.Ledger._.certState
d_certState_2038 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1500 ->
  T_GeneralizeTel_5799 -> MAlonzo.Code.Ledger.Certs.T_CertState_846
d_certState_2038 ~v0 ~v1 v2 = du_certState_2038 v2
du_certState_2038 ::
  T_GeneralizeTel_5799 -> MAlonzo.Code.Ledger.Certs.T_CertState_846
du_certState_2038 v0
  = coe d_certState_1884 (coe d_'46'generalizedField'45's_5791 v0)
-- Ledger.Ledger._.govSt
d_govSt_2040 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1500 ->
  T_GeneralizeTel_5799 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2040 ~v0 ~v1 v2 = du_govSt_2040 v2
du_govSt_2040 ::
  T_GeneralizeTel_5799 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt_2040 v0
  = coe d_govSt_1882 (coe d_'46'generalizedField'45's_5791 v0)
-- Ledger.Ledger._.utxoSt
d_utxoSt_2042 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1500 ->
  T_GeneralizeTel_5799 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1726
d_utxoSt_2042 ~v0 ~v1 v2 = du_utxoSt_2042 v2
du_utxoSt_2042 ::
  T_GeneralizeTel_5799 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1726
du_utxoSt_2042 v0
  = coe d_utxoSt_1880 (coe d_'46'generalizedField'45's_5791 v0)
-- Ledger.Ledger._.enactState
d_enactState_2090 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1500 ->
  T_GeneralizeTel_5799 -> MAlonzo.Code.Ledger.Enact.T_EnactState_764
d_enactState_2090 ~v0 ~v1 v2 = du_enactState_2090 v2
du_enactState_2090 ::
  T_GeneralizeTel_5799 -> MAlonzo.Code.Ledger.Enact.T_EnactState_764
du_enactState_2090 v0
  = coe d_enactState_1866 (coe d_'46'generalizedField'45'Γ_5795 v0)
-- Ledger.Ledger._.pparams
d_pparams_2092 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1500 ->
  T_GeneralizeTel_5799 -> MAlonzo.Code.Ledger.PParams.T_PParams_218
d_pparams_2092 ~v0 ~v1 v2 = du_pparams_2092 v2
du_pparams_2092 ::
  T_GeneralizeTel_5799 -> MAlonzo.Code.Ledger.PParams.T_PParams_218
du_pparams_2092 v0
  = coe d_pparams_1864 (coe d_'46'generalizedField'45'Γ_5795 v0)
-- Ledger.Ledger._.ppolicy
d_ppolicy_2094 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1500 ->
  T_GeneralizeTel_5799 -> Maybe AgdaAny
d_ppolicy_2094 ~v0 ~v1 v2 = du_ppolicy_2094 v2
du_ppolicy_2094 :: T_GeneralizeTel_5799 -> Maybe AgdaAny
du_ppolicy_2094 v0
  = coe d_ppolicy_1862 (coe d_'46'generalizedField'45'Γ_5795 v0)
-- Ledger.Ledger._.slot
d_slot_2096 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1500 ->
  T_GeneralizeTel_5799 -> AgdaAny
d_slot_2096 ~v0 ~v1 v2 = du_slot_2096 v2
du_slot_2096 :: T_GeneralizeTel_5799 -> AgdaAny
du_slot_2096 v0
  = coe d_slot_1860 (coe d_'46'generalizedField'45'Γ_5795 v0)
-- Ledger.Ledger._.treasury
d_treasury_2098 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1500 ->
  T_GeneralizeTel_5799 -> Integer
d_treasury_2098 ~v0 ~v1 v2 = du_treasury_2098 v2
du_treasury_2098 :: T_GeneralizeTel_5799 -> Integer
du_treasury_2098 v0
  = coe d_treasury_1868 (coe d_'46'generalizedField'45'Γ_5795 v0)
-- Ledger.Ledger._.enactState
d_enactState_2104 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1500 ->
  T_GeneralizeTel_5799 -> MAlonzo.Code.Ledger.Enact.T_EnactState_764
d_enactState_2104 ~v0 ~v1 v2 = du_enactState_2104 v2
du_enactState_2104 ::
  T_GeneralizeTel_5799 -> MAlonzo.Code.Ledger.Enact.T_EnactState_764
du_enactState_2104 v0
  = coe d_enactState_1866 (coe d_'46'generalizedField'45'Γ_5795 v0)
-- Ledger.Ledger._.pparams
d_pparams_2106 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1500 ->
  T_GeneralizeTel_5799 -> MAlonzo.Code.Ledger.PParams.T_PParams_218
d_pparams_2106 ~v0 ~v1 v2 = du_pparams_2106 v2
du_pparams_2106 ::
  T_GeneralizeTel_5799 -> MAlonzo.Code.Ledger.PParams.T_PParams_218
du_pparams_2106 v0
  = coe d_pparams_1864 (coe d_'46'generalizedField'45'Γ_5795 v0)
-- Ledger.Ledger._.ppolicy
d_ppolicy_2108 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1500 ->
  T_GeneralizeTel_5799 -> Maybe AgdaAny
d_ppolicy_2108 ~v0 ~v1 v2 = du_ppolicy_2108 v2
du_ppolicy_2108 :: T_GeneralizeTel_5799 -> Maybe AgdaAny
du_ppolicy_2108 v0
  = coe d_ppolicy_1862 (coe d_'46'generalizedField'45'Γ_5795 v0)
-- Ledger.Ledger._.slot
d_slot_2110 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1500 ->
  T_GeneralizeTel_5799 -> AgdaAny
d_slot_2110 ~v0 ~v1 v2 = du_slot_2110 v2
du_slot_2110 :: T_GeneralizeTel_5799 -> AgdaAny
du_slot_2110 v0
  = coe d_slot_1860 (coe d_'46'generalizedField'45'Γ_5795 v0)
-- Ledger.Ledger._.treasury
d_treasury_2112 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1500 ->
  T_GeneralizeTel_5799 -> Integer
d_treasury_2112 ~v0 ~v1 v2 = du_treasury_2112 v2
du_treasury_2112 :: T_GeneralizeTel_5799 -> Integer
du_treasury_2112 v0
  = coe d_treasury_1868 (coe d_'46'generalizedField'45'Γ_5795 v0)
-- Ledger.Ledger._⊢_⇀⦇_,LEDGERS⦈_
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2132 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1500 ->
  T_LEnv_1848 ->
  T_LState_1872 ->
  [MAlonzo.Code.Ledger.Transaction.T_Tx_2586] -> T_LState_1872 -> ()
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2132 = erased
-- Ledger.Ledger..generalizedField-s
d_'46'generalizedField'45's_5367 ::
  T_GeneralizeTel_5379 -> T_LState_1872
d_'46'generalizedField'45's_5367 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-tx
d_'46'generalizedField'45'tx_5369 ::
  T_GeneralizeTel_5379 -> MAlonzo.Code.Ledger.Transaction.T_Tx_2586
d_'46'generalizedField'45'tx_5369 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-Γ
d_'46'generalizedField'45'Γ_5371 ::
  T_GeneralizeTel_5379 -> T_LEnv_1848
d_'46'generalizedField'45'Γ_5371 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-utxoSt'
d_'46'generalizedField'45'utxoSt''_5373 ::
  T_GeneralizeTel_5379 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1726
d_'46'generalizedField'45'utxoSt''_5373
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-certState'
d_'46'generalizedField'45'certState''_5375 ::
  T_GeneralizeTel_5379 -> MAlonzo.Code.Ledger.Certs.T_CertState_846
d_'46'generalizedField'45'certState''_5375
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-govSt'
d_'46'generalizedField'45'govSt''_5377 ::
  T_GeneralizeTel_5379 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_'46'generalizedField'45'govSt''_5377
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.GeneralizeTel
d_GeneralizeTel_5379 a0 a1 = ()
data T_GeneralizeTel_5379
  = C_mkGeneralizeTel_5381 T_LState_1872
                           MAlonzo.Code.Ledger.Transaction.T_Tx_2586 T_LEnv_1848
                           MAlonzo.Code.Ledger.Utxo.T_UTxOState_1726
                           MAlonzo.Code.Ledger.Certs.T_CertState_846
                           [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
-- Ledger.Ledger..generalizedField-s
d_'46'generalizedField'45's_5791 ::
  T_GeneralizeTel_5799 -> T_LState_1872
d_'46'generalizedField'45's_5791 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-tx
d_'46'generalizedField'45'tx_5793 ::
  T_GeneralizeTel_5799 -> MAlonzo.Code.Ledger.Transaction.T_Tx_2586
d_'46'generalizedField'45'tx_5793 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-Γ
d_'46'generalizedField'45'Γ_5795 ::
  T_GeneralizeTel_5799 -> T_LEnv_1848
d_'46'generalizedField'45'Γ_5795 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-utxoSt'
d_'46'generalizedField'45'utxoSt''_5797 ::
  T_GeneralizeTel_5799 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1726
d_'46'generalizedField'45'utxoSt''_5797
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.GeneralizeTel
d_GeneralizeTel_5799 a0 a1 = ()
data T_GeneralizeTel_5799
  = C_mkGeneralizeTel_5801 T_LState_1872
                           MAlonzo.Code.Ledger.Transaction.T_Tx_2586 T_LEnv_1848
                           MAlonzo.Code.Ledger.Utxo.T_UTxOState_1726
