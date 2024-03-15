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
import qualified MAlonzo.Code.Interface.Hashable

-- Ledger.Crypto.isHashableSet
d_isHashableSet_6 a0 = ()
data T_isHashableSet_6
  = C_mkIsHashableSet_26 MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
                         MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
                         MAlonzo.Code.Interface.Hashable.T_Hashable_8
-- Ledger.Crypto.isHashableSet.THash
d_THash_18 :: T_isHashableSet_6 -> ()
d_THash_18 = erased
-- Ledger.Crypto.isHashableSet.DecEq-THash
d_DecEq'45'THash_20 ::
  T_isHashableSet_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_20 v0
  = case coe v0 of
      C_mkIsHashableSet_26 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Crypto.isHashableSet.DecEq-T
d_DecEq'45'T_22 ::
  T_isHashableSet_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_22 v0
  = case coe v0 of
      C_mkIsHashableSet_26 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Crypto.isHashableSet.T-Hashable
d_T'45'Hashable_24 ::
  T_isHashableSet_6 -> MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_24 v0
  = case coe v0 of
      C_mkIsHashableSet_26 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Crypto.HashableSet
d_HashableSet_28 = ()
newtype T_HashableSet_28 = C_mkHashableSet_48 T_isHashableSet_6
-- Ledger.Crypto.HashableSet.T
d_T_34 :: T_HashableSet_28 -> ()
d_T_34 = erased
-- Ledger.Crypto.HashableSet.T-isHashable
d_T'45'isHashable_36 :: T_HashableSet_28 -> T_isHashableSet_6
d_T'45'isHashable_36 v0
  = case coe v0 of
      C_mkHashableSet_48 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Crypto.HashableSet._.DecEq-T
d_DecEq'45'T_40 ::
  T_HashableSet_28 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_40 v0
  = coe d_DecEq'45'T_22 (coe d_T'45'isHashable_36 (coe v0))
-- Ledger.Crypto.HashableSet._.DecEq-THash
d_DecEq'45'THash_42 ::
  T_HashableSet_28 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_42 v0
  = coe d_DecEq'45'THash_20 (coe d_T'45'isHashable_36 (coe v0))
-- Ledger.Crypto.HashableSet._.T-Hashable
d_T'45'Hashable_44 ::
  T_HashableSet_28 -> MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_44 v0
  = coe d_T'45'Hashable_24 (coe d_T'45'isHashable_36 (coe v0))
-- Ledger.Crypto.HashableSet._.THash
d_THash_46 :: T_HashableSet_28 -> ()
d_THash_46 = erased
-- Ledger.Crypto.PKKScheme
d_PKKScheme_50 = ()
data T_PKKScheme_50
  = C_PKKScheme'46'constructor_1829 (AgdaAny -> AgdaAny -> AgdaAny)
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
d_SKey_90 :: T_PKKScheme_50 -> ()
d_SKey_90 = erased
-- Ledger.Crypto.PKKScheme.VKey
d_VKey_92 :: T_PKKScheme_50 -> ()
d_VKey_92 = erased
-- Ledger.Crypto.PKKScheme.Sig
d_Sig_94 :: T_PKKScheme_50 -> ()
d_Sig_94 = erased
-- Ledger.Crypto.PKKScheme.Ser
d_Ser_96 :: T_PKKScheme_50 -> ()
d_Ser_96 = erased
-- Ledger.Crypto.PKKScheme.isKeyPair
d_isKeyPair_98 :: T_PKKScheme_50 -> AgdaAny -> AgdaAny -> ()
d_isKeyPair_98 = erased
-- Ledger.Crypto.PKKScheme.isSigned
d_isSigned_100 ::
  T_PKKScheme_50 -> AgdaAny -> AgdaAny -> AgdaAny -> ()
