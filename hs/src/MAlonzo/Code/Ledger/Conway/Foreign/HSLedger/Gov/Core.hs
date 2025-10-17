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
type GovVoter = (MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.Core.GovRole, MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.Credential)
data GovVote = MkGovVote {gid :: (Integer, Integer), voter :: (MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.Core.GovRole, MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.Credential), vote :: MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.Core.Vote, anchor :: (Maybe MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.Core.Anchor)}
  deriving (Show, Eq, Generic)
-- Ledger.Conway.Foreign.HSLedger.Gov.Core._.Vote
d_Vote_14 = ()
-- Ledger.Conway.Foreign.HSLedger.Gov.Core.GovRole
d_GovRole_17 = ()
type T_GovRole_17 = GovRole
pattern C_CC_19 = CC
pattern C_DRep_21 = DRep
pattern C_SPO_23 = SPO
check_CC_19 :: T_GovRole_17
check_CC_19 = CC
check_DRep_21 :: T_GovRole_17
check_DRep_21 = DRep
check_SPO_23 :: T_GovRole_17
check_SPO_23 = SPO
cover_GovRole_17 :: GovRole -> ()
cover_GovRole_17 x
  = case x of
      CC -> ()
      DRep -> ()
      SPO -> ()
-- Ledger.Conway.Foreign.HSLedger.Gov.Core.HsTy-GovRole
d_HsTy'45'GovRole_24 ::
  MAlonzo.Code.Foreign.HaskellTypes.T_HasHsType_14
d_HsTy'45'GovRole_24 = erased
-- Ledger.Conway.Foreign.HSLedger.Gov.Core.Conv-GovRole
d_Conv'45'GovRole_26 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Conv'45'GovRole_26
  = coe
      MAlonzo.Code.Foreign.Convertible.C_constructor_22
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_CC_782
                -> coe C_CC_19
              MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_DRep_784
                -> coe C_DRep_21
              MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_SPO_786
                -> coe C_SPO_23
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 ->
            case coe v0 of
              C_CC_19
                -> coe
                     MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_CC_782
              C_DRep_21
                -> coe
                     MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_DRep_784
              C_SPO_23
                -> coe
                     MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_SPO_786
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.Foreign.HSLedger.Gov.Core.HsTy-Anchor
d_HsTy'45'Anchor_28 ::
  MAlonzo.Code.Foreign.HaskellTypes.T_HasHsType_14
d_HsTy'45'Anchor_28 = erased
-- Ledger.Conway.Foreign.HSLedger.Gov.Core.Conv-Anchor
d_Conv'45'Anchor_30 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Conv'45'Anchor_30
  = coe
      MAlonzo.Code.Foreign.Convertible.C_constructor_22
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_constructor_824 v1 v2
                -> coe C_Anchor_149 (coe v1) (coe v2)
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 ->
            case coe v0 of
              C_Anchor_149 v1 v2
                -> coe
                     MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_constructor_824
                     (coe v1) (coe v2)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.Foreign.HSLedger.Gov.Core.HsTy-VDeleg
d_HsTy'45'VDeleg_32 ::
  MAlonzo.Code.Foreign.HaskellTypes.T_HasHsType_14
d_HsTy'45'VDeleg_32 = erased
-- Ledger.Conway.Foreign.HSLedger.Gov.Core.Conv-VDeleg
d_Conv'45'VDeleg_34 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Conv'45'VDeleg_34
  = coe
      MAlonzo.Code.Foreign.Convertible.C_constructor_22
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_vDelegCredential_804 v1
                -> coe
                     C_VDelegCredential_745
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
              MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_vDelegAbstain_806
                -> coe C_VDelegAbstain_819
              MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_vDelegNoConfidence_808
                -> coe C_VDelegNoConfidence_821
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 ->
            case coe v0 of
              C_VDelegCredential_745 v1
                -> coe
                     MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_vDelegCredential_804
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
              C_VDelegAbstain_819
                -> coe
                     MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_vDelegAbstain_806
              C_VDelegNoConfidence_821
                -> coe
                     MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_vDelegNoConfidence_808
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.Foreign.HSLedger.Gov.Core.HsTy-Vote
d_HsTy'45'Vote_36 ::
  MAlonzo.Code.Foreign.HaskellTypes.T_HasHsType_14
