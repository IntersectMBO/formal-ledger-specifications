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

module MAlonzo.Code.Ledger.Core.Specification.Crypto where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Class.Decidable.Core
import qualified MAlonzo.Code.Class.Show.Core
import qualified MAlonzo.Code.Interface.TypeClasses.Hashable
import qualified MAlonzo.Code.Relation.Binary.Structures

-- Ledger.Core.Specification.Crypto.isHashableSet
d_isHashableSet_10 a0 = ()
data T_isHashableSet_10
  = C_mkIsHashableSet_34 MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
                         MAlonzo.Code.Class.Show.Core.T_Show_10
                         MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
                         MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
-- Ledger.Core.Specification.Crypto.isHashableSet.THash
d_THash_24 :: T_isHashableSet_10 -> ()
d_THash_24 = erased
-- Ledger.Core.Specification.Crypto.isHashableSet.DecEq-THash
d_DecEq'45'THash_26 ::
  T_isHashableSet_10 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_26 v0
  = case coe v0 of
      C_mkIsHashableSet_34 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Core.Specification.Crypto.isHashableSet.Show-THash
d_Show'45'THash_28 ::
  T_isHashableSet_10 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_28 v0
  = case coe v0 of
      C_mkIsHashableSet_34 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Core.Specification.Crypto.isHashableSet.DecEq-T
d_DecEq'45'T_30 ::
  T_isHashableSet_10 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_30 v0
  = case coe v0 of
      C_mkIsHashableSet_34 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Core.Specification.Crypto.isHashableSet.T-Hashable
d_T'45'Hashable_32 ::
  T_isHashableSet_10 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_T'45'Hashable_32 v0
  = case coe v0 of
      C_mkIsHashableSet_34 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Core.Specification.Crypto.HashableSet
d_HashableSet_36 = ()
newtype T_HashableSet_36 = C_mkHashableSet_58 T_isHashableSet_10
-- Ledger.Core.Specification.Crypto.HashableSet.T
d_T_42 :: T_HashableSet_36 -> ()
d_T_42 = erased
-- Ledger.Core.Specification.Crypto.HashableSet.T-isHashable
d_T'45'isHashable_44 :: T_HashableSet_36 -> T_isHashableSet_10
d_T'45'isHashable_44 v0
  = case coe v0 of
      C_mkHashableSet_58 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Core.Specification.Crypto.HashableSet._.DecEq-T
d_DecEq'45'T_48 ::
  T_HashableSet_36 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_48 v0
  = coe d_DecEq'45'T_30 (coe d_T'45'isHashable_44 (coe v0))
-- Ledger.Core.Specification.Crypto.HashableSet._.DecEq-THash
d_DecEq'45'THash_50 ::
  T_HashableSet_36 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_50 v0
  = coe d_DecEq'45'THash_26 (coe d_T'45'isHashable_44 (coe v0))
-- Ledger.Core.Specification.Crypto.HashableSet._.Show-THash
d_Show'45'THash_52 ::
  T_HashableSet_36 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_52 v0
  = coe d_Show'45'THash_28 (coe d_T'45'isHashable_44 (coe v0))
-- Ledger.Core.Specification.Crypto.HashableSet._.T-Hashable
d_T'45'Hashable_54 ::
  T_HashableSet_36 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_T'45'Hashable_54 v0
  = coe d_T'45'Hashable_32 (coe d_T'45'isHashable_44 (coe v0))
-- Ledger.Core.Specification.Crypto.HashableSet._.THash
d_THash_56 :: T_HashableSet_36 -> ()
d_THash_56 = erased
-- Ledger.Core.Specification.Crypto.PKKScheme
d_PKKScheme_60 = ()
data T_PKKScheme_60
  = C_constructor_138 (AgdaAny -> AgdaAny -> AgdaAny)
                      (AgdaAny ->
                       AgdaAny ->
                       AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10)
                      (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
                       AgdaAny ->
                       AgdaAny ->
                       MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny)
                      MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
                      MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
-- Ledger.Core.Specification.Crypto.PKKScheme.SKey
d_SKey_100 :: T_PKKScheme_60 -> ()
d_SKey_100 = erased
-- Ledger.Core.Specification.Crypto.PKKScheme.VKey
d_VKey_102 :: T_PKKScheme_60 -> ()
d_VKey_102 = erased
-- Ledger.Core.Specification.Crypto.PKKScheme.Sig
d_Sig_104 :: T_PKKScheme_60 -> ()
d_Sig_104 = erased
-- Ledger.Core.Specification.Crypto.PKKScheme.Ser
d_Ser_106 :: T_PKKScheme_60 -> ()
d_Ser_106 = erased
-- Ledger.Core.Specification.Crypto.PKKScheme.isKeyPair
d_isKeyPair_108 :: T_PKKScheme_60 -> AgdaAny -> AgdaAny -> ()
d_isKeyPair_108 = erased
-- Ledger.Core.Specification.Crypto.PKKScheme.isSigned
d_isSigned_110 ::
  T_PKKScheme_60 -> AgdaAny -> AgdaAny -> AgdaAny -> ()
