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
  = C_constructor_1588 MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
                       MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
                       MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140
                       MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22
                       MAlonzo.Code.Ledger.Core.Specification.Epoch.T_GlobalConstants_292
                       MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568
                       MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_GovParams_1524
-- Ledger.Dijkstra.Specification.Gov.Base._.GovParams
d_GovParams_350 a0 a1 a2 a3 a4 a5 a6 a7 = ()
-- Ledger.Dijkstra.Specification.Gov.Base._.GovParams.DecEq-UpdT
d_DecEq'45'UpdT_440 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_GovParams_1524 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_440 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_DecEq'45'UpdT_1556
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base._.GovParams.ppUpd
d_ppUpd_446 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_GovParams_1524 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsDiff_1490
d_ppUpd_446 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ppUpd_1542
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure.TxId
d_TxId_686 :: T_GovStructure_10 -> ()
d_TxId_686 = erased
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure.DocHash
d_DocHash_688 :: T_GovStructure_10 -> ()
d_DocHash_688 = erased
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure.DecEq-TxId
d_DecEq'45'TxId_690 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'TxId_690 v0
  = case coe v0 of
      C_constructor_1588 v3 v4 v5 v6 v7 v8 v9 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure.DecEq-DocHash
d_DecEq'45'DocHash_692 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DocHash_692 v0
  = case coe v0 of
      C_constructor_1588 v3 v4 v5 v6 v7 v8 v9 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure.cryptoStructure
d_cryptoStructure_694 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140
d_cryptoStructure_694 v0
  = case coe v0 of
      C_constructor_1588 v3 v4 v5 v6 v7 v8 v9 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._._<ᵏʰ_
d__'60''7503''688'__698 ::
  T_GovStructure_10 -> AgdaAny -> AgdaAny -> ()
d__'60''7503''688'__698 = erased
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.<ᵏʰ-isSTO
d_'60''7503''688''45'isSTO_700 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictTotalOrder_624
d_'60''7503''688''45'isSTO_700 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_'60''7503''688''45'isSTO_300
      (coe d_cryptoStructure_694 (coe v0))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.BlsPoP
d_BlsPoP_702 :: T_GovStructure_10 -> ()
d_BlsPoP_702 = erased
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.BlsSig
d_BlsSig_704 :: T_GovStructure_10 -> ()
d_BlsSig_704 = erased
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.BlsVKey
d_BlsVKey_706 :: T_GovStructure_10 -> ()
d_BlsVKey_706 = erased
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.Dec-<ᵏʰ
d_Dec'45''60''7503''688'_708 ::
  T_GovStructure_10 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45''60''7503''688'_708 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Dec'45''60''7503''688'_310
      (coe d_cryptoStructure_694 (coe v0))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.Dec-isSigned
d_Dec'45'isSigned_710 ::
  T_GovStructure_10 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isSigned_710 v0
  = let v1 = d_cryptoStructure_694 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Dec'45'isSigned_120
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_236 (coe v1)))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.Dec-isSignedBy
d_Dec'45'isSignedBy_712 ::
  T_GovStructure_10 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isSignedBy_712 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Dec'45'isSignedBy_320
      (coe d_cryptoStructure_694 (coe v0))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.Dec-isSignedByAggregate
d_Dec'45'isSignedByAggregate_714 ::
  T_GovStructure_10 ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isSignedByAggregate_714 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Dec'45'isSignedByAggregate_322
      (coe d_cryptoStructure_694 (coe v0))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.Dec-isValidPoP
d_Dec'45'isValidPoP_716 ::
  T_GovStructure_10 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isValidPoP_716 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Dec'45'isValidPoP_318
      (coe d_cryptoStructure_694 (coe v0))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.DecEq-BlsPoP
d_DecEq'45'BlsPoP_718 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BlsPoP_718 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'BlsPoP_316
      (coe d_cryptoStructure_694 (coe v0))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.DecEq-BlsSig
d_DecEq'45'BlsSig_720 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BlsSig_720 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'BlsSig_314
      (coe d_cryptoStructure_694 (coe v0))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.DecEq-BlsVKey
d_DecEq'45'BlsVKey_722 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BlsVKey_722 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'BlsVKey_312
      (coe d_cryptoStructure_694 (coe v0))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.DecEq-EBHash
d_DecEq'45'EBHash_724 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'EBHash_724 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'EBHash_324
      (coe d_cryptoStructure_694 (coe v0))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.DecEq-RBHeaderHash
d_DecEq'45'RBHeaderHash_726 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'RBHeaderHash_726 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'RBHeaderHash_328
      (coe d_cryptoStructure_694 (coe v0))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.DecEq-ScriptHash
d_DecEq'45'ScriptHash_728 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ScriptHash_728 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_268
      (coe d_cryptoStructure_694 (coe v0))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.DecEq-Ser
d_DecEq'45'Ser_730 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Ser_730 v0
  = let v1 = d_cryptoStructure_694 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'Ser_136
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_236 (coe v1)))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.DecEq-Sig
d_DecEq'45'Sig_732 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Sig_732 v0
  = let v1 = d_cryptoStructure_694 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'Sig_134
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_236 (coe v1)))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.DecEq-THash
d_DecEq'45'THash_734 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_734 v0
  = let v1 = d_cryptoStructure_694 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_264 (coe v1)))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.DecEq-TxRefHash
d_DecEq'45'TxRefHash_736 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'TxRefHash_736 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'TxRefHash_326
      (coe d_cryptoStructure_694 (coe v0))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.DecEq-VRF
d_DecEq'45'VRF_738 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'VRF_738 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'VRF_284
      (coe d_cryptoStructure_694 (coe v0))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.EBHash
d_EBHash_740 :: T_GovStructure_10 -> ()
d_EBHash_740 = erased
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.THash
d_THash_742 :: T_GovStructure_10 -> ()
d_THash_742 = erased
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.KeyPair
d_KeyPair_744 :: T_GovStructure_10 -> ()
d_KeyPair_744 = erased
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.RBHeaderHash
d_RBHeaderHash_746 :: T_GovStructure_10 -> ()
d_RBHeaderHash_746 = erased
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.SKey
d_SKey_748 :: T_GovStructure_10 -> ()
d_SKey_748 = erased
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.ScriptHash
d_ScriptHash_750 :: T_GovStructure_10 -> ()
d_ScriptHash_750 = erased
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.Ser
d_Ser_752 :: T_GovStructure_10 -> ()
d_Ser_752 = erased
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.Show-ScriptHash
d_Show'45'ScriptHash_754 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ScriptHash_754 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'ScriptHash_270
      (coe d_cryptoStructure_694 (coe v0))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.Show-THash
d_Show'45'THash_756 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_756 v0
  = let v1 = d_cryptoStructure_694 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_264 (coe v1)))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.Sig
d_Sig_758 :: T_GovStructure_10 -> ()
d_Sig_758 = erased
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.T-Hashable
d_T'45'Hashable_760 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_T'45'Hashable_760 v0
  = let v1 = d_cryptoStructure_694 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_264 (coe v1)))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.TxRefHash
d_TxRefHash_762 :: T_GovStructure_10 -> ()
d_TxRefHash_762 = erased
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.VKey
d_VKey_764 :: T_GovStructure_10 -> ()
d_VKey_764 = erased
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.VRF
d_VRF_766 :: T_GovStructure_10 -> ()
d_VRF_766 = erased
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.hashEBRefs
d_hashEBRefs_768 ::
  T_GovStructure_10 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> AgdaAny
d_hashEBRefs_768 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_hashEBRefs_308
      (coe d_cryptoStructure_694 (coe v0))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.isKeyPair
d_isKeyPair_770 :: T_GovStructure_10 -> AgdaAny -> AgdaAny -> ()
d_isKeyPair_770 = erased
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.isSigned
d_isSigned_772 ::
  T_GovStructure_10 -> AgdaAny -> AgdaAny -> AgdaAny -> ()
d_isSigned_772 = erased
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.isSigned-correct
d_isSigned'45'correct_774 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_isSigned'45'correct_774 v0
  = let v1 = d_cryptoStructure_694 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_isSigned'45'correct_132
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_236 (coe v1)))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.isSignedBy
d_isSignedBy_776 ::
  T_GovStructure_10 -> AgdaAny -> AgdaAny -> AgdaAny -> ()
