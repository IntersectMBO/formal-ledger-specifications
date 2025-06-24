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

module MAlonzo.Code.Ledger.Conway.Crypto where

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

-- Ledger.Conway.Crypto.isHashableSet
d_isHashableSet_8 a0 = ()
data T_isHashableSet_8
  = C_mkIsHashableSet_32 MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
                         MAlonzo.Code.Class.Show.Core.T_Show_10
                         MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
                         MAlonzo.Code.Interface.Hashable.T_Hashable_8
-- Ledger.Conway.Crypto.isHashableSet.THash
d_THash_22 :: T_isHashableSet_8 -> ()
d_THash_22 = erased
-- Ledger.Conway.Crypto.isHashableSet.DecEq-THash
d_DecEq'45'THash_24 ::
  T_isHashableSet_8 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_24 v0
  = case coe v0 of
      C_mkIsHashableSet_32 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Crypto.isHashableSet.Show-THash
d_Show'45'THash_26 ::
  T_isHashableSet_8 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_26 v0
  = case coe v0 of
      C_mkIsHashableSet_32 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Crypto.isHashableSet.DecEq-T
d_DecEq'45'T_28 ::
  T_isHashableSet_8 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_28 v0
  = case coe v0 of
      C_mkIsHashableSet_32 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Crypto.isHashableSet.T-Hashable
d_T'45'Hashable_30 ::
  T_isHashableSet_8 -> MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_30 v0
  = case coe v0 of
      C_mkIsHashableSet_32 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Crypto.HashableSet
d_HashableSet_34 = ()
newtype T_HashableSet_34 = C_mkHashableSet_56 T_isHashableSet_8
-- Ledger.Conway.Crypto.HashableSet.T
d_T_40 :: T_HashableSet_34 -> ()
d_T_40 = erased
-- Ledger.Conway.Crypto.HashableSet.T-isHashable
d_T'45'isHashable_42 :: T_HashableSet_34 -> T_isHashableSet_8
d_T'45'isHashable_42 v0
  = case coe v0 of
      C_mkHashableSet_56 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Crypto.HashableSet._.DecEq-T
d_DecEq'45'T_46 ::
  T_HashableSet_34 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_46 v0
  = coe d_DecEq'45'T_28 (coe d_T'45'isHashable_42 (coe v0))
-- Ledger.Conway.Crypto.HashableSet._.DecEq-THash
d_DecEq'45'THash_48 ::
  T_HashableSet_34 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_48 v0
  = coe d_DecEq'45'THash_24 (coe d_T'45'isHashable_42 (coe v0))
-- Ledger.Conway.Crypto.HashableSet._.Show-THash
d_Show'45'THash_50 ::
  T_HashableSet_34 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_50 v0
  = coe d_Show'45'THash_26 (coe d_T'45'isHashable_42 (coe v0))
-- Ledger.Conway.Crypto.HashableSet._.T-Hashable
d_T'45'Hashable_52 ::
  T_HashableSet_34 -> MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_52 v0
  = coe d_T'45'Hashable_30 (coe d_T'45'isHashable_42 (coe v0))
-- Ledger.Conway.Crypto.HashableSet._.THash
d_THash_54 :: T_HashableSet_34 -> ()
d_THash_54 = erased
-- Ledger.Conway.Crypto.PKKScheme
d_PKKScheme_58 = ()
data T_PKKScheme_58
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
-- Ledger.Conway.Crypto.PKKScheme.SKey
d_SKey_98 :: T_PKKScheme_58 -> ()
d_SKey_98 = erased
-- Ledger.Conway.Crypto.PKKScheme.VKey
d_VKey_100 :: T_PKKScheme_58 -> ()
d_VKey_100 = erased
-- Ledger.Conway.Crypto.PKKScheme.Sig
d_Sig_102 :: T_PKKScheme_58 -> ()
d_Sig_102 = erased
-- Ledger.Conway.Crypto.PKKScheme.Ser
d_Ser_104 :: T_PKKScheme_58 -> ()
d_Ser_104 = erased
-- Ledger.Conway.Crypto.PKKScheme.isKeyPair
d_isKeyPair_106 :: T_PKKScheme_58 -> AgdaAny -> AgdaAny -> ()
d_isKeyPair_106 = erased
-- Ledger.Conway.Crypto.PKKScheme.isSigned
d_isSigned_108 ::
  T_PKKScheme_58 -> AgdaAny -> AgdaAny -> AgdaAny -> ()
