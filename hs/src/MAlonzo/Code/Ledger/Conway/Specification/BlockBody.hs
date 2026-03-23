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
d_HasCast'45'HashProtected'45'MaybeScriptHash_256 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'HashProtected'45'MaybeScriptHash_256 ~v0
  = du_HasCast'45'HashProtected'45'MaybeScriptHash_256
du_HasCast'45'HashProtected'45'MaybeScriptHash_256 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'HashProtected'45'MaybeScriptHash_256
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasCast'45'HashProtected'45'MaybeScriptHash_1082
-- _.HasTreasury-Acnt
d_HasTreasury'45'Acnt_342 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasTreasury_80
d_HasTreasury'45'Acnt_342 ~v0 = du_HasTreasury'45'Acnt_342
du_HasTreasury'45'Acnt_342 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasTreasury_80
du_HasTreasury'45'Acnt_342
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_HasTreasury'45'Acnt_200
-- _.THash
d_THash_408 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_THash_408 = erased
-- _.Sig
d_Sig_576 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Sig_576 = erased
-- _.Slot
d_Slot_578 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Slot_578 = erased
-- _.Tx
d_Tx_606 a0 = ()
-- _.VKey
d_VKey_640 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_VKey_640 = erased
-- _.Acnt.reserves
d_reserves_864 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_188 ->
  Integer
d_reserves_864 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_reserves_196
      (coe v0)
-- _.Acnt.treasury
d_treasury_866 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_188 ->
  Integer
d_treasury_866 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_treasury_194
      (coe v0)
-- _.Tx.body
d_body_1916 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3594 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3414
d_body_1916 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3606
      (coe v0)
-- _.Tx.isValid
d_isValid_1918 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3594 ->
  Bool
d_isValid_1918 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_isValid_3612
      (coe v0)
-- _.Tx.txAD
d_txAD_1920 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3594 ->
  Maybe AgdaAny
d_txAD_1920 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txAD_3614
      (coe v0)
-- _.Tx.txsize
d_txsize_1922 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3594 ->
  Integer
d_txsize_1922 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txsize_3610
      (coe v0)
-- _.Tx.wits
d_wits_1924 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3594 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3572
d_wits_1924 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3608
      (coe v0)
-- Ledger.Conway.Specification.BlockBody._.EnactState
d_EnactState_2030 a0 a1 = ()
-- Ledger.Conway.Specification.BlockBody._.HasPParams-EnactState
d_HasPParams'45'EnactState_2042 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2492 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_436
d_HasPParams'45'EnactState_2042 ~v0 ~v1
  = du_HasPParams'45'EnactState_2042
du_HasPParams'45'EnactState_2042 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_436
du_HasPParams'45'EnactState_2042
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.du_HasPParams'45'EnactState_1210
-- Ledger.Conway.Specification.BlockBody._.EnactState.cc
d_cc_2080 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1166 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_cc_2080 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_cc_1178 (coe v0)
-- Ledger.Conway.Specification.BlockBody._.EnactState.constitution
d_constitution_2082 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1166 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_constitution_2082 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_constitution_1180
      (coe v0)
-- Ledger.Conway.Specification.BlockBody._.EnactState.pparams
d_pparams_2084 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1166 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pparams_2084 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pparams_1184
      (coe v0)
-- Ledger.Conway.Specification.BlockBody._.EnactState.pv
d_pv_2086 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1166 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_2086 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pv_1182 (coe v0)
-- Ledger.Conway.Specification.BlockBody._.EnactState.withdrawals
d_withdrawals_2088 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1166 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_withdrawals_2088 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_withdrawals_1186
      (coe v0)
-- Ledger.Conway.Specification.BlockBody._._⊢_⇀⦇_,LEDGERS⦈_
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2096 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2492 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2906 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2932 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3594] ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2932 -> ()
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2096 = erased
-- Ledger.Conway.Specification.BlockBody._.HasCast-LEnv
d_HasCast'45'LEnv_2102 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2492 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'LEnv_2102 ~v0 ~v1 = du_HasCast'45'LEnv_2102
du_HasCast'45'LEnv_2102 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'LEnv_2102
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasCast'45'LEnv_2996
-- Ledger.Conway.Specification.BlockBody._.LState
d_LState_2146 a0 a1 = ()
-- Ledger.Conway.Specification.BlockBody._.LState.certState
d_certState_2184 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2932 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1446
d_certState_2184 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_certState_2944
      (coe v0)
-- Ledger.Conway.Specification.BlockBody._.LState.govSt
d_govSt_2186 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2932 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2186 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_govSt_2942
      (coe v0)
-- Ledger.Conway.Specification.BlockBody._.LState.utxoSt
d_utxoSt_2188 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2932 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2486
d_utxoSt_2188 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_utxoSt_2940
      (coe v0)