d_isSignedBy_776 = erased
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.isSignedByAggregate
d_isSignedByAggregate_778 ::
  T_GovStructure_10 -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_isSignedByAggregate_778 = erased
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.isValidPoP
d_isValidPoP_780 :: T_GovStructure_10 -> AgdaAny -> AgdaAny -> ()
d_isValidPoP_780 = erased
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.khs
d_khs_782 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
d_khs_782 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_264
      (coe d_cryptoStructure_694 (coe v0))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.pkk
d_pkk_784 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_PKKScheme_60
d_pkk_784 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_236
      (coe d_cryptoStructure_694 (coe v0))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.sign
d_sign_786 :: T_GovStructure_10 -> AgdaAny -> AgdaAny -> AgdaAny
d_sign_786 v0
  = let v1 = d_cryptoStructure_694 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_sign_112
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_236 (coe v1)))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure.epochStructure
d_epochStructure_788 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22
d_epochStructure_788 v0
  = case coe v0 of
      C_constructor_1588 v3 v4 v5 v6 v7 v8 v9 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._._+ᵉ_
d__'43''7497'__792 ::
  T_GovStructure_10 -> Integer -> AgdaAny -> AgdaAny
d__'43''7497'__792 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d__'43''7497'__100
      (coe d_epochStructure_788 (coe v0))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._._+ᵉ'_
d__'43''7497'''__794 ::
  T_GovStructure_10 -> Integer -> AgdaAny -> AgdaAny
d__'43''7497'''__794 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d__'43''7497'''__102
      (coe d_epochStructure_788 (coe v0))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.+ᵉ≡+ᵉ'
d_'43''7497''8801''43''7497'''_796 ::
  T_GovStructure_10 ->
  Integer ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''7497''8801''43''7497'''_796 = erased
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.DecEq-Epoch
d_DecEq'45'Epoch_798 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Epoch_798 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Epoch_80
      (coe d_epochStructure_788 (coe v0))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.DecEq-Slot
d_DecEq'45'Slot_800 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Slot_800 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Slot_88
      (coe d_epochStructure_788 (coe v0))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.DecPo-Slot
d_DecPo'45'Slot_802 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.HasOrder.Core.T_HasDecPartialOrder_262
d_DecPo'45'Slot_802 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecPo'45'Slot_86
      (coe d_epochStructure_788 (coe v0))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.Epoch
d_Epoch_804 :: T_GovStructure_10 -> ()
d_Epoch_804 = erased
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.Number-Epoch
d_Number'45'Epoch_806 ::
  T_GovStructure_10 -> MAlonzo.Code.Agda.Builtin.FromNat.T_Number_10
d_Number'45'Epoch_806 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Number'45'Epoch_286
      (coe d_epochStructure_788 (coe v0))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.RandomnessStabilisationWindow
d_RandomnessStabilisationWindow_808 :: T_GovStructure_10 -> AgdaAny
d_RandomnessStabilisationWindow_808 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_RandomnessStabilisationWindow_94
      (coe d_epochStructure_788 (coe v0))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.Show-Epoch
d_Show'45'Epoch_810 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Epoch_810 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Show'45'Epoch_82
      (coe d_epochStructure_788 (coe v0))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.Slot
d_Slot_812 :: T_GovStructure_10 -> ()
d_Slot_812 = erased
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.Slotʳ
d_Slot'691'_814 ::
  T_GovStructure_10 -> MAlonzo.Code.Algebra.Bundles.T_Semiring_2356
d_Slot'691'_814 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Slot'691'_76
      (coe d_epochStructure_788 (coe v0))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.StabilityWindow
d_StabilityWindow_816 :: T_GovStructure_10 -> AgdaAny
d_StabilityWindow_816 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_StabilityWindow_96
      (coe d_epochStructure_788 (coe v0))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.addEpoch
d_addEpoch_818 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addEpoch_818 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_addEpoch_280
      (coe d_epochStructure_788 (coe v0))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.addSlot
d_addSlot_820 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addSlot_820 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_addSlot_278
      (coe d_epochStructure_788 (coe v0))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.e<sucᵉ
d_e'60'suc'7497'_822 :: T_GovStructure_10 -> AgdaAny -> AgdaAny
d_e'60'suc'7497'_822 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_e'60'suc'7497'_120
      (coe d_epochStructure_788 (coe v0))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.epoch
d_epoch_824 :: T_GovStructure_10 -> AgdaAny -> AgdaAny
d_epoch_824 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_epoch_90
      (coe d_epochStructure_788 (coe v0))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.firstSlot
d_firstSlot_826 :: T_GovStructure_10 -> AgdaAny -> AgdaAny
d_firstSlot_826 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_firstSlot_92
      (coe d_epochStructure_788 (coe v0))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.preoEpoch
d_preoEpoch_828 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.HasOrder.Core.T_HasPreorder_28
d_preoEpoch_828 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_preoEpoch_110
      (coe d_epochStructure_788 (coe v0))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.sucᵉ
d_suc'7497'_830 :: T_GovStructure_10 -> AgdaAny -> AgdaAny
d_suc'7497'_830 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_suc'7497'_98
      (coe d_epochStructure_788 (coe v0))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.ℕtoEpoch
d_ℕtoEpoch_832 :: T_GovStructure_10 -> Integer -> AgdaAny
d_ℕtoEpoch_832 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_ℕtoEpoch_274
      (coe d_epochStructure_788 (coe v0))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.≤-predᵉ
d_'8804''45'pred'7497'_834 ::
  T_GovStructure_10 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_'8804''45'pred'7497'_834 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_'8804''45'pred'7497'_126
      (coe d_epochStructure_788 (coe v0))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure.globalConstants
d_globalConstants_836 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_GlobalConstants_292
d_globalConstants_836 v0
  = case coe v0 of
      C_constructor_1588 v3 v4 v5 v6 v7 v8 v9 -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.ActiveSlotCoeff
d_ActiveSlotCoeff_840 ::
  T_GovStructure_10 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_ActiveSlotCoeff_840 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_ActiveSlotCoeff_330
      (coe d_globalConstants_836 (coe v0))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.BlsKeyMaxAgeᶜ
d_BlsKeyMaxAge'7580'_842 :: T_GovStructure_10 -> Integer
d_BlsKeyMaxAge'7580'_842 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_BlsKeyMaxAge'7580'_344
      (coe d_globalConstants_836 (coe v0))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.DecEq-Netw
d_DecEq'45'Netw_844 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Netw_844 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_322
      (coe d_globalConstants_836 (coe v0))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.MaxLovelaceSupplyᶜ
d_MaxLovelaceSupply'7580'_846 :: T_GovStructure_10 -> Integer
d_MaxLovelaceSupply'7580'_846 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_MaxLovelaceSupply'7580'_338
      (coe d_globalConstants_836 (coe v0))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.Network
d_Network_848 :: T_GovStructure_10 -> ()
d_Network_848 = erased
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.NetworkId
d_NetworkId_850 :: T_GovStructure_10 -> AgdaAny
d_NetworkId_850 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NetworkId_342
      (coe d_globalConstants_836 (coe v0))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.NonZero-ActiveSlotCoeff
d_NonZero'45'ActiveSlotCoeff_852 ::
  T_GovStructure_10 -> MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_NonZero'45'ActiveSlotCoeff_852 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NonZero'45'ActiveSlotCoeff_346
      (coe d_globalConstants_836 (coe v0))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.NonZero-SlotsPerEpochᶜ
d_NonZero'45'SlotsPerEpoch'7580'_854 ::
  T_GovStructure_10 -> MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_NonZero'45'SlotsPerEpoch'7580'_854 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NonZero'45'SlotsPerEpoch'7580'_328
      (coe d_globalConstants_836 (coe v0))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.Positive-ActiveSlotCoeff
d_Positive'45'ActiveSlotCoeff_856 ::
  T_GovStructure_10 -> MAlonzo.Code.Data.Integer.Base.T_Positive_134
d_Positive'45'ActiveSlotCoeff_856 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Positive'45'ActiveSlotCoeff_332
      (coe d_globalConstants_836 (coe v0))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.Quorum
d_Quorum_858 :: T_GovStructure_10 -> Integer
d_Quorum_858 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Quorum_340
      (coe d_globalConstants_836 (coe v0))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.RandomnessStabilisationWindowᶜ
d_RandomnessStabilisationWindow'7580'_860 ::
  T_GovStructure_10 -> Integer
d_RandomnessStabilisationWindow'7580'_860 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_RandomnessStabilisationWindow'7580'_334
      (coe d_globalConstants_836 (coe v0))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.Show-Network
d_Show'45'Network_862 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Network_862 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Show'45'Network_324
      (coe d_globalConstants_836 (coe v0))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.SlotsPerEpochᶜ
d_SlotsPerEpoch'7580'_864 :: T_GovStructure_10 -> Integer
d_SlotsPerEpoch'7580'_864 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_SlotsPerEpoch'7580'_326
      (coe d_globalConstants_836 (coe v0))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.StabilityWindowᶜ
d_StabilityWindow'7580'_866 :: T_GovStructure_10 -> Integer
d_StabilityWindow'7580'_866 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_StabilityWindow'7580'_336
      (coe d_globalConstants_836 (coe v0))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.ℕ+ᵉ≡+ᵉ'
d_ℕ'43''7497''8801''43''7497'''_868 ::
  T_GovStructure_10 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ℕ'43''7497''8801''43''7497'''_868 = erased
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.ℕEpochStructure
d_ℕEpochStructure_870 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22
d_ℕEpochStructure_870 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_ℕEpochStructure_360
      (coe d_globalConstants_836 (coe v0))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure.scriptStructure
