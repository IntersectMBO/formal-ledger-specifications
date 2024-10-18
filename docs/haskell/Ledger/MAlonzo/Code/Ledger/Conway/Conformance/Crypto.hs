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

module MAlonzo.Code.Ledger.Conway.Conformance.Crypto where

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
import qualified MAlonzo.Code.Interface.Hashable

-- Ledger.Conway.Conformance.Crypto.isHashableSet
d_isHashableSet_10 a0 = ()
data T_isHashableSet_10
  = C_mkIsHashableSet_34 MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
                         MAlonzo.Code.Class.Show.Core.T_Show_10
                         MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
                         MAlonzo.Code.Interface.Hashable.T_Hashable_8
-- Ledger.Conway.Conformance.Crypto.isHashableSet.THash
d_THash_24 :: T_isHashableSet_10 -> ()
d_THash_24 = erased
-- Ledger.Conway.Conformance.Crypto.isHashableSet.DecEq-THash
d_DecEq'45'THash_26 ::
  T_isHashableSet_10 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_26 v0
  = case coe v0 of
      C_mkIsHashableSet_34 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Crypto.isHashableSet.Show-THash
d_Show'45'THash_28 ::
  T_isHashableSet_10 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_28 v0
  = case coe v0 of
      C_mkIsHashableSet_34 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Crypto.isHashableSet.DecEq-T
d_DecEq'45'T_30 ::
  T_isHashableSet_10 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_30 v0
  = case coe v0 of
      C_mkIsHashableSet_34 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Crypto.isHashableSet.T-Hashable
d_T'45'Hashable_32 ::
  T_isHashableSet_10 -> MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_32 v0
  = case coe v0 of
      C_mkIsHashableSet_34 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Crypto.HashableSet
d_HashableSet_36 = ()
newtype T_HashableSet_36 = C_mkHashableSet_58 T_isHashableSet_10
-- Ledger.Conway.Conformance.Crypto.HashableSet.T
d_T_42 :: T_HashableSet_36 -> ()
d_T_42 = erased
-- Ledger.Conway.Conformance.Crypto.HashableSet.T-isHashable
d_T'45'isHashable_44 :: T_HashableSet_36 -> T_isHashableSet_10
d_T'45'isHashable_44 v0
  = case coe v0 of
      C_mkHashableSet_58 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Crypto.HashableSet._.DecEq-T
d_DecEq'45'T_48 ::
  T_HashableSet_36 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_48 v0
  = coe d_DecEq'45'T_30 (coe d_T'45'isHashable_44 (coe v0))
-- Ledger.Conway.Conformance.Crypto.HashableSet._.DecEq-THash
d_DecEq'45'THash_50 ::
  T_HashableSet_36 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_50 v0
  = coe d_DecEq'45'THash_26 (coe d_T'45'isHashable_44 (coe v0))
-- Ledger.Conway.Conformance.Crypto.HashableSet._.Show-THash
d_Show'45'THash_52 ::
  T_HashableSet_36 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_52 v0
  = coe d_Show'45'THash_28 (coe d_T'45'isHashable_44 (coe v0))
-- Ledger.Conway.Conformance.Crypto.HashableSet._.T-Hashable
d_T'45'Hashable_54 ::
  T_HashableSet_36 -> MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_54 v0
  = coe d_T'45'Hashable_32 (coe d_T'45'isHashable_44 (coe v0))
-- Ledger.Conway.Conformance.Crypto.HashableSet._.THash
d_THash_56 :: T_HashableSet_36 -> ()
d_THash_56 = erased
-- Ledger.Conway.Conformance.Crypto.PKKScheme
d_PKKScheme_60 = ()
data T_PKKScheme_60
  = C_PKKScheme'46'constructor_1827 (AgdaAny -> AgdaAny -> AgdaAny)
                                    (AgdaAny ->
                                     AgdaAny ->
                                     AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10)
                                    (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
                                     AgdaAny ->
                                     AgdaAny ->
                                     MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny)
                                    MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
                                    MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
-- Ledger.Conway.Conformance.Crypto.PKKScheme.SKey
d_SKey_100 :: T_PKKScheme_60 -> ()
d_SKey_100 = erased
-- Ledger.Conway.Conformance.Crypto.PKKScheme.VKey
d_VKey_102 :: T_PKKScheme_60 -> ()
d_VKey_102 = erased
-- Ledger.Conway.Conformance.Crypto.PKKScheme.Sig
d_Sig_104 :: T_PKKScheme_60 -> ()
d_Sig_104 = erased
-- Ledger.Conway.Conformance.Crypto.PKKScheme.Ser
d_Ser_106 :: T_PKKScheme_60 -> ()
d_Ser_106 = erased
-- Ledger.Conway.Conformance.Crypto.PKKScheme.isKeyPair
d_isKeyPair_108 :: T_PKKScheme_60 -> AgdaAny -> AgdaAny -> ()
d_isKeyPair_108 = erased
-- Ledger.Conway.Conformance.Crypto.PKKScheme.isSigned
d_isSigned_110 ::
  T_PKKScheme_60 -> AgdaAny -> AgdaAny -> AgdaAny -> ()
