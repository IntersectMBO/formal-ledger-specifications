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

module MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Axiom.Set
import qualified MAlonzo.Code.Axiom.Set.Map
import qualified MAlonzo.Code.Axiom.Set.Map.Dec
import qualified MAlonzo.Code.Class.CommutativeMonoid.Core
import qualified MAlonzo.Code.Data.Nat.Properties
import qualified MAlonzo.Code.Ledger.Core.Specification.Crypto
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Certs
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Enact
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Ledgers
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Leios
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.PParams
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo
import qualified MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory

-- _.Acnt
d_Acnt_42 a0 = ()
-- _.THash
d_THash_676 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_THash_676 = erased
-- _.Sig
d_Sig_880 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_Sig_880 = erased
-- _.Slot
d_Slot_884 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_Slot_884 = erased
-- _.TopLevelTx
d_TopLevelTx_922 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_TopLevelTx_922 = erased
-- _.VKey
d_VKey_974 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_VKey_974 = erased
-- _.Acnt.reserves
d_reserves_1250 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_200 ->
  Integer
d_reserves_1250 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_reserves_208
      (coe v0)
-- _.Acnt.treasury
d_treasury_1252 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_200 ->
  Integer
d_treasury_1252 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_treasury_206
      (coe v0)
-- Ledger.Dijkstra.Specification.BlockBody._.EnactState
d_EnactState_2686 a0 a1 = ()
-- Ledger.Dijkstra.Specification.BlockBody._.EnactState.cc
d_cc_2736 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1328 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_cc_2736 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_cc_1340 (coe v0)
-- Ledger.Dijkstra.Specification.BlockBody._.EnactState.constitution
d_constitution_2738 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1328 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_constitution_2738 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_constitution_1342
      (coe v0)
-- Ledger.Dijkstra.Specification.BlockBody._.EnactState.pparams
d_pparams_2740 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1328 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pparams_2740 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_pparams_1346
      (coe v0)
-- Ledger.Dijkstra.Specification.BlockBody._.EnactState.pv
d_pv_2742 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1328 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_2742 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_pv_1344 (coe v0)
-- Ledger.Dijkstra.Specification.BlockBody._.EnactState.withdrawals
d_withdrawals_2744 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1328 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_withdrawals_2744 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_withdrawals_1348
      (coe v0)
-- Ledger.Dijkstra.Specification.BlockBody._.LedgerState
d_LedgerState_2818 a0 a1 = ()
-- Ledger.Dijkstra.Specification.BlockBody._.LedgerState.certState
d_certState_2882 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3940 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1610
d_certState_2882 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_certState_3952
      (coe v0)
-- Ledger.Dijkstra.Specification.BlockBody._.LedgerState.govSt
d_govSt_2884 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3940 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2884 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_govSt_3950
      (coe v0)
-- Ledger.Dijkstra.Specification.BlockBody._.LedgerState.utxoSt
d_utxoSt_2886 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3940 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3310
d_utxoSt_2886 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_utxoSt_3948
      (coe v0)
-- Ledger.Dijkstra.Specification.BlockBody._._⊢_⇀⦇_,LEDGERS⦈_
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2916 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3262 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledgers.T_LedgersEnv_3084 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3940 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3870] ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3940 ->
  ()
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2916 = erased
-- Ledger.Dijkstra.Specification.BlockBody._.EBCert
d_EBCert_2958 a0 a1 = ()
-- Ledger.Dijkstra.Specification.BlockBody._.EBCert.sig
d_sig_2964 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_EBCert_1672 ->
  AgdaAny
d_sig_2964 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.d_sig_1680
      (coe v0)
-- Ledger.Dijkstra.Specification.BlockBody._.EBCert.signers
d_signers_2966 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_EBCert_1672 ->
  [Integer]
d_signers_2966 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.d_signers_1678
      (coe v0)
-- Ledger.Dijkstra.Specification.BlockBody._.BlocksMade
d_BlocksMade_2972 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3262 ->
  ()
d_BlocksMade_2972 = erased
-- Ledger.Dijkstra.Specification.BlockBody._.RBHeaderHash
d_RBHeaderHash_3080 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3262 ->
  ()
d_RBHeaderHash_3080 = erased
-- Ledger.Dijkstra.Specification.BlockBody.Announcement
d_Announcement_3082 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3262 ->
  ()
d_Announcement_3082 = erased
-- Ledger.Dijkstra.Specification.BlockBody.BHBody
d_BHBody_3084 a0 a1 = ()
data T_BHBody_3084
  = C_constructor_3114 AgdaAny Integer AgdaAny AgdaAny Integer
                       (Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) Bool
-- Ledger.Dijkstra.Specification.BlockBody.BHBody.bvkcold
d_bvkcold_3100 :: T_BHBody_3084 -> AgdaAny
d_bvkcold_3100 v0
  = case coe v0 of
      C_constructor_3114 v1 v2 v3 v4 v5 v6 v7 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.BlockBody.BHBody.bsize