d_scriptStructure_872 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568
d_scriptStructure_872 v0
  = case coe v0 of
      C_constructor_1588 v3 v4 v5 v6 v7 v8 v9 -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._._≥ᵉ_
d__'8805''7497'__876 ::
  T_GovStructure_10 -> AgdaAny -> AgdaAny -> ()
d__'8805''7497'__876 = erased
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.CostModel
d_CostModel_878 :: T_GovStructure_10 -> ()
d_CostModel_878 = erased
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.T
d_T_880 :: T_GovStructure_10 -> ()
d_T_880 = erased
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.THash
d_THash_882 :: T_GovStructure_10 -> ()
d_THash_882 = erased
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.Dataʰ
d_Data'688'_884 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_HashableSet_36
d_Data'688'_884 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_488
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
         (coe d_scriptStructure_872 (coe v0)))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.Datum
d_Datum_886 :: T_GovStructure_10 -> ()
d_Datum_886 = erased
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.Dec-validP1Script
d_Dec'45'validP1Script_888 ::
  T_GovStructure_10 ->
  [AgdaAny] ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_888 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Dec'45'validP1Script_390
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_p1s_594
         (coe d_scriptStructure_872 (coe v0)))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.Dec-validPlutusScript
d_Dec'45'validPlutusScript_890 ::
  T_GovStructure_10 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_890 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Dec'45'validPlutusScript_562
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
         (coe d_scriptStructure_872 (coe v0)))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.DecEQ-Prices
d_DecEQ'45'Prices_892 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_892 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEQ'45'Prices_524
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
         (coe d_scriptStructure_872 (coe v0)))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.DecEq-CostModel
d_DecEq'45'CostModel_894 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_894 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'CostModel_508
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
         (coe d_scriptStructure_872 (coe v0)))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.DecEq-ExUnits
d_DecEq'45'ExUnits_896 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_896 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'ExUnits_522
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
         (coe d_scriptStructure_872 (coe v0)))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.DecEq-LangDepView
d_DecEq'45'LangDepView_898 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_898 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'LangDepView_510
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
         (coe d_scriptStructure_872 (coe v0)))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.DecEq-Language
d_DecEq'45'Language_900 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_900 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'Language_514
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
         (coe d_scriptStructure_872 (coe v0)))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.DecEq-LanguageCostModels
d_DecEq'45'LanguageCostModels_902 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LanguageCostModels_902 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_DecEq'45'LanguageCostModels_732
      (coe d_scriptStructure_872 (coe v0))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.DecEq-P1Script
d_DecEq'45'P1Script_904 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_904 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'P1Script_394
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_p1s_594
         (coe d_scriptStructure_872 (coe v0)))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.DecEq-T
d_DecEq'45'T_906 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_906 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_488
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
                 (coe d_scriptStructure_872 (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'T_30
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.DecEq-THash
d_DecEq'45'THash_908 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_908 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_488
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
                 (coe d_scriptStructure_872 (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_910 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_ExUnit'45'CommutativeMonoid_910 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ExUnit'45'CommutativeMonoid_504
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
         (coe d_scriptStructure_872 (coe v0)))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.ExUnits
d_ExUnits_912 :: T_GovStructure_10 -> ()
d_ExUnits_912 = erased
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.Hashable-P1Script
d_Hashable'45'P1Script_914 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'P1Script_914 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Hashable'45'P1Script_392
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_p1s_594
         (coe d_scriptStructure_872 (coe v0)))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.Hashable-PlutusScript
d_Hashable'45'PlutusScript_916 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'PlutusScript_916 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Hashable'45'PlutusScript_506
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
         (coe d_scriptStructure_872 (coe v0)))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.Hashable-Script
d_Hashable'45'Script_918 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'Script_918 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_Hashable'45'Script_696
      (coe d_scriptStructure_872 (coe v0))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.LangDepView
d_LangDepView_920 :: T_GovStructure_10 -> ()
d_LangDepView_920 = erased
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.Language
d_Language_922 :: T_GovStructure_10 -> ()
d_Language_922 = erased
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.LanguageCostModels
d_LanguageCostModels_924 a0 = ()
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.P1Script
d_P1Script_928 :: T_GovStructure_10 -> ()
d_P1Script_928 = erased
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PlutusScript
d_PlutusScript_930 :: T_GovStructure_10 -> ()
d_PlutusScript_930 = erased
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PlutusV1
d_PlutusV1_932 :: T_GovStructure_10 -> AgdaAny
d_PlutusV1_932 v0
  = let v1 = d_scriptStructure_872 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV1_530
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
            (coe v1)))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PlutusV2
d_PlutusV2_934 :: T_GovStructure_10 -> AgdaAny
d_PlutusV2_934 v0
  = let v1 = d_scriptStructure_872 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV2_532
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
            (coe v1)))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PlutusV3
d_PlutusV3_936 :: T_GovStructure_10 -> AgdaAny
d_PlutusV3_936 v0
  = let v1 = d_scriptStructure_872 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV3_534
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
            (coe v1)))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PlutusV4
d_PlutusV4_938 :: T_GovStructure_10 -> AgdaAny
d_PlutusV4_938 v0
  = let v1 = d_scriptStructure_872 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV4_536
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
            (coe v1)))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.Prices
d_Prices_940 :: T_GovStructure_10 -> ()
d_Prices_940 = erased
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.Redeemer
d_Redeemer_942 :: T_GovStructure_10 -> ()
d_Redeemer_942 = erased
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.Script
d_Script_944 :: T_GovStructure_10 -> ()
d_Script_944 = erased
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.Show-CostModel
d_Show'45'CostModel_946 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'CostModel_946 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'CostModel_512
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
         (coe d_scriptStructure_872 (coe v0)))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.Show-ExUnits
d_Show'45'ExUnits_948 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_948 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'ExUnits_526
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
         (coe d_scriptStructure_872 (coe v0)))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.Show-Language
d_Show'45'Language_950 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Language_950 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'Language_516
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
         (coe d_scriptStructure_872 (coe v0)))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.Show-LanguageCostModels
d_Show'45'LanguageCostModels_952 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'LanguageCostModels_952 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_Show'45'LanguageCostModels_738
      (coe d_scriptStructure_872 (coe v0))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.Show-Prices
d_Show'45'Prices_954 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Prices_954 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'Prices_528
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
         (coe d_scriptStructure_872 (coe v0)))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.Show-THash