d_isSigned_110 = erased
-- Ledger.Conway.Conformance.Crypto.PKKScheme.sign
d_sign_112 :: T_PKKScheme_60 -> AgdaAny -> AgdaAny -> AgdaAny
d_sign_112 v0
  = case coe v0 of
      C_PKKScheme'46'constructor_1827 v7 v8 v9 v10 v11 -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Crypto.PKKScheme.KeyPair
d_KeyPair_114 :: T_PKKScheme_60 -> ()
d_KeyPair_114 = erased
-- Ledger.Conway.Conformance.Crypto.PKKScheme.Dec-isSigned
d_Dec'45'isSigned_120 ::
  T_PKKScheme_60 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isSigned_120 v0
  = case coe v0 of
      C_PKKScheme'46'constructor_1827 v7 v8 v9 v10 v11 -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Crypto.PKKScheme.isSigned-correct
d_isSigned'45'correct_132 ::
  T_PKKScheme_60 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_isSigned'45'correct_132 v0
  = case coe v0 of
      C_PKKScheme'46'constructor_1827 v7 v8 v9 v10 v11 -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Crypto.PKKScheme.DecEq-Sig
d_DecEq'45'Sig_134 ::
  T_PKKScheme_60 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Sig_134 v0
  = case coe v0 of
      C_PKKScheme'46'constructor_1827 v7 v8 v9 v10 v11 -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Crypto.PKKScheme.DecEq-Ser
d_DecEq'45'Ser_136 ::
  T_PKKScheme_60 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Ser_136 v0
  = case coe v0 of
      C_PKKScheme'46'constructor_1827 v7 v8 v9 v10 v11 -> coe v11
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Crypto.Crypto
d_Crypto_138 = ()
data T_Crypto_138
  = C_Crypto'46'constructor_2419 T_PKKScheme_60 T_isHashableSet_10
                                 MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
                                 MAlonzo.Code.Class.Show.Core.T_Show_10
-- Ledger.Conway.Conformance.Crypto._.Dec-isSigned
d_Dec'45'isSigned_144 ::
  T_PKKScheme_60 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isSigned_144 v0 = coe d_Dec'45'isSigned_120 (coe v0)
-- Ledger.Conway.Conformance.Crypto._.DecEq-Ser
d_DecEq'45'Ser_146 ::
  T_PKKScheme_60 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Ser_146 v0 = coe d_DecEq'45'Ser_136 (coe v0)
-- Ledger.Conway.Conformance.Crypto._.DecEq-Sig
d_DecEq'45'Sig_148 ::
  T_PKKScheme_60 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Sig_148 v0 = coe d_DecEq'45'Sig_134 (coe v0)
-- Ledger.Conway.Conformance.Crypto._.KeyPair
d_KeyPair_150 :: T_PKKScheme_60 -> ()
d_KeyPair_150 = erased
-- Ledger.Conway.Conformance.Crypto._.SKey
d_SKey_152 :: T_PKKScheme_60 -> ()
d_SKey_152 = erased
-- Ledger.Conway.Conformance.Crypto._.Ser
d_Ser_154 :: T_PKKScheme_60 -> ()
d_Ser_154 = erased
-- Ledger.Conway.Conformance.Crypto._.Sig
d_Sig_156 :: T_PKKScheme_60 -> ()
d_Sig_156 = erased
-- Ledger.Conway.Conformance.Crypto._.VKey
d_VKey_158 :: T_PKKScheme_60 -> ()
d_VKey_158 = erased
-- Ledger.Conway.Conformance.Crypto._.isKeyPair
d_isKeyPair_160 :: T_PKKScheme_60 -> AgdaAny -> AgdaAny -> ()
d_isKeyPair_160 = erased
-- Ledger.Conway.Conformance.Crypto._.isSigned
d_isSigned_162 ::
  T_PKKScheme_60 -> AgdaAny -> AgdaAny -> AgdaAny -> ()
d_isSigned_162 = erased
-- Ledger.Conway.Conformance.Crypto._.isSigned-correct
d_isSigned'45'correct_164 ::
  T_PKKScheme_60 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_isSigned'45'correct_164 v0
  = coe d_isSigned'45'correct_132 (coe v0)
