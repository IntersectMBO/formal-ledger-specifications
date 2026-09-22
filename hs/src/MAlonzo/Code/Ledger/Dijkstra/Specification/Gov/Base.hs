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

module MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Bool
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.FromNat
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Agda.Builtin.Maybe
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Algebra.Bundles
import qualified MAlonzo.Code.Axiom.Set
import qualified MAlonzo.Code.Axiom.Set.Map
import qualified MAlonzo.Code.Class.CommutativeMonoid.Core
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Class.DecEq.Instances
import qualified MAlonzo.Code.Class.Decidable.Core
import qualified MAlonzo.Code.Class.HasAdd.Core
import qualified MAlonzo.Code.Class.HasOrder.Core
import qualified MAlonzo.Code.Class.Show.Core
import qualified MAlonzo.Code.Data.Integer.Base
import qualified MAlonzo.Code.Data.Irrelevant
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.List.Relation.Unary.Any
import qualified MAlonzo.Code.Data.Nat.Base
import qualified MAlonzo.Code.Data.Rational.Base
import qualified MAlonzo.Code.Data.Refinement.Base
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Function.Bundles
import qualified MAlonzo.Code.Interface.TypeClasses.Hashable
import qualified MAlonzo.Code.Ledger.Core.Specification.Address
import qualified MAlonzo.Code.Ledger.Core.Specification.Crypto
import qualified MAlonzo.Code.Ledger.Core.Specification.Epoch
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Crypto
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.PParams
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base
import qualified MAlonzo.Code.Ledger.Prelude.Base
import qualified MAlonzo.Code.Relation.Binary.Structures
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects
import qualified MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory
import qualified MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base

-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure
d_GovStructure_10 = ()
data T_GovStructure_10
  = C_constructor_1680 MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
                       MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
                       MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140
                       MAlonzo.Code.Ledger.Dijkstra.Specification.Crypto.T_LeiosCryptoStructure_10
                       MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22
                       MAlonzo.Code.Ledger.Core.Specification.Epoch.T_GlobalConstants_292
                       MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524
                       MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_GovParams_1758
-- Ledger.Dijkstra.Specification.Gov.Base._.GovParams
d_GovParams_360 a0 a1 a2 a3 a4 a5 a6 a7 a8 = ()
-- Ledger.Dijkstra.Specification.Gov.Base._.GovParams.DecEq-UpdT
d_DecEq'45'UpdT_450 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_GovParams_1758 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_450 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_DecEq'45'UpdT_1790
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base._.GovParams.ppUpd
d_ppUpd_456 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_GovParams_1758 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsDiff_1724
d_ppUpd_456 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ppUpd_1776
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure.TxId
d_TxId_732 :: T_GovStructure_10 -> ()
d_TxId_732 = erased
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure.DocHash
d_DocHash_734 :: T_GovStructure_10 -> ()
d_DocHash_734 = erased
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure.DecEq-TxId
d_DecEq'45'TxId_736 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'TxId_736 v0
  = case coe v0 of
      C_constructor_1680 v3 v4 v5 v6 v7 v8 v9 v10 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure.DecEq-DocHash
d_DecEq'45'DocHash_738 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DocHash_738 v0
  = case coe v0 of
      C_constructor_1680 v3 v4 v5 v6 v7 v8 v9 v10 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure.cryptoStructure
d_cryptoStructure_740 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140
d_cryptoStructure_740 v0
  = case coe v0 of
      C_constructor_1680 v3 v4 v5 v6 v7 v8 v9 v10 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.Dec-isSigned
d_Dec'45'isSigned_744 ::
  T_GovStructure_10 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isSigned_744 v0
  = let v1 = d_cryptoStructure_740 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Dec'45'isSigned_120
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_192 (coe v1)))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.DecEq-ScriptHash
d_DecEq'45'ScriptHash_746 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ScriptHash_746 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
      (coe d_cryptoStructure_740 (coe v0))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.DecEq-Ser
d_DecEq'45'Ser_748 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Ser_748 v0
  = let v1 = d_cryptoStructure_740 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'Ser_136
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_192 (coe v1)))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.DecEq-Sig
d_DecEq'45'Sig_750 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Sig_750 v0
  = let v1 = d_cryptoStructure_740 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'Sig_134
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_192 (coe v1)))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.DecEq-THash
d_DecEq'45'THash_752 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_752 v0
  = let v1 = d_cryptoStructure_740 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220 (coe v1)))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.DecEq-VRF
d_DecEq'45'VRF_754 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'VRF_754 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'VRF_240
      (coe d_cryptoStructure_740 (coe v0))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.THash
d_THash_756 :: T_GovStructure_10 -> ()
d_THash_756 = erased
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.KeyPair
d_KeyPair_758 :: T_GovStructure_10 -> ()
d_KeyPair_758 = erased
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.SKey
d_SKey_760 :: T_GovStructure_10 -> ()
d_SKey_760 = erased
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.ScriptHash
d_ScriptHash_762 :: T_GovStructure_10 -> ()
d_ScriptHash_762 = erased
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.Ser
d_Ser_764 :: T_GovStructure_10 -> ()
d_Ser_764 = erased
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.Show-ScriptHash
d_Show'45'ScriptHash_766 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ScriptHash_766 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'ScriptHash_226
      (coe d_cryptoStructure_740 (coe v0))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.Show-THash
d_Show'45'THash_768 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_768 v0
  = let v1 = d_cryptoStructure_740 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220 (coe v1)))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.Sig
d_Sig_770 :: T_GovStructure_10 -> ()
d_Sig_770 = erased
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.T-Hashable
d_T'45'Hashable_772 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_T'45'Hashable_772 v0
  = let v1 = d_cryptoStructure_740 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220 (coe v1)))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.VKey
d_VKey_774 :: T_GovStructure_10 -> ()
d_VKey_774 = erased
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.VRF
d_VRF_776 :: T_GovStructure_10 -> ()
d_VRF_776 = erased
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.isKeyPair
d_isKeyPair_778 :: T_GovStructure_10 -> AgdaAny -> AgdaAny -> ()
d_isKeyPair_778 = erased
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.isSigned
d_isSigned_780 ::
  T_GovStructure_10 -> AgdaAny -> AgdaAny -> AgdaAny -> ()
d_isSigned_780 = erased
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.isSigned-correct
d_isSigned'45'correct_782 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_isSigned'45'correct_782 v0
  = let v1 = d_cryptoStructure_740 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_isSigned'45'correct_132
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_192 (coe v1)))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.khs
d_khs_784 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
d_khs_784 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
      (coe d_cryptoStructure_740 (coe v0))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.pkk
d_pkk_786 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_PKKScheme_60
d_pkk_786 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_192
      (coe d_cryptoStructure_740 (coe v0))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.sign
d_sign_788 :: T_GovStructure_10 -> AgdaAny -> AgdaAny -> AgdaAny
d_sign_788 v0
  = let v1 = d_cryptoStructure_740 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_sign_112
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_192 (coe v1)))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure.leiosCryptoStructure
d_leiosCryptoStructure_790 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Crypto.T_LeiosCryptoStructure_10
d_leiosCryptoStructure_790 v0
  = case coe v0 of
      C_constructor_1680 v3 v4 v5 v6 v7 v8 v9 v10 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._._<ᵏʰ_
d__'60''7503''688'__794 ::
  T_GovStructure_10 -> AgdaAny -> AgdaAny -> ()
d__'60''7503''688'__794 = erased
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.<ᵏʰ-isSTO
d_'60''7503''688''45'isSTO_796 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictTotalOrder_624
d_'60''7503''688''45'isSTO_796 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Crypto.d_'60''7503''688''45'isSTO_172
      (coe d_leiosCryptoStructure_790 (coe v0))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.BlsPoP
d_BlsPoP_798 :: T_GovStructure_10 -> ()
d_BlsPoP_798 = erased
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.BlsSig
d_BlsSig_800 :: T_GovStructure_10 -> ()
d_BlsSig_800 = erased
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.BlsVKey
d_BlsVKey_802 :: T_GovStructure_10 -> ()
d_BlsVKey_802 = erased
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.Dec-<ᵏʰ
d_Dec'45''60''7503''688'_804 ::
  T_GovStructure_10 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45''60''7503''688'_804 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Crypto.d_Dec'45''60''7503''688'_194
      (coe d_leiosCryptoStructure_790 (coe v0))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.Dec-isSignedBy
d_Dec'45'isSignedBy_806 ::
  T_GovStructure_10 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isSignedBy_806 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Crypto.du_Dec'45'isSignedBy_202
      (coe d_leiosCryptoStructure_790 (coe v0))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.Dec-isSignedByAggregate
d_Dec'45'isSignedByAggregate_808 ::
  T_GovStructure_10 ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isSignedByAggregate_808 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Crypto.d_Dec'45'isSignedByAggregate_192
      (coe d_leiosCryptoStructure_790 (coe v0))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.Dec-isValidPoP
d_Dec'45'isValidPoP_810 ::
  T_GovStructure_10 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isValidPoP_810 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Crypto.d_Dec'45'isValidPoP_190
      (coe d_leiosCryptoStructure_790 (coe v0))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.DecEq-BlsPoP