d_Show'45'THash_956 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_956 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_488
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
                 (coe d_scriptStructure_872 (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.T-Hashable
d_T'45'Hashable_958 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_T'45'Hashable_958 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_488
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
                 (coe d_scriptStructure_872 (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.T-isHashable
d_T'45'isHashable_960 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
d_T'45'isHashable_960 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_488
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
            (coe d_scriptStructure_872 (coe v0))))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.fromPlutusLanguage
d_fromPlutusLanguage_962 ::
  T_GovStructure_10 -> MAlonzo.Code.Function.Bundles.T_Injection_842
d_fromPlutusLanguage_962 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_fromPlutusLanguage_502
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
         (coe d_scriptStructure_872 (coe v0)))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.hashRespectsUnion
d_hashRespectsUnion_964 ::
  T_GovStructure_10 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_hashRespectsUnion_964 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_hashRespectsUnion_614
      (coe d_scriptStructure_872 (coe v0))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.isNativeScript
d_isNativeScript_966 ::
  T_GovStructure_10 -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isNativeScript_966 = erased
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.isP1Script
d_isP1Script_968 ::
  T_GovStructure_10 -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isP1Script_968 = erased
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.isP1Script?
d_isP1Script'63'_970 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isP1Script'63'_970 ~v0 = du_isP1Script'63'_970
du_isP1Script'63'_970 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_isP1Script'63'_970
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_isP1Script'63'_702
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.isP2Script
d_isP2Script_972 ::
  T_GovStructure_10 -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isP2Script_972 = erased
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.isP2Script?
d_isP2Script'63'_974 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isP2Script'63'_974 ~v0 = du_isP2Script'63'_974
du_isP2Script'63'_974 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_isP2Script'63'_974
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_isP2Script'63'_716
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.language
d_language_976 :: T_GovStructure_10 -> AgdaAny -> AgdaAny
d_language_976 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_language_564
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
         (coe d_scriptStructure_872 (coe v0)))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.languageCostModels
d_languageCostModels_978 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_LanguageCostModels_724 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_languageCostModels_978 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_languageCostModels_728
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.p1s
d_p1s_982 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_P1ScriptStructure_370
d_p1s_982 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_p1s_594
      (coe d_scriptStructure_872 (coe v0))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.ps
d_ps_984 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_408
d_ps_984 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
      (coe d_scriptStructure_872 (coe v0))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.toP1Script
d_toP1Script_986 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
d_toP1Script_986 ~v0 = du_toP1Script_986
du_toP1Script_986 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
du_toP1Script_986
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_toP1Script_710
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.toP2Script
d_toP2Script_988 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
d_toP2Script_988 ~v0 = du_toP2Script_988
du_toP2Script_988 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
du_toP2Script_988
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_toP2Script_722
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.validP1Script
d_validP1Script_990 ::
  T_GovStructure_10 ->
  [AgdaAny] ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> ()
d_validP1Script_990 = erased
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.validPlutusScript
d_validPlutusScript_992 ::
  T_GovStructure_10 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_992 = erased
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.≥ᵉ-Dec
d_'8805''7497''45'Dec_994 ::
  T_GovStructure_10 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_'8805''7497''45'Dec_994 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_'8805''7497''45'Dec_520
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
         (coe d_scriptStructure_872 (coe v0)))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.LanguageCostModels.languageCostModels
d_languageCostModels_998 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_LanguageCostModels_724 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_languageCostModels_998 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_languageCostModels_728
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.AccountOf
d_AccountOf_1002 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasAccount_210 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_194
d_AccountOf_1002 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_AccountOf_218
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.Acnt
d_Acnt_1004 a0 = ()
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.CCMaxTermLengthOf
d_CCMaxTermLengthOf_1008 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasCCMaxTermLength_598 ->
  AgdaAny -> Integer
d_CCMaxTermLengthOf_1008 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_CCMaxTermLengthOf_606
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.DecEq-DrepThresholds
d_DecEq'45'DrepThresholds_1010 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DrepThresholds_1010 ~v0
  = du_DecEq'45'DrepThresholds_1010
du_DecEq'45'DrepThresholds_1010 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'DrepThresholds_1010
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_DecEq'45'DrepThresholds_614
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.DecEq-PParamGroup
d_DecEq'45'PParamGroup_1012 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamGroup_1012 ~v0 = du_DecEq'45'PParamGroup_1012
du_DecEq'45'PParamGroup_1012 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'PParamGroup_1012
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_DecEq'45'PParamGroup_620
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.DecEq-PParams
d_DecEq'45'PParams_1014 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParams_1014 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_DecEq'45'PParams_618
      (coe d_epochStructure_788 (coe v0))
      (coe d_scriptStructure_872 (coe v0))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.DecEq-PoolThresholds
d_DecEq'45'PoolThresholds_1016 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PoolThresholds_1016 ~v0
  = du_DecEq'45'PoolThresholds_1016
du_DecEq'45'PoolThresholds_1016 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'PoolThresholds_1016
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_DecEq'45'PoolThresholds_616
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.DrepThresholds
d_DrepThresholds_1018 a0 = ()
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.GovParams
d_GovParams_1024 a0 = ()
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.HasAccount
d_HasAccount_1030 a0 a1 a2 = ()
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.HasCCMaxTermLength
d_HasCCMaxTermLength_1034 a0 a1 a2 = ()
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.HasCast-Acnt
d_HasCast'45'Acnt_1038 ::
  T_GovStructure_10 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'Acnt_1038 ~v0 = du_HasCast'45'Acnt_1038
du_HasCast'45'Acnt_1038 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'Acnt_1038
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_HasCast'45'Acnt_230
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.HasPParams
d_HasPParams_1040 a0 a1 a2 = ()
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.HasReserves-Acnt
d_HasReserves'45'Acnt_1044 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasReserves_60
d_HasReserves'45'Acnt_1044 ~v0 = du_HasReserves'45'Acnt_1044
du_HasReserves'45'Acnt_1044 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasReserves_60
du_HasReserves'45'Acnt_1044
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_HasReserves'45'Acnt_228
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.HasTreasury-Acnt
d_HasTreasury'45'Acnt_1046 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasTreasury_80
d_HasTreasury'45'Acnt_1046 ~v0 = du_HasTreasury'45'Acnt_1046
du_HasTreasury'45'Acnt_1046 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasTreasury_80
du_HasTreasury'45'Acnt_1046
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_HasTreasury'45'Acnt_226
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PParamGroup
d_PParamGroup_1050 a0 = ()
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PParams
d_PParams_1052 a0 = ()
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PParamsDiff
d_PParamsDiff_1056 a0 = ()
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PParamsOf
d_PParamsOf_1060 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasPParams_578 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312
d_PParamsOf_1060 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_PParamsOf_586
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PoolThresholds
d_PoolThresholds_1062 a0 = ()
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.Show-DrepThresholds
d_Show'45'DrepThresholds_1068 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'DrepThresholds_1068 ~v0 = du_Show'45'DrepThresholds_1068
du_Show'45'DrepThresholds_1068 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'DrepThresholds_1068
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_Show'45'DrepThresholds_622
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.Show-PParams
d_Show'45'PParams_1070 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'PParams_1070 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_Show'45'PParams_626
      (coe d_epochStructure_788 (coe v0))
      (coe d_scriptStructure_872 (coe v0))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.Show-PoolThresholds
d_Show'45'PoolThresholds_1072 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'PoolThresholds_1072 ~v0 = du_Show'45'PoolThresholds_1072
du_Show'45'PoolThresholds_1072 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'PoolThresholds_1072
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_Show'45'PoolThresholds_624
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.paramsWF-elim
d_paramsWF'45'elim_1076 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  Integer ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_paramsWF'45'elim_1076 ~v0 = du_paramsWF'45'elim_1076
du_paramsWF'45'elim_1076 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  Integer ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_paramsWF'45'elim_1076 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_paramsWF'45'elim_554
      v2
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.paramsWellFormed
d_paramsWellFormed_1078 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  ()
d_paramsWellFormed_1078 = erased
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.positivePParams
d_positivePParams_1080 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  [Integer]
d_positivePParams_1080 ~v0 = du_positivePParams_1080
du_positivePParams_1080 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  [Integer]
du_positivePParams_1080
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_positivePParams_462
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.Acnt.reserves
d_reserves_1086 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_194 ->
  Integer
d_reserves_1086 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_reserves_202
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.Acnt.treasury
d_treasury_1088 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_194 ->
  Integer