d_HsTy'45'Vote_36 = erased
-- Ledger.Conway.Foreign.HSLedger.Gov.Core.Conv-Vote
d_Conv'45'Vote_38 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Conv'45'Vote_38
  = coe
      MAlonzo.Code.Foreign.Convertible.C_constructor_22
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_yes_930
                -> coe C_Yes_1133
              MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_no_932
                -> coe C_No_1135
              MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_abstain_934
                -> coe C_Abstain_1137
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 ->
            case coe v0 of
              C_Yes_1133
                -> coe
                     MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_yes_930
              C_No_1135
                -> coe
                     MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_no_932
              C_Abstain_1137
                -> coe
                     MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_abstain_934
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.Foreign.HSLedger.Gov.Core.HsTy-GovVotes
d_HsTy'45'GovVotes_40 ::
  MAlonzo.Code.Foreign.HaskellTypes.T_HasHsType_14
d_HsTy'45'GovVotes_40 = erased
-- Ledger.Conway.Foreign.HSLedger.Gov.Core.Conv-GovVotes
d_Conv'45'GovVotes_42 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Conv'45'GovVotes_42
  = coe
      MAlonzo.Code.Foreign.Convertible.C_constructor_22
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_constructor_1000 v1 v2 v3
                -> coe
                     C_GovVotes_1263
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
                                 (coe d_Conv'45'Vote_38)))
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
                                 (coe d_Conv'45'Vote_38)))
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
                                 (coe d_Conv'45'Vote_38)))
                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3))))
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 ->
            case coe v0 of
              C_GovVotes_1263 v1 v2 v3
                -> coe
                     MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_constructor_1000
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
                                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                             (coe v5))))
                                    (coe
                                       MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                          (coe v5))))))
                           (coe
                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                           (coe d_Conv'45'Vote_38))
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
                                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                             (coe v5))))
                                    (coe
                                       MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                          (coe v5))))))
                           (coe
                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                           (coe d_Conv'45'Vote_38))
                        (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_24
                           (coe v2)))
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                           (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                           (coe
                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                           (coe d_Conv'45'Vote_38))
                        (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_24
                           (coe v3)))
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.Foreign.HSLedger.Gov.Core.GovVoter'
d_GovVoter''_44 :: ()
d_GovVoter''_44 = erased
-- Ledger.Conway.Foreign.HSLedger.Gov.Core.mkGovVoter'
d_mkGovVoter''_46 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_mkGovVoter''_46
  = coe
      MAlonzo.Code.Foreign.Convertible.C_constructor_22
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_'10214'_'44'_'10215''7501''7515'_800 v1 v2
                -> case coe v1 of
                     MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_CC_782
                       -> coe
                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v1) (coe v2)
                     MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_DRep_784
                       -> coe
                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v1) (coe v2)
                     MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_SPO_786
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
                     MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_CC_782
                       -> coe
                            MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_'10214'_'44'_'10215''7501''7515'_800
                            (coe v1) (coe v2)
                     MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_DRep_784
                       -> coe
                            MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_'10214'_'44'_'10215''7501''7515'_800
                            (coe v1) (coe v2)
                     MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_SPO_786
                       -> case coe v2 of
                            MAlonzo.Code.Ledger.Core.Specification.Address.C_KeyHashObj_22 v3
                              -> coe
                                   MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_'10214'_'44'_'10215''7501''7515'_800
                                   (coe v1) (coe v3)
                            MAlonzo.Code.Ledger.Core.Specification.Address.C_ScriptObj_24 v3
                              -> coe
                                   MAlonzo.Code.Ledger.Prelude.Foreign.Util.d_error_10 erased
                                   ("mkGovVoter: Converting from SPO with ScriptObj credential"
                                    ::
                                    Data.Text.Text)
                            _ -> MAlonzo.RTE.mazUnreachableError
                     _ -> MAlonzo.RTE.mazUnreachableError
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.Foreign.HSLedger.Gov.Core.HsTy-GovVoter
d_HsTy'45'GovVoter_64 ::
  MAlonzo.Code.Foreign.HaskellTypes.T_HasHsType_14
