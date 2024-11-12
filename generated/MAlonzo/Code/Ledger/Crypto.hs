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

module MAlonzo.Code.Ledger.Crypto where

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

-- Ledger.Crypto.isHashableSet
d_isHashableSet_6 a0 = ()
data T_isHashableSet_6
  = C_mkIsHashableSet_30 MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
                         MAlonzo.Code.Class.Show.Core.T_Show_10
                         MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
                         MAlonzo.Code.Interface.Hashable.T_Hashable_8
-- Ledger.Crypto.isHashableSet.THash
d_THash_20 :: T_isHashableSet_6 -> ()
d_THash_20 = erased
-- Ledger.Crypto.isHashableSet.DecEq-THash
d_DecEq'45'THash_22 ::
  T_isHashableSet_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_22 v0
  = case coe v0 of
      C_mkIsHashableSet_30 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Crypto.isHashableSet.Show-THash
d_Show'45'THash_24 ::
  T_isHashableSet_6 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_24 v0
  = case coe v0 of
      C_mkIsHashableSet_30 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Crypto.isHashableSet.DecEq-T
d_DecEq'45'T_26 ::
  T_isHashableSet_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_26 v0
  = case coe v0 of
      C_mkIsHashableSet_30 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Crypto.isHashableSet.T-Hashable
d_T'45'Hashable_28 ::
  T_isHashableSet_6 -> MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_28 v0
  = case coe v0 of
      C_mkIsHashableSet_30 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Crypto.HashableSet
d_HashableSet_32 = ()
newtype T_HashableSet_32 = C_mkHashableSet_54 T_isHashableSet_6
-- Ledger.Crypto.HashableSet.T
d_T_38 :: T_HashableSet_32 -> ()
d_T_38 = erased
-- Ledger.Crypto.HashableSet.T-isHashable
d_T'45'isHashable_40 :: T_HashableSet_32 -> T_isHashableSet_6
d_T'45'isHashable_40 v0
  = case coe v0 of
      C_mkHashableSet_54 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Crypto.HashableSet._.DecEq-T
d_DecEq'45'T_44 ::
  T_HashableSet_32 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_44 v0
  = coe d_DecEq'45'T_26 (coe d_T'45'isHashable_40 (coe v0))
-- Ledger.Crypto.HashableSet._.DecEq-THash
d_DecEq'45'THash_46 ::
  T_HashableSet_32 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_46 v0
  = coe d_DecEq'45'THash_22 (coe d_T'45'isHashable_40 (coe v0))
-- Ledger.Crypto.HashableSet._.Show-THash
d_Show'45'THash_48 ::
  T_HashableSet_32 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_48 v0
  = coe d_Show'45'THash_24 (coe d_T'45'isHashable_40 (coe v0))
-- Ledger.Crypto.HashableSet._.T-Hashable
d_T'45'Hashable_50 ::
  T_HashableSet_32 -> MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_50 v0
  = coe d_T'45'Hashable_28 (coe d_T'45'isHashable_40 (coe v0))
-- Ledger.Crypto.HashableSet._.THash
d_THash_52 :: T_HashableSet_32 -> ()
d_THash_52 = erased
-- Ledger.Crypto.PKKScheme
d_PKKScheme_56 = ()
data T_PKKScheme_56
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
-- Ledger.Crypto.PKKScheme.SKey
d_SKey_96 :: T_PKKScheme_56 -> ()
d_SKey_96 = erased
-- Ledger.Crypto.PKKScheme.VKey
d_VKey_98 :: T_PKKScheme_56 -> ()
d_VKey_98 = erased
-- Ledger.Crypto.PKKScheme.Sig
d_Sig_100 :: T_PKKScheme_56 -> ()
d_Sig_100 = erased
-- Ledger.Crypto.PKKScheme.Ser
d_Ser_102 :: T_PKKScheme_56 -> ()
d_Ser_102 = erased
-- Ledger.Crypto.PKKScheme.isKeyPair
d_isKeyPair_104 :: T_PKKScheme_56 -> AgdaAny -> AgdaAny -> ()
d_isKeyPair_104 = erased
-- Ledger.Crypto.PKKScheme.isSigned
d_isSigned_106 ::
  T_PKKScheme_56 -> AgdaAny -> AgdaAny -> AgdaAny -> ()