d_isSigned_110 = erased
-- Ledger.Core.Specification.Crypto.PKKScheme.sign
d_sign_112 :: T_PKKScheme_60 -> AgdaAny -> AgdaAny -> AgdaAny
d_sign_112 v0
  = case coe v0 of
      C_constructor_138 v7 v8 v9 v10 v11 -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Core.Specification.Crypto.PKKScheme.KeyPair
d_KeyPair_114 :: T_PKKScheme_60 -> ()
d_KeyPair_114 = erased
-- Ledger.Core.Specification.Crypto.PKKScheme.Dec-isSigned
d_Dec'45'isSigned_120 ::
  T_PKKScheme_60 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isSigned_120 v0
  = case coe v0 of
      C_constructor_138 v7 v8 v9 v10 v11 -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Core.Specification.Crypto.PKKScheme.isSigned-correct
d_isSigned'45'correct_132 ::
  T_PKKScheme_60 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_isSigned'45'correct_132 v0
  = case coe v0 of
      C_constructor_138 v7 v8 v9 v10 v11 -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Core.Specification.Crypto.PKKScheme.DecEq-Sig
d_DecEq'45'Sig_134 ::
  T_PKKScheme_60 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Sig_134 v0
  = case coe v0 of
      C_constructor_138 v7 v8 v9 v10 v11 -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Core.Specification.Crypto.PKKScheme.DecEq-Ser