d_bsize_3102 :: T_BHBody_3084 -> Integer
d_bsize_3102 v0
  = case coe v0 of
      C_constructor_3114 v1 v2 v3 v4 v5 v6 v7 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.BlockBody.BHBody.slot
d_slot_3104 :: T_BHBody_3084 -> AgdaAny
d_slot_3104 v0
  = case coe v0 of
      C_constructor_3114 v1 v2 v3 v4 v5 v6 v7 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.BlockBody.BHBody.bhash
d_bhash_3106 :: T_BHBody_3084 -> AgdaAny
d_bhash_3106 v0
  = case coe v0 of
      C_constructor_3114 v1 v2 v3 v4 v5 v6 v7 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.BlockBody.BHBody.hBbsize
d_hBbsize_3108 :: T_BHBody_3084 -> Integer
d_hBbsize_3108 v0
  = case coe v0 of
      C_constructor_3114 v1 v2 v3 v4 v5 v6 v7 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.BlockBody.BHBody.announcedEB
d_announcedEB_3110 ::
  T_BHBody_3084 -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_announcedEB_3110 v0
  = case coe v0 of
      C_constructor_3114 v1 v2 v3 v4 v5 v6 v7 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.BlockBody.BHBody.certifiesEB
d_certifiesEB_3112 :: T_BHBody_3084 -> Bool
d_certifiesEB_3112 v0
  = case coe v0 of
      C_constructor_3114 v1 v2 v3 v4 v5 v6 v7 -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.BlockBody.BHeader
d_BHeader_3116 a0 a1 = ()
data T_BHeader_3116 = C_constructor_3126 T_BHBody_3084 AgdaAny
-- Ledger.Dijkstra.Specification.BlockBody.BHeader.bhbody
d_bhbody_3122 :: T_BHeader_3116 -> T_BHBody_3084
d_bhbody_3122 v0
  = case coe v0 of
      C_constructor_3126 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.BlockBody.BHeader.bhsig
d_bhsig_3124 :: T_BHeader_3116 -> AgdaAny
d_bhsig_3124 v0
  = case coe v0 of
      C_constructor_3126 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.BlockBody.Block
d_Block_3128 a0 a1 = ()
data T_Block_3128
  = C_constructor_3162 T_BHeader_3116 AgdaAny
                       [MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3870]
                       (Maybe
                          MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_EBCert_1672)
                       Integer AgdaAny
-- Ledger.Dijkstra.Specification.BlockBody.Block.bheader
d_bheader_3146 :: T_Block_3128 -> T_BHeader_3116
d_bheader_3146 v0
  = case coe v0 of
      C_constructor_3162 v1 v2 v3 v4 v5 v6 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.BlockBody.Block.bHeaderHash
d_bHeaderHash_3148 :: T_Block_3128 -> AgdaAny
d_bHeaderHash_3148 v0
  = case coe v0 of
      C_constructor_3162 v1 v2 v3 v4 v5 v6 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.BlockBody.Block.ts
d_ts_3150 ::
  T_Block_3128 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3870]
d_ts_3150 v0
  = case coe v0 of
      C_constructor_3162 v1 v2 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.BlockBody.Block.ebCert
d_ebCert_3152 ::
  T_Block_3128 ->
  Maybe
    MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_EBCert_1672
d_ebCert_3152 v0
  = case coe v0 of
      C_constructor_3162 v1 v2 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.BlockBody.Block.bBodySize
d_bBodySize_3154 :: T_Block_3128 -> Integer
d_bBodySize_3154 v0
  = case coe v0 of
      C_constructor_3162 v1 v2 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.BlockBody.Block.bBodyHash
d_bBodyHash_3156 :: T_Block_3128 -> AgdaAny
d_bBodyHash_3156 v0
  = case coe v0 of
      C_constructor_3162 v1 v2 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.BlockBody.Block.≡-bBodySize
d_'8801''45'bBodySize_3158 ::
  T_Block_3128 -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8801''45'bBodySize_3158 = erased
-- Ledger.Dijkstra.Specification.BlockBody.Block.≡-bBodyHash
d_'8801''45'bBodyHash_3160 ::
  T_Block_3128 -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8801''45'bBodyHash_3160 = erased
-- Ledger.Dijkstra.Specification.BlockBody.BBodyEnv
d_BBodyEnv_3164 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3262 ->
  ()
d_BBodyEnv_3164 = erased
-- Ledger.Dijkstra.Specification.BlockBody.BBodyState
d_BBodyState_3166 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3262 ->
  ()