d_HsTy'45'GovVoter_64 = erased
-- Ledger.Conway.Foreign.HSLedger.Gov.Core.Conv-GovVoter
d_Conv'45'GovVoter_66 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Conv'45'GovVoter_66
  = coe
      MAlonzo.Code.Foreign.Convertible.du__'10814'__80
      (coe d_mkGovVoter''_46)
      (coe
         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
         (coe
            MAlonzo.Code.Foreign.Convertible.C_constructor_22
            (coe
               (\ v0 ->
                  case coe v0 of
                    MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_CC_782
                      -> coe C_CC_19
                    MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_DRep_784
                      -> coe C_DRep_21
                    MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_SPO_786
                      -> coe C_SPO_23
                    _ -> MAlonzo.RTE.mazUnreachableError))
            (coe
               (\ v0 ->
                  case coe v0 of
                    C_CC_19
                      -> coe
                           MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_CC_782
                    C_DRep_21
                      -> coe
                           MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_DRep_784
                    C_SPO_23
                      -> coe
                           MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_SPO_786
                    _ -> MAlonzo.RTE.mazUnreachableError)))
         (coe
            MAlonzo.Code.Foreign.Convertible.C_constructor_22
            (coe
               (\ v0 ->
                  case coe v0 of
                    MAlonzo.Code.Ledger.Core.Specification.Address.C_KeyHashObj_22 v1
                      -> coe
                           MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.C_KeyHashObj_591
                           (coe v1)
                    MAlonzo.Code.Ledger.Core.Specification.Address.C_ScriptObj_24 v1
                      -> coe
                           MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.C_ScriptObj_621
                           (coe v1)
                    _ -> MAlonzo.RTE.mazUnreachableError))
            (coe
               (\ v0 ->
                  case coe v0 of
                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.C_KeyHashObj_591 v1
                      -> coe
                           MAlonzo.Code.Ledger.Core.Specification.Address.C_KeyHashObj_22
                           (coe v1)
                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.C_ScriptObj_621 v1
                      -> coe
                           MAlonzo.Code.Ledger.Core.Specification.Address.C_ScriptObj_24
                           (coe v1)
                    _ -> MAlonzo.RTE.mazUnreachableError))))
-- Ledger.Conway.Foreign.HSLedger.Gov.Core.GovVote'
d_GovVote''_68 = ()
data T_GovVote''_68
  = C_constructor_86 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                     MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                     MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Vote_928
                     (Maybe
                        MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Anchor_814)
-- Ledger.Conway.Foreign.HSLedger.Gov.Core.GovVote'.gid
d_gid_78 ::
  T_GovVote''_68 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gid_78 v0
  = case coe v0 of
      C_constructor_86 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Foreign.HSLedger.Gov.Core.GovVote'.voter
d_voter_80 ::
  T_GovVote''_68 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voter_80 v0
  = case coe v0 of
      C_constructor_86 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Foreign.HSLedger.Gov.Core.GovVote'.vote
d_vote_82 ::
  T_GovVote''_68 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Vote_928
d_vote_82 v0
  = case coe v0 of
      C_constructor_86 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Foreign.HSLedger.Gov.Core.GovVote'.anchor
d_anchor_84 ::
  T_GovVote''_68 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Anchor_814
d_anchor_84 v0
  = case coe v0 of
      C_constructor_86 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Foreign.HSLedger.Gov.Core.mkGovVote'