d_DecEq'45'Ser_136 ::
  T_PKKScheme_60 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Ser_136 v0
  = case coe v0 of
      C_constructor_138 v7 v8 v9 v10 v11 -> coe v11
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Core.Specification.Crypto.CryptoStructure
d_CryptoStructure_140 = ()
data T_CryptoStructure_140
  = C_constructor_330 T_PKKScheme_60 T_isHashableSet_10
                      MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
                      MAlonzo.Code.Class.Show.Core.T_Show_10
                      MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
                      MAlonzo.Code.Relation.Binary.Structures.T_IsStrictTotalOrder_624
                      ([MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> AgdaAny)
                      (AgdaAny ->
                       AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10)
                      MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
                      MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
                      MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
                      (AgdaAny ->
                       AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10)
                      (AgdaAny ->
                       AgdaAny ->
                       AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10)
                      ([AgdaAny] ->
                       AgdaAny ->
                       AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10)
                      MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
                      MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
                      MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
-- Ledger.Core.Specification.Crypto._.Dec-isSigned
d_Dec'45'isSigned_146 ::
  T_PKKScheme_60 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isSigned_146 v0 = coe d_Dec'45'isSigned_120 (coe v0)
-- Ledger.Core.Specification.Crypto._.DecEq-Ser
d_DecEq'45'Ser_148 ::
  T_PKKScheme_60 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Ser_148 v0 = coe d_DecEq'45'Ser_136 (coe v0)
-- Ledger.Core.Specification.Crypto._.DecEq-Sig
d_DecEq'45'Sig_150 ::
  T_PKKScheme_60 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Sig_150 v0 = coe d_DecEq'45'Sig_134 (coe v0)
-- Ledger.Core.Specification.Crypto._.KeyPair
d_KeyPair_152 :: T_PKKScheme_60 -> ()
d_KeyPair_152 = erased
-- Ledger.Core.Specification.Crypto._.SKey
d_SKey_154 :: T_PKKScheme_60 -> ()
d_SKey_154 = erased
-- Ledger.Core.Specification.Crypto._.Ser
d_Ser_156 :: T_PKKScheme_60 -> ()
d_Ser_156 = erased
-- Ledger.Core.Specification.Crypto._.Sig
d_Sig_158 :: T_PKKScheme_60 -> ()
d_Sig_158 = erased
-- Ledger.Core.Specification.Crypto._.VKey
d_VKey_160 :: T_PKKScheme_60 -> ()
d_VKey_160 = erased
-- Ledger.Core.Specification.Crypto._.isKeyPair
d_isKeyPair_162 :: T_PKKScheme_60 -> AgdaAny -> AgdaAny -> ()
d_isKeyPair_162 = erased
-- Ledger.Core.Specification.Crypto._.isSigned
d_isSigned_164 ::
  T_PKKScheme_60 -> AgdaAny -> AgdaAny -> AgdaAny -> ()
d_isSigned_164 = erased
-- Ledger.Core.Specification.Crypto._.isSigned-correct
d_isSigned'45'correct_166 ::
  T_PKKScheme_60 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_isSigned'45'correct_166 v0
  = coe d_isSigned'45'correct_132 (coe v0)
-- Ledger.Core.Specification.Crypto._.sign
d_sign_168 :: T_PKKScheme_60 -> AgdaAny -> AgdaAny -> AgdaAny
d_sign_168 v0 = coe d_sign_112 (coe v0)
-- Ledger.Core.Specification.Crypto._.DecEq-THash
d_DecEq'45'THash_180 ::
  T_PKKScheme_60 ->
  T_isHashableSet_10 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_180 ~v0 v1 ~v2 ~v3 ~v4 = du_DecEq'45'THash_180 v1
du_DecEq'45'THash_180 ::
  T_isHashableSet_10 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'THash_180 v0 = coe d_DecEq'45'THash_26 (coe v0)
-- Ledger.Core.Specification.Crypto._.THash
d_THash_182 ::
  T_PKKScheme_60 ->
  T_isHashableSet_10 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 -> ()
d_THash_182 = erased
-- Ledger.Core.Specification.Crypto._.Show-THash
d_Show'45'THash_184 ::
  T_PKKScheme_60 ->
  T_isHashableSet_10 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_184 ~v0 v1 ~v2 ~v3 ~v4 = du_Show'45'THash_184 v1
du_Show'45'THash_184 ::
  T_isHashableSet_10 -> MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'THash_184 v0 = coe d_Show'45'THash_28 (coe v0)
-- Ledger.Core.Specification.Crypto._.T-Hashable
d_T'45'Hashable_186 ::
  T_PKKScheme_60 ->
  T_isHashableSet_10 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_T'45'Hashable_186 ~v0 v1 ~v2 ~v3 ~v4 = du_T'45'Hashable_186 v1
du_T'45'Hashable_186 ::
  T_isHashableSet_10 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
du_T'45'Hashable_186 v0 = coe d_T'45'Hashable_32 (coe v0)
-- Ledger.Core.Specification.Crypto.CryptoStructure.pkk
d_pkk_236 :: T_CryptoStructure_140 -> T_PKKScheme_60
d_pkk_236 v0
  = case coe v0 of
      C_constructor_330 v1 v2 v4 v5 v7 v15 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Core.Specification.Crypto.CryptoStructure._.Dec-isSigned
d_Dec'45'isSigned_240 ::
  T_CryptoStructure_140 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isSigned_240 v0
  = coe d_Dec'45'isSigned_120 (coe d_pkk_236 (coe v0))
-- Ledger.Core.Specification.Crypto.CryptoStructure._.DecEq-Ser
d_DecEq'45'Ser_242 ::
  T_CryptoStructure_140 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Ser_242 v0
  = coe d_DecEq'45'Ser_136 (coe d_pkk_236 (coe v0))
-- Ledger.Core.Specification.Crypto.CryptoStructure._.DecEq-Sig
d_DecEq'45'Sig_244 ::
  T_CryptoStructure_140 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Sig_244 v0
  = coe d_DecEq'45'Sig_134 (coe d_pkk_236 (coe v0))
-- Ledger.Core.Specification.Crypto.CryptoStructure._.KeyPair
d_KeyPair_246 :: T_CryptoStructure_140 -> ()
d_KeyPair_246 = erased
-- Ledger.Core.Specification.Crypto.CryptoStructure._.SKey
d_SKey_248 :: T_CryptoStructure_140 -> ()
d_SKey_248 = erased
-- Ledger.Core.Specification.Crypto.CryptoStructure._.Ser
d_Ser_250 :: T_CryptoStructure_140 -> ()
d_Ser_250 = erased
-- Ledger.Core.Specification.Crypto.CryptoStructure._.Sig
d_Sig_252 :: T_CryptoStructure_140 -> ()
d_Sig_252 = erased
-- Ledger.Core.Specification.Crypto.CryptoStructure._.VKey
d_VKey_254 :: T_CryptoStructure_140 -> ()
d_VKey_254 = erased
-- Ledger.Core.Specification.Crypto.CryptoStructure._.isKeyPair
d_isKeyPair_256 ::
  T_CryptoStructure_140 -> AgdaAny -> AgdaAny -> ()
d_isKeyPair_256 = erased
-- Ledger.Core.Specification.Crypto.CryptoStructure._.isSigned
d_isSigned_258 ::
  T_CryptoStructure_140 -> AgdaAny -> AgdaAny -> AgdaAny -> ()
d_isSigned_258 = erased
-- Ledger.Core.Specification.Crypto.CryptoStructure._.isSigned-correct
d_isSigned'45'correct_260 ::
  T_CryptoStructure_140 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_isSigned'45'correct_260 v0
  = coe d_isSigned'45'correct_132 (coe d_pkk_236 (coe v0))
-- Ledger.Core.Specification.Crypto.CryptoStructure._.sign
d_sign_262 ::
  T_CryptoStructure_140 -> AgdaAny -> AgdaAny -> AgdaAny
d_sign_262 v0 = coe d_sign_112 (coe d_pkk_236 (coe v0))
-- Ledger.Core.Specification.Crypto.CryptoStructure.khs
d_khs_264 :: T_CryptoStructure_140 -> T_isHashableSet_10
d_khs_264 v0
  = case coe v0 of
      C_constructor_330 v1 v2 v4 v5 v7 v15 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Core.Specification.Crypto.CryptoStructure.ScriptHash
d_ScriptHash_266 :: T_CryptoStructure_140 -> ()
d_ScriptHash_266 = erased
-- Ledger.Core.Specification.Crypto.CryptoStructure.DecEq-ScriptHash
d_DecEq'45'ScriptHash_268 ::
  T_CryptoStructure_140 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ScriptHash_268 v0
  = case coe v0 of
      C_constructor_330 v1 v2 v4 v5 v7 v15 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Core.Specification.Crypto.CryptoStructure.Show-ScriptHash
d_Show'45'ScriptHash_270 ::
  T_CryptoStructure_140 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ScriptHash_270 v0
  = case coe v0 of
      C_constructor_330 v1 v2 v4 v5 v7 v15 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Core.Specification.Crypto.CryptoStructure._.DecEq-THash
d_DecEq'45'THash_274 ::
  T_CryptoStructure_140 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_274 v0
  = coe d_DecEq'45'THash_26 (coe d_khs_264 (coe v0))
-- Ledger.Core.Specification.Crypto.CryptoStructure._.THash
d_THash_276 :: T_CryptoStructure_140 -> ()
d_THash_276 = erased
-- Ledger.Core.Specification.Crypto.CryptoStructure._.Show-THash
d_Show'45'THash_278 ::
  T_CryptoStructure_140 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_278 v0
  = coe d_Show'45'THash_28 (coe d_khs_264 (coe v0))
-- Ledger.Core.Specification.Crypto.CryptoStructure._.T-Hashable
d_T'45'Hashable_280 ::
  T_CryptoStructure_140 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_T'45'Hashable_280 v0
  = coe d_T'45'Hashable_32 (coe d_khs_264 (coe v0))
-- Ledger.Core.Specification.Crypto.CryptoStructure.VRF
d_VRF_282 :: T_CryptoStructure_140 -> ()
d_VRF_282 = erased
-- Ledger.Core.Specification.Crypto.CryptoStructure.DecEq-VRF
d_DecEq'45'VRF_284 ::
  T_CryptoStructure_140 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'VRF_284 v0
  = case coe v0 of
      C_constructor_330 v1 v2 v4 v5 v7 v15 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Core.Specification.Crypto.CryptoStructure.BlsVKey
d_BlsVKey_286 :: T_CryptoStructure_140 -> ()
d_BlsVKey_286 = erased
-- Ledger.Core.Specification.Crypto.CryptoStructure.BlsSig
d_BlsSig_288 :: T_CryptoStructure_140 -> ()
d_BlsSig_288 = erased
-- Ledger.Core.Specification.Crypto.CryptoStructure.BlsPoP
d_BlsPoP_290 :: T_CryptoStructure_140 -> ()
d_BlsPoP_290 = erased
-- Ledger.Core.Specification.Crypto.CryptoStructure.isValidPoP
d_isValidPoP_292 ::
  T_CryptoStructure_140 -> AgdaAny -> AgdaAny -> ()
d_isValidPoP_292 = erased
-- Ledger.Core.Specification.Crypto.CryptoStructure.isSignedBy
d_isSignedBy_294 ::
  T_CryptoStructure_140 -> AgdaAny -> AgdaAny -> AgdaAny -> ()
d_isSignedBy_294 = erased
-- Ledger.Core.Specification.Crypto.CryptoStructure.isSignedByAggregate
d_isSignedByAggregate_296 ::
  T_CryptoStructure_140 -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_isSignedByAggregate_296 = erased
-- Ledger.Core.Specification.Crypto.CryptoStructure._<ᵏʰ_
d__'60''7503''688'__298 ::
  T_CryptoStructure_140 -> AgdaAny -> AgdaAny -> ()
d__'60''7503''688'__298 = erased
-- Ledger.Core.Specification.Crypto.CryptoStructure.<ᵏʰ-isSTO
d_'60''7503''688''45'isSTO_300 ::
  T_CryptoStructure_140 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictTotalOrder_624
d_'60''7503''688''45'isSTO_300 v0
  = case coe v0 of
      C_constructor_330 v1 v2 v4 v5 v7 v15 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v15
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Core.Specification.Crypto.CryptoStructure.EBHash
d_EBHash_302 :: T_CryptoStructure_140 -> ()
d_EBHash_302 = erased
-- Ledger.Core.Specification.Crypto.CryptoStructure.TxRefHash
d_TxRefHash_304 :: T_CryptoStructure_140 -> ()
d_TxRefHash_304 = erased
-- Ledger.Core.Specification.Crypto.CryptoStructure.RBHeaderHash
d_RBHeaderHash_306 :: T_CryptoStructure_140 -> ()
d_RBHeaderHash_306 = erased
-- Ledger.Core.Specification.Crypto.CryptoStructure.hashEBRefs
d_hashEBRefs_308 ::
  T_CryptoStructure_140 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> AgdaAny
d_hashEBRefs_308 v0
  = case coe v0 of
      C_constructor_330 v1 v2 v4 v5 v7 v15 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v19
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Core.Specification.Crypto.CryptoStructure.Dec-<ᵏʰ
d_Dec'45''60''7503''688'_310 ::
  T_CryptoStructure_140 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45''60''7503''688'_310 v0
  = case coe v0 of
      C_constructor_330 v1 v2 v4 v5 v7 v15 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v20
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Core.Specification.Crypto.CryptoStructure.DecEq-BlsVKey
d_DecEq'45'BlsVKey_312 ::
  T_CryptoStructure_140 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BlsVKey_312 v0
  = case coe v0 of
      C_constructor_330 v1 v2 v4 v5 v7 v15 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v21
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Core.Specification.Crypto.CryptoStructure.DecEq-BlsSig
d_DecEq'45'BlsSig_314 ::
  T_CryptoStructure_140 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BlsSig_314 v0
  = case coe v0 of
      C_constructor_330 v1 v2 v4 v5 v7 v15 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v22
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Core.Specification.Crypto.CryptoStructure.DecEq-BlsPoP
d_DecEq'45'BlsPoP_316 ::
  T_CryptoStructure_140 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BlsPoP_316 v0
  = case coe v0 of
      C_constructor_330 v1 v2 v4 v5 v7 v15 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v23
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Core.Specification.Crypto.CryptoStructure.Dec-isValidPoP
d_Dec'45'isValidPoP_318 ::
  T_CryptoStructure_140 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isValidPoP_318 v0
  = case coe v0 of
      C_constructor_330 v1 v2 v4 v5 v7 v15 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v24
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Core.Specification.Crypto.CryptoStructure.Dec-isSignedBy
d_Dec'45'isSignedBy_320 ::
  T_CryptoStructure_140 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isSignedBy_320 v0
  = case coe v0 of
      C_constructor_330 v1 v2 v4 v5 v7 v15 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v25
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Core.Specification.Crypto.CryptoStructure.Dec-isSignedByAggregate
d_Dec'45'isSignedByAggregate_322 ::
  T_CryptoStructure_140 ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isSignedByAggregate_322 v0
  = case coe v0 of
      C_constructor_330 v1 v2 v4 v5 v7 v15 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v26
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Core.Specification.Crypto.CryptoStructure.DecEq-EBHash
d_DecEq'45'EBHash_324 ::
  T_CryptoStructure_140 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'EBHash_324 v0
  = case coe v0 of
      C_constructor_330 v1 v2 v4 v5 v7 v15 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v27
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Core.Specification.Crypto.CryptoStructure.DecEq-TxRefHash
d_DecEq'45'TxRefHash_326 ::
  T_CryptoStructure_140 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'TxRefHash_326 v0
  = case coe v0 of
      C_constructor_330 v1 v2 v4 v5 v7 v15 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v28
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Core.Specification.Crypto.CryptoStructure.DecEq-RBHeaderHash
d_DecEq'45'RBHeaderHash_328 ::
  T_CryptoStructure_140 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'RBHeaderHash_328 v0
  = case coe v0 of
      C_constructor_330 v1 v2 v4 v5 v7 v15 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v29
      _ -> MAlonzo.RTE.mazUnreachableError
