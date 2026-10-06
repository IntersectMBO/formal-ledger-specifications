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

module MAlonzo.Code.Ledger.Conway.Specification.BlockBody where

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
import qualified MAlonzo.Code.Ledger.Conway.Specification.Abstract
import qualified MAlonzo.Code.Ledger.Conway.Specification.Certs
import qualified MAlonzo.Code.Ledger.Conway.Specification.Enact
import qualified MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions
import qualified MAlonzo.Code.Ledger.Conway.Specification.Ledger
import qualified MAlonzo.Code.Ledger.Conway.Specification.PParams
import qualified MAlonzo.Code.Ledger.Conway.Specification.Transaction
import qualified MAlonzo.Code.Ledger.Conway.Specification.Utxo
import qualified MAlonzo.Code.Ledger.Core.Specification.Crypto
import qualified MAlonzo.Code.Ledger.Prelude.Base
import qualified MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory
import qualified MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base

-- _._≥ᵉ_
d__'8805''7497'__22 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny -> AgdaAny -> ()
d__'8805''7497'__22 = erased
-- _.Acnt
d_Acnt_36 a0 = ()
-- _.HasCast-HashProtected-MaybeScriptHash
d_HasCast'45'HashProtected'45'MaybeScriptHash_260 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'HashProtected'45'MaybeScriptHash_260 ~v0
  = du_HasCast'45'HashProtected'45'MaybeScriptHash_260
du_HasCast'45'HashProtected'45'MaybeScriptHash_260 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'HashProtected'45'MaybeScriptHash_260
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasCast'45'HashProtected'45'MaybeScriptHash_1106
-- _.HasTreasury-Acnt
d_HasTreasury'45'Acnt_352 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasTreasury_90
d_HasTreasury'45'Acnt_352 ~v0 = du_HasTreasury'45'Acnt_352
du_HasTreasury'45'Acnt_352 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasTreasury_90
du_HasTreasury'45'Acnt_352
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_HasTreasury'45'Acnt_202
-- _.THash
d_THash_424 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_THash_424 = erased
-- _.Sig
d_Sig_596 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Sig_596 = erased
-- _.Slot
d_Slot_598 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Slot_598 = erased
-- _.Tx
d_Tx_630 a0 = ()
-- _.VKey
d_VKey_664 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_VKey_664 = erased
-- _.Acnt.reserves
d_reserves_892 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_190 ->
  Integer
d_reserves_892 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_reserves_198
      (coe v0)
-- _.Acnt.treasury
d_treasury_894 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_190 ->
  Integer
d_treasury_894 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_treasury_196
      (coe v0)
-- _.Tx.body
d_body_1952 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3654 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3454
d_body_1952 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3666
      (coe v0)
-- _.Tx.isValid
d_isValid_1954 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3654 ->
  Bool
d_isValid_1954 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_isValid_3672
      (coe v0)
-- _.Tx.txAD
d_txAD_1956 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3654 ->
  Maybe AgdaAny
d_txAD_1956 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txAD_3674
      (coe v0)
-- _.Tx.txsize
d_txsize_1958 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3654 ->
  Integer
d_txsize_1958 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txsize_3670
      (coe v0)
-- _.Tx.wits
d_wits_1960 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3654 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3632
d_wits_1960 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3668
      (coe v0)
-- Ledger.Conway.Specification.BlockBody._.EnactState
d_EnactState_2066 a0 a1 = ()
-- Ledger.Conway.Specification.BlockBody._.HasPParams-EnactState
d_HasPParams'45'EnactState_2078 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2520 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_438
d_HasPParams'45'EnactState_2078 ~v0 ~v1
  = du_HasPParams'45'EnactState_2078
du_HasPParams'45'EnactState_2078 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_438
du_HasPParams'45'EnactState_2078
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.du_HasPParams'45'EnactState_1234
-- Ledger.Conway.Specification.BlockBody._.EnactState.cc
d_cc_2116 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1190 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_cc_2116 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_cc_1202 (coe v0)
-- Ledger.Conway.Specification.BlockBody._.EnactState.constitution
d_constitution_2118 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1190 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_constitution_2118 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_constitution_1204
      (coe v0)
-- Ledger.Conway.Specification.BlockBody._.EnactState.pparams
d_pparams_2120 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1190 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pparams_2120 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pparams_1208
      (coe v0)
-- Ledger.Conway.Specification.BlockBody._.EnactState.pv
d_pv_2122 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1190 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_2122 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pv_1206 (coe v0)
-- Ledger.Conway.Specification.BlockBody._.EnactState.withdrawals
d_withdrawals_2124 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1190 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_withdrawals_2124 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_withdrawals_1210
      (coe v0)
-- Ledger.Conway.Specification.BlockBody._._⊢_⇀⦇_,LEDGERS⦈_
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2132 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2520 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2948 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2974 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3654] ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2974 -> ()
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2132 = erased
-- Ledger.Conway.Specification.BlockBody._.HasCast-LEnv
d_HasCast'45'LEnv_2138 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2520 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'LEnv_2138 ~v0 ~v1 = du_HasCast'45'LEnv_2138
du_HasCast'45'LEnv_2138 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'LEnv_2138
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasCast'45'LEnv_3038
-- Ledger.Conway.Specification.BlockBody._.LState
d_LState_2182 a0 a1 = ()
-- Ledger.Conway.Specification.BlockBody._.LState.certState
d_certState_2220 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2974 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1470
d_certState_2220 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_certState_2986
      (coe v0)
