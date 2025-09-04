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

module MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.Core where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Maybe
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Builtin.String
import qualified MAlonzo.Code.Class.DecEq.Instances
import qualified MAlonzo.Code.Class.Functor.Instances
import qualified MAlonzo.Code.Data.Product.Base
import qualified MAlonzo.Code.Foreign.Convertible
import qualified MAlonzo.Code.Foreign.Haskell.Coerce
import qualified MAlonzo.Code.Foreign.Haskell.Pair
import qualified MAlonzo.Code.Foreign.HaskellTypes
import qualified MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions
import qualified MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address
import qualified MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes
import qualified MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures
import qualified MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions
import qualified MAlonzo.Code.Ledger.Conway.Specification.Transaction
import qualified MAlonzo.Code.Ledger.Core.Specification.Address
import qualified MAlonzo.Code.Ledger.Core.Specification.Crypto
import qualified MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes
import qualified MAlonzo.Code.Ledger.Prelude.Foreign.Util

import GHC.Generics (Generic)
data GovRole = CC  | DRep  | SPO 
  deriving (Show, Eq, Generic)
data Anchor = Anchor {url :: Data.Text.Text, hash :: Integer}
  deriving (Show, Eq, Generic)
data VDeleg = VDelegCredential MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.Credential | VDelegAbstain  | VDelegNoConfidence 
  deriving (Show, Eq, Generic)
data Vote = Yes  | No  | Abstain 
  deriving (Show, Eq, Generic)
data GovVotes = GovVotes {gvCC :: (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.HSMap MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.Credential MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.Core.Vote), gvDRep :: (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.HSMap MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.Credential MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.Core.Vote), gvSPO :: (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.HSMap Integer MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.Core.Vote)}
  deriving (Show, Eq, Generic)
data GovVote' = GovVote' {gid :: (Integer, Integer), voter :: (MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.Core.GovRole, MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.Credential), vote :: MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.Core.Vote, anchor :: (Maybe MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.Core.Anchor)}
  deriving (Show, Eq, Generic)
-- Ledger.Conway.Foreign.HSLedger.Gov.Core._.Vote
d_Vote_14 = ()
-- Ledger.Conway.Foreign.HSLedger.Gov.Core.GovVoter'
d_GovVoter''_24 :: ()
d_GovVoter''_24 = erased
-- Ledger.Conway.Foreign.HSLedger.Gov.Core.Conv-GovVoter
d_Conv'45'GovVoter_26 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Conv'45'GovVoter_26
  = coe
      MAlonzo.Code.Foreign.Convertible.C_constructor_22
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_'10214'_'44'_'10215''7501''7515'_794 v1 v2
                -> case coe v1 of
                     MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_CC_776
                       -> coe
                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v1) (coe v2)
                     MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_DRep_778
                       -> coe
                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v1) (coe v2)
                     MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_SPO_780
                       -> coe
                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v1)
                            (coe
                               MAlonzo.Code.Ledger.Core.Specification.Address.C_KeyHashObj_22
                               (coe v2))
                     _ -> MAlonzo.RTE.mazUnreachableError
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v1 v2
                -> case coe v1 of
                     MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_CC_776
                       -> coe
                            MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_'10214'_'44'_'10215''7501''7515'_794
                            (coe v1) (coe v2)
                     MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_DRep_778
                       -> coe
                            MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_'10214'_'44'_'10215''7501''7515'_794
                            (coe v1) (coe v2)
                     MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_SPO_780
                       -> case coe v2 of
                            MAlonzo.Code.Ledger.Core.Specification.Address.C_KeyHashObj_22 v3
                              -> coe
                                   MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_'10214'_'44'_'10215''7501''7515'_794
                                   (coe v1) (coe v3)
                            MAlonzo.Code.Ledger.Core.Specification.Address.C_ScriptObj_24 v3
                              -> coe
                                   MAlonzo.Code.Ledger.Prelude.Foreign.Util.d_error_10 erased
                                   ("Conv-GovVoter: Converting from SPO with ScriptObj credential"
                                    ::
                                    Data.Text.Text)
                            _ -> MAlonzo.RTE.mazUnreachableError
                     _ -> MAlonzo.RTE.mazUnreachableError
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.Foreign.HSLedger.Gov.Core.GovVote'
d_GovVote''_44 = ()
data T_GovVote''_44
  = C_constructor_62 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                     MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                     MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Vote_922
                     (Maybe
                        MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Anchor_810)
