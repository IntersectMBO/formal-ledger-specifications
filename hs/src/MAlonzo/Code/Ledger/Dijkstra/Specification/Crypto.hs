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
import qualified MAlonzo.Code.Axiom.Set
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Class.Decidable.Core
import qualified MAlonzo.Code.Ledger.Core.Specification.Crypto
import qualified MAlonzo.Code.Relation.Binary.Structures
import qualified MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory

-- Ledger.Dijkstra.Specification.Crypto.LeiosCryptoStructure
d_LeiosCryptoStructure_10 a0 = ()
data T_LeiosCryptoStructure_10
  = C_constructor_200 MAlonzo.Code.Relation.Binary.Structures.T_IsStrictTotalOrder_624
                      ([MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> AgdaAny)
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
-- Ledger.Dijkstra.Specification.Crypto.LeiosCryptoStructure._.Ser
d_Ser_128 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  T_LeiosCryptoStructure_10 -> ()
d_Ser_128 = erased
-- Ledger.Dijkstra.Specification.Crypto.LeiosCryptoStructure.BlsVKey
d_BlsVKey_154 :: T_LeiosCryptoStructure_10 -> ()
d_BlsVKey_154 = erased
-- Ledger.Dijkstra.Specification.Crypto.LeiosCryptoStructure.BlsSig
d_BlsSig_156 :: T_LeiosCryptoStructure_10 -> ()
d_BlsSig_156 = erased
-- Ledger.Dijkstra.Specification.Crypto.LeiosCryptoStructure.BlsPoP
d_BlsPoP_158 :: T_LeiosCryptoStructure_10 -> ()
d_BlsPoP_158 = erased
-- Ledger.Dijkstra.Specification.Crypto.LeiosCryptoStructure.isValidPoP
d_isValidPoP_160 ::
  T_LeiosCryptoStructure_10 -> AgdaAny -> AgdaAny -> ()
d_isValidPoP_160 = erased
-- Ledger.Dijkstra.Specification.Crypto.LeiosCryptoStructure.isSignedByAggregate
d_isSignedByAggregate_162 ::
  T_LeiosCryptoStructure_10 -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_isSignedByAggregate_162 = erased
-- Ledger.Dijkstra.Specification.Crypto.LeiosCryptoStructure.isSignedBy
d_isSignedBy_164 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  T_LeiosCryptoStructure_10 -> AgdaAny -> AgdaAny -> AgdaAny -> ()
d_isSignedBy_164 = erased
-- Ledger.Dijkstra.Specification.Crypto.LeiosCryptoStructure._<ᵏʰ_
d__'60''7503''688'__168 ::
  T_LeiosCryptoStructure_10 -> AgdaAny -> AgdaAny -> ()
d__'60''7503''688'__168 = erased
-- Ledger.Dijkstra.Specification.Crypto.LeiosCryptoStructure.<ᵏʰ-isSTO
d_'60''7503''688''45'isSTO_170 ::
  T_LeiosCryptoStructure_10 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictTotalOrder_624
d_'60''7503''688''45'isSTO_170 v0
  = case coe v0 of
      C_constructor_200 v7 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Crypto.LeiosCryptoStructure.EBHash
d_EBHash_172 :: T_LeiosCryptoStructure_10 -> ()
d_EBHash_172 = erased
-- Ledger.Dijkstra.Specification.Crypto.LeiosCryptoStructure.TxRefHash
d_TxRefHash_174 :: T_LeiosCryptoStructure_10 -> ()
d_TxRefHash_174 = erased
-- Ledger.Dijkstra.Specification.Crypto.LeiosCryptoStructure.RBHeaderHash
d_RBHeaderHash_176 :: T_LeiosCryptoStructure_10 -> ()
d_RBHeaderHash_176 = erased
-- Ledger.Dijkstra.Specification.Crypto.LeiosCryptoStructure.hashEBRefs
d_hashEBRefs_178 ::
  T_LeiosCryptoStructure_10 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> AgdaAny
d_hashEBRefs_178 v0
  = case coe v0 of
      C_constructor_200 v7 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v11
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Crypto.LeiosCryptoStructure.DecEq-BlsVKey
d_DecEq'45'BlsVKey_180 ::
  T_LeiosCryptoStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BlsVKey_180 v0
  = case coe v0 of
      C_constructor_200 v7 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v12
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Crypto.LeiosCryptoStructure.DecEq-BlsSig
d_DecEq'45'BlsSig_182 ::
  T_LeiosCryptoStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BlsSig_182 v0
  = case coe v0 of
      C_constructor_200 v7 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v13
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Crypto.LeiosCryptoStructure.DecEq-BlsPoP
d_DecEq'45'BlsPoP_184 ::
  T_LeiosCryptoStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BlsPoP_184 v0
  = case coe v0 of
      C_constructor_200 v7 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v14
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Crypto.LeiosCryptoStructure.Dec-isValidPoP
d_Dec'45'isValidPoP_186 ::
  T_LeiosCryptoStructure_10 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isValidPoP_186 v0
  = case coe v0 of
      C_constructor_200 v7 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v15
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Crypto.LeiosCryptoStructure.Dec-isSignedByAggregate
d_Dec'45'isSignedByAggregate_188 ::
  T_LeiosCryptoStructure_10 ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isSignedByAggregate_188 v0
  = case coe v0 of
      C_constructor_200 v7 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v16
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Crypto.LeiosCryptoStructure.Dec-<ᵏʰ
d_Dec'45''60''7503''688'_190 ::
  T_LeiosCryptoStructure_10 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45''60''7503''688'_190 v0
  = case coe v0 of
      C_constructor_200 v7 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v17
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Crypto.LeiosCryptoStructure.DecEq-EBHash
d_DecEq'45'EBHash_192 ::
  T_LeiosCryptoStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'EBHash_192 v0
  = case coe v0 of
      C_constructor_200 v7 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v18
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Crypto.LeiosCryptoStructure.DecEq-TxRefHash
d_DecEq'45'TxRefHash_194 ::
  T_LeiosCryptoStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'TxRefHash_194 v0
  = case coe v0 of
      C_constructor_200 v7 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v19
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Crypto.LeiosCryptoStructure.DecEq-RBHeaderHash
d_DecEq'45'RBHeaderHash_196 ::
  T_LeiosCryptoStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'RBHeaderHash_196 v0
  = case coe v0 of
      C_constructor_200 v7 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v20
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Crypto.LeiosCryptoStructure.Dec-isSignedBy
d_Dec'45'isSignedBy_198 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  T_LeiosCryptoStructure_10 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isSignedBy_198 ~v0 v1 v2 v3 v4
  = du_Dec'45'isSignedBy_198 v1 v2 v3 v4
du_Dec'45'isSignedBy_198 ::
  T_LeiosCryptoStructure_10 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'isSignedBy_198 v0 v1 v2 v3
  = coe
      d_Dec'45'isSignedByAggregate_188 v0
      (coe
         MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_480
         (MAlonzo.Code.Axiom.Set.d_th_1516
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         erased v1)
      v2 v3