d_DecEq'45'BlsPoP_812 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BlsPoP_812 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Crypto.d_DecEq'45'BlsPoP_188
      (coe d_leiosCryptoStructure_790 (coe v0))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.DecEq-BlsSig
d_DecEq'45'BlsSig_814 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BlsSig_814 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Crypto.d_DecEq'45'BlsSig_186
      (coe d_leiosCryptoStructure_790 (coe v0))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.DecEq-BlsVKey
d_DecEq'45'BlsVKey_816 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BlsVKey_816 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Crypto.d_DecEq'45'BlsVKey_184
      (coe d_leiosCryptoStructure_790 (coe v0))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.DecEq-EBHash
d_DecEq'45'EBHash_818 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'EBHash_818 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Crypto.d_DecEq'45'EBHash_196
      (coe d_leiosCryptoStructure_790 (coe v0))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.DecEq-RBHeaderHash
d_DecEq'45'RBHeaderHash_820 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'RBHeaderHash_820 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Crypto.d_DecEq'45'RBHeaderHash_200
      (coe d_leiosCryptoStructure_790 (coe v0))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.DecEq-TxRefHash
d_DecEq'45'TxRefHash_822 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'TxRefHash_822 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Crypto.d_DecEq'45'TxRefHash_198
      (coe d_leiosCryptoStructure_790 (coe v0))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.EBHash
d_EBHash_824 :: T_GovStructure_10 -> ()
d_EBHash_824 = erased
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.RBHeaderHash
d_RBHeaderHash_826 :: T_GovStructure_10 -> ()
d_RBHeaderHash_826 = erased
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.TxRefHash
d_TxRefHash_828 :: T_GovStructure_10 -> ()
d_TxRefHash_828 = erased
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.hashEBRefs
d_hashEBRefs_830 ::
  T_GovStructure_10 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> AgdaAny
d_hashEBRefs_830 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Crypto.d_hashEBRefs_180
      (coe d_leiosCryptoStructure_790 (coe v0))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.isSignedBy
d_isSignedBy_832 ::
  T_GovStructure_10 -> AgdaAny -> AgdaAny -> AgdaAny -> ()
d_isSignedBy_832 = erased
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.isSignedByAggregate
d_isSignedByAggregate_834 ::
  T_GovStructure_10 -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_isSignedByAggregate_834 = erased
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.isValidPoP
d_isValidPoP_836 :: T_GovStructure_10 -> AgdaAny -> AgdaAny -> ()
d_isValidPoP_836 = erased
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.rbHeaderHashBytes
d_rbHeaderHashBytes_838 :: T_GovStructure_10 -> AgdaAny -> AgdaAny
d_rbHeaderHashBytes_838 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Crypto.d_rbHeaderHashBytes_182
      (coe d_leiosCryptoStructure_790 (coe v0))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure.epochStructure
d_epochStructure_840 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22
d_epochStructure_840 v0
  = case coe v0 of
      C_constructor_1680 v3 v4 v5 v6 v7 v8 v9 v10 -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._._+ᵉ_
d__'43''7497'__844 ::
  T_GovStructure_10 -> Integer -> AgdaAny -> AgdaAny
d__'43''7497'__844 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d__'43''7497'__100
      (coe d_epochStructure_840 (coe v0))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._._+ᵉ'_
d__'43''7497'''__846 ::
  T_GovStructure_10 -> Integer -> AgdaAny -> AgdaAny
d__'43''7497'''__846 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d__'43''7497'''__102
      (coe d_epochStructure_840 (coe v0))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.+ᵉ≡+ᵉ'
d_'43''7497''8801''43''7497'''_848 ::
  T_GovStructure_10 ->
  Integer ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''7497''8801''43''7497'''_848 = erased
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.DecEq-Epoch
d_DecEq'45'Epoch_850 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Epoch_850 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Epoch_80
      (coe d_epochStructure_840 (coe v0))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.DecEq-Slot
d_DecEq'45'Slot_852 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Slot_852 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Slot_88
      (coe d_epochStructure_840 (coe v0))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.DecPo-Slot
d_DecPo'45'Slot_854 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.HasOrder.Core.T_HasDecPartialOrder_262
d_DecPo'45'Slot_854 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecPo'45'Slot_86
      (coe d_epochStructure_840 (coe v0))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.Epoch
d_Epoch_856 :: T_GovStructure_10 -> ()
d_Epoch_856 = erased
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.Number-Epoch
d_Number'45'Epoch_858 ::
  T_GovStructure_10 -> MAlonzo.Code.Agda.Builtin.FromNat.T_Number_10
d_Number'45'Epoch_858 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Number'45'Epoch_286
      (coe d_epochStructure_840 (coe v0))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.RandomnessStabilisationWindow
d_RandomnessStabilisationWindow_860 :: T_GovStructure_10 -> AgdaAny
d_RandomnessStabilisationWindow_860 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_RandomnessStabilisationWindow_94
      (coe d_epochStructure_840 (coe v0))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.Show-Epoch
d_Show'45'Epoch_862 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Epoch_862 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Show'45'Epoch_82
      (coe d_epochStructure_840 (coe v0))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.Slot
d_Slot_864 :: T_GovStructure_10 -> ()
d_Slot_864 = erased
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.Slotʳ
d_Slot'691'_866 ::
  T_GovStructure_10 -> MAlonzo.Code.Algebra.Bundles.T_Semiring_2356
d_Slot'691'_866 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Slot'691'_76
      (coe d_epochStructure_840 (coe v0))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.StabilityWindow
d_StabilityWindow_868 :: T_GovStructure_10 -> AgdaAny
d_StabilityWindow_868 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_StabilityWindow_96
      (coe d_epochStructure_840 (coe v0))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.addEpoch
d_addEpoch_870 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addEpoch_870 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_addEpoch_280
      (coe d_epochStructure_840 (coe v0))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.addSlot
d_addSlot_872 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addSlot_872 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_addSlot_278
      (coe d_epochStructure_840 (coe v0))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.e<sucᵉ
d_e'60'suc'7497'_874 :: T_GovStructure_10 -> AgdaAny -> AgdaAny
d_e'60'suc'7497'_874 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_e'60'suc'7497'_120
      (coe d_epochStructure_840 (coe v0))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.epoch
d_epoch_876 :: T_GovStructure_10 -> AgdaAny -> AgdaAny
d_epoch_876 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_epoch_90
      (coe d_epochStructure_840 (coe v0))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.firstSlot
d_firstSlot_878 :: T_GovStructure_10 -> AgdaAny -> AgdaAny
d_firstSlot_878 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_firstSlot_92
      (coe d_epochStructure_840 (coe v0))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.preoEpoch
d_preoEpoch_880 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.HasOrder.Core.T_HasPreorder_28
d_preoEpoch_880 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_preoEpoch_110
      (coe d_epochStructure_840 (coe v0))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.sucᵉ
d_suc'7497'_882 :: T_GovStructure_10 -> AgdaAny -> AgdaAny
d_suc'7497'_882 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_suc'7497'_98
      (coe d_epochStructure_840 (coe v0))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.ℕtoEpoch
d_ℕtoEpoch_884 :: T_GovStructure_10 -> Integer -> AgdaAny
d_ℕtoEpoch_884 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_ℕtoEpoch_274
      (coe d_epochStructure_840 (coe v0))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.≤-predᵉ
d_'8804''45'pred'7497'_886 ::
  T_GovStructure_10 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_'8804''45'pred'7497'_886 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_'8804''45'pred'7497'_126
      (coe d_epochStructure_840 (coe v0))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure.globalConstants
d_globalConstants_888 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_GlobalConstants_292
d_globalConstants_888 v0
  = case coe v0 of
      C_constructor_1680 v3 v4 v5 v6 v7 v8 v9 v10 -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.ActiveSlotCoeff
d_ActiveSlotCoeff_892 ::
  T_GovStructure_10 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_ActiveSlotCoeff_892 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_ActiveSlotCoeff_332
      (coe d_globalConstants_888 (coe v0))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.DecEq-Netw
d_DecEq'45'Netw_894 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Netw_894 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_324
      (coe d_globalConstants_888 (coe v0))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.MaxKESEvoᶜ
d_MaxKESEvo'7580'_896 :: T_GovStructure_10 -> Integer
d_MaxKESEvo'7580'_896 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_MaxKESEvo'7580'_346
      (coe d_globalConstants_888 (coe v0))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.MaxLovelaceSupplyᶜ
d_MaxLovelaceSupply'7580'_898 :: T_GovStructure_10 -> Integer
d_MaxLovelaceSupply'7580'_898 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_MaxLovelaceSupply'7580'_340
      (coe d_globalConstants_888 (coe v0))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.Network
d_Network_900 :: T_GovStructure_10 -> ()
d_Network_900 = erased
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.NetworkId
d_NetworkId_902 :: T_GovStructure_10 -> AgdaAny
d_NetworkId_902 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NetworkId_344
      (coe d_globalConstants_888 (coe v0))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.NonZero-ActiveSlotCoeff
d_NonZero'45'ActiveSlotCoeff_904 ::
  T_GovStructure_10 -> MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_NonZero'45'ActiveSlotCoeff_904 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NonZero'45'ActiveSlotCoeff_350
      (coe d_globalConstants_888 (coe v0))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.NonZero-SlotsPerEpochᶜ
d_NonZero'45'SlotsPerEpoch'7580'_906 ::
  T_GovStructure_10 -> MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_NonZero'45'SlotsPerEpoch'7580'_906 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NonZero'45'SlotsPerEpoch'7580'_330
      (coe d_globalConstants_888 (coe v0))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.Positive-ActiveSlotCoeff
d_Positive'45'ActiveSlotCoeff_908 ::
  T_GovStructure_10 -> MAlonzo.Code.Data.Integer.Base.T_Positive_134
d_Positive'45'ActiveSlotCoeff_908 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Positive'45'ActiveSlotCoeff_334
      (coe d_globalConstants_888 (coe v0))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.Quorum
d_Quorum_910 :: T_GovStructure_10 -> Integer
d_Quorum_910 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Quorum_342
      (coe d_globalConstants_888 (coe v0))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.RandomnessStabilisationWindowᶜ
d_RandomnessStabilisationWindow'7580'_912 ::
  T_GovStructure_10 -> Integer
d_RandomnessStabilisationWindow'7580'_912 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_RandomnessStabilisationWindow'7580'_336
      (coe d_globalConstants_888 (coe v0))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.Show-Network
d_Show'45'Network_914 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Network_914 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Show'45'Network_326
      (coe d_globalConstants_888 (coe v0))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.SlotsPerEpochᶜ
d_SlotsPerEpoch'7580'_916 :: T_GovStructure_10 -> Integer
d_SlotsPerEpoch'7580'_916 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_SlotsPerEpoch'7580'_328
      (coe d_globalConstants_888 (coe v0))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.SlotsPerKESPeriodᶜ
d_SlotsPerKESPeriod'7580'_918 :: T_GovStructure_10 -> Integer
d_SlotsPerKESPeriod'7580'_918 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_SlotsPerKESPeriod'7580'_348
      (coe d_globalConstants_888 (coe v0))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.StabilityWindowᶜ
d_StabilityWindow'7580'_920 :: T_GovStructure_10 -> Integer
d_StabilityWindow'7580'_920 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_StabilityWindow'7580'_338
      (coe d_globalConstants_888 (coe v0))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.maxKeyAgeEpochs
d_maxKeyAgeEpochs_922 :: T_GovStructure_10 -> Integer
d_maxKeyAgeEpochs_922 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_maxKeyAgeEpochs_352
      (coe d_globalConstants_888 (coe v0))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.ℕ+ᵉ≡+ᵉ'
d_ℕ'43''7497''8801''43''7497'''_924 ::
  T_GovStructure_10 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ℕ'43''7497''8801''43''7497'''_924 = erased
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.ℕEpochStructure
d_ℕEpochStructure_926 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22
d_ℕEpochStructure_926 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_ℕEpochStructure_366
      (coe d_globalConstants_888 (coe v0))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure.scriptStructure
