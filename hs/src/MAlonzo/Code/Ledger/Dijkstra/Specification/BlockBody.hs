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
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.PParams
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo
import qualified MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory

-- _._≥ᵉ_
d__'8805''7497'__22 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  AgdaAny -> AgdaAny -> ()
d__'8805''7497'__22 = erased
-- _.Acnt
d_Acnt_40 a0 = ()
-- _.THash
d_THash_672 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_THash_672 = erased
-- _.Sig
d_Sig_878 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_Sig_878 = erased
-- _.Slot
d_Slot_882 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_Slot_882 = erased
-- _.TopLevelTx
d_TopLevelTx_920 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_TopLevelTx_920 = erased
-- _.VKey
d_VKey_972 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_VKey_972 = erased
-- _.Acnt.reserves
d_reserves_1268 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_196 ->
  Integer
d_reserves_1268 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_reserves_204
      (coe v0)
-- _.Acnt.treasury
d_treasury_1270 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_196 ->
  Integer
d_treasury_1270 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_treasury_202
      (coe v0)
-- Ledger.Dijkstra.Specification.BlockBody._.EnactState
d_EnactState_2692 a0 a1 = ()
-- Ledger.Dijkstra.Specification.BlockBody._.EnactState.cc
d_cc_2742 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1328 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_cc_2742 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_cc_1340 (coe v0)
-- Ledger.Dijkstra.Specification.BlockBody._.EnactState.constitution
d_constitution_2744 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1328 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_constitution_2744 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_constitution_1342
      (coe v0)
-- Ledger.Dijkstra.Specification.BlockBody._.EnactState.pparams
d_pparams_2746 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1328 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pparams_2746 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_pparams_1346
      (coe v0)
-- Ledger.Dijkstra.Specification.BlockBody._.EnactState.pv
d_pv_2748 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1328 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_2748 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_pv_1344 (coe v0)
-- Ledger.Dijkstra.Specification.BlockBody._.EnactState.withdrawals
d_withdrawals_2750 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1328 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_withdrawals_2750 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_withdrawals_1348
      (coe v0)
-- Ledger.Dijkstra.Specification.BlockBody._._⊢_⇀⦇_,LEDGERS⦈_
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2758 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3254 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerEnv_3884 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3924 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3850] ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3924 ->
  ()
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2758 = erased
-- Ledger.Dijkstra.Specification.BlockBody._.LedgerState
d_LedgerState_2826 a0 a1 = ()
-- Ledger.Dijkstra.Specification.BlockBody._.LedgerState.certState
d_certState_2880 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3924 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1584
d_certState_2880 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_certState_3936
      (coe v0)
-- Ledger.Dijkstra.Specification.BlockBody._.LedgerState.govSt
d_govSt_2882 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3924 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2882 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_govSt_3934
      (coe v0)
-- Ledger.Dijkstra.Specification.BlockBody._.LedgerState.utxoSt
d_utxoSt_2884 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3924 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3290
d_utxoSt_2884 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_utxoSt_3932
      (coe v0)
-- Ledger.Dijkstra.Specification.BlockBody._.BlocksMade
d_BlocksMade_2910 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3254 ->
  ()
d_BlocksMade_2910 = erased
-- Ledger.Dijkstra.Specification.BlockBody._.totExUnits
d_totExUnits_3012 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3254 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3850 ->
  AgdaAny
d_totExUnits_3012 v0 ~v1 = du_totExUnits_3012 v0
du_totExUnits_3012 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3850 ->
  AgdaAny
du_totExUnits_3012 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.du_totExUnits_3216
      (coe v0) v2
-- Ledger.Dijkstra.Specification.BlockBody.BHBody
d_BHBody_3014 a0 a1 = ()
data T_BHBody_3014
  = C_constructor_3036 AgdaAny Integer AgdaAny AgdaAny Integer
-- Ledger.Dijkstra.Specification.BlockBody.BHBody.bvkcold
d_bvkcold_3026 :: T_BHBody_3014 -> AgdaAny
d_bvkcold_3026 v0
  = case coe v0 of
      C_constructor_3036 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.BlockBody.BHBody.bsize