d_mkGovVote''_88 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_mkGovVote''_88
  = coe
      MAlonzo.Code.Foreign.Convertible.C_constructor_22
      (coe
         (\ v0 ->
            coe
              C_constructor_86
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gid_946
                 (coe v0))
              (coe
                 MAlonzo.Code.Foreign.Convertible.d_to_18 d_mkGovVoter''_46
                 (MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_voter_948
                    (coe v0)))
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_vote_950
                 (coe v0))
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_anchor_952
                 (coe v0))))
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_constructor_954
              (coe d_gid_78 (coe v0))
              (coe
                 MAlonzo.Code.Foreign.Convertible.d_from_20 d_mkGovVoter''_46
                 (d_voter_80 (coe v0)))
              (coe d_vote_82 (coe v0)) (coe d_anchor_84 (coe v0))))
-- Ledger.Conway.Foreign.HSLedger.Gov.Core.v.anchor
d_anchor_108 ::
  T_GovVote''_68 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Anchor_814
d_anchor_108 v0 = coe d_anchor_84 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Gov.Core.v.gid
d_gid_110 ::
  T_GovVote''_68 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gid_110 v0 = coe d_gid_78 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Gov.Core.v.vote
d_vote_112 ::
  T_GovVote''_68 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Vote_928
d_vote_112 v0 = coe d_vote_82 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Gov.Core.v.voter
d_voter_114 ::
  T_GovVote''_68 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voter_114 v0 = coe d_voter_80 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Gov.Core.HsTy-GovVote'
d_HsTy'45'GovVote''_116 ::
  MAlonzo.Code.Foreign.HaskellTypes.T_HasHsType_14
d_HsTy'45'GovVote''_116 = erased
-- Ledger.Conway.Foreign.HSLedger.Gov.Core.Conv-GovVote'
d_Conv'45'GovVote''_118 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Conv'45'GovVote''_118
  = coe
      MAlonzo.Code.Foreign.Convertible.C_constructor_22
      (coe
         (\ v0 ->
            case coe v0 of
              C_constructor_86 v1 v2 v3 v4
                -> coe
                     C_MkGovVote_5375
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
                              (coe d_Conv'45'GovRole_26))
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
                                   MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_yes_930
                                     -> coe C_Yes_1133
                                   MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_no_932
                                     -> coe C_No_1135
                                   MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_abstain_934
                                     -> coe C_Abstain_1137
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v5 ->
                                 case coe v5 of
                                   C_Yes_1133
                                     -> coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_yes_930
                                   C_No_1135
                                     -> coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_no_932
                                   C_Abstain_1137
                                     -> coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_abstain_934
                                   _ -> MAlonzo.RTE.mazUnreachableError)))
                        v3)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_to_18
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe d_Conv'45'Anchor_30))
                        v4)
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 ->
            case coe v0 of
              C_MkGovVote_5375 v1 v2 v3 v4
                -> coe
                     C_constructor_86
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
                           (coe d_Conv'45'GovRole_26))
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
                                   MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_yes_930
                                     -> coe C_Yes_1133
                                   MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_no_932
                                     -> coe C_No_1135
                                   MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_abstain_934
                                     -> coe C_Abstain_1137
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v5 ->
                                 case coe v5 of
                                   C_Yes_1133
                                     -> coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_yes_930
                                   C_No_1135
                                     -> coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_no_932
                                   C_Abstain_1137
                                     -> coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_abstain_934
                                   _ -> MAlonzo.RTE.mazUnreachableError)))
                        v3)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe d_Conv'45'Anchor_30))
                        v4)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.Foreign.HSLedger.Gov.Core.HsTy-GovVote
d_HsTy'45'GovVote_120 ::
  MAlonzo.Code.Foreign.HaskellTypes.T_HasHsType_14