d_scriptStructure_928 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524
d_scriptStructure_928 v0
  = case coe v0 of
      C_constructor_1680 v3 v4 v5 v6 v7 v8 v9 v10 -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._._≥ᵉ_
d__'8805''7497'__932 ::
  T_GovStructure_10 -> AgdaAny -> AgdaAny -> ()
d__'8805''7497'__932 = erased
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.CostModel
d_CostModel_934 :: T_GovStructure_10 -> ()
d_CostModel_934 = erased
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.T
d_T_936 :: T_GovStructure_10 -> ()
d_T_936 = erased
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.THash
d_THash_938 :: T_GovStructure_10 -> ()
d_THash_938 = erased
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.Dataʰ
d_Data'688'_940 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_HashableSet_36
d_Data'688'_940 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_444
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
         (coe d_scriptStructure_928 (coe v0)))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.Datum
d_Datum_942 :: T_GovStructure_10 -> ()
d_Datum_942 = erased
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.Dec-validP1Script
d_Dec'45'validP1Script_944 ::
  T_GovStructure_10 ->
  [AgdaAny] ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_944 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Dec'45'validP1Script_346
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_p1s_550
         (coe d_scriptStructure_928 (coe v0)))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.Dec-validPlutusScript
d_Dec'45'validPlutusScript_946 ::
  T_GovStructure_10 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_946 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Dec'45'validPlutusScript_518
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
         (coe d_scriptStructure_928 (coe v0)))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.DecEQ-Prices
d_DecEQ'45'Prices_948 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_948 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEQ'45'Prices_480
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
         (coe d_scriptStructure_928 (coe v0)))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.DecEq-CostModel
d_DecEq'45'CostModel_950 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_950 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'CostModel_464
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
         (coe d_scriptStructure_928 (coe v0)))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.DecEq-ExUnits
d_DecEq'45'ExUnits_952 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_952 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'ExUnits_478
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
         (coe d_scriptStructure_928 (coe v0)))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.DecEq-LangDepView
d_DecEq'45'LangDepView_954 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_954 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'LangDepView_466
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
         (coe d_scriptStructure_928 (coe v0)))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.DecEq-Language
d_DecEq'45'Language_956 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_956 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'Language_470
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
         (coe d_scriptStructure_928 (coe v0)))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.DecEq-LanguageCostModels
d_DecEq'45'LanguageCostModels_958 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LanguageCostModels_958 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_DecEq'45'LanguageCostModels_688
      (coe d_scriptStructure_928 (coe v0))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.DecEq-P1Script
d_DecEq'45'P1Script_960 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_960 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'P1Script_350
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_p1s_550
         (coe d_scriptStructure_928 (coe v0)))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.DecEq-T
d_DecEq'45'T_962 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_962 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_444
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
                 (coe d_scriptStructure_928 (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'T_30
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.DecEq-THash
d_DecEq'45'THash_964 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_964 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_444
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
                 (coe d_scriptStructure_928 (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_966 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_ExUnit'45'CommutativeMonoid_966 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ExUnit'45'CommutativeMonoid_460
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
         (coe d_scriptStructure_928 (coe v0)))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.ExUnits
d_ExUnits_968 :: T_GovStructure_10 -> ()
d_ExUnits_968 = erased
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.Hashable-P1Script
d_Hashable'45'P1Script_970 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'P1Script_970 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Hashable'45'P1Script_348
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_p1s_550
         (coe d_scriptStructure_928 (coe v0)))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.Hashable-PlutusScript
d_Hashable'45'PlutusScript_972 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'PlutusScript_972 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Hashable'45'PlutusScript_462
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
         (coe d_scriptStructure_928 (coe v0)))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.Hashable-Script
d_Hashable'45'Script_974 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'Script_974 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_Hashable'45'Script_652
      (coe d_scriptStructure_928 (coe v0))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.LangDepView
d_LangDepView_976 :: T_GovStructure_10 -> ()
d_LangDepView_976 = erased
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.Language
d_Language_978 :: T_GovStructure_10 -> ()
d_Language_978 = erased
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.LanguageCostModels
d_LanguageCostModels_980 a0 = ()
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.P1Script
d_P1Script_984 :: T_GovStructure_10 -> ()
d_P1Script_984 = erased
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PlutusScript
d_PlutusScript_986 :: T_GovStructure_10 -> ()
d_PlutusScript_986 = erased
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PlutusV1
d_PlutusV1_988 :: T_GovStructure_10 -> AgdaAny
d_PlutusV1_988 v0
  = let v1 = d_scriptStructure_928 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV1_486
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
            (coe v1)))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PlutusV2
d_PlutusV2_990 :: T_GovStructure_10 -> AgdaAny
d_PlutusV2_990 v0
  = let v1 = d_scriptStructure_928 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV2_488
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
            (coe v1)))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PlutusV3
d_PlutusV3_992 :: T_GovStructure_10 -> AgdaAny
d_PlutusV3_992 v0
  = let v1 = d_scriptStructure_928 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV3_490
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
            (coe v1)))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PlutusV4
d_PlutusV4_994 :: T_GovStructure_10 -> AgdaAny
d_PlutusV4_994 v0
  = let v1 = d_scriptStructure_928 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV4_492
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
            (coe v1)))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.Prices
d_Prices_996 :: T_GovStructure_10 -> ()
d_Prices_996 = erased
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.Redeemer
d_Redeemer_998 :: T_GovStructure_10 -> ()
d_Redeemer_998 = erased
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.Script
d_Script_1000 :: T_GovStructure_10 -> ()
d_Script_1000 = erased
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.Show-CostModel
d_Show'45'CostModel_1002 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'CostModel_1002 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'CostModel_468
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
         (coe d_scriptStructure_928 (coe v0)))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.Show-ExUnits
d_Show'45'ExUnits_1004 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_1004 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'ExUnits_482
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
         (coe d_scriptStructure_928 (coe v0)))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.Show-Language
d_Show'45'Language_1006 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Language_1006 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'Language_472
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
         (coe d_scriptStructure_928 (coe v0)))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.Show-LanguageCostModels
d_Show'45'LanguageCostModels_1008 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'LanguageCostModels_1008 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_Show'45'LanguageCostModels_694
      (coe d_scriptStructure_928 (coe v0))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.Show-Prices