d_treasury_1088 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_treasury_200
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.DrepThresholds.P1
d_P1_1092 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P1_1092 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P1_266
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.DrepThresholds.P2a
d_P2a_1094 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2a_1094 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P2a_268
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.DrepThresholds.P2b
d_P2b_1096 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2b_1096 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P2b_270
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.DrepThresholds.P3
d_P3_1098 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P3_1098 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P3_272
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.DrepThresholds.P4
d_P4_1100 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P4_1100 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P4_274
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.DrepThresholds.P5a
d_P5a_1102 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5a_1102 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P5a_276
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.DrepThresholds.P5b
d_P5b_1104 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5b_1104 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P5b_278
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.DrepThresholds.P5c
d_P5c_1106 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5c_1106 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P5c_280
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.DrepThresholds.P5d
d_P5d_1108 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5d_1108 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P5d_282
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.DrepThresholds.P6
d_P6_1110 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P6_1110 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P6_284
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.GovParams.DecEq-UpdT
d_DecEq'45'UpdT_1114 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_GovParams_1524 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_1114 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_DecEq'45'UpdT_1556
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.GovParams.UpdateT
d_UpdateT_1116 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_GovParams_1524 ->
  ()
d_UpdateT_1116 = erased
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.GovParams.applyUpdate
d_applyUpdate_1118 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_GovParams_1524 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312
d_applyUpdate_1118 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_applyUpdate_1506
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ppUpd_1542
         (coe v0))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.GovParams.ppUpd
d_ppUpd_1120 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_GovParams_1524 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsDiff_1490
d_ppUpd_1120 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ppUpd_1542
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.GovParams.ppWF?
d_ppWF'63'_1122 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_GovParams_1524 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_1122 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ppWF'63'_1514
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ppUpd_1542
         (coe v0))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.GovParams.ppdWellFormed
d_ppdWellFormed_1124 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_GovParams_1524 ->
  AgdaAny -> ()
d_ppdWellFormed_1124 = erased
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.GovParams.updateGroups
d_updateGroups_1126 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_GovParams_1524 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamGroup_232]
d_updateGroups_1126 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_updateGroups_1508
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ppUpd_1542
         (coe v0))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.HasAccount.AccountOf
d_AccountOf_1130 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasAccount_210 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_194
d_AccountOf_1130 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_AccountOf_218
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.HasCCMaxTermLength.CCMaxTermLengthOf
d_CCMaxTermLengthOf_1134 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasCCMaxTermLength_598 ->
  AgdaAny -> Integer
d_CCMaxTermLengthOf_1134 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_CCMaxTermLengthOf_606
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.HasPParams.PParamsOf
d_PParamsOf_1138 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasPParams_578 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312
d_PParamsOf_1138 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_PParamsOf_586
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PParams.Emax
d_Emax_1154 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  AgdaAny
d_Emax_1154 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_Emax_432
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PParams.a
d_a_1156 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_a_1156 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_a_402 (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PParams.a0
d_a0_1158 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_1158 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_a0_436
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PParams.b
d_b_1160 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_b_1160 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_b_404 (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PParams.ccMaxTermLength
d_ccMaxTermLength_1162 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_ccMaxTermLength_1162 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ccMaxTermLength_448
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PParams.ccMinSize
d_ccMinSize_1164 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_ccMinSize_1164 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ccMinSize_446
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_1166 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_coinsPerUTxOByte_1166 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_coinsPerUTxOByte_416
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PParams.collateralPercentage
d_collateralPercentage_1168 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_collateralPercentage_1168 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_collateralPercentage_438
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PParams.costmdls
d_costmdls_1170 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_costmdls_1170 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_costmdls_458
      (coe d_scriptStructure_872 (coe v0))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PParams.costmdlsAssoc
d_costmdlsAssoc_1172 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_LanguageCostModels_724
d_costmdlsAssoc_1172 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_costmdlsAssoc_440
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PParams.drepActivity
d_drepActivity_1174 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  AgdaAny
d_drepActivity_1174 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepActivity_456
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PParams.drepDeposit
d_drepDeposit_1176 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_drepDeposit_1176 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepDeposit_454
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PParams.drepThresholds
d_drepThresholds_1178 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_244
d_drepThresholds_1178 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepThresholds_444
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PParams.govActionDeposit
d_govActionDeposit_1180 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_govActionDeposit_1180 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_govActionDeposit_452
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PParams.govActionLifetime
d_govActionLifetime_1182 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_govActionLifetime_1182 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_govActionLifetime_450
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PParams.keyDeposit
d_keyDeposit_1184 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_keyDeposit_1184 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_keyDeposit_406
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PParams.maxBlockExUnits
d_maxBlockExUnits_1186 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  AgdaAny
d_maxBlockExUnits_1186 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxBlockExUnits_394
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PParams.maxBlockSize
d_maxBlockSize_1188 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxBlockSize_1188 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxBlockSize_386
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PParams.maxCollateralInputs
d_maxCollateralInputs_1190 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxCollateralInputs_1190 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxCollateralInputs_398
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PParams.maxHeaderSize
d_maxHeaderSize_1192 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxHeaderSize_1192 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxHeaderSize_390
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_1194 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxRefScriptSizePerBlock_1194 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxRefScriptSizePerBlock_424
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_1196 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxRefScriptSizePerTx_1196 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxRefScriptSizePerTx_422
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PParams.maxTxExUnits
d_maxTxExUnits_1198 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  AgdaAny
d_maxTxExUnits_1198 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxTxExUnits_392
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PParams.maxTxSize
d_maxTxSize_1200 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxTxSize_1200 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxTxSize_388
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PParams.maxValSize
d_maxValSize_1202 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxValSize_1202 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxValSize_396
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_1204 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_1204 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_minFeeRefScriptCoinsPerByte_420
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PParams.minPoolCost
d_minPoolCost_1206 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_minPoolCost_1206 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_minPoolCost_410
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PParams.minUTxOValue
d_minUTxOValue_1208 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_minUTxOValue_1208 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_minUTxOValue_430
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PParams.monetaryExpansion
d_monetaryExpansion_1210 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_1210 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_monetaryExpansion_412
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PParams.nopt
d_nopt_1212 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_nopt_1212 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_nopt_434
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PParams.poolDeposit
d_poolDeposit_1214 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_poolDeposit_1214 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_poolDeposit_408
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PParams.poolThresholds
d_poolThresholds_1216 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PoolThresholds_288
d_poolThresholds_1216 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_poolThresholds_442
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PParams.prices
d_prices_1218 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  AgdaAny
d_prices_1218 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_prices_418
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PParams.pv
d_pv_1220 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1220 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_pv_400
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_1222 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_1222 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_refScriptCostMultiplier_428
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PParams.refScriptCostStride
d_refScriptCostStride_1224 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_1224 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_refScriptCostStride_426
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PParams.treasuryCut
d_treasuryCut_1226 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_1226 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_treasuryCut_414
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PParamsDiff.UpdateT
d_UpdateT_1230 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsDiff_1490 ->
  ()
d_UpdateT_1230 = erased
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PParamsDiff.applyUpdate
d_applyUpdate_1232 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsDiff_1490 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312
d_applyUpdate_1232 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_applyUpdate_1506
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PParamsDiff.ppWF?
d_ppWF'63'_1234 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsDiff_1490 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_1234 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ppWF'63'_1514
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PParamsDiff.ppdWellFormed
d_ppdWellFormed_1236 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsDiff_1490 ->
  AgdaAny -> ()
d_ppdWellFormed_1236 = erased
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PParamsDiff.updateGroups
d_updateGroups_1238 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsDiff_1490 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamGroup_232]
d_updateGroups_1238 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_updateGroups_1508
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PParamsUpdate._?↗_
d__'63''8599'__1242 ::
  T_GovStructure_10 -> () -> Maybe AgdaAny -> AgdaAny -> AgdaAny
d__'63''8599'__1242 ~v0 = du__'63''8599'__1242
du__'63''8599'__1242 :: () -> Maybe AgdaAny -> AgdaAny -> AgdaAny
du__'63''8599'__1242 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du__'63''8599'__1272
      v1 v2
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PParamsUpdate._∪ˡᶜᵐ_
d__'8746''737''7580''7504'__1244 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_LanguageCostModels_724 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_LanguageCostModels_724 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_LanguageCostModels_724
d__'8746''737''7580''7504'__1244 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.C_mkLanguageCostModels_730
      (coe
         MAlonzo.Code.Axiom.Set.Map.du__'738'_570
         (coe
            MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_602
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1516
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'Language_514
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
                  (coe d_scriptStructure_872 (coe v0))))
            (coe
               MAlonzo.Code.Data.List.Base.du__'43''43'__32
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_languageCostModels_728
                  (coe v1))
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_languageCostModels_728
                  (coe v2)))))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PParamsUpdate.DecEq-PParamsUpdate