d_isSigned_106 = erased
-- Ledger.Crypto.PKKScheme.sign
d_sign_108 :: T_PKKScheme_56 -> AgdaAny -> AgdaAny -> AgdaAny
d_sign_108 v0
  = case coe v0 of
      C_PKKScheme'46'constructor_1827 v7 v8 v9 v10 v11 -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Crypto.PKKScheme.KeyPair
d_KeyPair_110 :: T_PKKScheme_56 -> ()
d_KeyPair_110 = erased
-- Ledger.Crypto.PKKScheme.Dec-isSigned
d_Dec'45'isSigned_116 ::
  T_PKKScheme_56 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isSigned_116 v0
  = case coe v0 of
      C_PKKScheme'46'constructor_1827 v7 v8 v9 v10 v11 -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Crypto.PKKScheme.isSigned-correct
d_isSigned'45'correct_128 ::
  T_PKKScheme_56 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_isSigned'45'correct_128 v0
  = case coe v0 of
      C_PKKScheme'46'constructor_1827 v7 v8 v9 v10 v11 -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Crypto.PKKScheme.DecEq-Sig
d_DecEq'45'Sig_130 ::
  T_PKKScheme_56 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Sig_130 v0
  = case coe v0 of
      C_PKKScheme'46'constructor_1827 v7 v8 v9 v10 v11 -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Crypto.PKKScheme.DecEq-Ser
d_DecEq'45'Ser_132 ::
  T_PKKScheme_56 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Ser_132 v0
  = case coe v0 of
      C_PKKScheme'46'constructor_1827 v7 v8 v9 v10 v11 -> coe v11
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Crypto.Crypto
d_Crypto_134 = ()
data T_Crypto_134
  = C_Crypto'46'constructor_2419 T_PKKScheme_56 T_isHashableSet_6
                                 MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
                                 MAlonzo.Code.Class.Show.Core.T_Show_10
-- Ledger.Crypto._.Dec-isSigned
d_Dec'45'isSigned_140 ::
  T_PKKScheme_56 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isSigned_140 v0 = coe d_Dec'45'isSigned_116 (coe v0)
-- Ledger.Crypto._.DecEq-Ser
d_DecEq'45'Ser_142 ::
  T_PKKScheme_56 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Ser_142 v0 = coe d_DecEq'45'Ser_132 (coe v0)
-- Ledger.Crypto._.DecEq-Sig
d_DecEq'45'Sig_144 ::
  T_PKKScheme_56 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Sig_144 v0 = coe d_DecEq'45'Sig_130 (coe v0)
-- Ledger.Crypto._.KeyPair
d_KeyPair_146 :: T_PKKScheme_56 -> ()
d_KeyPair_146 = erased
-- Ledger.Crypto._.SKey
d_SKey_148 :: T_PKKScheme_56 -> ()
d_SKey_148 = erased
-- Ledger.Crypto._.Ser
d_Ser_150 :: T_PKKScheme_56 -> ()
d_Ser_150 = erased
-- Ledger.Crypto._.Sig
d_Sig_152 :: T_PKKScheme_56 -> ()
d_Sig_152 = erased
-- Ledger.Crypto._.VKey
d_VKey_154 :: T_PKKScheme_56 -> ()
d_VKey_154 = erased
-- Ledger.Crypto._.isKeyPair
d_isKeyPair_156 :: T_PKKScheme_56 -> AgdaAny -> AgdaAny -> ()
d_isKeyPair_156 = erased
-- Ledger.Crypto._.isSigned
d_isSigned_158 ::
  T_PKKScheme_56 -> AgdaAny -> AgdaAny -> AgdaAny -> ()
d_isSigned_158 = erased
-- Ledger.Crypto._.isSigned-correct
d_isSigned'45'correct_160 ::
  T_PKKScheme_56 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_isSigned'45'correct_160 v0
  = coe d_isSigned'45'correct_128 (coe v0)
-- Ledger.Crypto._.sign
d_sign_162 :: T_PKKScheme_56 -> AgdaAny -> AgdaAny -> AgdaAny
d_sign_162 v0 = coe d_sign_108 (coe v0)
-- Ledger.Crypto.Crypto.pkk
d_pkk_172 :: T_Crypto_134 -> T_PKKScheme_56
d_pkk_172 v0
  = case coe v0 of
      C_Crypto'46'constructor_2419 v1 v2 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Crypto.Crypto._.Dec-isSigned