d_Show'45'Prices_1010 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Prices_1010 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'Prices_484
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
         (coe d_scriptStructure_928 (coe v0)))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.Show-THash
d_Show'45'THash_1012 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_1012 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_444
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
                 (coe d_scriptStructure_928 (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.T-Hashable
d_T'45'Hashable_1014 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_T'45'Hashable_1014 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_444
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
                 (coe d_scriptStructure_928 (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.T-isHashable
d_T'45'isHashable_1016 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
d_T'45'isHashable_1016 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_444
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
            (coe d_scriptStructure_928 (coe v0))))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.fromPlutusLanguage
d_fromPlutusLanguage_1018 ::
  T_GovStructure_10 -> MAlonzo.Code.Function.Bundles.T_Injection_842
d_fromPlutusLanguage_1018 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_fromPlutusLanguage_458
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
         (coe d_scriptStructure_928 (coe v0)))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.hashRespectsUnion
d_hashRespectsUnion_1020 ::
  T_GovStructure_10 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_hashRespectsUnion_1020 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_hashRespectsUnion_570
      (coe d_scriptStructure_928 (coe v0))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.isNativeScript
d_isNativeScript_1022 ::
  T_GovStructure_10 -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isNativeScript_1022 = erased
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.isP1Script
d_isP1Script_1024 ::
  T_GovStructure_10 -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isP1Script_1024 = erased
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.isP1Script?
d_isP1Script'63'_1026 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isP1Script'63'_1026 ~v0 = du_isP1Script'63'_1026
du_isP1Script'63'_1026 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_isP1Script'63'_1026
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_isP1Script'63'_658
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.isP2Script
d_isP2Script_1028 ::
  T_GovStructure_10 -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isP2Script_1028 = erased
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.isP2Script?
d_isP2Script'63'_1030 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isP2Script'63'_1030 ~v0 = du_isP2Script'63'_1030
du_isP2Script'63'_1030 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_isP2Script'63'_1030
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_isP2Script'63'_672
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.language
d_language_1032 :: T_GovStructure_10 -> AgdaAny -> AgdaAny
d_language_1032 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_language_520
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
         (coe d_scriptStructure_928 (coe v0)))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.languageCostModels
d_languageCostModels_1034 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_LanguageCostModels_680 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_languageCostModels_1034 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_languageCostModels_684
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.p1s
d_p1s_1038 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_P1ScriptStructure_326
d_p1s_1038 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_p1s_550
      (coe d_scriptStructure_928 (coe v0))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.ps
d_ps_1040 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364
d_ps_1040 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
      (coe d_scriptStructure_928 (coe v0))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.toP1Script
d_toP1Script_1042 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
d_toP1Script_1042 ~v0 = du_toP1Script_1042
du_toP1Script_1042 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
du_toP1Script_1042
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_toP1Script_666
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.toP2Script
d_toP2Script_1044 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
d_toP2Script_1044 ~v0 = du_toP2Script_1044
du_toP2Script_1044 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
du_toP2Script_1044
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_toP2Script_678
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.validP1Script
d_validP1Script_1046 ::
  T_GovStructure_10 ->
  [AgdaAny] ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> ()
d_validP1Script_1046 = erased
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.validPlutusScript
d_validPlutusScript_1048 ::
  T_GovStructure_10 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_1048 = erased
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.≥ᵉ-Dec
d_'8805''7497''45'Dec_1050 ::
  T_GovStructure_10 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_'8805''7497''45'Dec_1050 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_'8805''7497''45'Dec_476
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
         (coe d_scriptStructure_928 (coe v0)))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.LanguageCostModels.languageCostModels
d_languageCostModels_1054 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_LanguageCostModels_680 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_languageCostModels_1054 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_languageCostModels_684
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.AccountOf
d_AccountOf_1058 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasAccount_210 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_194
d_AccountOf_1058 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_AccountOf_218
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.Acnt
d_Acnt_1060 a0 = ()
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.CCMaxTermLengthOf
d_CCMaxTermLengthOf_1064 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasCCMaxTermLength_652 ->
  AgdaAny -> Integer
d_CCMaxTermLengthOf_1064 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_CCMaxTermLengthOf_660
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.DecEq-DrepThresholds
d_DecEq'45'DrepThresholds_1066 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DrepThresholds_1066 ~v0
  = du_DecEq'45'DrepThresholds_1066
du_DecEq'45'DrepThresholds_1066 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'DrepThresholds_1066
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_DecEq'45'DrepThresholds_668
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.DecEq-PParamGroup
d_DecEq'45'PParamGroup_1068 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamGroup_1068 ~v0 = du_DecEq'45'PParamGroup_1068
du_DecEq'45'PParamGroup_1068 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'PParamGroup_1068
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_DecEq'45'PParamGroup_674
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.DecEq-PParams
d_DecEq'45'PParams_1070 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParams_1070 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_DecEq'45'PParams_672
      (coe d_epochStructure_840 (coe v0))
      (coe d_scriptStructure_928 (coe v0))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.DecEq-PoolThresholds
d_DecEq'45'PoolThresholds_1072 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PoolThresholds_1072 ~v0
  = du_DecEq'45'PoolThresholds_1072
du_DecEq'45'PoolThresholds_1072 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'PoolThresholds_1072
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_DecEq'45'PoolThresholds_670
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.DrepThresholds
d_DrepThresholds_1074 a0 = ()
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.GovParams
d_GovParams_1080 a0 = ()
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.HasAccount
d_HasAccount_1086 a0 a1 a2 = ()
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.HasCCMaxTermLength
d_HasCCMaxTermLength_1090 a0 a1 a2 = ()
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.HasCast-Acnt
d_HasCast'45'Acnt_1094 ::
  T_GovStructure_10 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'Acnt_1094 ~v0 = du_HasCast'45'Acnt_1094
du_HasCast'45'Acnt_1094 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'Acnt_1094
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_HasCast'45'Acnt_230
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.HasPParams
d_HasPParams_1096 a0 a1 a2 = ()
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.HasReserves-Acnt
d_HasReserves'45'Acnt_1100 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasReserves_62
d_HasReserves'45'Acnt_1100 ~v0 = du_HasReserves'45'Acnt_1100
du_HasReserves'45'Acnt_1100 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasReserves_62
du_HasReserves'45'Acnt_1100
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_HasReserves'45'Acnt_228
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.HasTreasury-Acnt
d_HasTreasury'45'Acnt_1102 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasTreasury_82
d_HasTreasury'45'Acnt_1102 ~v0 = du_HasTreasury'45'Acnt_1102
du_HasTreasury'45'Acnt_1102 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasTreasury_82
du_HasTreasury'45'Acnt_1102
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_HasTreasury'45'Acnt_226
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PParamGroup
d_PParamGroup_1106 a0 = ()
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PParams
d_PParams_1108 a0 = ()
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PParamsDiff
d_PParamsDiff_1112 a0 = ()
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PParamsOf
d_PParamsOf_1116 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasPParams_632 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312
d_PParamsOf_1116 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_PParamsOf_640
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PoolThresholds
d_PoolThresholds_1118 a0 = ()
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.Show-DrepThresholds
d_Show'45'DrepThresholds_1124 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'DrepThresholds_1124 ~v0 = du_Show'45'DrepThresholds_1124
du_Show'45'DrepThresholds_1124 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'DrepThresholds_1124
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_Show'45'DrepThresholds_676
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.Show-PParams
d_Show'45'PParams_1126 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'PParams_1126 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_Show'45'PParams_680
      (coe d_epochStructure_840 (coe v0))
      (coe d_scriptStructure_928 (coe v0))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.Show-PoolThresholds
d_Show'45'PoolThresholds_1128 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'PoolThresholds_1128 ~v0 = du_Show'45'PoolThresholds_1128
du_Show'45'PoolThresholds_1128 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'PoolThresholds_1128
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_Show'45'PoolThresholds_678
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.paramsWF-elim
d_paramsWF'45'elim_1132 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  Integer ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_paramsWF'45'elim_1132 ~v0 = du_paramsWF'45'elim_1132
du_paramsWF'45'elim_1132 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  Integer ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_paramsWF'45'elim_1132 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_paramsWF'45'elim_608
      v2
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.paramsWellFormed
d_paramsWellFormed_1134 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  ()
d_paramsWellFormed_1134 = erased
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.positivePParams
d_positivePParams_1136 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  [Integer]
d_positivePParams_1136 ~v0 = du_positivePParams_1136
du_positivePParams_1136 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  [Integer]
du_positivePParams_1136
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_positivePParams_498
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.Acnt.reserves
d_reserves_1142 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_194 ->
  Integer
d_reserves_1142 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_reserves_202
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.Acnt.treasury
d_treasury_1144 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_194 ->
  Integer