-- Ledger.Conway.Conformance.Crypto._.sign
d_sign_166 :: T_PKKScheme_60 -> AgdaAny -> AgdaAny -> AgdaAny
d_sign_166 v0 = coe d_sign_112 (coe v0)
-- Ledger.Conway.Conformance.Crypto.Crypto.pkk
d_pkk_176 :: T_Crypto_138 -> T_PKKScheme_60
d_pkk_176 v0
  = case coe v0 of
      C_Crypto'46'constructor_2419 v1 v2 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Crypto.Crypto._.Dec-isSigned
d_Dec'45'isSigned_180 ::
  T_Crypto_138 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isSigned_180 v0
  = coe d_Dec'45'isSigned_120 (coe d_pkk_176 (coe v0))
-- Ledger.Conway.Conformance.Crypto.Crypto._.DecEq-Ser
d_DecEq'45'Ser_182 ::
  T_Crypto_138 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Ser_182 v0
  = coe d_DecEq'45'Ser_136 (coe d_pkk_176 (coe v0))
-- Ledger.Conway.Conformance.Crypto.Crypto._.DecEq-Sig
d_DecEq'45'Sig_184 ::
  T_Crypto_138 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Sig_184 v0
  = coe d_DecEq'45'Sig_134 (coe d_pkk_176 (coe v0))
-- Ledger.Conway.Conformance.Crypto.Crypto._.KeyPair
d_KeyPair_186 :: T_Crypto_138 -> ()
d_KeyPair_186 = erased
-- Ledger.Conway.Conformance.Crypto.Crypto._.SKey
d_SKey_188 :: T_Crypto_138 -> ()
d_SKey_188 = erased
-- Ledger.Conway.Conformance.Crypto.Crypto._.Ser
d_Ser_190 :: T_Crypto_138 -> ()
d_Ser_190 = erased
-- Ledger.Conway.Conformance.Crypto.Crypto._.Sig
d_Sig_192 :: T_Crypto_138 -> ()
d_Sig_192 = erased
-- Ledger.Conway.Conformance.Crypto.Crypto._.VKey
d_VKey_194 :: T_Crypto_138 -> ()
d_VKey_194 = erased
-- Ledger.Conway.Conformance.Crypto.Crypto._.isKeyPair
d_isKeyPair_196 :: T_Crypto_138 -> AgdaAny -> AgdaAny -> ()
d_isKeyPair_196 = erased
-- Ledger.Conway.Conformance.Crypto.Crypto._.isSigned
d_isSigned_198 ::
  T_Crypto_138 -> AgdaAny -> AgdaAny -> AgdaAny -> ()
d_isSigned_198 = erased
-- Ledger.Conway.Conformance.Crypto.Crypto._.isSigned-correct
d_isSigned'45'correct_200 ::
  T_Crypto_138 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_isSigned'45'correct_200 v0
  = coe d_isSigned'45'correct_132 (coe d_pkk_176 (coe v0))
-- Ledger.Conway.Conformance.Crypto.Crypto._.sign
d_sign_202 :: T_Crypto_138 -> AgdaAny -> AgdaAny -> AgdaAny
d_sign_202 v0 = coe d_sign_112 (coe d_pkk_176 (coe v0))
-- Ledger.Conway.Conformance.Crypto.Crypto.khs
d_khs_204 :: T_Crypto_138 -> T_isHashableSet_10
d_khs_204 v0
  = case coe v0 of
      C_Crypto'46'constructor_2419 v1 v2 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Crypto.Crypto.ScriptHash
d_ScriptHash_206 :: T_Crypto_138 -> ()
d_ScriptHash_206 = erased
-- Ledger.Conway.Conformance.Crypto.Crypto.DecEq-ScriptHash
d_DecEq'45'ScriptHash_208 ::
  T_Crypto_138 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ScriptHash_208 v0
  = case coe v0 of
      C_Crypto'46'constructor_2419 v1 v2 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Crypto.Crypto.Show-ScriptHash
d_Show'45'ScriptHash_210 ::
  T_Crypto_138 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ScriptHash_210 v0
  = case coe v0 of
      C_Crypto'46'constructor_2419 v1 v2 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Crypto.Crypto._.DecEq-THash
d_DecEq'45'THash_214 ::
  T_Crypto_138 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_214 v0
  = coe d_DecEq'45'THash_26 (coe d_khs_204 (coe v0))
-- Ledger.Conway.Conformance.Crypto.Crypto._.THash
d_THash_216 :: T_Crypto_138 -> ()
d_THash_216 = erased
-- Ledger.Conway.Conformance.Crypto.Crypto._.Show-THash
d_Show'45'THash_218 ::
  T_Crypto_138 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_218 v0
  = coe d_Show'45'THash_28 (coe d_khs_204 (coe v0))
-- Ledger.Conway.Conformance.Crypto.Crypto._.T-Hashable
d_T'45'Hashable_220 ::
  T_Crypto_138 -> MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_220 v0
  = coe d_T'45'Hashable_32 (coe d_khs_204 (coe v0))