-- Ledger.Conway.Foreign.HSLedger.Gov.Core.GovVote'.gid
d_gid_54 ::
  T_GovVote''_44 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gid_54 v0
  = case coe v0 of
      C_constructor_62 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Foreign.HSLedger.Gov.Core.GovVote'.voter
d_voter_56 ::
  T_GovVote''_44 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voter_56 v0
  = case coe v0 of
      C_constructor_62 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Foreign.HSLedger.Gov.Core.GovVote'.vote
d_vote_58 ::
  T_GovVote''_44 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Vote_922
d_vote_58 v0
  = case coe v0 of
      C_constructor_62 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Foreign.HSLedger.Gov.Core.GovVote'.anchor
d_anchor_60 ::
  T_GovVote''_44 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Anchor_810
d_anchor_60 v0
  = case coe v0 of
      C_constructor_62 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Foreign.HSLedger.Gov.Core.mkGovVote'
d_mkGovVote''_64 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_mkGovVote''_64
  = coe
      MAlonzo.Code.Foreign.Convertible.C_constructor_22
      (coe
         (\ v0 ->
            coe
              C_constructor_62
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gid_940
                 (coe v0))
              (coe
                 MAlonzo.Code.Foreign.Convertible.d_to_18 d_Conv'45'GovVoter_26
                 (MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_voter_942
                    (coe v0)))
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_vote_944
                 (coe v0))
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_anchor_946
                 (coe v0))))
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_constructor_948
              (coe d_gid_54 (coe v0))
              (coe
                 MAlonzo.Code.Foreign.Convertible.d_from_20 d_Conv'45'GovVoter_26
                 (d_voter_56 (coe v0)))
              (coe d_vote_58 (coe v0)) (coe d_anchor_60 (coe v0))))
-- Ledger.Conway.Foreign.HSLedger.Gov.Core.v.anchor
d_anchor_84 ::
  T_GovVote''_44 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Anchor_810
d_anchor_84 v0 = coe d_anchor_60 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Gov.Core.v.gid
d_gid_86 ::
  T_GovVote''_44 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gid_86 v0 = coe d_gid_54 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Gov.Core.v.vote
d_vote_88 ::
  T_GovVote''_44 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Vote_922
d_vote_88 v0 = coe d_vote_58 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Gov.Core.v.voter
d_voter_90 ::
  T_GovVote''_44 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voter_90 v0 = coe d_voter_56 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Gov.Core.HsTy-GovRole
d_HsTy'45'GovRole_92 ::
  MAlonzo.Code.Foreign.HaskellTypes.T_HasHsType_14
d_HsTy'45'GovRole_92 = erased
-- Ledger.Conway.Foreign.HSLedger.Gov.Core.Conv-GovRole
d_Conv'45'GovRole_94 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Conv'45'GovRole_94
  = coe
      MAlonzo.Code.Foreign.Convertible.C_constructor_22
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_CC_776
                -> coe C_CC_957
              MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_DRep_778
                -> coe C_DRep_959
              MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_SPO_780
                -> coe C_SPO_961
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 ->
            case coe v0 of
              C_CC_957
                -> coe
                     MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_CC_776
              C_DRep_959
                -> coe
                     MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_DRep_778
              C_SPO_961
                -> coe
                     MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_SPO_780
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.Foreign.HSLedger.Gov.Core.HsTy-Anchor
d_HsTy'45'Anchor_96 ::
  MAlonzo.Code.Foreign.HaskellTypes.T_HasHsType_14