d_bsize_3028 :: T_BHBody_3014 -> Integer
d_bsize_3028 v0
  = case coe v0 of
      C_constructor_3036 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.BlockBody.BHBody.slot
d_slot_3030 :: T_BHBody_3014 -> AgdaAny
d_slot_3030 v0
  = case coe v0 of
      C_constructor_3036 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.BlockBody.BHBody.bhash
d_bhash_3032 :: T_BHBody_3014 -> AgdaAny
d_bhash_3032 v0
  = case coe v0 of
      C_constructor_3036 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.BlockBody.BHBody.hBbsize
d_hBbsize_3034 :: T_BHBody_3014 -> Integer
d_hBbsize_3034 v0
  = case coe v0 of
      C_constructor_3036 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.BlockBody.BHeader
d_BHeader_3038 a0 a1 = ()
data T_BHeader_3038 = C_constructor_3048 T_BHBody_3014 AgdaAny
-- Ledger.Dijkstra.Specification.BlockBody.BHeader.bhbody
d_bhbody_3044 :: T_BHeader_3038 -> T_BHBody_3014
d_bhbody_3044 v0
  = case coe v0 of
      C_constructor_3048 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.BlockBody.BHeader.bhsig
d_bhsig_3046 :: T_BHeader_3038 -> AgdaAny
d_bhsig_3046 v0
  = case coe v0 of
      C_constructor_3048 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.BlockBody.Block
d_Block_3050 a0 a1 = ()
data T_Block_3050
  = C_constructor_3076 T_BHeader_3038
                       [MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3850]
                       Integer AgdaAny
-- Ledger.Dijkstra.Specification.BlockBody.Block.bheader
d_bheader_3064 :: T_Block_3050 -> T_BHeader_3038
d_bheader_3064 v0
  = case coe v0 of
      C_constructor_3076 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.BlockBody.Block.ts
d_ts_3066 ::
  T_Block_3050 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3850]
d_ts_3066 v0
  = case coe v0 of
      C_constructor_3076 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.BlockBody.Block.bBodySize
d_bBodySize_3068 :: T_Block_3050 -> Integer
d_bBodySize_3068 v0
  = case coe v0 of
      C_constructor_3076 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.BlockBody.Block.bBodyHash
d_bBodyHash_3070 :: T_Block_3050 -> AgdaAny
d_bBodyHash_3070 v0
  = case coe v0 of
      C_constructor_3076 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.BlockBody.Block.≡-bBodySize
d_'8801''45'bBodySize_3072 ::
  T_Block_3050 -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8801''45'bBodySize_3072 = erased
-- Ledger.Dijkstra.Specification.BlockBody.Block.≡-bBodyHash
d_'8801''45'bBodyHash_3074 ::
  T_Block_3050 -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8801''45'bBodyHash_3074 = erased
-- Ledger.Dijkstra.Specification.BlockBody.BBodyEnv
d_BBodyEnv_3078 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3254 ->
  ()
d_BBodyEnv_3078 = erased
-- Ledger.Dijkstra.Specification.BlockBody.BBodyState
d_BBodyState_3080 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3254 ->
  ()
d_BBodyState_3080 = erased
-- Ledger.Dijkstra.Specification.BlockBody.incrBlocks
d_incrBlocks_3082 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3254 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_incrBlocks_3082 v0 ~v1 v2 v3 = du_incrBlocks_3082 v0 v2 v3
du_incrBlocks_3082 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_incrBlocks_3082 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__582
      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
         (coe
            MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
      (MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1416
               (coe v0))))
      v2
      (coe
         MAlonzo.Code.Axiom.Set.Map.du_singleton'7504'_836
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1516
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe v1) (coe (1 :: Integer)))
-- Ledger.Dijkstra.Specification.BlockBody._⊢_⇀⦇_,BBODY⦈_
d__'8866'_'8640''10631'_'44'BBODY'10632'__3088 a0 a1 a2 a3 a4 a5
  = ()
newtype T__'8866'_'8640''10631'_'44'BBODY'10632'__3088
  = C_BBODY'45'Block'45'Body_3114 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
