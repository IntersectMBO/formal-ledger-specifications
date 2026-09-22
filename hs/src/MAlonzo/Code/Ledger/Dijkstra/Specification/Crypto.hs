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
  = C_constructor_204 MAlonzo.Code.Relation.Binary.Structures.T_IsStrictTotalOrder_624
                      ([MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> AgdaAny)
                      (AgdaAny -> AgdaAny) MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
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
d_Ser_130 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  T_LeiosCryptoStructure_10 -> ()
d_Ser_130 = erased
-- Ledger.Dijkstra.Specification.Crypto.LeiosCryptoStructure.BlsVKey
d_BlsVKey_156 :: T_LeiosCryptoStructure_10 -> ()
d_BlsVKey_156 = erased
-- Ledger.Dijkstra.Specification.Crypto.LeiosCryptoStructure.BlsSig
d_BlsSig_158 :: T_LeiosCryptoStructure_10 -> ()
d_BlsSig_158 = erased
-- Ledger.Dijkstra.Specification.Crypto.LeiosCryptoStructure.BlsPoP
d_BlsPoP_160 :: T_LeiosCryptoStructure_10 -> ()
d_BlsPoP_160 = erased
-- Ledger.Dijkstra.Specification.Crypto.LeiosCryptoStructure.isValidPoP
d_isValidPoP_162 ::
  T_LeiosCryptoStructure_10 -> AgdaAny -> AgdaAny -> ()
d_isValidPoP_162 = erased
-- Ledger.Dijkstra.Specification.Crypto.LeiosCryptoStructure.isSignedByAggregate
d_isSignedByAggregate_164 ::
  T_LeiosCryptoStructure_10 -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_isSignedByAggregate_164 = erased
-- Ledger.Dijkstra.Specification.Crypto.LeiosCryptoStructure.isSignedBy
d_isSignedBy_166 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  T_LeiosCryptoStructure_10 -> AgdaAny -> AgdaAny -> AgdaAny -> ()
d_isSignedBy_166 = erased
-- Ledger.Dijkstra.Specification.Crypto.LeiosCryptoStructure._<ᵏʰ_
d__'60''7503''688'__170 ::
  T_LeiosCryptoStructure_10 -> AgdaAny -> AgdaAny -> ()
d__'60''7503''688'__170 = erased
-- Ledger.Dijkstra.Specification.Crypto.LeiosCryptoStructure.<ᵏʰ-isSTO
d_'60''7503''688''45'isSTO_172 ::
  T_LeiosCryptoStructure_10 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictTotalOrder_624
d_'60''7503''688''45'isSTO_172 v0
  = case coe v0 of
      C_constructor_204 v7 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21
        -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Crypto.LeiosCryptoStructure.EBHash
d_EBHash_174 :: T_LeiosCryptoStructure_10 -> ()
d_EBHash_174 = erased
-- Ledger.Dijkstra.Specification.Crypto.LeiosCryptoStructure.TxRefHash
d_TxRefHash_176 :: T_LeiosCryptoStructure_10 -> ()
d_TxRefHash_176 = erased
-- Ledger.Dijkstra.Specification.Crypto.LeiosCryptoStructure.RBHeaderHash
d_RBHeaderHash_178 :: T_LeiosCryptoStructure_10 -> ()
d_RBHeaderHash_178 = erased
-- Ledger.Dijkstra.Specification.Crypto.LeiosCryptoStructure.hashEBRefs
d_hashEBRefs_180 ::
  T_LeiosCryptoStructure_10 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> AgdaAny
d_hashEBRefs_180 v0
  = case coe v0 of
      C_constructor_204 v7 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21
        -> coe v11
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Crypto.LeiosCryptoStructure.rbHeaderHashBytes
d_rbHeaderHashBytes_182 ::
  T_LeiosCryptoStructure_10 -> AgdaAny -> AgdaAny
d_rbHeaderHashBytes_182 v0
  = case coe v0 of
      C_constructor_204 v7 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21
        -> coe v12
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Crypto.LeiosCryptoStructure.DecEq-BlsVKey
d_DecEq'45'BlsVKey_184 ::
  T_LeiosCryptoStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BlsVKey_184 v0
  = case coe v0 of
      C_constructor_204 v7 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21
        -> coe v13
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Crypto.LeiosCryptoStructure.DecEq-BlsSig
d_DecEq'45'BlsSig_186 ::
  T_LeiosCryptoStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BlsSig_186 v0
  = case coe v0 of
      C_constructor_204 v7 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21
        -> coe v14
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Crypto.LeiosCryptoStructure.DecEq-BlsPoP
d_DecEq'45'BlsPoP_188 ::
  T_LeiosCryptoStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BlsPoP_188 v0
  = case coe v0 of
      C_constructor_204 v7 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21
        -> coe v15
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Crypto.LeiosCryptoStructure.Dec-isValidPoP
d_Dec'45'isValidPoP_190 ::
  T_LeiosCryptoStructure_10 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isValidPoP_190 v0
  = case coe v0 of
      C_constructor_204 v7 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21
        -> coe v16
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Crypto.LeiosCryptoStructure.Dec-isSignedByAggregate
d_Dec'45'isSignedByAggregate_192 ::
  T_LeiosCryptoStructure_10 ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isSignedByAggregate_192 v0
  = case coe v0 of
      C_constructor_204 v7 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21
        -> coe v17
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Crypto.LeiosCryptoStructure.Dec-<ᵏʰ
d_Dec'45''60''7503''688'_194 ::
  T_LeiosCryptoStructure_10 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45''60''7503''688'_194 v0
  = case coe v0 of
      C_constructor_204 v7 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21
        -> coe v18
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Crypto.LeiosCryptoStructure.DecEq-EBHash
d_DecEq'45'EBHash_196 ::
  T_LeiosCryptoStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'EBHash_196 v0
  = case coe v0 of
      C_constructor_204 v7 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21
        -> coe v19
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Crypto.LeiosCryptoStructure.DecEq-TxRefHash
d_DecEq'45'TxRefHash_198 ::
  T_LeiosCryptoStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'TxRefHash_198 v0
  = case coe v0 of
      C_constructor_204 v7 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21
        -> coe v20
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Crypto.LeiosCryptoStructure.DecEq-RBHeaderHash
d_DecEq'45'RBHeaderHash_200 ::
  T_LeiosCryptoStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'RBHeaderHash_200 v0
  = case coe v0 of
      C_constructor_204 v7 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21
        -> coe v21
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Crypto.LeiosCryptoStructure.Dec-isSignedBy
d_Dec'45'isSignedBy_202 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  T_LeiosCryptoStructure_10 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isSignedBy_202 ~v0 v1 v2 v3 v4
  = du_Dec'45'isSignedBy_202 v1 v2 v3 v4
du_Dec'45'isSignedBy_202 ::
  T_LeiosCryptoStructure_10 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'isSignedBy_202 v0 v1 v2 v3
  = coe
      d_Dec'45'isSignedByAggregate_192 v0
      (coe
         MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_480
         (MAlonzo.Code.Axiom.Set.d_th_1516
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         erased v1)
      v2 v3