d_isSigned_108 = erased
-- Ledger.Conway.Crypto.PKKScheme.sign
d_sign_110 :: T_PKKScheme_58 -> AgdaAny -> AgdaAny -> AgdaAny
d_sign_110 v0
  = case coe v0 of
      C_PKKScheme'46'constructor_1827 v7 v8 v9 v10 v11 -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Crypto.PKKScheme.KeyPair
d_KeyPair_112 :: T_PKKScheme_58 -> ()
d_KeyPair_112 = erased
-- Ledger.Conway.Crypto.PKKScheme.Dec-isSigned
d_Dec'45'isSigned_118 ::
  T_PKKScheme_58 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isSigned_118 v0
  = case coe v0 of
      C_PKKScheme'46'constructor_1827 v7 v8 v9 v10 v11 -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Crypto.PKKScheme.isSigned-correct
d_isSigned'45'correct_130 ::
  T_PKKScheme_58 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_isSigned'45'correct_130 v0
  = case coe v0 of
      C_PKKScheme'46'constructor_1827 v7 v8 v9 v10 v11 -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Crypto.PKKScheme.DecEq-Sig
d_DecEq'45'Sig_132 ::
  T_PKKScheme_58 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Sig_132 v0
  = case coe v0 of
      C_PKKScheme'46'constructor_1827 v7 v8 v9 v10 v11 -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Crypto.PKKScheme.DecEq-Ser
d_DecEq'45'Ser_134 ::
  T_PKKScheme_58 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Ser_134 v0
  = case coe v0 of
      C_PKKScheme'46'constructor_1827 v7 v8 v9 v10 v11 -> coe v11
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Crypto.Crypto
d_Crypto_136 = ()
data T_Crypto_136
  = C_Crypto'46'constructor_2419 T_PKKScheme_58 T_isHashableSet_8
                                 MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
                                 MAlonzo.Code.Class.Show.Core.T_Show_10
-- Ledger.Conway.Crypto._.Dec-isSigned
d_Dec'45'isSigned_142 ::
  T_PKKScheme_58 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isSigned_142 v0 = coe d_Dec'45'isSigned_118 (coe v0)
-- Ledger.Conway.Crypto._.DecEq-Ser
d_DecEq'45'Ser_144 ::
  T_PKKScheme_58 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Ser_144 v0 = coe d_DecEq'45'Ser_134 (coe v0)
-- Ledger.Conway.Crypto._.DecEq-Sig
d_DecEq'45'Sig_146 ::
  T_PKKScheme_58 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Sig_146 v0 = coe d_DecEq'45'Sig_132 (coe v0)
-- Ledger.Conway.Crypto._.KeyPair
d_KeyPair_148 :: T_PKKScheme_58 -> ()
d_KeyPair_148 = erased
-- Ledger.Conway.Crypto._.SKey
d_SKey_150 :: T_PKKScheme_58 -> ()
d_SKey_150 = erased
-- Ledger.Conway.Crypto._.Ser
d_Ser_152 :: T_PKKScheme_58 -> ()
d_Ser_152 = erased
-- Ledger.Conway.Crypto._.Sig
d_Sig_154 :: T_PKKScheme_58 -> ()
d_Sig_154 = erased
-- Ledger.Conway.Crypto._.VKey
d_VKey_156 :: T_PKKScheme_58 -> ()
d_VKey_156 = erased
-- Ledger.Conway.Crypto._.isKeyPair
d_isKeyPair_158 :: T_PKKScheme_58 -> AgdaAny -> AgdaAny -> ()
d_isKeyPair_158 = erased
-- Ledger.Conway.Crypto._.isSigned
d_isSigned_160 ::
  T_PKKScheme_58 -> AgdaAny -> AgdaAny -> AgdaAny -> ()
d_isSigned_160 = erased
-- Ledger.Conway.Crypto._.isSigned-correct
d_isSigned'45'correct_162 ::
  T_PKKScheme_58 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_isSigned'45'correct_162 v0
  = coe d_isSigned'45'correct_130 (coe v0)
-- Ledger.Conway.Crypto._.sign
d_sign_164 :: T_PKKScheme_58 -> AgdaAny -> AgdaAny -> AgdaAny
d_sign_164 v0 = coe d_sign_110 (coe v0)
-- Ledger.Conway.Crypto.Crypto.pkk
d_pkk_174 :: T_Crypto_136 -> T_PKKScheme_58
d_pkk_174 v0
  = case coe v0 of
      C_Crypto'46'constructor_2419 v1 v2 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Crypto.Crypto._.Dec-isSigned