d_isSigned_100 = erased
-- Ledger.Crypto.PKKScheme.sign
d_sign_102 :: T_PKKScheme_50 -> AgdaAny -> AgdaAny -> AgdaAny
d_sign_102 v0
  = case coe v0 of
      C_PKKScheme'46'constructor_1829 v7 v8 v9 v10 v11 -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Crypto.PKKScheme.KeyPair
d_KeyPair_104 :: T_PKKScheme_50 -> ()
d_KeyPair_104 = erased
-- Ledger.Crypto.PKKScheme.Dec-isSigned
d_Dec'45'isSigned_110 ::
  T_PKKScheme_50 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isSigned_110 v0
  = case coe v0 of
      C_PKKScheme'46'constructor_1829 v7 v8 v9 v10 v11 -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Crypto.PKKScheme.isSigned-correct
d_isSigned'45'correct_122 ::
  T_PKKScheme_50 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_isSigned'45'correct_122 v0
  = case coe v0 of
      C_PKKScheme'46'constructor_1829 v7 v8 v9 v10 v11 -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Crypto.PKKScheme.DecEq-Sig
d_DecEq'45'Sig_124 ::
  T_PKKScheme_50 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Sig_124 v0
  = case coe v0 of
      C_PKKScheme'46'constructor_1829 v7 v8 v9 v10 v11 -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Crypto.PKKScheme.DecEq-Ser
d_DecEq'45'Ser_126 ::
  T_PKKScheme_50 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Ser_126 v0
  = case coe v0 of
      C_PKKScheme'46'constructor_1829 v7 v8 v9 v10 v11 -> coe v11
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Crypto.Crypto
d_Crypto_128 = ()
data T_Crypto_128
  = C_Crypto'46'constructor_2299 T_PKKScheme_50 T_isHashableSet_6
                                 MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
-- Ledger.Crypto._.Dec-isSigned
d_Dec'45'isSigned_134 ::
  T_PKKScheme_50 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isSigned_134 v0 = coe d_Dec'45'isSigned_110 (coe v0)
-- Ledger.Crypto._.DecEq-Ser
d_DecEq'45'Ser_136 ::
  T_PKKScheme_50 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Ser_136 v0 = coe d_DecEq'45'Ser_126 (coe v0)
-- Ledger.Crypto._.DecEq-Sig
d_DecEq'45'Sig_138 ::
  T_PKKScheme_50 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Sig_138 v0 = coe d_DecEq'45'Sig_124 (coe v0)
-- Ledger.Crypto._.KeyPair
d_KeyPair_140 :: T_PKKScheme_50 -> ()
d_KeyPair_140 = erased
-- Ledger.Crypto._.SKey
d_SKey_142 :: T_PKKScheme_50 -> ()
d_SKey_142 = erased
-- Ledger.Crypto._.Ser
d_Ser_144 :: T_PKKScheme_50 -> ()
d_Ser_144 = erased
-- Ledger.Crypto._.Sig
d_Sig_146 :: T_PKKScheme_50 -> ()
d_Sig_146 = erased
-- Ledger.Crypto._.VKey
d_VKey_148 :: T_PKKScheme_50 -> ()
d_VKey_148 = erased
-- Ledger.Crypto._.isKeyPair
d_isKeyPair_150 :: T_PKKScheme_50 -> AgdaAny -> AgdaAny -> ()
d_isKeyPair_150 = erased
-- Ledger.Crypto._.isSigned
d_isSigned_152 ::
  T_PKKScheme_50 -> AgdaAny -> AgdaAny -> AgdaAny -> ()
d_isSigned_152 = erased
-- Ledger.Crypto._.isSigned-correct
d_isSigned'45'correct_154 ::
  T_PKKScheme_50 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_isSigned'45'correct_154 v0
  = coe d_isSigned'45'correct_122 (coe v0)