d_HsTy'45'Anchor_96 = erased
-- Ledger.Conway.Foreign.HSLedger.Gov.Core.Conv-Anchor
d_Conv'45'Anchor_98 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Conv'45'Anchor_98
  = coe
      MAlonzo.Code.Foreign.Convertible.C_constructor_22
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_constructor_820 v1 v2
                -> coe C_Anchor_1087 (coe v1) (coe v2)
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 ->
            case coe v0 of
              C_Anchor_1087 v1 v2
                -> coe
                     MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_constructor_820
                     (coe v1) (coe v2)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.Foreign.HSLedger.Gov.Core.HsTy-VDeleg
d_HsTy'45'VDeleg_100 ::
  MAlonzo.Code.Foreign.HaskellTypes.T_HasHsType_14
d_HsTy'45'VDeleg_100 = erased
-- Ledger.Conway.Foreign.HSLedger.Gov.Core.Conv-VDeleg
d_Conv'45'VDeleg_102 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Conv'45'VDeleg_102
  = coe
      MAlonzo.Code.Foreign.Convertible.C_constructor_22
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_vDelegCredential_798 v1
                -> coe
                     C_VDelegCredential_1683
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_to_18
                        (coe
                           MAlonzo.Code.Foreign.Convertible.C_constructor_22
                           (coe
                              (\ v2 ->
                                 case coe v2 of
                                   MAlonzo.Code.Ledger.Core.Specification.Address.C_KeyHashObj_22 v3
                                     -> coe
                                          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.C_KeyHashObj_591
                                          (coe v3)
                                   MAlonzo.Code.Ledger.Core.Specification.Address.C_ScriptObj_24 v3
                                     -> coe
                                          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.C_ScriptObj_621
                                          (coe v3)
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v2 ->
                                 case coe v2 of
                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.C_KeyHashObj_591 v3
                                     -> coe
                                          MAlonzo.Code.Ledger.Core.Specification.Address.C_KeyHashObj_22
                                          (coe v3)
                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.C_ScriptObj_621 v3
                                     -> coe
                                          MAlonzo.Code.Ledger.Core.Specification.Address.C_ScriptObj_24
                                          (coe v3)
                                   _ -> MAlonzo.RTE.mazUnreachableError)))
                        v1)
              MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_vDelegAbstain_800
                -> coe C_VDelegAbstain_1757
              MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_vDelegNoConfidence_802
                -> coe C_VDelegNoConfidence_1759
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 ->
            case coe v0 of
              C_VDelegCredential_1683 v1
                -> coe
                     MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_vDelegCredential_798
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.C_constructor_22
                           (coe
                              (\ v2 ->
                                 case coe v2 of
                                   MAlonzo.Code.Ledger.Core.Specification.Address.C_KeyHashObj_22 v3
                                     -> coe
                                          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.C_KeyHashObj_591
                                          (coe v3)
                                   MAlonzo.Code.Ledger.Core.Specification.Address.C_ScriptObj_24 v3
                                     -> coe
                                          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.C_ScriptObj_621
                                          (coe v3)
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v2 ->
                                 case coe v2 of
                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.C_KeyHashObj_591 v3
                                     -> coe
                                          MAlonzo.Code.Ledger.Core.Specification.Address.C_KeyHashObj_22
                                          (coe v3)
                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.C_ScriptObj_621 v3
                                     -> coe
                                          MAlonzo.Code.Ledger.Core.Specification.Address.C_ScriptObj_24
                                          (coe v3)
                                   _ -> MAlonzo.RTE.mazUnreachableError)))
                        v1)
              C_VDelegAbstain_1757
                -> coe
                     MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_vDelegAbstain_800
              C_VDelegNoConfidence_1759
                -> coe
                     MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_vDelegNoConfidence_802
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.Foreign.HSLedger.Gov.Core.HsTy-Vote
d_HsTy'45'Vote_104 ::
  MAlonzo.Code.Foreign.HaskellTypes.T_HasHsType_14