d_Dec'45'isSigned_178 ::
  T_Crypto_136 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isSigned_178 v0
  = coe d_Dec'45'isSigned_118 (coe d_pkk_174 (coe v0))
-- Ledger.Conway.Crypto.Crypto._.DecEq-Ser
d_DecEq'45'Ser_180 ::
  T_Crypto_136 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Ser_180 v0
  = coe d_DecEq'45'Ser_134 (coe d_pkk_174 (coe v0))
-- Ledger.Conway.Crypto.Crypto._.DecEq-Sig
d_DecEq'45'Sig_182 ::
  T_Crypto_136 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Sig_182 v0
  = coe d_DecEq'45'Sig_132 (coe d_pkk_174 (coe v0))
-- Ledger.Conway.Crypto.Crypto._.KeyPair
d_KeyPair_184 :: T_Crypto_136 -> ()
d_KeyPair_184 = erased
-- Ledger.Conway.Crypto.Crypto._.SKey
d_SKey_186 :: T_Crypto_136 -> ()
d_SKey_186 = erased
-- Ledger.Conway.Crypto.Crypto._.Ser
d_Ser_188 :: T_Crypto_136 -> ()
d_Ser_188 = erased
-- Ledger.Conway.Crypto.Crypto._.Sig
d_Sig_190 :: T_Crypto_136 -> ()
d_Sig_190 = erased
-- Ledger.Conway.Crypto.Crypto._.VKey
d_VKey_192 :: T_Crypto_136 -> ()
d_VKey_192 = erased
-- Ledger.Conway.Crypto.Crypto._.isKeyPair
d_isKeyPair_194 :: T_Crypto_136 -> AgdaAny -> AgdaAny -> ()
d_isKeyPair_194 = erased
-- Ledger.Conway.Crypto.Crypto._.isSigned
d_isSigned_196 ::
  T_Crypto_136 -> AgdaAny -> AgdaAny -> AgdaAny -> ()
d_isSigned_196 = erased
-- Ledger.Conway.Crypto.Crypto._.isSigned-correct
d_isSigned'45'correct_198 ::
  T_Crypto_136 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_isSigned'45'correct_198 v0
  = coe d_isSigned'45'correct_130 (coe d_pkk_174 (coe v0))
-- Ledger.Conway.Crypto.Crypto._.sign
d_sign_200 :: T_Crypto_136 -> AgdaAny -> AgdaAny -> AgdaAny
d_sign_200 v0 = coe d_sign_110 (coe d_pkk_174 (coe v0))
-- Ledger.Conway.Crypto.Crypto.khs
d_khs_202 :: T_Crypto_136 -> T_isHashableSet_8
d_khs_202 v0
  = case coe v0 of
      C_Crypto'46'constructor_2419 v1 v2 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Crypto.Crypto.ScriptHash
d_ScriptHash_204 :: T_Crypto_136 -> ()
d_ScriptHash_204 = erased
-- Ledger.Conway.Crypto.Crypto.DecEq-ScriptHash
d_DecEq'45'ScriptHash_206 ::
  T_Crypto_136 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ScriptHash_206 v0
  = case coe v0 of
      C_Crypto'46'constructor_2419 v1 v2 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Crypto.Crypto.Show-ScriptHash
d_Show'45'ScriptHash_208 ::
  T_Crypto_136 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ScriptHash_208 v0
  = case coe v0 of
      C_Crypto'46'constructor_2419 v1 v2 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Crypto.Crypto._.DecEq-THash
d_DecEq'45'THash_212 ::
  T_Crypto_136 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_212 v0
  = coe d_DecEq'45'THash_24 (coe d_khs_202 (coe v0))
-- Ledger.Conway.Crypto.Crypto._.THash
d_THash_214 :: T_Crypto_136 -> ()
d_THash_214 = erased
-- Ledger.Conway.Crypto.Crypto._.Show-THash
d_Show'45'THash_216 ::
  T_Crypto_136 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_216 v0
  = coe d_Show'45'THash_26 (coe d_khs_202 (coe v0))
-- Ledger.Conway.Crypto.Crypto._.T-Hashable
d_T'45'Hashable_218 ::
  T_Crypto_136 -> MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_218 v0
  = coe d_T'45'Hashable_30 (coe d_khs_202 (coe v0))