d_treasury_1144 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_treasury_200
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.DrepThresholds.P1
d_P1_1148 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P1_1148 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P1_266
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.DrepThresholds.P2a
d_P2a_1150 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2a_1150 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P2a_268
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.DrepThresholds.P2b
d_P2b_1152 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2b_1152 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P2b_270
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.DrepThresholds.P3
d_P3_1154 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P3_1154 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P3_272
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.DrepThresholds.P4
d_P4_1156 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P4_1156 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P4_274
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.DrepThresholds.P5a
d_P5a_1158 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5a_1158 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P5a_276
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.DrepThresholds.P5b
d_P5b_1160 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5b_1160 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P5b_278
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.DrepThresholds.P5c
d_P5c_1162 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5c_1162 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P5c_280
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.DrepThresholds.P5d
d_P5d_1164 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5d_1164 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P5d_282
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.DrepThresholds.P6
d_P6_1166 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P6_1166 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P6_284
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.GovParams.DecEq-UpdT
d_DecEq'45'UpdT_1170 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_GovParams_1758 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_1170 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_DecEq'45'UpdT_1790
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.GovParams.UpdateT
d_UpdateT_1172 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_GovParams_1758 ->
  ()
d_UpdateT_1172 = erased
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.GovParams.applyUpdate
d_applyUpdate_1174 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_GovParams_1758 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312
d_applyUpdate_1174 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_applyUpdate_1740
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ppUpd_1776
         (coe v0))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.GovParams.ppUpd
d_ppUpd_1176 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_GovParams_1758 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsDiff_1724
d_ppUpd_1176 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ppUpd_1776
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.GovParams.ppWF?
d_ppWF'63'_1178 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_GovParams_1758 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_1178 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ppWF'63'_1748
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ppUpd_1776
         (coe v0))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.GovParams.ppdWellFormed
d_ppdWellFormed_1180 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_GovParams_1758 ->
  AgdaAny -> ()
d_ppdWellFormed_1180 = erased
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.GovParams.updateGroups
d_updateGroups_1182 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_GovParams_1758 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamGroup_232]
d_updateGroups_1182 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_updateGroups_1742
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ppUpd_1776
         (coe v0))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.HasAccount.AccountOf
d_AccountOf_1186 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasAccount_210 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_194
d_AccountOf_1186 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_AccountOf_218
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.HasCCMaxTermLength.CCMaxTermLengthOf
d_CCMaxTermLengthOf_1190 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasCCMaxTermLength_652 ->
  AgdaAny -> Integer
d_CCMaxTermLengthOf_1190 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_CCMaxTermLengthOf_660
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.HasPParams.PParamsOf
d_PParamsOf_1194 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasPParams_632 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312
d_PParamsOf_1194 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_PParamsOf_640
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PParams.Emax
d_Emax_1210 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  AgdaAny
d_Emax_1210 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_Emax_468
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PParams.a
d_a_1212 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_a_1212 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_a_438 (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PParams.a0
d_a0_1214 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_1214 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_a0_472
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PParams.b
d_b_1216 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_b_1216 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_b_440 (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PParams.ccMaxTermLength
d_ccMaxTermLength_1218 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_ccMaxTermLength_1218 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ccMaxTermLength_484
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PParams.ccMinSize
d_ccMinSize_1220 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_ccMinSize_1220 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ccMinSize_482
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_1222 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_coinsPerUTxOByte_1222 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_coinsPerUTxOByte_452
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PParams.collateralPercentage
d_collateralPercentage_1224 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_collateralPercentage_1224 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_collateralPercentage_474
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PParams.costmdls
d_costmdls_1226 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_costmdls_1226 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_costmdls_494
      (coe d_scriptStructure_928 (coe v0))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PParams.costmdlsAssoc
d_costmdlsAssoc_1228 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_LanguageCostModels_680
d_costmdlsAssoc_1228 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_costmdlsAssoc_476
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PParams.drepActivity
d_drepActivity_1230 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  AgdaAny
d_drepActivity_1230 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepActivity_492
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PParams.drepDeposit
d_drepDeposit_1232 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_drepDeposit_1232 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepDeposit_490
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PParams.drepThresholds
d_drepThresholds_1234 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_244
d_drepThresholds_1234 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepThresholds_480
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PParams.govActionDeposit
d_govActionDeposit_1236 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_govActionDeposit_1236 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_govActionDeposit_488
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PParams.govActionLifetime
d_govActionLifetime_1238 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_govActionLifetime_1238 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_govActionLifetime_486
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PParams.keyDeposit
d_keyDeposit_1240 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_keyDeposit_1240 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_keyDeposit_442
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PParams.leiosCommitteeSize
d_leiosCommitteeSize_1242 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_leiosCommitteeSize_1242 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosCommitteeSize_430
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PParams.leiosDiffusionPeriod
d_leiosDiffusionPeriod_1244 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_leiosDiffusionPeriod_1244 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosDiffusionPeriod_424
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PParams.leiosHeaderPeriod
d_leiosHeaderPeriod_1246 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_leiosHeaderPeriod_1246 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosHeaderPeriod_420
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PParams.leiosMaxEBExUnits
d_leiosMaxEBExUnits_1248 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  AgdaAny
d_leiosMaxEBExUnits_1248 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosMaxEBExUnits_434
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PParams.leiosMaxEBSize
d_leiosMaxEBSize_1250 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_leiosMaxEBSize_1250 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosMaxEBSize_426
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PParams.leiosMaxEBTxsSize
d_leiosMaxEBTxsSize_1252 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_leiosMaxEBTxsSize_1252 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosMaxEBTxsSize_428
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PParams.leiosMaxRefScriptSizePerEB
d_leiosMaxRefScriptSizePerEB_1254 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_leiosMaxRefScriptSizePerEB_1254 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosMaxRefScriptSizePerEB_436
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PParams.leiosQuorumStakeThreshold
d_leiosQuorumStakeThreshold_1256 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_leiosQuorumStakeThreshold_1256 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosQuorumStakeThreshold_432
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PParams.leiosVotingPeriod
d_leiosVotingPeriod_1258 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_leiosVotingPeriod_1258 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosVotingPeriod_422
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PParams.maxBlockExUnits
d_maxBlockExUnits_1260 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  AgdaAny
d_maxBlockExUnits_1260 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxBlockExUnits_412
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PParams.maxBlockSize
d_maxBlockSize_1262 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxBlockSize_1262 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxBlockSize_404
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PParams.maxCollateralInputs
d_maxCollateralInputs_1264 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxCollateralInputs_1264 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxCollateralInputs_416
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PParams.maxHeaderSize
d_maxHeaderSize_1266 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxHeaderSize_1266 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxHeaderSize_408
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_1268 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxRefScriptSizePerBlock_1268 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxRefScriptSizePerBlock_460
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_1270 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxRefScriptSizePerTx_1270 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxRefScriptSizePerTx_458
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PParams.maxTxExUnits
d_maxTxExUnits_1272 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  AgdaAny
d_maxTxExUnits_1272 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxTxExUnits_410
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PParams.maxTxSize
d_maxTxSize_1274 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxTxSize_1274 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxTxSize_406
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PParams.maxValSize
d_maxValSize_1276 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxValSize_1276 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxValSize_414
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_1278 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_1278 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_minFeeRefScriptCoinsPerByte_456
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PParams.minPoolCost
d_minPoolCost_1280 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_minPoolCost_1280 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_minPoolCost_446
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PParams.minUTxOValue
d_minUTxOValue_1282 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_minUTxOValue_1282 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_minUTxOValue_466
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PParams.monetaryExpansion
d_monetaryExpansion_1284 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_1284 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_monetaryExpansion_448
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PParams.nopt
d_nopt_1286 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_nopt_1286 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_nopt_470
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PParams.poolDeposit
d_poolDeposit_1288 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_poolDeposit_1288 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_poolDeposit_444
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PParams.poolThresholds
d_poolThresholds_1290 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PoolThresholds_288
d_poolThresholds_1290 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_poolThresholds_478
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PParams.prices
d_prices_1292 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  AgdaAny
d_prices_1292 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_prices_454
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PParams.pv
d_pv_1294 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1294 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_pv_418
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_1296 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_1296 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_refScriptCostMultiplier_464
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PParams.refScriptCostStride
d_refScriptCostStride_1298 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_1298 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_refScriptCostStride_462
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PParams.treasuryCut
d_treasuryCut_1300 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_1300 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_treasuryCut_450
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PParamsDiff.UpdateT
d_UpdateT_1304 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsDiff_1724 ->
  ()
d_UpdateT_1304 = erased
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PParamsDiff.applyUpdate
d_applyUpdate_1306 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsDiff_1724 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312
d_applyUpdate_1306 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_applyUpdate_1740
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PParamsDiff.ppWF?
d_ppWF'63'_1308 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsDiff_1724 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_1308 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ppWF'63'_1748
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PParamsDiff.ppdWellFormed
d_ppdWellFormed_1310 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsDiff_1724 ->
  AgdaAny -> ()
d_ppdWellFormed_1310 = erased
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PParamsDiff.updateGroups
d_updateGroups_1312 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsDiff_1724 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamGroup_232]
d_updateGroups_1312 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_updateGroups_1742
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PParamsUpdate._?↗_
d__'63''8599'__1316 ::
  T_GovStructure_10 -> () -> Maybe AgdaAny -> AgdaAny -> AgdaAny
d__'63''8599'__1316 ~v0 = du__'63''8599'__1316
du__'63''8599'__1316 :: () -> Maybe AgdaAny -> AgdaAny -> AgdaAny
du__'63''8599'__1316 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du__'63''8599'__1470
      v1 v2
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PParamsUpdate._∪ˡᶜᵐ_
d__'8746''737''7580''7504'__1318 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_LanguageCostModels_680 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_LanguageCostModels_680 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_LanguageCostModels_680
d__'8746''737''7580''7504'__1318 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.C_mkLanguageCostModels_686
      (coe
         MAlonzo.Code.Axiom.Set.Map.du__'738'_570
         (coe
            MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_602
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1516
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'Language_470
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
                  (coe d_scriptStructure_928 (coe v0))))
            (coe
               MAlonzo.Code.Data.List.Base.du__'43''43'__32
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_languageCostModels_684
                  (coe v1))
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_languageCostModels_684
                  (coe v2)))))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PParamsUpdate.DecEq-PParamsUpdate