d_HsTy'45'Vote_104 = erased
-- Ledger.Conway.Foreign.HSLedger.Gov.Core.Conv-Vote
d_Conv'45'Vote_106 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Conv'45'Vote_106
  = coe
      MAlonzo.Code.Foreign.Convertible.C_constructor_22
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_yes_924
                -> coe C_Yes_2071
              MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_no_926
                -> coe C_No_2073
              MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_abstain_928
                -> coe C_Abstain_2075
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 ->
            case coe v0 of
              C_Yes_2071
                -> coe
                     MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_yes_924
              C_No_2073
                -> coe
                     MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_no_926
              C_Abstain_2075
                -> coe
                     MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_abstain_928
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.Foreign.HSLedger.Gov.Core.HsTy-GovVotes
d_HsTy'45'GovVotes_108 ::
  MAlonzo.Code.Foreign.HaskellTypes.T_HasHsType_14
d_HsTy'45'GovVotes_108 = erased
-- Ledger.Conway.Foreign.HSLedger.Gov.Core.Conv-GovVotes
d_Conv'45'GovVotes_110 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Conv'45'GovVotes_110
  = coe
      MAlonzo.Code.Foreign.Convertible.C_constructor_22
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_constructor_992 v1 v2 v3
                -> coe
                     C_GovVotes_2201
                     (coe
                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_to_18
                           (coe
                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                 (coe d_Conv'45'Vote_106)))
                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v1))))
                     (coe
                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_to_18
                           (coe
                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                 (coe d_Conv'45'Vote_106)))
                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2))))
                     (coe
                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_to_18
                           (coe
                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                 (coe d_Conv'45'Vote_106)))
                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3))))
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 ->
            case coe v0 of
              C_GovVotes_2201 v1 v2 v3
                -> coe
                     MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_constructor_992
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                           (let v4
                                  = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
                            coe
                              (let v5
                                     = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                                         (coe v4) in
                               coe
                                 (coe
                                    MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                    (coe
                                       MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                       (coe
                                          MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1308
                                             (coe v5))))
                                    (coe
                                       MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1308
                                          (coe v5))))))
                           (coe
                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                           (coe d_Conv'45'Vote_106))
                        (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_24
                           (coe v1)))
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                           (let v4
                                  = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
                            coe
                              (let v5
                                     = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                                         (coe v4) in
                               coe
                                 (coe
                                    MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                    (coe
                                       MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                       (coe
                                          MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1308
                                             (coe v5))))
                                    (coe
                                       MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1308
                                          (coe v5))))))
                           (coe
                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                           (coe d_Conv'45'Vote_106))
                        (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_24
                           (coe v2)))
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                           (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                           (coe
                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                           (coe d_Conv'45'Vote_106))
                        (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_24
                           (coe v3)))
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.Foreign.HSLedger.Gov.Core.HsTy-GovVote'
d_HsTy'45'GovVote''_112 ::
  MAlonzo.Code.Foreign.HaskellTypes.T_HasHsType_14