d_Dec'45'isSigned_176 ::
  T_Crypto_134 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isSigned_176 v0
  = coe d_Dec'45'isSigned_116 (coe d_pkk_172 (coe v0))
-- Ledger.Crypto.Crypto._.DecEq-Ser
d_DecEq'45'Ser_178 ::
  T_Crypto_134 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Ser_178 v0
  = coe d_DecEq'45'Ser_132 (coe d_pkk_172 (coe v0))
-- Ledger.Crypto.Crypto._.DecEq-Sig
d_DecEq'45'Sig_180 ::
  T_Crypto_134 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Sig_180 v0
  = coe d_DecEq'45'Sig_130 (coe d_pkk_172 (coe v0))
-- Ledger.Crypto.Crypto._.KeyPair
d_KeyPair_182 :: T_Crypto_134 -> ()
d_KeyPair_182 = erased
-- Ledger.Crypto.Crypto._.SKey
d_SKey_184 :: T_Crypto_134 -> ()
d_SKey_184 = erased
-- Ledger.Crypto.Crypto._.Ser
d_Ser_186 :: T_Crypto_134 -> ()
d_Ser_186 = erased
-- Ledger.Crypto.Crypto._.Sig
d_Sig_188 :: T_Crypto_134 -> ()
d_Sig_188 = erased
-- Ledger.Crypto.Crypto._.VKey
d_VKey_190 :: T_Crypto_134 -> ()
d_VKey_190 = erased
-- Ledger.Crypto.Crypto._.isKeyPair
d_isKeyPair_192 :: T_Crypto_134 -> AgdaAny -> AgdaAny -> ()
d_isKeyPair_192 = erased
-- Ledger.Crypto.Crypto._.isSigned
d_isSigned_194 ::
  T_Crypto_134 -> AgdaAny -> AgdaAny -> AgdaAny -> ()
d_isSigned_194 = erased
-- Ledger.Crypto.Crypto._.isSigned-correct
d_isSigned'45'correct_196 ::
  T_Crypto_134 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_isSigned'45'correct_196 v0
  = coe d_isSigned'45'correct_128 (coe d_pkk_172 (coe v0))
-- Ledger.Crypto.Crypto._.sign
d_sign_198 :: T_Crypto_134 -> AgdaAny -> AgdaAny -> AgdaAny
d_sign_198 v0 = coe d_sign_108 (coe d_pkk_172 (coe v0))
-- Ledger.Crypto.Crypto.khs
d_khs_200 :: T_Crypto_134 -> T_isHashableSet_6
d_khs_200 v0
  = case coe v0 of
      C_Crypto'46'constructor_2419 v1 v2 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Crypto.Crypto.ScriptHash
d_ScriptHash_202 :: T_Crypto_134 -> ()
d_ScriptHash_202 = erased
-- Ledger.Crypto.Crypto.DecEq-ScriptHash
d_DecEq'45'ScriptHash_204 ::
  T_Crypto_134 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ScriptHash_204 v0
  = case coe v0 of
      C_Crypto'46'constructor_2419 v1 v2 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Crypto.Crypto.Show-ScriptHash
d_Show'45'ScriptHash_206 ::
  T_Crypto_134 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ScriptHash_206 v0
  = case coe v0 of
      C_Crypto'46'constructor_2419 v1 v2 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Crypto.Crypto._.DecEq-THash
d_DecEq'45'THash_210 ::
  T_Crypto_134 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_210 v0
  = coe d_DecEq'45'THash_22 (coe d_khs_200 (coe v0))
-- Ledger.Crypto.Crypto._.THash
d_THash_212 :: T_Crypto_134 -> ()
d_THash_212 = erased
-- Ledger.Crypto.Crypto._.Show-THash
d_Show'45'THash_214 ::
  T_Crypto_134 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_214 v0
  = coe d_Show'45'THash_24 (coe d_khs_200 (coe v0))
-- Ledger.Crypto.Crypto._.T-Hashable
d_T'45'Hashable_216 ::
  T_Crypto_134 -> MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_216 v0
  = coe d_T'45'Hashable_28 (coe d_khs_200 (coe v0))