-- Ledger.Conway.Specification.BlockBody._.LState.govSt
d_govSt_2222 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2974 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2222 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_govSt_2984
      (coe v0)
-- Ledger.Conway.Specification.BlockBody._.LState.utxoSt
d_utxoSt_2224 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2974 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2514
d_utxoSt_2224 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_utxoSt_2982
      (coe v0)
-- Ledger.Conway.Specification.BlockBody._.BlocksMade
d_BlocksMade_2230 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2520 ->
  ()
d_BlocksMade_2230 = erased
-- Ledger.Conway.Specification.BlockBody._.totExUnits
d_totExUnits_2332 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2520 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3654 ->
  AgdaAny
d_totExUnits_2332 v0 ~v1 = du_totExUnits_2332 v0
du_totExUnits_2332 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3654 ->
  AgdaAny
du_totExUnits_2332 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_totExUnits_2480
      (coe v0)
-- Ledger.Conway.Specification.BlockBody.BHBody
d_BHBody_2334 a0 a1 = ()
data T_BHBody_2334
  = C_constructor_2356 AgdaAny Integer AgdaAny AgdaAny Integer
-- Ledger.Conway.Specification.BlockBody.BHBody.bvkcold
d_bvkcold_2346 :: T_BHBody_2334 -> AgdaAny
d_bvkcold_2346 v0
  = case coe v0 of
      C_constructor_2356 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.BlockBody.BHBody.bsize
d_bsize_2348 :: T_BHBody_2334 -> Integer
d_bsize_2348 v0
  = case coe v0 of
      C_constructor_2356 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.BlockBody.BHBody.slot
d_slot_2350 :: T_BHBody_2334 -> AgdaAny
d_slot_2350 v0
  = case coe v0 of
      C_constructor_2356 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.BlockBody.BHBody.bhash
d_bhash_2352 :: T_BHBody_2334 -> AgdaAny
d_bhash_2352 v0
  = case coe v0 of
      C_constructor_2356 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.BlockBody.BHBody.hBbsize
d_hBbsize_2354 :: T_BHBody_2334 -> Integer
d_hBbsize_2354 v0
  = case coe v0 of
      C_constructor_2356 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.BlockBody.BHeader
d_BHeader_2358 a0 a1 = ()
data T_BHeader_2358 = C_constructor_2368 T_BHBody_2334 AgdaAny
-- Ledger.Conway.Specification.BlockBody.BHeader.bhbody
d_bhbody_2364 :: T_BHeader_2358 -> T_BHBody_2334
d_bhbody_2364 v0
  = case coe v0 of
      C_constructor_2368 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.BlockBody.BHeader.bhsig
d_bhsig_2366 :: T_BHeader_2358 -> AgdaAny
d_bhsig_2366 v0
  = case coe v0 of
      C_constructor_2368 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.BlockBody.Block
d_Block_2370 a0 a1 = ()
data T_Block_2370
  = C_constructor_2396 T_BHeader_2358
                       [MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3654]
                       Integer AgdaAny
-- Ledger.Conway.Specification.BlockBody.Block.bheader
d_bheader_2384 :: T_Block_2370 -> T_BHeader_2358
d_bheader_2384 v0
  = case coe v0 of
      C_constructor_2396 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.BlockBody.Block.ts
d_ts_2386 ::
  T_Block_2370 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3654]
d_ts_2386 v0
  = case coe v0 of
      C_constructor_2396 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.BlockBody.Block.bBodySize
d_bBodySize_2388 :: T_Block_2370 -> Integer
d_bBodySize_2388 v0
  = case coe v0 of
      C_constructor_2396 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.BlockBody.Block.bBodyHash
d_bBodyHash_2390 :: T_Block_2370 -> AgdaAny
d_bBodyHash_2390 v0
  = case coe v0 of
      C_constructor_2396 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.BlockBody.Block.≡-bBodySize
d_'8801''45'bBodySize_2392 ::
  T_Block_2370 -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8801''45'bBodySize_2392 = erased
-- Ledger.Conway.Specification.BlockBody.Block.≡-bBodyHash
d_'8801''45'bBodyHash_2394 ::
  T_Block_2370 -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8801''45'bBodyHash_2394 = erased
-- Ledger.Conway.Specification.BlockBody.BBodyEnv
d_BBodyEnv_2398 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2520 ->
  ()
d_BBodyEnv_2398 = erased
-- Ledger.Conway.Specification.BlockBody.BBodyState
d_BBodyState_2400 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2520 ->
  ()
d_BBodyState_2400 = erased
-- Ledger.Conway.Specification.BlockBody.incrBlocks
d_incrBlocks_2402 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2520 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_incrBlocks_2402 v0 ~v1 v2 v3 = du_incrBlocks_2402 v0 v2 v3
du_incrBlocks_2402 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_incrBlocks_2402 v0 v1 v2
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
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1422
               (coe v0))))
      v2
      (coe
         MAlonzo.Code.Axiom.Set.Map.du_singleton'7504'_836
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1516
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe v1) (coe (1 :: Integer)))
-- Ledger.Conway.Specification.BlockBody._⊢_⇀⦇_,BBODY⦈_
d__'8866'_'8640''10631'_'44'BBODY'10632'__2408 a0 a1 a2 a3 a4 a5
  = ()
newtype T__'8866'_'8640''10631'_'44'BBODY'10632'__2408
  = C_BBODY'45'Block'45'Body_2434 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