-- Ledger.Crypto._.sign
d_sign_156 :: T_PKKScheme_50 -> AgdaAny -> AgdaAny -> AgdaAny
d_sign_156 v0 = coe d_sign_102 (coe v0)
-- Ledger.Crypto.Crypto.pkk
d_pkk_164 :: T_Crypto_128 -> T_PKKScheme_50
d_pkk_164 v0
  = case coe v0 of
      C_Crypto'46'constructor_2299 v1 v2 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Crypto.Crypto._.Dec-isSigned
d_Dec'45'isSigned_168 ::
  T_Crypto_128 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isSigned_168 v0
  = coe d_Dec'45'isSigned_110 (coe d_pkk_164 (coe v0))
-- Ledger.Crypto.Crypto._.DecEq-Ser
d_DecEq'45'Ser_170 ::
  T_Crypto_128 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Ser_170 v0
  = coe d_DecEq'45'Ser_126 (coe d_pkk_164 (coe v0))
-- Ledger.Crypto.Crypto._.DecEq-Sig
d_DecEq'45'Sig_172 ::
  T_Crypto_128 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Sig_172 v0
  = coe d_DecEq'45'Sig_124 (coe d_pkk_164 (coe v0))
-- Ledger.Crypto.Crypto._.KeyPair
d_KeyPair_174 :: T_Crypto_128 -> ()
d_KeyPair_174 = erased
-- Ledger.Crypto.Crypto._.SKey
d_SKey_176 :: T_Crypto_128 -> ()
d_SKey_176 = erased
-- Ledger.Crypto.Crypto._.Ser
d_Ser_178 :: T_Crypto_128 -> ()
d_Ser_178 = erased
-- Ledger.Crypto.Crypto._.Sig
d_Sig_180 :: T_Crypto_128 -> ()
d_Sig_180 = erased
-- Ledger.Crypto.Crypto._.VKey
d_VKey_182 :: T_Crypto_128 -> ()
d_VKey_182 = erased
-- Ledger.Crypto.Crypto._.isKeyPair
d_isKeyPair_184 :: T_Crypto_128 -> AgdaAny -> AgdaAny -> ()
d_isKeyPair_184 = erased
-- Ledger.Crypto.Crypto._.isSigned
d_isSigned_186 ::
  T_Crypto_128 -> AgdaAny -> AgdaAny -> AgdaAny -> ()
d_isSigned_186 = erased
-- Ledger.Crypto.Crypto._.isSigned-correct
d_isSigned'45'correct_188 ::
  T_Crypto_128 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_isSigned'45'correct_188 v0
  = coe d_isSigned'45'correct_122 (coe d_pkk_164 (coe v0))
-- Ledger.Crypto.Crypto._.sign
d_sign_190 :: T_Crypto_128 -> AgdaAny -> AgdaAny -> AgdaAny
d_sign_190 v0 = coe d_sign_102 (coe d_pkk_164 (coe v0))
-- Ledger.Crypto.Crypto.khs
d_khs_192 :: T_Crypto_128 -> T_isHashableSet_6
d_khs_192 v0
  = case coe v0 of
      C_Crypto'46'constructor_2299 v1 v2 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Crypto.Crypto.ScriptHash
d_ScriptHash_194 :: T_Crypto_128 -> ()
d_ScriptHash_194 = erased
-- Ledger.Crypto.Crypto.DecEq-ScriptHash
d_DecEq'45'ScriptHash_196 ::
  T_Crypto_128 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ScriptHash_196 v0
  = case coe v0 of
      C_Crypto'46'constructor_2299 v1 v2 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Crypto.Crypto._.DecEq-THash
d_DecEq'45'THash_200 ::
  T_Crypto_128 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_200 v0
  = coe d_DecEq'45'THash_20 (coe d_khs_192 (coe v0))
-- Ledger.Crypto.Crypto._.THash
d_THash_202 :: T_Crypto_128 -> ()
d_THash_202 = erased
-- Ledger.Crypto.Crypto._.T-Hashable
d_T'45'Hashable_204 ::
  T_Crypto_128 -> MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_204 v0
  = coe d_T'45'Hashable_24 (coe d_khs_192 (coe v0))