-- Ledger.Conway.Specification.BlockBody._.BlocksMade
d_BlocksMade_2194 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2492 ->
  ()
d_BlocksMade_2194 = erased
-- Ledger.Conway.Specification.BlockBody._.totExUnits
d_totExUnits_2296 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2492 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3594 ->
  AgdaAny
d_totExUnits_2296 v0 ~v1 = du_totExUnits_2296 v0
du_totExUnits_2296 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3594 ->
  AgdaAny
du_totExUnits_2296 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_totExUnits_2452
      (coe v0)
-- Ledger.Conway.Specification.BlockBody.BHBody
d_BHBody_2298 a0 a1 = ()
data T_BHBody_2298
  = C_constructor_2320 AgdaAny Integer AgdaAny AgdaAny Integer
-- Ledger.Conway.Specification.BlockBody.BHBody.bvkcold
d_bvkcold_2310 :: T_BHBody_2298 -> AgdaAny
d_bvkcold_2310 v0
  = case coe v0 of
      C_constructor_2320 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.BlockBody.BHBody.bsize
d_bsize_2312 :: T_BHBody_2298 -> Integer
d_bsize_2312 v0
  = case coe v0 of
      C_constructor_2320 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.BlockBody.BHBody.slot
d_slot_2314 :: T_BHBody_2298 -> AgdaAny
d_slot_2314 v0
  = case coe v0 of
      C_constructor_2320 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.BlockBody.BHBody.bhash
d_bhash_2316 :: T_BHBody_2298 -> AgdaAny
d_bhash_2316 v0
  = case coe v0 of
      C_constructor_2320 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.BlockBody.BHBody.hBbsize
d_hBbsize_2318 :: T_BHBody_2298 -> Integer
d_hBbsize_2318 v0
  = case coe v0 of
      C_constructor_2320 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.BlockBody.BHeader
d_BHeader_2322 a0 a1 = ()
data T_BHeader_2322 = C_constructor_2332 T_BHBody_2298 AgdaAny
-- Ledger.Conway.Specification.BlockBody.BHeader.bhbody
d_bhbody_2328 :: T_BHeader_2322 -> T_BHBody_2298
d_bhbody_2328 v0
  = case coe v0 of
      C_constructor_2332 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.BlockBody.BHeader.bhsig
d_bhsig_2330 :: T_BHeader_2322 -> AgdaAny
d_bhsig_2330 v0
  = case coe v0 of
      C_constructor_2332 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.BlockBody.Block
d_Block_2334 a0 a1 = ()
data T_Block_2334
  = C_constructor_2360 T_BHeader_2322
                       [MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3594]
                       Integer AgdaAny
-- Ledger.Conway.Specification.BlockBody.Block.bheader
d_bheader_2348 :: T_Block_2334 -> T_BHeader_2322
d_bheader_2348 v0
  = case coe v0 of
      C_constructor_2360 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.BlockBody.Block.ts
d_ts_2350 ::
  T_Block_2334 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3594]
d_ts_2350 v0
  = case coe v0 of
      C_constructor_2360 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.BlockBody.Block.bBodySize
d_bBodySize_2352 :: T_Block_2334 -> Integer
d_bBodySize_2352 v0
  = case coe v0 of
      C_constructor_2360 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.BlockBody.Block.bBodyHash
d_bBodyHash_2354 :: T_Block_2334 -> AgdaAny
d_bBodyHash_2354 v0
  = case coe v0 of
      C_constructor_2360 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.BlockBody.Block.≡-bBodySize
d_'8801''45'bBodySize_2356 ::
  T_Block_2334 -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8801''45'bBodySize_2356 = erased
-- Ledger.Conway.Specification.BlockBody.Block.≡-bBodyHash
d_'8801''45'bBodyHash_2358 ::
  T_Block_2334 -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8801''45'bBodyHash_2358 = erased
-- Ledger.Conway.Specification.BlockBody.BBodyEnv
d_BBodyEnv_2362 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2492 ->
  ()
d_BBodyEnv_2362 = erased
-- Ledger.Conway.Specification.BlockBody.BBodyState
d_BBodyState_2364 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2492 ->
  ()
d_BBodyState_2364 = erased
-- Ledger.Conway.Specification.BlockBody.incrBlocks
d_incrBlocks_2366 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2492 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_incrBlocks_2366 v0 ~v1 v2 v3 = du_incrBlocks_2366 v0 v2 v3
du_incrBlocks_2366 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_incrBlocks_2366 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__582
      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
         (coe
            MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
      (MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1390
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
d__'8866'_'8640''10631'_'44'BBODY'10632'__2372 a0 a1 a2 a3 a4 a5
  = ()
newtype T__'8866'_'8640''10631'_'44'BBODY'10632'__2372
  = C_BBODY'45'Block'45'Body_2398 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