d_HsTy'45'GovVote''_112 = erased
-- Ledger.Conway.Foreign.HSLedger.Gov.Core.Conv-GovVote'
d_Conv'45'GovVote''_114 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Conv'45'GovVote''_114
  = coe
      MAlonzo.Code.Foreign.Convertible.C_constructor_22
      (coe
         (\ v0 ->
            case coe v0 of
              C_constructor_62 v1 v2 v3 v4
                -> coe
                     C_GovVote''_5175
                     (coe
                        MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased () erased
                        (coe MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                        (coe
                           MAlonzo.Code.Data.Product.Base.du_map_128
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_to_18
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                           (coe
                              (\ v5 ->
                                 MAlonzo.Code.Foreign.Convertible.d_to_18
                                   (coe
                                      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                           (coe v1)))
                     (coe
                        MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased () erased
                        (coe MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                        (coe
                           MAlonzo.Code.Data.Product.Base.du_map_128
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_to_18
                              (coe d_Conv'45'GovRole_94))
                           (coe
                              (\ v5 ->
                                 MAlonzo.Code.Foreign.Convertible.d_to_18
                                   (coe
                                      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)))
                           (coe v2)))
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_to_18
                        (coe
                           MAlonzo.Code.Foreign.Convertible.C_constructor_22
                           (coe
                              (\ v5 ->
                                 case coe v5 of
                                   MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_yes_924
                                     -> coe C_Yes_2071
                                   MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_no_926
                                     -> coe C_No_2073
                                   MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_abstain_928
                                     -> coe C_Abstain_2075
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v5 ->
                                 case coe v5 of
                                   C_Yes_2071
                                     -> coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_yes_924
                                   C_No_2073
                                     -> coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_no_926
                                   C_Abstain_2075
                                     -> coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_abstain_928
                                   _ -> MAlonzo.RTE.mazUnreachableError)))
                        v3)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_to_18
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe d_Conv'45'Anchor_98))
                        v4)
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 ->
            case coe v0 of
              C_GovVote''_5175 v1 v2 v3 v4
                -> coe
                     C_constructor_62
                     (coe
                        MAlonzo.Code.Data.Product.Base.du_map_128
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_from_20
                           (coe
                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                        (coe
                           (\ v5 ->
                              MAlonzo.Code.Foreign.Convertible.d_from_20
                                (coe
                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                        (coe
                           MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased () erased
                           (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40) v1))
                     (coe
                        MAlonzo.Code.Data.Product.Base.du_map_128
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_from_20
                           (coe d_Conv'45'GovRole_94))
                        (coe
                           (\ v5 ->
                              MAlonzo.Code.Foreign.Convertible.d_from_20
                                (coe
                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)))
                        (coe
                           MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased () erased
                           (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40) v2))
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.C_constructor_22
                           (coe
                              (\ v5 ->
                                 case coe v5 of
                                   MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_yes_924
                                     -> coe C_Yes_2071
                                   MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_no_926
                                     -> coe C_No_2073
                                   MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_abstain_928
                                     -> coe C_Abstain_2075
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v5 ->
                                 case coe v5 of
                                   C_Yes_2071
                                     -> coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_yes_924
                                   C_No_2073
                                     -> coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_no_926
                                   C_Abstain_2075
                                     -> coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_abstain_928
                                   _ -> MAlonzo.RTE.mazUnreachableError)))
                        v3)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe d_Conv'45'Anchor_98))
                        v4)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.Foreign.HSLedger.Gov.Core.HsTy-GovVote
d_HsTy'45'GovVote_116 ::
  MAlonzo.Code.Foreign.HaskellTypes.T_HasHsType_14
d_HsTy'45'GovVote_116 = erased
-- Ledger.Conway.Foreign.HSLedger.Gov.Core.Conv-GovVote
d_Conv'45'GovVote_118 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Conv'45'GovVote_118
  = coe
      MAlonzo.Code.Foreign.Convertible.du__'10814'__80
      (coe d_mkGovVote''_64) (coe d_Conv'45'GovVote''_114)
-- Ledger.Conway.Foreign.HSLedger.Gov.Core.GovRole
d_GovRole_955 = ()
type T_GovRole_955 = GovRole
pattern C_CC_957 = CC
pattern C_DRep_959 = DRep
pattern C_SPO_961 = SPO
check_CC_957 :: T_GovRole_955
check_CC_957 = CC
check_DRep_959 :: T_GovRole_955
check_DRep_959 = DRep
check_SPO_961 :: T_GovRole_955
check_SPO_961 = SPO
cover_GovRole_955 :: GovRole -> ()
cover_GovRole_955 x
  = case x of
      CC -> ()
      DRep -> ()
      SPO -> ()
