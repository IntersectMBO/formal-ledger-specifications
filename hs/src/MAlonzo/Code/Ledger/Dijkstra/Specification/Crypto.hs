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

module MAlonzo.Code.Ledger.Dijkstra.Specification.Crypto where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Class.Decidable.Core
import qualified MAlonzo.Code.Ledger.Core.Specification.Crypto
import qualified MAlonzo.Code.Relation.Binary.Structures

-- Ledger.Dijkstra.Specification.Crypto.LeiosCrypto
d_LeiosCrypto_10 a0 = ()
data T_LeiosCrypto_10
  = C_constructor_162 MAlonzo.Code.Relation.Binary.Structures.T_IsStrictTotalOrder_624
                      MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
                      MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
                      MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
                      (AgdaAny ->
                       AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10)
                      ([AgdaAny] ->
                       AgdaAny ->
                       AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10)
                      (AgdaAny ->
                       AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10)
-- Ledger.Dijkstra.Specification.Crypto._.THash
d_THash_28 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  ()
d_THash_28 = erased
-- Ledger.Dijkstra.Specification.Crypto._.Ser
d_Ser_36 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  ()
d_Ser_36 = erased
-- Ledger.Dijkstra.Specification.Crypto.LeiosCrypto.BlsVKey
d_BlsVKey_136 :: T_LeiosCrypto_10 -> ()
d_BlsVKey_136 = erased
-- Ledger.Dijkstra.Specification.Crypto.LeiosCrypto.BlsSig
d_BlsSig_138 :: T_LeiosCrypto_10 -> ()
d_BlsSig_138 = erased
-- Ledger.Dijkstra.Specification.Crypto.LeiosCrypto.BlsPoP
d_BlsPoP_140 :: T_LeiosCrypto_10 -> ()
d_BlsPoP_140 = erased
-- Ledger.Dijkstra.Specification.Crypto.LeiosCrypto.isValidPoP
d_isValidPoP_142 :: T_LeiosCrypto_10 -> AgdaAny -> AgdaAny -> ()
d_isValidPoP_142 = erased
-- Ledger.Dijkstra.Specification.Crypto.LeiosCrypto.isSignedByAggregate
d_isSignedByAggregate_144 ::
  T_LeiosCrypto_10 -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_isSignedByAggregate_144 = erased
-- Ledger.Dijkstra.Specification.Crypto.LeiosCrypto._<ᵏʰ_
d__'60''7503''688'__146 ::
  T_LeiosCrypto_10 -> AgdaAny -> AgdaAny -> ()
d__'60''7503''688'__146 = erased
-- Ledger.Dijkstra.Specification.Crypto.LeiosCrypto.<ᵏʰ-isSTO
d_'60''7503''688''45'isSTO_148 ::
  T_LeiosCrypto_10 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictTotalOrder_624
d_'60''7503''688''45'isSTO_148 v0
  = case coe v0 of
      C_constructor_162 v7 v8 v9 v10 v11 v12 v13 -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Crypto.LeiosCrypto.DecEq-BlsVKey
d_DecEq'45'BlsVKey_150 ::
  T_LeiosCrypto_10 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BlsVKey_150 v0
  = case coe v0 of
      C_constructor_162 v7 v8 v9 v10 v11 v12 v13 -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Crypto.LeiosCrypto.DecEq-BlsSig
d_DecEq'45'BlsSig_152 ::
  T_LeiosCrypto_10 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BlsSig_152 v0
  = case coe v0 of
      C_constructor_162 v7 v8 v9 v10 v11 v12 v13 -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Crypto.LeiosCrypto.DecEq-BlsPoP
d_DecEq'45'BlsPoP_154 ::
  T_LeiosCrypto_10 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BlsPoP_154 v0
  = case coe v0 of
      C_constructor_162 v7 v8 v9 v10 v11 v12 v13 -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Crypto.LeiosCrypto.Dec-isValidPoP
d_Dec'45'isValidPoP_156 ::
  T_LeiosCrypto_10 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isValidPoP_156 v0
  = case coe v0 of
      C_constructor_162 v7 v8 v9 v10 v11 v12 v13 -> coe v11
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Crypto.LeiosCrypto.Dec-isSignedByAggregate
d_Dec'45'isSignedByAggregate_158 ::
  T_LeiosCrypto_10 ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isSignedByAggregate_158 v0
  = case coe v0 of
      C_constructor_162 v7 v8 v9 v10 v11 v12 v13 -> coe v12
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Crypto.LeiosCrypto.Dec-<ᵏʰ
d_Dec'45''60''7503''688'_160 ::
  T_LeiosCrypto_10 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45''60''7503''688'_160 v0
  = case coe v0 of
      C_constructor_162 v7 v8 v9 v10 v11 v12 v13 -> coe v13
      _ -> MAlonzo.RTE.mazUnreachableError