d_DecEq'45'PParamsUpdate_1246 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamsUpdate_1246 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_DecEq'45'PParamsUpdate_1488
      (coe d_epochStructure_788 (coe v0))
      (coe d_scriptStructure_872 (coe v0))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate
d_PParamsUpdate_1248 a0 = ()
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PParamsUpdate.applyPParamsUpdate
d_applyPParamsUpdate_1252 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312
d_applyPParamsUpdate_1252 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_applyPParamsUpdate_1326
      (coe d_scriptStructure_872 (coe v0))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PParamsUpdate.modifiedUpdateGroups
d_modifiedUpdateGroups_1254 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamGroup_232]
d_modifiedUpdateGroups_1254 ~v0 = du_modifiedUpdateGroups_1254
du_modifiedUpdateGroups_1254 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamGroup_232]
du_modifiedUpdateGroups_1254
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_modifiedUpdateGroups_1256
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PParamsUpdate.modifiesEconomicGroup
d_modifiesEconomicGroup_1256 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Bool
d_modifiesEconomicGroup_1256 ~v0 = du_modifiesEconomicGroup_1256
du_modifiesEconomicGroup_1256 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Bool
du_modifiesEconomicGroup_1256
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_modifiesEconomicGroup_944
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PParamsUpdate.modifiesGovernanceGroup
d_modifiesGovernanceGroup_1258 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Bool
d_modifiesGovernanceGroup_1258 ~v0
  = du_modifiesGovernanceGroup_1258