-- Ledger.Conway.Foreign.HSLedger.Gov.Core.Anchor
d_Anchor_1085 = ()
type T_Anchor_1085 = Anchor
pattern C_Anchor_1087 a0 a1 = Anchor a0 a1
check_Anchor_1087 ::
  MAlonzo.Code.Agda.Builtin.String.T_String_6 ->
  Integer -> T_Anchor_1085
check_Anchor_1087 = Anchor
cover_Anchor_1085 :: Anchor -> ()
cover_Anchor_1085 x
  = case x of
      Anchor _ _ -> ()
-- Ledger.Conway.Foreign.HSLedger.Gov.Core.VDeleg
d_VDeleg_1681 = ()
type T_VDeleg_1681 = VDeleg
pattern C_VDelegCredential_1683 a0 = VDelegCredential a0
pattern C_VDelegAbstain_1757 = VDelegAbstain
pattern C_VDelegNoConfidence_1759 = VDelegNoConfidence
check_VDelegCredential_1683 ::
  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.T_Credential_589 ->
  T_VDeleg_1681
check_VDelegCredential_1683 = VDelegCredential
check_VDelegAbstain_1757 :: T_VDeleg_1681
check_VDelegAbstain_1757 = VDelegAbstain
check_VDelegNoConfidence_1759 :: T_VDeleg_1681
check_VDelegNoConfidence_1759 = VDelegNoConfidence
cover_VDeleg_1681 :: VDeleg -> ()
cover_VDeleg_1681 x
  = case x of
      VDelegCredential _ -> ()
      VDelegAbstain -> ()
      VDelegNoConfidence -> ()
-- Ledger.Conway.Foreign.HSLedger.Gov.Core.Vote
d_Vote_2069 = ()
type T_Vote_2069 = Vote
pattern C_Yes_2071 = Yes
pattern C_No_2073 = No
pattern C_Abstain_2075 = Abstain
check_Yes_2071 :: T_Vote_2069
check_Yes_2071 = Yes
check_No_2073 :: T_Vote_2069
check_No_2073 = No
check_Abstain_2075 :: T_Vote_2069
check_Abstain_2075 = Abstain
cover_Vote_2069 :: Vote -> ()
cover_Vote_2069 x
  = case x of
      Yes -> ()
      No -> ()
      Abstain -> ()
-- Ledger.Conway.Foreign.HSLedger.Gov.Core.GovVotes
d_GovVotes_2199 = ()
type T_GovVotes_2199 = GovVotes
pattern C_GovVotes_2201 a0 a1 a2 = GovVotes a0 a1 a2
check_GovVotes_2201 ::
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_HSMap_16
    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.T_Credential_589
    T_Vote_2069 ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_HSMap_16
    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.T_Credential_589
    T_Vote_2069 ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_HSMap_16
    Integer T_Vote_2069 ->
  T_GovVotes_2199
check_GovVotes_2201 = GovVotes
cover_GovVotes_2199 :: GovVotes -> ()
cover_GovVotes_2199 x
  = case x of
      GovVotes _ _ _ -> ()
-- Ledger.Conway.Foreign.HSLedger.Gov.Core.GovVote'
d_GovVote''_5173 = ()
type T_GovVote''_5173 = GovVote'
pattern C_GovVote''_5175 a0 a1 a2 a3 = GovVote' a0 a1 a2 a3
check_GovVote''_5175 ::
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    () () Integer Integer ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    () () T_GovRole_955
    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.T_Credential_589 ->
  T_Vote_2069 ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () T_Anchor_1085 ->
  T_GovVote''_5173
check_GovVote''_5175 = GovVote'
cover_GovVote''_5173 :: GovVote' -> ()
cover_GovVote''_5173 x
  = case x of
      GovVote' _ _ _ _ -> ()