d_DecEq'45'PParamsUpdate_1320 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamsUpdate_1320 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_DecEq'45'PParamsUpdate_1722
      (coe d_epochStructure_840 (coe v0))
      (coe d_scriptStructure_928 (coe v0))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate
d_PParamsUpdate_1322 a0 = ()
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PParamsUpdate.applyPParamsUpdate
d_applyPParamsUpdate_1326 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312
d_applyPParamsUpdate_1326 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_applyPParamsUpdate_1524
      (coe d_scriptStructure_928 (coe v0))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PParamsUpdate.modifiedUpdateGroups
d_modifiedUpdateGroups_1328 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamGroup_232]
d_modifiedUpdateGroups_1328 ~v0 = du_modifiedUpdateGroups_1328
du_modifiedUpdateGroups_1328 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamGroup_232]
du_modifiedUpdateGroups_1328
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_modifiedUpdateGroups_1454
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PParamsUpdate.modifiesEconomicGroup
d_modifiesEconomicGroup_1330 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Bool
d_modifiesEconomicGroup_1330 ~v0 = du_modifiesEconomicGroup_1330
du_modifiesEconomicGroup_1330 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Bool
du_modifiesEconomicGroup_1330
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_modifiesEconomicGroup_1070
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PParamsUpdate.modifiesGovernanceGroup
d_modifiesGovernanceGroup_1332 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Bool
d_modifiesGovernanceGroup_1332 ~v0
  = du_modifiesGovernanceGroup_1332