d_BBodyState_3166 = erased
-- Ledger.Dijkstra.Specification.BlockBody.incrBlocks
d_incrBlocks_3168 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3262 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_incrBlocks_3168 v0 ~v1 v2 v3 = du_incrBlocks_3168 v0 v2 v3
du_incrBlocks_3168 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_incrBlocks_3168 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__584
      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
         (coe
            MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
      (MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1424
               (coe v0))))
      v2
      (coe
         MAlonzo.Code.Axiom.Set.Map.du_singleton'7504'_846
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1516
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe v1) (coe (1 :: Integer)))
-- Ledger.Dijkstra.Specification.BlockBody.ValidLeiosBlock
d_ValidLeiosBlock_3174 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3262 ->
  T_Block_3128 -> ()
d_ValidLeiosBlock_3174 = erased
-- Ledger.Dijkstra.Specification.BlockBody._._.bBodyHash
d_bBodyHash_3184 :: T_Block_3128 -> AgdaAny
d_bBodyHash_3184 v0 = coe d_bBodyHash_3156 (coe v0)
-- Ledger.Dijkstra.Specification.BlockBody._._.bBodySize
d_bBodySize_3186 :: T_Block_3128 -> Integer
d_bBodySize_3186 v0 = coe d_bBodySize_3154 (coe v0)
-- Ledger.Dijkstra.Specification.BlockBody._._.bHeaderHash
d_bHeaderHash_3188 :: T_Block_3128 -> AgdaAny
d_bHeaderHash_3188 v0 = coe d_bHeaderHash_3148 (coe v0)
-- Ledger.Dijkstra.Specification.BlockBody._._.bheader
d_bheader_3190 :: T_Block_3128 -> T_BHeader_3116
d_bheader_3190 v0 = coe d_bheader_3146 (coe v0)
-- Ledger.Dijkstra.Specification.BlockBody._._.ebCert
d_ebCert_3192 ::
  T_Block_3128 ->
  Maybe
    MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_EBCert_1672
d_ebCert_3192 v0 = coe d_ebCert_3152 (coe v0)
-- Ledger.Dijkstra.Specification.BlockBody._._.ts
d_ts_3194 ::
  T_Block_3128 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3870]
d_ts_3194 v0 = coe d_ts_3150 (coe v0)
-- Ledger.Dijkstra.Specification.BlockBody._._.≡-bBodyHash
d_'8801''45'bBodyHash_3196 ::
  T_Block_3128 -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8801''45'bBodyHash_3196 = erased
-- Ledger.Dijkstra.Specification.BlockBody._._.≡-bBodySize
d_'8801''45'bBodySize_3198 ::
  T_Block_3128 -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8801''45'bBodySize_3198 = erased
-- Ledger.Dijkstra.Specification.BlockBody._._.announcedEB
d_announcedEB_3202 ::
  T_Block_3128 -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_announcedEB_3202 v0
  = coe
      d_announcedEB_3110
      (coe d_bhbody_3122 (coe d_bheader_3146 (coe v0)))
-- Ledger.Dijkstra.Specification.BlockBody._._.bhash
d_bhash_3204 :: T_Block_3128 -> AgdaAny
d_bhash_3204 v0
  = coe
      d_bhash_3106 (coe d_bhbody_3122 (coe d_bheader_3146 (coe v0)))
-- Ledger.Dijkstra.Specification.BlockBody._._.bsize
d_bsize_3206 :: T_Block_3128 -> Integer
d_bsize_3206 v0
  = coe
      d_bsize_3102 (coe d_bhbody_3122 (coe d_bheader_3146 (coe v0)))
-- Ledger.Dijkstra.Specification.BlockBody._._.bvkcold
d_bvkcold_3208 :: T_Block_3128 -> AgdaAny
d_bvkcold_3208 v0
  = coe
      d_bvkcold_3100 (coe d_bhbody_3122 (coe d_bheader_3146 (coe v0)))
-- Ledger.Dijkstra.Specification.BlockBody._._.certifiesEB
d_certifiesEB_3210 :: T_Block_3128 -> Bool
d_certifiesEB_3210 v0
  = coe
      d_certifiesEB_3112
      (coe d_bhbody_3122 (coe d_bheader_3146 (coe v0)))
-- Ledger.Dijkstra.Specification.BlockBody._._.hBbsize
d_hBbsize_3212 :: T_Block_3128 -> Integer
d_hBbsize_3212 v0
  = coe
      d_hBbsize_3108 (coe d_bhbody_3122 (coe d_bheader_3146 (coe v0)))
-- Ledger.Dijkstra.Specification.BlockBody._._.slot
d_slot_3214 :: T_Block_3128 -> AgdaAny
d_slot_3214 v0
  = coe d_slot_3104 (coe d_bhbody_3122 (coe d_bheader_3146 (coe v0)))
-- Ledger.Dijkstra.Specification.BlockBody._⊢_⇀⦇_,BBODY⦈_
d__'8866'_'8640''10631'_'44'BBODY'10632'__3216 a0 a1 a2 a3 a4 a5
  = ()
newtype T__'8866'_'8640''10631'_'44'BBODY'10632'__3216
  = C_BBODY'45'Block'45'Body_3242 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
