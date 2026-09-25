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
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Class.Decidable.Core
import qualified MAlonzo.Code.Ledger.Core.Specification.Crypto
import qualified MAlonzo.Code.Relation.Binary.Structures

-- Ledger.Dijkstra.Specification.Crypto.LeiosCryptoStructure
d_LeiosCryptoStructure_10 a0 = ()
data T_LeiosCryptoStructure_10
  = C_constructor_192 MAlonzo.Code.Relation.Binary.Structures.T_IsStrictTotalOrder_624
                      ([MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> AgdaAny)
                      (AgdaAny -> AgdaAny) MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
                      MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
                      MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
                      (AgdaAny ->
                       AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10)
                      ([AgdaAny] ->
                       AgdaAny ->
                       AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10)
                      MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
                      MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
                      MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
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
-- Ledger.Dijkstra.Specification.Crypto.LeiosCryptoStructure.BlsVKey
d_BlsVKey_150 :: T_LeiosCryptoStructure_10 -> ()
d_BlsVKey_150 = erased
-- Ledger.Dijkstra.Specification.Crypto.LeiosCryptoStructure.BlsSig
d_BlsSig_152 :: T_LeiosCryptoStructure_10 -> ()
d_BlsSig_152 = erased
-- Ledger.Dijkstra.Specification.Crypto.LeiosCryptoStructure.BlsPoP
d_BlsPoP_154 :: T_LeiosCryptoStructure_10 -> ()
d_BlsPoP_154 = erased
-- Ledger.Dijkstra.Specification.Crypto.LeiosCryptoStructure.isValidPoP
d_isValidPoP_156 ::
  T_LeiosCryptoStructure_10 -> AgdaAny -> AgdaAny -> ()
d_isValidPoP_156 = erased
-- Ledger.Dijkstra.Specification.Crypto.LeiosCryptoStructure.isSignedByAggregate
d_isSignedByAggregate_158 ::
  T_LeiosCryptoStructure_10 -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_isSignedByAggregate_158 = erased
-- Ledger.Dijkstra.Specification.Crypto.LeiosCryptoStructure._<ᵏʰ_
d__'60''7503''688'__160 ::
  T_LeiosCryptoStructure_10 -> AgdaAny -> AgdaAny -> ()
d__'60''7503''688'__160 = erased
-- Ledger.Dijkstra.Specification.Crypto.LeiosCryptoStructure.<ᵏʰ-isSTO
d_'60''7503''688''45'isSTO_162 ::
  T_LeiosCryptoStructure_10 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictTotalOrder_624
d_'60''7503''688''45'isSTO_162 v0
  = case coe v0 of
      C_constructor_192 v7 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Crypto.LeiosCryptoStructure.EBHash
d_EBHash_164 :: T_LeiosCryptoStructure_10 -> ()
d_EBHash_164 = erased
-- Ledger.Dijkstra.Specification.Crypto.LeiosCryptoStructure.TxRefHash
d_TxRefHash_166 :: T_LeiosCryptoStructure_10 -> ()
d_TxRefHash_166 = erased
-- Ledger.Dijkstra.Specification.Crypto.LeiosCryptoStructure.RBHeaderHash
d_RBHeaderHash_168 :: T_LeiosCryptoStructure_10 -> ()
d_RBHeaderHash_168 = erased
-- Ledger.Dijkstra.Specification.Crypto.LeiosCryptoStructure.hashEBRefs
d_hashEBRefs_170 ::
  T_LeiosCryptoStructure_10 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> AgdaAny
d_hashEBRefs_170 v0
  = case coe v0 of
      C_constructor_192 v7 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v11
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Crypto.LeiosCryptoStructure.rbHeaderHashBytes
d_rbHeaderHashBytes_172 ::
  T_LeiosCryptoStructure_10 -> AgdaAny -> AgdaAny
d_rbHeaderHashBytes_172 v0
  = case coe v0 of
      C_constructor_192 v7 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v12
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Crypto.LeiosCryptoStructure.DecEq-BlsVKey
d_DecEq'45'BlsVKey_174 ::
  T_LeiosCryptoStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BlsVKey_174 v0
  = case coe v0 of
      C_constructor_192 v7 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v13
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Crypto.LeiosCryptoStructure.DecEq-BlsSig
d_DecEq'45'BlsSig_176 ::
  T_LeiosCryptoStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BlsSig_176 v0
  = case coe v0 of
      C_constructor_192 v7 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v14
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Crypto.LeiosCryptoStructure.DecEq-BlsPoP
d_DecEq'45'BlsPoP_178 ::
  T_LeiosCryptoStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BlsPoP_178 v0
  = case coe v0 of
      C_constructor_192 v7 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v15
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Crypto.LeiosCryptoStructure.Dec-isValidPoP
d_Dec'45'isValidPoP_180 ::
  T_LeiosCryptoStructure_10 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isValidPoP_180 v0
  = case coe v0 of
      C_constructor_192 v7 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v16
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Crypto.LeiosCryptoStructure.Dec-isSignedByAggregate
d_Dec'45'isSignedByAggregate_182 ::
  T_LeiosCryptoStructure_10 ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isSignedByAggregate_182 v0
  = case coe v0 of
      C_constructor_192 v7 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v17
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Crypto.LeiosCryptoStructure.DecEq-EBHash
d_DecEq'45'EBHash_184 ::
  T_LeiosCryptoStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'EBHash_184 v0
  = case coe v0 of
      C_constructor_192 v7 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v18
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Crypto.LeiosCryptoStructure.DecEq-TxRefHash
d_DecEq'45'TxRefHash_186 ::
  T_LeiosCryptoStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'TxRefHash_186 v0
  = case coe v0 of
      C_constructor_192 v7 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v19
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Crypto.LeiosCryptoStructure.DecEq-RBHeaderHash
d_DecEq'45'RBHeaderHash_188 ::
  T_LeiosCryptoStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'RBHeaderHash_188 v0
  = case coe v0 of
      C_constructor_192 v7 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v20
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Crypto.LeiosCryptoStructure.Dec-<ᵏʰ
d_Dec'45''60''7503''688'_190 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  T_LeiosCryptoStructure_10 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45''60''7503''688'_190 ~v0 v1 v2 v3
  = du_Dec'45''60''7503''688'_190 v1 v2 v3
du_Dec'45''60''7503''688'_190 ::
  T_LeiosCryptoStructure_10 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45''60''7503''688'_190 v0 v1 v2
  = coe
      MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
      (coe
         MAlonzo.Code.Relation.Binary.Structures.du__'60''63'__654
         (d_'60''7503''688''45'isSTO_162 (coe v0)) v1 v2)