d_HsTy'45'GovVote_120 = erased
-- Ledger.Conway.Foreign.HSLedger.Gov.Core.Conv-GovVote
d_Conv'45'GovVote_122 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Conv'45'GovVote_122
  = coe
      MAlonzo.Code.Foreign.Convertible.du__'10814'__80
      (coe d_mkGovVote''_88) (coe d_Conv'45'GovVote''_118)
-- Ledger.Conway.Foreign.HSLedger.Gov.Core.Anchor
d_Anchor_147 = ()
type T_Anchor_147 = Anchor
pattern C_Anchor_149 a0 a1 = Anchor a0 a1
check_Anchor_149 ::
  MAlonzo.Code.Agda.Builtin.String.T_String_6 ->
  Integer -> T_Anchor_147
check_Anchor_149 = Anchor
cover_Anchor_147 :: Anchor -> ()
cover_Anchor_147 x
  = case x of
      Anchor _ _ -> ()
-- Ledger.Conway.Foreign.HSLedger.Gov.Core.VDeleg
d_VDeleg_743 = ()
type T_VDeleg_743 = VDeleg
pattern C_VDelegCredential_745 a0 = VDelegCredential a0
pattern C_VDelegAbstain_819 = VDelegAbstain
pattern C_VDelegNoConfidence_821 = VDelegNoConfidence
check_VDelegCredential_745 ::
  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.T_Credential_589 ->
  T_VDeleg_743
check_VDelegCredential_745 = VDelegCredential
check_VDelegAbstain_819 :: T_VDeleg_743
check_VDelegAbstain_819 = VDelegAbstain
check_VDelegNoConfidence_821 :: T_VDeleg_743
check_VDelegNoConfidence_821 = VDelegNoConfidence
cover_VDeleg_743 :: VDeleg -> ()
cover_VDeleg_743 x
  = case x of
      VDelegCredential _ -> ()
      VDelegAbstain -> ()
      VDelegNoConfidence -> ()
-- Ledger.Conway.Foreign.HSLedger.Gov.Core.Vote
d_Vote_1131 = ()
type T_Vote_1131 = Vote
pattern C_Yes_1133 = Yes
pattern C_No_1135 = No
pattern C_Abstain_1137 = Abstain
check_Yes_1133 :: T_Vote_1131
check_Yes_1133 = Yes
check_No_1135 :: T_Vote_1131
check_No_1135 = No
check_Abstain_1137 :: T_Vote_1131
check_Abstain_1137 = Abstain
cover_Vote_1131 :: Vote -> ()
cover_Vote_1131 x
  = case x of
      Yes -> ()
      No -> ()
      Abstain -> ()
-- Ledger.Conway.Foreign.HSLedger.Gov.Core.GovVotes
d_GovVotes_1261 = ()
type T_GovVotes_1261 = GovVotes
pattern C_GovVotes_1263 a0 a1 a2 = GovVotes a0 a1 a2
check_GovVotes_1263 ::
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_HSMap_16
    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.T_Credential_589
    T_Vote_1131 ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_HSMap_16
    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.T_Credential_589
    T_Vote_1131 ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_HSMap_16
    Integer T_Vote_1131 ->
  T_GovVotes_1261
check_GovVotes_1263 = GovVotes
cover_GovVotes_1261 :: GovVotes -> ()
cover_GovVotes_1261 x
  = case x of
      GovVotes _ _ _ -> ()
-- Ledger.Conway.Foreign.HSLedger.Gov.Core.GovVote
d_GovVote_5373 = ()
type T_GovVote_5373 = GovVote
pattern C_MkGovVote_5375 a0 a1 a2 a3 = MkGovVote a0 a1 a2 a3
check_MkGovVote_5375 ::
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    () () Integer Integer ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    () () T_GovRole_17
    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.T_Credential_589 ->
  T_Vote_1131 ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () T_Anchor_147 ->
  T_GovVote_5373
check_MkGovVote_5375 = MkGovVote
cover_GovVote_5373 :: GovVote -> ()
cover_GovVote_5373 x
  = case x of
      MkGovVote _ _ _ _ -> ()