du_modifiesGovernanceGroup_1258 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Bool
du_modifiesGovernanceGroup_1258
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_modifiesGovernanceGroup_1100
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PParamsUpdate.modifiesNetworkGroup
d_modifiesNetworkGroup_1260 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Bool
d_modifiesNetworkGroup_1260 ~v0 = du_modifiesNetworkGroup_1260
du_modifiesNetworkGroup_1260 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Bool
du_modifiesNetworkGroup_1260
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_modifiesNetworkGroup_866
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PParamsUpdate.modifiesSecurityGroup
d_modifiesSecurityGroup_1262 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Bool
d_modifiesSecurityGroup_1262 ~v0 = du_modifiesSecurityGroup_1262
du_modifiesSecurityGroup_1262 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Bool
du_modifiesSecurityGroup_1262
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_modifiesSecurityGroup_1178
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PParamsUpdate.modifiesTechnicalGroup
d_modifiesTechnicalGroup_1264 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Bool
d_modifiesTechnicalGroup_1264 ~v0 = du_modifiesTechnicalGroup_1264
du_modifiesTechnicalGroup_1264 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Bool
du_modifiesTechnicalGroup_1264
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_modifiesTechnicalGroup_1022
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PParamsUpdate.paramsUpdateWellFormed
d_paramsUpdateWellFormed_1266 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  ()
d_paramsUpdateWellFormed_1266 = erased
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PParamsUpdate.paramsUpdateWellFormed?
d_paramsUpdateWellFormed'63'_1268 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_paramsUpdateWellFormed'63'_1268 v0
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
                     MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxBlockSize_704
                     (coe v0))
                  (coe
                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxTxSize_706
                        (coe v0))
                     (coe
                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                        (coe
                           MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxHeaderSize_708
                           (coe v0))
                        (coe
                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxValSize_710
                              (coe v0))
                           (coe
                              MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_coinsPerUTxOByte_734
                                 (coe v0))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_poolDeposit_726
                                    (coe v0))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_collateralPercentage_756
                                       (coe v0))
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ccMaxTermLength_774
                                          (coe v0))
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_govActionLifetime_764
                                             (coe v0))
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_govActionDeposit_766
                                                (coe v0))
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepDeposit_768
                                                   (coe v0))
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))))))))))
      (coe
         MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
         (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
         (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PParamsUpdate.≡-update
d_'8801''45'update_1270 ::
  T_GovStructure_10 ->
  () ->
  Maybe AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8801''45'update_1270 ~v0 = du_'8801''45'update_1270
du_'8801''45'update_1270 ::
  () ->
  Maybe AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
du_'8801''45'update_1270 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_'8801''45'update_1286
      v1
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.Emax
d_Emax_1274 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe AgdaAny
d_Emax_1274 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_Emax_752
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.a
d_a_1276 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe Integer
d_a_1276 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_a_720 (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.a0
d_a0_1278 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_1278 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_a0_750
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.b
d_b_1280 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe Integer
d_b_1280 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_b_722 (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.ccMaxTermLength
d_ccMaxTermLength_1282 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe Integer
d_ccMaxTermLength_1282 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ccMaxTermLength_774
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.ccMinSize
d_ccMinSize_1284 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe Integer
d_ccMinSize_1284 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ccMinSize_772
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.coinsPerUTxOByte
d_coinsPerUTxOByte_1286 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe Integer
d_coinsPerUTxOByte_1286 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_coinsPerUTxOByte_734
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.collateralPercentage
d_collateralPercentage_1288 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe Integer
d_collateralPercentage_1288 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_collateralPercentage_756
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.costmdls
d_costmdls_1290 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe
    MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_LanguageCostModels_724
d_costmdls_1290 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_costmdls_758
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.drepActivity
d_drepActivity_1292 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe AgdaAny
d_drepActivity_1292 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepActivity_770
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.drepDeposit
d_drepDeposit_1294 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe Integer
d_drepDeposit_1294 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepDeposit_768
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.drepThresholds
d_drepThresholds_1296 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe
    MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_244
d_drepThresholds_1296 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepThresholds_760
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.govActionDeposit
d_govActionDeposit_1298 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe Integer
d_govActionDeposit_1298 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_govActionDeposit_766
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.govActionLifetime
d_govActionLifetime_1300 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe Integer
d_govActionLifetime_1300 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_govActionLifetime_764
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.keyDeposit
d_keyDeposit_1302 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe Integer
d_keyDeposit_1302 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_keyDeposit_724
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.maxBlockExUnits
d_maxBlockExUnits_1304 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe AgdaAny
d_maxBlockExUnits_1304 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxBlockExUnits_716
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.maxBlockSize
d_maxBlockSize_1306 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe Integer
d_maxBlockSize_1306 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxBlockSize_704
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.maxCollateralInputs
d_maxCollateralInputs_1308 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe Integer
d_maxCollateralInputs_1308 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxCollateralInputs_712
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.maxHeaderSize
d_maxHeaderSize_1310 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe Integer
d_maxHeaderSize_1310 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxHeaderSize_708
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_1312 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe Integer
d_maxRefScriptSizePerBlock_1312 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxRefScriptSizePerBlock_742
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_1314 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe Integer
d_maxRefScriptSizePerTx_1314 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxRefScriptSizePerTx_740
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.maxTxExUnits
d_maxTxExUnits_1316 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe AgdaAny
d_maxTxExUnits_1316 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxTxExUnits_714
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.maxTxSize
d_maxTxSize_1318 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe Integer
d_maxTxSize_1318 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxTxSize_706
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.maxValSize
d_maxValSize_1320 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe Integer
d_maxValSize_1320 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxValSize_710
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_1322 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_1322 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_minFeeRefScriptCoinsPerByte_738
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.minPoolCost
d_minPoolCost_1324 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe Integer
d_minPoolCost_1324 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_minPoolCost_728
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.minUTxOValue
d_minUTxOValue_1326 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe Integer
d_minUTxOValue_1326 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_minUTxOValue_748
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.monetaryExpansion
d_monetaryExpansion_1328 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_1328 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_monetaryExpansion_730
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.nopt
d_nopt_1330 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe Integer
d_nopt_1330 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_nopt_754
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.poolDeposit
d_poolDeposit_1332 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe Integer
d_poolDeposit_1332 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_poolDeposit_726
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.poolThresholds
d_poolThresholds_1334 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe
    MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PoolThresholds_288
d_poolThresholds_1334 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_poolThresholds_762
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.prices
d_prices_1336 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe AgdaAny
d_prices_1336 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_prices_736
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.pv
d_pv_1338 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1338 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_pv_718
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.refScriptCostMultiplier
d_refScriptCostMultiplier_1340 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_1340 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_refScriptCostMultiplier_746
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.refScriptCostStride
d_refScriptCostStride_1342 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_1342 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_refScriptCostStride_744
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.treasuryCut
d_treasuryCut_1344 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_1344 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_treasuryCut_732
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PoolThresholds.Q1
d_Q1_1348 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PoolThresholds_288 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q1_1348 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_Q1_300
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PoolThresholds.Q2a
d_Q2a_1350 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PoolThresholds_288 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2a_1350 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_Q2a_302
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PoolThresholds.Q2b
d_Q2b_1352 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PoolThresholds_288 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2b_1352 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_Q2b_304
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PoolThresholds.Q4
d_Q4_1354 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PoolThresholds_288 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q4_1354 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_Q4_306
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.PoolThresholds.Q5
d_Q5_1356 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PoolThresholds_288 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q5_1356 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_Q5_308
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure.govParams
d_govParams_1358 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_GovParams_1524
d_govParams_1358 v0
  = case coe v0 of
      C_constructor_1588 v3 v4 v5 v6 v7 v8 v9 -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.DecEq-UpdT
d_DecEq'45'UpdT_1362 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_1362 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_DecEq'45'UpdT_1556
      (coe d_govParams_1358 (coe v0))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.UpdateT
d_UpdateT_1364 :: T_GovStructure_10 -> ()
d_UpdateT_1364 = erased
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.applyUpdate
d_applyUpdate_1366 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312
d_applyUpdate_1366 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_applyUpdate_1506
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ppUpd_1542
         (coe d_govParams_1358 (coe v0)))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.ppUpd
d_ppUpd_1368 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsDiff_1490
d_ppUpd_1368 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ppUpd_1542
      (coe d_govParams_1358 (coe v0))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.ppWF?
d_ppWF'63'_1370 ::
  T_GovStructure_10 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_1370 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ppWF'63'_1514
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ppUpd_1542
         (coe d_govParams_1358 (coe v0)))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.ppdWellFormed
d_ppdWellFormed_1372 :: T_GovStructure_10 -> AgdaAny -> ()
d_ppdWellFormed_1372 = erased
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.updateGroups
d_updateGroups_1374 ::
  T_GovStructure_10 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamGroup_232]
d_updateGroups_1374 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_updateGroups_1508
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ppUpd_1542
         (coe d_govParams_1358 (coe v0)))
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.Addr
d_Addr_1378 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_Addr_1378 = erased
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.AttrSizeOf
d_AttrSizeOf_1382 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasAttrSize_214 ->
  AgdaAny -> Integer
d_AttrSizeOf_1382 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_AttrSizeOf_222
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.BaseAddr
d_BaseAddr_1384 a0 a1 a2 a3 = ()
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.BootstrapAddr
d_BootstrapAddr_1388 a0 a1 a2 a3 = ()
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.Credential
d_Credential_1392 a0 a1 a2 a3 = ()
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.CredentialOf
d_CredentialOf_1394 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasCredential_30 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_CredentialOf_1394 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_CredentialOf_38
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.Dec-isScript
d_Dec'45'isScript_1396 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isScript_1396 ~v0 ~v1 ~v2 ~v3 = du_Dec'45'isScript_1396
du_Dec'45'isScript_1396 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'isScript_1396
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Dec'45'isScript_308
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.Dec-isVKey
d_Dec'45'isVKey_1398 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isVKey_1398 ~v0 ~v1 ~v2 ~v3 = du_Dec'45'isVKey_1398
du_Dec'45'isVKey_1398 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'isVKey_1398
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Dec'45'isVKey_294
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.DecEq-BaseAddr
d_DecEq'45'BaseAddr_1400 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BaseAddr_1400 ~v0 v1 v2 v3
  = du_DecEq'45'BaseAddr_1400 v1 v2 v3
du_DecEq'45'BaseAddr_1400 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'BaseAddr_1400 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'BaseAddr_346
      (coe v0) (coe v1) (coe v2)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.DecEq-BootstrapAddr
d_DecEq'45'BootstrapAddr_1402 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BootstrapAddr_1402 ~v0 v1 v2 v3
  = du_DecEq'45'BootstrapAddr_1402 v1 v2 v3
du_DecEq'45'BootstrapAddr_1402 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'BootstrapAddr_1402 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'BootstrapAddr_348
      (coe v0) (coe v1) (coe v2)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.DecEq-Credential
d_DecEq'45'Credential_1404 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Credential_1404 ~v0 ~v1 v2 v3
  = du_DecEq'45'Credential_1404 v2 v3
du_DecEq'45'Credential_1404 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'Credential_1404 v0 v1
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
      (coe v0) (coe v1)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.DecEq-RewardAddress
d_DecEq'45'RewardAddress_1406 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'RewardAddress_1406 ~v0 v1 v2 v3
  = du_DecEq'45'RewardAddress_1406 v1 v2 v3
du_DecEq'45'RewardAddress_1406 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'RewardAddress_1406 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'RewardAddress_350
      (coe v0) (coe v1) (coe v2)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.HasAttrSize
d_HasAttrSize_1408 a0 a1 a2 a3 a4 a5 = ()
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.HasAttrSize-BootstrapAddr
d_HasAttrSize'45'BootstrapAddr_1412 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasAttrSize_214
d_HasAttrSize'45'BootstrapAddr_1412 ~v0 ~v1 ~v2 ~v3
  = du_HasAttrSize'45'BootstrapAddr_1412
du_HasAttrSize'45'BootstrapAddr_1412 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasAttrSize_214
du_HasAttrSize'45'BootstrapAddr_1412
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasAttrSize'45'BootstrapAddr_238
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.HasCredential
d_HasCredential_1414 a0 a1 a2 a3 a4 a5 = ()
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.HasCredential-RewardAddress
d_HasCredential'45'RewardAddress_1418 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasCredential_30
d_HasCredential'45'RewardAddress_1418 ~v0 ~v1 ~v2 ~v3
  = du_HasCredential'45'RewardAddress_1418
du_HasCredential'45'RewardAddress_1418 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasCredential_30
du_HasCredential'45'RewardAddress_1418
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasCredential'45'RewardAddress_236
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.HasMaybeNetworkId
d_HasMaybeNetworkId_1420 a0 a1 a2 a3 a4 a5 = ()
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.HasNetworkId
d_HasNetworkId_1424 a0 a1 a2 a3 a4 a5 = ()
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.HasNetworkId-BaseAddr
d_HasNetworkId'45'BaseAddr_1428 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_154
d_HasNetworkId'45'BaseAddr_1428 ~v0 ~v1 ~v2 ~v3
  = du_HasNetworkId'45'BaseAddr_1428
du_HasNetworkId'45'BaseAddr_1428 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_154
du_HasNetworkId'45'BaseAddr_1428
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasNetworkId'45'BaseAddr_230
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.HasNetworkId-BootstrapAddr
d_HasNetworkId'45'BootstrapAddr_1430 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_154
d_HasNetworkId'45'BootstrapAddr_1430 ~v0 ~v1 ~v2 ~v3
  = du_HasNetworkId'45'BootstrapAddr_1430
du_HasNetworkId'45'BootstrapAddr_1430 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_154
du_HasNetworkId'45'BootstrapAddr_1430
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasNetworkId'45'BootstrapAddr_232
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.HasNetworkId-RewardAddress
d_HasNetworkId'45'RewardAddress_1432 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_154
d_HasNetworkId'45'RewardAddress_1432 ~v0 ~v1 ~v2 ~v3
  = du_HasNetworkId'45'RewardAddress_1432
du_HasNetworkId'45'RewardAddress_1432 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_154
du_HasNetworkId'45'RewardAddress_1432
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasNetworkId'45'RewardAddress_234
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.HasRewardAddress
d_HasRewardAddress_1434 a0 a1 a2 a3 a4 a5 = ()
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.HasWithdrawals
d_HasWithdrawals_1438 a0 a1 a2 a3 a4 a5 = ()
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.IsBootstrapAddr
d_IsBootstrapAddr_1442 a0 a1 a2 a3 a4 = ()
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.IsBootstrapAddr?
d_IsBootstrapAddr'63'_1444 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_IsBootstrapAddr'63'_1444 ~v0 ~v1 ~v2 ~v3
  = du_IsBootstrapAddr'63'_1444
du_IsBootstrapAddr'63'_1444 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_IsBootstrapAddr'63'_1444
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_IsBootstrapAddr'63'_322
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.IsKeyHashObj
d_IsKeyHashObj_1448 a0 a1 a2 a3 a4 = ()
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.IsKeyHashObj?
d_IsKeyHashObj'63'_1450 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_IsKeyHashObj'63'_1450 ~v0 ~v1 ~v2 ~v3 = du_IsKeyHashObj'63'_1450
du_IsKeyHashObj'63'_1450 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_IsKeyHashObj'63'_1450
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_IsKeyHashObj'63'_56
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.MaybeNetworkIdOf
d_MaybeNetworkIdOf_1454 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasMaybeNetworkId_174 ->
  AgdaAny -> Maybe AgdaAny
d_MaybeNetworkIdOf_1454 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_MaybeNetworkIdOf_182
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.NetworkIdOf
d_NetworkIdOf_1456 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_154 ->
  AgdaAny -> AgdaAny
d_NetworkIdOf_1456 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_NetworkIdOf_162
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.RewardAddress
d_RewardAddress_1458 a0 a1 a2 a3 = ()
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.RewardAddressOf
d_RewardAddressOf_1462 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasRewardAddress_134 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116
d_RewardAddressOf_1462 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_RewardAddressOf_142
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.ScriptAddr
d_ScriptAddr_1466 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_ScriptAddr_1466 = erased
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.ScriptBaseAddr
d_ScriptBaseAddr_1468 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_ScriptBaseAddr_1468 = erased
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.ScriptBootstrapAddr
d_ScriptBootstrapAddr_1470 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_ScriptBootstrapAddr_1470 = erased
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.Show-Credential
d_Show'45'Credential_1474 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Credential_1474 ~v0 ~v1 ~v2 ~v3
  = du_Show'45'Credential_1474
du_Show'45'Credential_1474 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'Credential_1474 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Show'45'Credential_362
      v1 v2
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.Show-Credential×Coin
d_Show'45'Credential'215'Coin_1476 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Credential'215'Coin_1476 ~v0 ~v1 ~v2 ~v3
  = du_Show'45'Credential'215'Coin_1476
du_Show'45'Credential'215'Coin_1476 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'Credential'215'Coin_1476 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Show'45'Credential'215'Coin_366
      v1 v2
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.Show-RewardAddress
d_Show'45'RewardAddress_1478 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'RewardAddress_1478 ~v0 ~v1 ~v2 ~v3
  = du_Show'45'RewardAddress_1478
du_Show'45'RewardAddress_1478 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'RewardAddress_1478
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Show'45'RewardAddress_364
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.VKeyAddr
d_VKeyAddr_1480 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_VKeyAddr_1480 = erased
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.VKeyBaseAddr
d_VKeyBaseAddr_1482 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_VKeyBaseAddr_1482 = erased
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.VKeyBootstrapAddr
d_VKeyBootstrapAddr_1484 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_VKeyBootstrapAddr_1484 = erased
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.Withdrawals
d_Withdrawals_1488 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_Withdrawals_1488 = erased
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.WithdrawalsOf
d_WithdrawalsOf_1490 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_194 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_WithdrawalsOf_1490 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_WithdrawalsOf_202
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.getScriptHash
d_getScriptHash_1492 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_isScript_78 ->
  AgdaAny
d_getScriptHash_1492 ~v0 ~v1 ~v2 ~v3 = du_getScriptHash_1492
du_getScriptHash_1492 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_isScript_78 ->
  AgdaAny
du_getScriptHash_1492
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_getScriptHash_340
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.isBootstrapAddr
d_isBootstrapAddr_1494 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_BootstrapAddr_100
d_isBootstrapAddr_1494 ~v0 ~v1 ~v2 ~v3 = du_isBootstrapAddr_1494
du_isBootstrapAddr_1494 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_BootstrapAddr_100
du_isBootstrapAddr_1494
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_isBootstrapAddr_290
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.isKeyHash
d_isKeyHash_1496 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  ()
d_isKeyHash_1496 = erased
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.isKeyHashObj
d_isKeyHashObj_1498 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe AgdaAny
d_isKeyHashObj_1498 ~v0 ~v1 ~v2 ~v3 = du_isKeyHashObj_1498
du_isKeyHashObj_1498 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe AgdaAny
du_isKeyHashObj_1498
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_isKeyHashObj_46
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.isKeyHashObjᵇ
d_isKeyHashObj'7495'_1500 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Bool
d_isKeyHashObj'7495'_1500 ~v0 ~v1 ~v2 ~v3
  = du_isKeyHashObj'7495'_1500
du_isKeyHashObj'7495'_1500 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Bool
du_isKeyHashObj'7495'_1500
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_isKeyHashObj'7495'_62
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.isScript
d_isScript_1502 a0 a1 a2 a3 a4 = ()
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.isScriptAddr
d_isScriptAddr_1504 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isScriptAddr_1504 = erased
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.isScriptObj
d_isScriptObj_1506 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe AgdaAny
d_isScriptObj_1506 ~v0 ~v1 ~v2 ~v3 = du_isScriptObj_1506
du_isScriptObj_1506 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe AgdaAny
du_isScriptObj_1506
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_isScriptObj_68
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.isScriptRewardAddress
d_isScriptRewardAddress_1508 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116 ->
  ()
d_isScriptRewardAddress_1508 = erased
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.isVKey
d_isVKey_1510 a0 a1 a2 a3 a4 = ()
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.isVKeyAddr
d_isVKeyAddr_1512 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isVKeyAddr_1512 = erased
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.netId
d_netId_1514 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
d_netId_1514 ~v0 ~v1 ~v2 ~v3 = du_netId_1514
du_netId_1514 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
du_netId_1514
  = coe MAlonzo.Code.Ledger.Core.Specification.Address.du_netId_266
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.payCred
d_payCred_1516 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_payCred_1516 ~v0 ~v1 ~v2 ~v3 = du_payCred_1516
du_payCred_1516 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
du_payCred_1516
  = coe MAlonzo.Code.Ledger.Core.Specification.Address.du_payCred_262
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.stakeCred
d_stakeCred_1518 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_stakeCred_1518 ~v0 ~v1 ~v2 ~v3 = du_stakeCred_1518
du_stakeCred_1518 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
du_stakeCred_1518
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_stakeCred_264
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.BaseAddr.net
d_net_1522 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BaseAddr_84 ->
  AgdaAny
d_net_1522 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_net_92 (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.BaseAddr.pay
d_pay_1524 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BaseAddr_84 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_pay_1524 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_pay_94 (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.BaseAddr.stake
d_stake_1526 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BaseAddr_84 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_stake_1526 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_stake_96 (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.BootstrapAddr.attrsSize
d_attrsSize_1530 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BootstrapAddr_100 ->
  Integer
d_attrsSize_1530 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_attrsSize_112
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.BootstrapAddr.net
d_net_1532 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BootstrapAddr_100 ->
  AgdaAny
d_net_1532 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_net_108 (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.BootstrapAddr.pay
d_pay_1534 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BootstrapAddr_100 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_pay_1534 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_pay_110 (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.HasAttrSize.AttrSizeOf
d_AttrSizeOf_1544 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasAttrSize_214 ->
  AgdaAny -> Integer
d_AttrSizeOf_1544 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_AttrSizeOf_222
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.HasCredential.CredentialOf
d_CredentialOf_1548 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasCredential_30 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_CredentialOf_1548 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_CredentialOf_38
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.HasMaybeNetworkId.MaybeNetworkIdOf
d_MaybeNetworkIdOf_1552 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasMaybeNetworkId_174 ->
  AgdaAny -> Maybe AgdaAny
d_MaybeNetworkIdOf_1552 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_MaybeNetworkIdOf_182
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.HasNetworkId.NetworkIdOf
d_NetworkIdOf_1556 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_154 ->
  AgdaAny -> AgdaAny
d_NetworkIdOf_1556 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_NetworkIdOf_162
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.HasRewardAddress.RewardAddressOf
d_RewardAddressOf_1560 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasRewardAddress_134 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116
d_RewardAddressOf_1560 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_RewardAddressOf_142
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.HasWithdrawals.WithdrawalsOf
d_WithdrawalsOf_1564 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_194 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_WithdrawalsOf_1564 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_WithdrawalsOf_202
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.RewardAddress.net
d_net_1576 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116 ->
  AgdaAny
d_net_1576 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_net_122 (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Base.GovStructure._.RewardAddress.stake
d_stake_1578 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_stake_1578 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_stake_124 (coe v0)