du_modifiesGovernanceGroup_1332 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Bool
du_modifiesGovernanceGroup_1332
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_modifiesGovernanceGroup_1262
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PParamsUpdate.modifiesNetworkGroup
d_modifiesNetworkGroup_1334 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Bool
d_modifiesNetworkGroup_1334 ~v0 = du_modifiesNetworkGroup_1334
du_modifiesNetworkGroup_1334 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Bool
du_modifiesNetworkGroup_1334
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_modifiesNetworkGroup_974
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PParamsUpdate.modifiesSecurityGroup
d_modifiesSecurityGroup_1336 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Bool
d_modifiesSecurityGroup_1336 ~v0 = du_modifiesSecurityGroup_1336
du_modifiesSecurityGroup_1336 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Bool
du_modifiesSecurityGroup_1336
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_modifiesSecurityGroup_1358
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PParamsUpdate.modifiesTechnicalGroup
d_modifiesTechnicalGroup_1338 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Bool
d_modifiesTechnicalGroup_1338 ~v0 = du_modifiesTechnicalGroup_1338
du_modifiesTechnicalGroup_1338 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Bool
du_modifiesTechnicalGroup_1338
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_modifiesTechnicalGroup_1166
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PParamsUpdate.paramsUpdateWellFormed
d_paramsUpdateWellFormed_1340 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  ()
d_paramsUpdateWellFormed_1340 = erased
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PParamsUpdate.paramsUpdateWellFormed?
d_paramsUpdateWellFormed'63'_1342 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_paramsUpdateWellFormed'63'_1342 v0
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'8594''45'dec__106
      (coe
         MAlonzo.Code.Class.Decidable.Core.d_dec_16
         (coe
            MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1720
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
            (coe
               MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
               (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))
            (coe
               MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe (0 :: Integer)))
            (coe
               MAlonzo.Code.Axiom.Set.du_fromList_456
               (coe
                  MAlonzo.Code.Axiom.Set.d_th_1516
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
               (coe
                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxBlockSize_776
                     (coe v0))
                  (coe
                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxTxSize_778
                        (coe v0))
                     (coe
                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                        (coe
                           MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxHeaderSize_780
                           (coe v0))
                        (coe
                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxValSize_782
                              (coe v0))
                           (coe
                              MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_coinsPerUTxOByte_824
                                 (coe v0))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_poolDeposit_816
                                    (coe v0))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_collateralPercentage_846
                                       (coe v0))
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ccMaxTermLength_864
                                          (coe v0))
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_govActionLifetime_854
                                             (coe v0))
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_govActionDeposit_856
                                                (coe v0))
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepDeposit_858
                                                   (coe v0))
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))))))))))
      (coe
         MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
         (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
         (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PParamsUpdate.≡-update
d_'8801''45'update_1344 ::
  T_GovStructure_10 ->
  () ->
  Maybe AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8801''45'update_1344 ~v0 = du_'8801''45'update_1344
du_'8801''45'update_1344 ::
  () ->
  Maybe AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
du_'8801''45'update_1344 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_'8801''45'update_1484
      v1
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.Emax
d_Emax_1348 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe AgdaAny
d_Emax_1348 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_Emax_842
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.a
d_a_1350 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe Integer
d_a_1350 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_a_810 (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.a0
d_a0_1352 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_1352 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_a0_840
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.b
d_b_1354 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe Integer
d_b_1354 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_b_812 (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.ccMaxTermLength
d_ccMaxTermLength_1356 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe Integer
d_ccMaxTermLength_1356 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ccMaxTermLength_864
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.ccMinSize
d_ccMinSize_1358 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe Integer
d_ccMinSize_1358 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ccMinSize_862
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.coinsPerUTxOByte
d_coinsPerUTxOByte_1360 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe Integer
d_coinsPerUTxOByte_1360 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_coinsPerUTxOByte_824
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.collateralPercentage
d_collateralPercentage_1362 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe Integer
d_collateralPercentage_1362 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_collateralPercentage_846
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.costmdls
d_costmdls_1364 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe
    MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_LanguageCostModels_680
d_costmdls_1364 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_costmdls_848
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.drepActivity
d_drepActivity_1366 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe AgdaAny
d_drepActivity_1366 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepActivity_860
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.drepDeposit
d_drepDeposit_1368 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe Integer
d_drepDeposit_1368 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepDeposit_858
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.drepThresholds
d_drepThresholds_1370 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe
    MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_244
d_drepThresholds_1370 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepThresholds_850
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.govActionDeposit
d_govActionDeposit_1372 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe Integer
d_govActionDeposit_1372 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_govActionDeposit_856
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.govActionLifetime
d_govActionLifetime_1374 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe Integer
d_govActionLifetime_1374 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_govActionLifetime_854
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.keyDeposit
d_keyDeposit_1376 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe Integer
d_keyDeposit_1376 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_keyDeposit_814
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.leiosCommitteeSize
d_leiosCommitteeSize_1378 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe Integer
d_leiosCommitteeSize_1378 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosCommitteeSize_802
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.leiosDiffusionPeriod
d_leiosDiffusionPeriod_1380 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe Integer
d_leiosDiffusionPeriod_1380 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosDiffusionPeriod_796
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.leiosHeaderPeriod
d_leiosHeaderPeriod_1382 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe Integer
d_leiosHeaderPeriod_1382 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosHeaderPeriod_792
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.leiosMaxEBExUnits
d_leiosMaxEBExUnits_1384 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe AgdaAny
d_leiosMaxEBExUnits_1384 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosMaxEBExUnits_806
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.leiosMaxEBSize
d_leiosMaxEBSize_1386 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe Integer
d_leiosMaxEBSize_1386 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosMaxEBSize_798
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.leiosMaxEBTxsSize
d_leiosMaxEBTxsSize_1388 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe Integer
d_leiosMaxEBTxsSize_1388 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosMaxEBTxsSize_800
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.leiosMaxRefScriptSizePerEB
d_leiosMaxRefScriptSizePerEB_1390 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe Integer
d_leiosMaxRefScriptSizePerEB_1390 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosMaxRefScriptSizePerEB_808
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.leiosQuorumStakeThreshold
d_leiosQuorumStakeThreshold_1392 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_leiosQuorumStakeThreshold_1392 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosQuorumStakeThreshold_804
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.leiosVotingPeriod
d_leiosVotingPeriod_1394 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe Integer
d_leiosVotingPeriod_1394 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosVotingPeriod_794
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.maxBlockExUnits
d_maxBlockExUnits_1396 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe AgdaAny
d_maxBlockExUnits_1396 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxBlockExUnits_788
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.maxBlockSize
d_maxBlockSize_1398 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe Integer
d_maxBlockSize_1398 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxBlockSize_776
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.maxCollateralInputs
d_maxCollateralInputs_1400 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe Integer
d_maxCollateralInputs_1400 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxCollateralInputs_784
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.maxHeaderSize
d_maxHeaderSize_1402 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe Integer
d_maxHeaderSize_1402 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxHeaderSize_780
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_1404 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe Integer
d_maxRefScriptSizePerBlock_1404 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxRefScriptSizePerBlock_832
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_1406 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe Integer
d_maxRefScriptSizePerTx_1406 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxRefScriptSizePerTx_830
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.maxTxExUnits
d_maxTxExUnits_1408 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe AgdaAny
d_maxTxExUnits_1408 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxTxExUnits_786
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.maxTxSize
d_maxTxSize_1410 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe Integer
d_maxTxSize_1410 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxTxSize_778
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.maxValSize
d_maxValSize_1412 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe Integer
d_maxValSize_1412 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxValSize_782
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_1414 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_1414 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_minFeeRefScriptCoinsPerByte_828
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.minPoolCost
d_minPoolCost_1416 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe Integer
d_minPoolCost_1416 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_minPoolCost_818
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.minUTxOValue
d_minUTxOValue_1418 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe Integer
d_minUTxOValue_1418 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_minUTxOValue_838
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.monetaryExpansion
d_monetaryExpansion_1420 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_1420 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_monetaryExpansion_820
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.nopt
d_nopt_1422 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe Integer
d_nopt_1422 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_nopt_844
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.poolDeposit
d_poolDeposit_1424 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe Integer
d_poolDeposit_1424 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_poolDeposit_816
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.poolThresholds
d_poolThresholds_1426 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe
    MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PoolThresholds_288
d_poolThresholds_1426 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_poolThresholds_852
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.prices
d_prices_1428 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe AgdaAny
d_prices_1428 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_prices_826
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.pv
d_pv_1430 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1430 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_pv_790
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.refScriptCostMultiplier
d_refScriptCostMultiplier_1432 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_1432 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_refScriptCostMultiplier_836
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.refScriptCostStride
d_refScriptCostStride_1434 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_1434 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_refScriptCostStride_834
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.treasuryCut
d_treasuryCut_1436 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_1436 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_treasuryCut_822
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PoolThresholds.Q1
d_Q1_1440 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PoolThresholds_288 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q1_1440 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_Q1_300
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PoolThresholds.Q2a
d_Q2a_1442 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PoolThresholds_288 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2a_1442 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_Q2a_302
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PoolThresholds.Q2b
d_Q2b_1444 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PoolThresholds_288 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2b_1444 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_Q2b_304
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PoolThresholds.Q4
d_Q4_1446 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PoolThresholds_288 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q4_1446 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_Q4_306
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PoolThresholds.Q5
d_Q5_1448 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PoolThresholds_288 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q5_1448 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_Q5_308
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure.govParams
d_govParams_1450 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_GovParams_1758
d_govParams_1450 v0
  = case coe v0 of
      C_constructor_1680 v3 v4 v5 v6 v7 v8 v9 v10 -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.DecEq-UpdT
d_DecEq'45'UpdT_1454 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_1454 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_DecEq'45'UpdT_1790
      (coe d_govParams_1450 (coe v0))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.UpdateT
d_UpdateT_1456 :: T_GovStructure_10 -> ()
d_UpdateT_1456 = erased
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.applyUpdate
d_applyUpdate_1458 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312
d_applyUpdate_1458 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_applyUpdate_1740
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ppUpd_1776
         (coe d_govParams_1450 (coe v0)))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.ppUpd
d_ppUpd_1460 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsDiff_1724
d_ppUpd_1460 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ppUpd_1776
      (coe d_govParams_1450 (coe v0))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.ppWF?
d_ppWF'63'_1462 ::
  T_GovStructure_10 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_1462 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ppWF'63'_1748
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ppUpd_1776
         (coe d_govParams_1450 (coe v0)))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.ppdWellFormed
d_ppdWellFormed_1464 :: T_GovStructure_10 -> AgdaAny -> ()
d_ppdWellFormed_1464 = erased
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.updateGroups
d_updateGroups_1466 ::
  T_GovStructure_10 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamGroup_232]
d_updateGroups_1466 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_updateGroups_1742
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ppUpd_1776
         (coe d_govParams_1450 (coe v0)))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.Addr
d_Addr_1470 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_Addr_1470 = erased
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.AttrSizeOf
d_AttrSizeOf_1474 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasAttrSize_214 ->
  AgdaAny -> Integer
d_AttrSizeOf_1474 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_AttrSizeOf_222
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.BaseAddr
d_BaseAddr_1476 a0 a1 a2 a3 = ()
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.BootstrapAddr
d_BootstrapAddr_1480 a0 a1 a2 a3 = ()
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.Credential
d_Credential_1484 a0 a1 a2 a3 = ()
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.CredentialOf
d_CredentialOf_1486 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasCredential_30 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_CredentialOf_1486 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_CredentialOf_38
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.Dec-isScript
d_Dec'45'isScript_1488 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isScript_1488 ~v0 ~v1 ~v2 ~v3 = du_Dec'45'isScript_1488
du_Dec'45'isScript_1488 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'isScript_1488
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Dec'45'isScript_308
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.Dec-isVKey
d_Dec'45'isVKey_1490 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isVKey_1490 ~v0 ~v1 ~v2 ~v3 = du_Dec'45'isVKey_1490
du_Dec'45'isVKey_1490 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'isVKey_1490
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Dec'45'isVKey_294
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.DecEq-BaseAddr
d_DecEq'45'BaseAddr_1492 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BaseAddr_1492 ~v0 v1 v2 v3
  = du_DecEq'45'BaseAddr_1492 v1 v2 v3
du_DecEq'45'BaseAddr_1492 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'BaseAddr_1492 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'BaseAddr_346
      (coe v0) (coe v1) (coe v2)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.DecEq-BootstrapAddr
d_DecEq'45'BootstrapAddr_1494 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BootstrapAddr_1494 ~v0 v1 v2 v3
  = du_DecEq'45'BootstrapAddr_1494 v1 v2 v3
du_DecEq'45'BootstrapAddr_1494 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'BootstrapAddr_1494 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'BootstrapAddr_348
      (coe v0) (coe v1) (coe v2)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.DecEq-Credential
d_DecEq'45'Credential_1496 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Credential_1496 ~v0 ~v1 v2 v3
  = du_DecEq'45'Credential_1496 v2 v3
du_DecEq'45'Credential_1496 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'Credential_1496 v0 v1
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
      (coe v0) (coe v1)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.DecEq-RewardAddress
d_DecEq'45'RewardAddress_1498 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'RewardAddress_1498 ~v0 v1 v2 v3
  = du_DecEq'45'RewardAddress_1498 v1 v2 v3
du_DecEq'45'RewardAddress_1498 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'RewardAddress_1498 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'RewardAddress_350
      (coe v0) (coe v1) (coe v2)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.HasAttrSize
d_HasAttrSize_1500 a0 a1 a2 a3 a4 a5 = ()
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.HasAttrSize-BootstrapAddr
d_HasAttrSize'45'BootstrapAddr_1504 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasAttrSize_214
d_HasAttrSize'45'BootstrapAddr_1504 ~v0 ~v1 ~v2 ~v3
  = du_HasAttrSize'45'BootstrapAddr_1504
du_HasAttrSize'45'BootstrapAddr_1504 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasAttrSize_214
du_HasAttrSize'45'BootstrapAddr_1504
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasAttrSize'45'BootstrapAddr_238
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.HasCredential
d_HasCredential_1506 a0 a1 a2 a3 a4 a5 = ()
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.HasCredential-RewardAddress
d_HasCredential'45'RewardAddress_1510 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasCredential_30
d_HasCredential'45'RewardAddress_1510 ~v0 ~v1 ~v2 ~v3
  = du_HasCredential'45'RewardAddress_1510
du_HasCredential'45'RewardAddress_1510 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasCredential_30
du_HasCredential'45'RewardAddress_1510
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasCredential'45'RewardAddress_236
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.HasMaybeNetworkId
d_HasMaybeNetworkId_1512 a0 a1 a2 a3 a4 a5 = ()
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.HasNetworkId
d_HasNetworkId_1516 a0 a1 a2 a3 a4 a5 = ()
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.HasNetworkId-BaseAddr
d_HasNetworkId'45'BaseAddr_1520 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_154
d_HasNetworkId'45'BaseAddr_1520 ~v0 ~v1 ~v2 ~v3
  = du_HasNetworkId'45'BaseAddr_1520
du_HasNetworkId'45'BaseAddr_1520 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_154
du_HasNetworkId'45'BaseAddr_1520
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasNetworkId'45'BaseAddr_230
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.HasNetworkId-BootstrapAddr
d_HasNetworkId'45'BootstrapAddr_1522 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_154
d_HasNetworkId'45'BootstrapAddr_1522 ~v0 ~v1 ~v2 ~v3
  = du_HasNetworkId'45'BootstrapAddr_1522
du_HasNetworkId'45'BootstrapAddr_1522 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_154
du_HasNetworkId'45'BootstrapAddr_1522
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasNetworkId'45'BootstrapAddr_232
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.HasNetworkId-RewardAddress
d_HasNetworkId'45'RewardAddress_1524 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_154
d_HasNetworkId'45'RewardAddress_1524 ~v0 ~v1 ~v2 ~v3
  = du_HasNetworkId'45'RewardAddress_1524
du_HasNetworkId'45'RewardAddress_1524 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_154
du_HasNetworkId'45'RewardAddress_1524
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasNetworkId'45'RewardAddress_234
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.HasRewardAddress
d_HasRewardAddress_1526 a0 a1 a2 a3 a4 a5 = ()
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.HasWithdrawals
d_HasWithdrawals_1530 a0 a1 a2 a3 a4 a5 = ()
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.IsBootstrapAddr
d_IsBootstrapAddr_1534 a0 a1 a2 a3 a4 = ()
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.IsBootstrapAddr?
d_IsBootstrapAddr'63'_1536 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_IsBootstrapAddr'63'_1536 ~v0 ~v1 ~v2 ~v3
  = du_IsBootstrapAddr'63'_1536
du_IsBootstrapAddr'63'_1536 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_IsBootstrapAddr'63'_1536
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_IsBootstrapAddr'63'_322
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.IsKeyHashObj
d_IsKeyHashObj_1540 a0 a1 a2 a3 a4 = ()
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.IsKeyHashObj?
d_IsKeyHashObj'63'_1542 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_IsKeyHashObj'63'_1542 ~v0 ~v1 ~v2 ~v3 = du_IsKeyHashObj'63'_1542
du_IsKeyHashObj'63'_1542 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_IsKeyHashObj'63'_1542
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_IsKeyHashObj'63'_56
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.MaybeNetworkIdOf
d_MaybeNetworkIdOf_1546 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasMaybeNetworkId_174 ->
  AgdaAny -> Maybe AgdaAny
d_MaybeNetworkIdOf_1546 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_MaybeNetworkIdOf_182
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.NetworkIdOf
d_NetworkIdOf_1548 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_154 ->
  AgdaAny -> AgdaAny
d_NetworkIdOf_1548 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_NetworkIdOf_162
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.RewardAddress
d_RewardAddress_1550 a0 a1 a2 a3 = ()
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.RewardAddressOf
d_RewardAddressOf_1554 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasRewardAddress_134 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116
d_RewardAddressOf_1554 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_RewardAddressOf_142
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.ScriptAddr
d_ScriptAddr_1558 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_ScriptAddr_1558 = erased
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.ScriptBaseAddr
d_ScriptBaseAddr_1560 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_ScriptBaseAddr_1560 = erased
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.ScriptBootstrapAddr
d_ScriptBootstrapAddr_1562 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_ScriptBootstrapAddr_1562 = erased
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.Show-Credential
d_Show'45'Credential_1566 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Credential_1566 ~v0 ~v1 ~v2 ~v3
  = du_Show'45'Credential_1566
du_Show'45'Credential_1566 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'Credential_1566 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Show'45'Credential_362
      v1 v2
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.Show-Credential×Coin
d_Show'45'Credential'215'Coin_1568 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Credential'215'Coin_1568 ~v0 ~v1 ~v2 ~v3
  = du_Show'45'Credential'215'Coin_1568
du_Show'45'Credential'215'Coin_1568 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'Credential'215'Coin_1568 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Show'45'Credential'215'Coin_366
      v1 v2
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.Show-RewardAddress
d_Show'45'RewardAddress_1570 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'RewardAddress_1570 ~v0 ~v1 ~v2 ~v3
  = du_Show'45'RewardAddress_1570
du_Show'45'RewardAddress_1570 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'RewardAddress_1570
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Show'45'RewardAddress_364
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.VKeyAddr
d_VKeyAddr_1572 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_VKeyAddr_1572 = erased
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.VKeyBaseAddr
d_VKeyBaseAddr_1574 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_VKeyBaseAddr_1574 = erased
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.VKeyBootstrapAddr
d_VKeyBootstrapAddr_1576 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_VKeyBootstrapAddr_1576 = erased
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.Withdrawals
d_Withdrawals_1580 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_Withdrawals_1580 = erased
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.WithdrawalsOf
d_WithdrawalsOf_1582 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_194 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_WithdrawalsOf_1582 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_WithdrawalsOf_202
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.getScriptHash
d_getScriptHash_1584 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_isScript_78 ->
  AgdaAny
d_getScriptHash_1584 ~v0 ~v1 ~v2 ~v3 = du_getScriptHash_1584
du_getScriptHash_1584 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_isScript_78 ->
  AgdaAny
du_getScriptHash_1584
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_getScriptHash_340
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.isBootstrapAddr
d_isBootstrapAddr_1586 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_BootstrapAddr_100
d_isBootstrapAddr_1586 ~v0 ~v1 ~v2 ~v3 = du_isBootstrapAddr_1586
du_isBootstrapAddr_1586 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_BootstrapAddr_100
du_isBootstrapAddr_1586
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_isBootstrapAddr_290
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.isKeyHash
d_isKeyHash_1588 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  ()
d_isKeyHash_1588 = erased
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.isKeyHashObj
d_isKeyHashObj_1590 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe AgdaAny
d_isKeyHashObj_1590 ~v0 ~v1 ~v2 ~v3 = du_isKeyHashObj_1590
du_isKeyHashObj_1590 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe AgdaAny
du_isKeyHashObj_1590
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_isKeyHashObj_46
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.isKeyHashObjᵇ
d_isKeyHashObj'7495'_1592 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Bool
d_isKeyHashObj'7495'_1592 ~v0 ~v1 ~v2 ~v3
  = du_isKeyHashObj'7495'_1592
du_isKeyHashObj'7495'_1592 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Bool
du_isKeyHashObj'7495'_1592
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_isKeyHashObj'7495'_62
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.isScript
d_isScript_1594 a0 a1 a2 a3 a4 = ()
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.isScriptAddr
d_isScriptAddr_1596 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isScriptAddr_1596 = erased
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.isScriptObj
d_isScriptObj_1598 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe AgdaAny
d_isScriptObj_1598 ~v0 ~v1 ~v2 ~v3 = du_isScriptObj_1598
du_isScriptObj_1598 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe AgdaAny
du_isScriptObj_1598
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_isScriptObj_68
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.isScriptRewardAddress
d_isScriptRewardAddress_1600 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116 ->
  ()
d_isScriptRewardAddress_1600 = erased
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.isVKey
d_isVKey_1602 a0 a1 a2 a3 a4 = ()
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.isVKeyAddr
d_isVKeyAddr_1604 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isVKeyAddr_1604 = erased
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.netId
d_netId_1606 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
d_netId_1606 ~v0 ~v1 ~v2 ~v3 = du_netId_1606
du_netId_1606 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
du_netId_1606
  = coe MAlonzo.Code.Ledger.Core.Specification.Address.du_netId_266
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.payCred
d_payCred_1608 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_payCred_1608 ~v0 ~v1 ~v2 ~v3 = du_payCred_1608
du_payCred_1608 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
du_payCred_1608
  = coe MAlonzo.Code.Ledger.Core.Specification.Address.du_payCred_262
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.stakeCred
d_stakeCred_1610 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_stakeCred_1610 ~v0 ~v1 ~v2 ~v3 = du_stakeCred_1610
du_stakeCred_1610 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
du_stakeCred_1610
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_stakeCred_264
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.BaseAddr.net
d_net_1614 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BaseAddr_84 ->
  AgdaAny
d_net_1614 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_net_92 (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.BaseAddr.pay
d_pay_1616 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BaseAddr_84 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_pay_1616 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_pay_94 (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.BaseAddr.stake
d_stake_1618 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BaseAddr_84 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_stake_1618 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_stake_96 (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.BootstrapAddr.attrsSize
d_attrsSize_1622 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BootstrapAddr_100 ->
  Integer
d_attrsSize_1622 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_attrsSize_112
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.BootstrapAddr.net
d_net_1624 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BootstrapAddr_100 ->
  AgdaAny
d_net_1624 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_net_108 (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.BootstrapAddr.pay
d_pay_1626 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BootstrapAddr_100 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_pay_1626 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_pay_110 (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.HasAttrSize.AttrSizeOf
d_AttrSizeOf_1636 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasAttrSize_214 ->
  AgdaAny -> Integer
d_AttrSizeOf_1636 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_AttrSizeOf_222
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.HasCredential.CredentialOf
d_CredentialOf_1640 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasCredential_30 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_CredentialOf_1640 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_CredentialOf_38
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.HasMaybeNetworkId.MaybeNetworkIdOf
d_MaybeNetworkIdOf_1644 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasMaybeNetworkId_174 ->
  AgdaAny -> Maybe AgdaAny
d_MaybeNetworkIdOf_1644 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_MaybeNetworkIdOf_182
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.HasNetworkId.NetworkIdOf
d_NetworkIdOf_1648 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_154 ->
  AgdaAny -> AgdaAny
d_NetworkIdOf_1648 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_NetworkIdOf_162
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.HasRewardAddress.RewardAddressOf
d_RewardAddressOf_1652 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasRewardAddress_134 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116
d_RewardAddressOf_1652 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_RewardAddressOf_142
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.HasWithdrawals.WithdrawalsOf
d_WithdrawalsOf_1656 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_194 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_WithdrawalsOf_1656 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_WithdrawalsOf_202
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.RewardAddress.net
d_net_1668 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116 ->
  AgdaAny
d_net_1668 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_net_122 (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.RewardAddress.stake
d_stake_1670 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_stake_1670 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_stake_124 (coe v0)
